package com.conceptglobal.pmc.fragments;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.ActionBar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.legacy.app.ActionBarDrawerToggle;
import com.conceptglobal.pmc.adapter.NavigationDrawerAdapter;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class NavigationDrawerFragment extends Fragment {
    private static final String PREF_USER_LEARNED_DRAWER = "navigation_drawer_learned";
    private static final String STATE_SELECTED_POSITION = "selected_navigation_drawer_position";
    private NavigationDrawerCallbacks mCallbacks;
    private int mCurrentSelectedPosition = 0;
    private DrawerLayout mDrawerLayout;
    private ListView mDrawerListView;
    private ActionBarDrawerToggle mDrawerToggle;
    private View mFragmentContainerView;
    private boolean mFromSavedInstanceState;
    private boolean mUserLearnedDrawer;

    public interface NavigationDrawerCallbacks {
        void onNavigationDrawerItemSelected(int i);
    }

    private void showGlobalContextActionBar() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mUserLearnedDrawer = PreferenceManager.getDefaultSharedPreferences(getActivity()).getBoolean(PREF_USER_LEARNED_DRAWER, true);
        if (bundle != null) {
            this.mCurrentSelectedPosition = bundle.getInt(STATE_SELECTED_POSITION);
            this.mFromSavedInstanceState = true;
        }
        selectItem(this.mCurrentSelectedPosition);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_navigation_drawer, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        ListView listView = (ListView) getActivity().findViewById(R.id.lv_nav_drawer);
        this.mDrawerListView = listView;
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fragments.NavigationDrawerFragment.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                NavigationDrawerFragment.this.selectItem(i);
            }
        });
        this.mDrawerListView.setAdapter((ListAdapter) new NavigationDrawerAdapter(getActivity()));
        this.mDrawerListView.setItemChecked(this.mCurrentSelectedPosition, true);
    }

    public boolean isDrawerOpen() {
        DrawerLayout drawerLayout = this.mDrawerLayout;
        return drawerLayout != null && drawerLayout.isDrawerOpen(this.mFragmentContainerView);
    }

    public void setUp(int i, DrawerLayout drawerLayout, ActionBar actionBar) {
        this.mFragmentContainerView = getActivity().findViewById(i);
        this.mDrawerLayout = drawerLayout;
        drawerLayout.setDrawerShadow(com.conceptglobal.pmc.R.drawable.drawer_shadow, GravityCompat.START);
        actionBar.setDisplayHomeAsUpEnabled(true);
        this.mDrawerToggle = new ActionBarDrawerToggle(getActivity(), this.mDrawerLayout, R.drawable.ic_drawer, R.string.navigation_drawer_open, R.string.navigation_drawer_close) { // from class: com.conceptglobal.pmc.fragments.NavigationDrawerFragment.2
            @Override // androidx.legacy.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerClosed(View view) {
                super.onDrawerClosed(view);
                if (NavigationDrawerFragment.this.isAdded()) {
                    NavigationDrawerFragment.this.getActivity().supportInvalidateOptionsMenu();
                }
            }

            @Override // androidx.legacy.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerOpened(View view) {
                super.onDrawerOpened(view);
                if (NavigationDrawerFragment.this.isAdded()) {
                    if (!NavigationDrawerFragment.this.mUserLearnedDrawer) {
                        NavigationDrawerFragment.this.mUserLearnedDrawer = true;
                        PreferenceManager.getDefaultSharedPreferences(NavigationDrawerFragment.this.getActivity()).edit().putBoolean(NavigationDrawerFragment.PREF_USER_LEARNED_DRAWER, true).commit();
                    }
                    NavigationDrawerFragment.this.getActivity().supportInvalidateOptionsMenu();
                }
            }
        };
        if (!this.mUserLearnedDrawer && !this.mFromSavedInstanceState) {
            this.mDrawerLayout.openDrawer(this.mFragmentContainerView);
        }
        this.mDrawerLayout.post(new Runnable() { // from class: com.conceptglobal.pmc.fragments.NavigationDrawerFragment.3
            @Override // java.lang.Runnable
            public void run() {
                NavigationDrawerFragment.this.mDrawerToggle.syncState();
            }
        });
        this.mDrawerLayout.setDrawerListener(this.mDrawerToggle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectItem(int i) {
        this.mCurrentSelectedPosition = i;
        ListView listView = this.mDrawerListView;
        if (listView != null) {
            listView.setItemChecked(i, true);
        }
        DrawerLayout drawerLayout = this.mDrawerLayout;
        if (drawerLayout != null) {
            drawerLayout.closeDrawer(this.mFragmentContainerView);
        }
        NavigationDrawerCallbacks navigationDrawerCallbacks = this.mCallbacks;
        if (navigationDrawerCallbacks != null) {
            navigationDrawerCallbacks.onNavigationDrawerItemSelected(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.mCallbacks = (NavigationDrawerCallbacks) activity;
        } catch (ClassCastException e) {
            PLog.e("NAvDrawer", e);
            throw new ClassCastException("Activity must implement NavigationDrawerCallbacks.");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.mCallbacks = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(STATE_SELECTED_POSITION, this.mCurrentSelectedPosition);
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mDrawerToggle.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (this.mDrawerLayout != null && isDrawerOpen()) {
            menuInflater.inflate(R.menu.global, menu);
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (this.mDrawerToggle.onOptionsItemSelected(menuItem) || menuItem.getItemId() == R.id.search_action_provider) {
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
