package com.conceptglobal.pmc.fo;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.imaterialdesign.widget.TabIndicatorView;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.FeedBackListFragment;
import com.conceptglobal.pmc.model.DraftListSwipeTabs;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmc.views.CustomViewPager;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.util.ArrayList;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class ToDoActivityCopy extends BaseActivity implements View.OnClickListener {
    private static final String TAG = "ToDoActivity";
    public static int fromComplaint;
    private Context context;
    FloatingActionButton fab_todo_feedback;
    private String isFrom;
    private PagerAdapter mPagerAdapter;
    private String title;
    private TabIndicatorView tiv;
    private ArrayList<DraftListSwipeTabs> toDoTabsList = new ArrayList<>();
    private CustomViewPager vp;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.todo_copy);
        this.context = this;
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R.id.fab_todo_feedback);
        this.fab_todo_feedback = floatingActionButton;
        floatingActionButton.setVisibility(8);
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        if (getIntent().hasExtra("IsFrom")) {
            this.isFrom = getIntent().getStringExtra("IsFrom");
        }
        if (getIntent().hasExtra("Title")) {
            this.title = getIntent().getStringExtra("Title");
        }
        String str = this.isFrom;
        if (str != null && str.equalsIgnoreCase("FeedBack")) {
            this.fab_todo_feedback.setVisibility(0);
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                CustomActionBar.initActionBar(this, this.title + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, this.title + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        } else {
            this.fab_todo_feedback.setVisibility(8);
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_toDoText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_toDoText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        }
        String str2 = this.isFrom;
        if (str2 != null && str2.equalsIgnoreCase("FeedBack")) {
            this.toDoTabsList = GetDataFromDB.getInstance().getSwipeTabsInToDo_forFeedback();
        }
        if (getIntent().hasExtra("IsFrom")) {
            this.isFrom = getIntent().getStringExtra("IsFrom");
        }
        Log.d("todo", "start " + System.currentTimeMillis());
        intialize();
        Log.d("todo", "start " + System.currentTimeMillis());
        this.fab_todo_feedback.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.ToDoActivityCopy.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ToDoActivityCopy.fromComplaint = 0;
                Intent intent = new Intent(ToDoActivityCopy.this, (Class<?>) SelfAssignActivity.class);
                intent.putExtra("isFromFeedBack", 222);
                intent.putExtra("Title", ToDoActivityCopy.this.title);
                ToDoActivityCopy.this.startActivity(intent.setFlags(67108864));
            }
        });
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void intialize() {
        this.vp = (CustomViewPager) findViewById(R.id.main_vp);
        this.tiv = (TabIndicatorView) findViewById(R.id.main_tiv);
        PagerAdapter pagerAdapter = new PagerAdapter(getSupportFragmentManager(), this.toDoTabsList, this.isFrom);
        this.mPagerAdapter = pagerAdapter;
        this.vp.setAdapter(pagerAdapter);
        this.tiv.setTabIndicatorFactory(new TabIndicatorView.ViewPagerIndicatorFactory(this.vp));
        this.tiv.setVisibility(8);
        this.vp.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.conceptglobal.pmc.fo.ToDoActivityCopy.2
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
            }
        });
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Log.d("todo", "start onResume " + System.currentTimeMillis());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    private static class PagerAdapter extends FragmentStatePagerAdapter {
        private String isFrom;
        Fragment[] mFragments;
        ArrayList<DraftListSwipeTabs> mTabs;

        public PagerAdapter(FragmentManager fragmentManager, ArrayList<DraftListSwipeTabs> arrayList, String str) {
            super(fragmentManager);
            new ArrayList();
            this.mTabs = arrayList;
            this.mFragments = new Fragment[arrayList.size()];
            this.isFrom = str;
        }

        private void setFragment(String str, Fragment fragment) {
            for (int i = 0; i < this.mTabs.size(); i++) {
                if (this.mTabs.get(i).getTab().equalsIgnoreCase(str)) {
                    this.mFragments[i] = fragment;
                    return;
                }
            }
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int i) {
            String str;
            if (this.mFragments[i] == null && (str = this.isFrom) != null && str.equalsIgnoreCase("FeedBack")) {
                String tab = this.mTabs.get(i).getTab();
                tab.hashCode();
                if (tab.equals("Complaints")) {
                    ToDoActivityCopy.fromComplaint = 1;
                    this.mFragments[i] = FeedBackListFragment.newInstance("", "", this.isFrom);
                }
            }
            return this.mFragments[i];
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i) {
            return this.mTabs.get(i).getTabName() != null ? this.mTabs.get(i).getTabName().toUpperCase() : "";
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.mFragments.length;
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
