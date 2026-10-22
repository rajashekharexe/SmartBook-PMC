package com.conceptglobal.pmc.fo;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsetsController;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.conceptglobal.imaterialdesign.widget.TabIndicatorView;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.FOHome;
import com.conceptglobal.pmc.fragments.ToDoFragment;
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
public class ToDoActivity extends BaseActivity implements View.OnClickListener {
    private static final String TAG = "ToDoActivity";
    private Context context;
    private String isFrom;
    public Fragment[] mFragments;
    private PagerAdapter mPagerAdapter;
    private TabIndicatorView tiv;
    private ArrayList<DraftListSwipeTabs> toDoTabsList = new ArrayList<>();
    private CustomViewPager vp;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        WindowInsetsController insetsController;
        super.onCreate(bundle);
        setContentView(R.layout.todo);
        if (Build.VERSION.SDK_INT >= 30) {
            getWindow().setStatusBarColor(ContextCompat.getColor(this, R.color.colorPrimaryDark));
            getWindow().setDecorFitsSystemWindows(false);
            insetsController = getWindow().getInsetsController();
            if (insetsController != null) {
                insetsController.setSystemBarsAppearance(8, 8);
            }
            getWindow().setStatusBarColor(ContextCompat.getColor(this, R.color.colorPrimary));
        }
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        if (getIntent().hasExtra("IsFrom")) {
            this.isFrom = getIntent().getStringExtra("IsFrom");
        }
        String str = this.isFrom;
        if (str != null && str.equalsIgnoreCase("Survey")) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                CustomActionBar.initActionBar(this, "Planned Surveys(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, "Planned Surveys(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        } else {
            String str2 = this.isFrom;
            if (str2 != null && str2.equalsIgnoreCase("ExpensesToDo")) {
                if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                    CustomActionBar.initActionBar(this, "Expenses(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    CustomActionBar.initActionBar(this, "Expenses(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_toDoText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_toDoText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        }
        String str3 = this.isFrom;
        if (str3 != null && str3.equalsIgnoreCase("Survey")) {
            this.toDoTabsList = GetDataFromDB.getInstance().getSurveySwipeTabsInToDo();
        } else {
            String str4 = this.isFrom;
            if (str4 != null && str4.equalsIgnoreCase("ExpensesToDo")) {
                this.toDoTabsList = GetDataFromDB.getInstance().getExpensesSwipeTabsInToDo();
            } else {
                this.toDoTabsList = GetDataFromDB.getInstance().getSwipeTabsInToDo();
            }
        }
        if (getIntent().hasExtra("IsFrom")) {
            this.isFrom = getIntent().getStringExtra("IsFrom");
        }
        Log.d("todo", "start " + System.currentTimeMillis());
        intialize();
        Log.d("todo", "start " + System.currentTimeMillis());
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void intialize() {
        this.vp = (CustomViewPager) findViewById(R.id.main_vp);
        this.tiv = (TabIndicatorView) findViewById(R.id.main_tiv);
        String str = this.isFrom;
        if (str != null && str.equalsIgnoreCase("ExpensesToDo")) {
            ViewGroup.LayoutParams layoutParams = this.tiv.getLayoutParams();
            layoutParams.height = 0;
            layoutParams.width = 100;
            this.tiv.setLayoutParams(layoutParams);
        }
        PagerAdapter pagerAdapter = new PagerAdapter(getSupportFragmentManager(), this.toDoTabsList, this.isFrom);
        this.mPagerAdapter = pagerAdapter;
        this.vp.setAdapter(pagerAdapter);
        this.tiv.setTabIndicatorFactory(new TabIndicatorView.ViewPagerIndicatorFactory(this.vp));
        this.vp.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.conceptglobal.pmc.fo.ToDoActivity.1
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

    private class PagerAdapter extends FragmentStatePagerAdapter {
        private String isFrom;
        ArrayList<DraftListSwipeTabs> mTabs;

        public PagerAdapter(FragmentManager fragmentManager, ArrayList<DraftListSwipeTabs> arrayList, String str) {
            super(fragmentManager);
            new ArrayList();
            this.mTabs = arrayList;
            ToDoActivity.this.mFragments = new Fragment[arrayList.size()];
            this.isFrom = str;
        }

        private void setFragment(String str, Fragment fragment) {
            for (int i = 0; i < this.mTabs.size(); i++) {
                if (this.mTabs.get(i).getTab().equalsIgnoreCase(str)) {
                    ToDoActivity.this.mFragments[i] = fragment;
                    return;
                }
            }
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int i) {
            if (ToDoActivity.this.mFragments[i] == null) {
                String str = this.isFrom;
                if (str != null && str.equalsIgnoreCase("Survey")) {
                    String tab = this.mTabs.get(i).getTab();
                    tab.hashCode();
                    if (tab.equals("Survey")) {
                        ToDoActivity.this.mFragments[i] = FOHome.newInstance(this.mTabs.get(0).getTab(), "", this.isFrom);
                    } else if (tab.equals("Calendar")) {
                        ToDoActivity.this.mFragments[i] = ToDoFragment.newInstance(this.mTabs.get(1).getTab(), "", this.isFrom);
                    }
                } else {
                    String str2 = this.isFrom;
                    if (str2 != null && str2.equalsIgnoreCase("ExpensesToDo")) {
                        String tab2 = this.mTabs.get(i).getTab();
                        tab2.hashCode();
                        if (tab2.equals("Calendar")) {
                            ToDoActivity.this.mFragments[i] = ToDoFragment.newInstance(this.mTabs.get(0).getTab(), "", this.isFrom);
                        }
                    } else {
                        String tab3 = this.mTabs.get(i).getTab();
                        tab3.hashCode();
                        switch (tab3) {
                            case "Activity":
                                ToDoActivity.this.mFragments[i] = FOHome.newInstance(this.mTabs.get(0).getTab(), "", this.isFrom);
                                break;
                            case "Calendar":
                                ToDoActivity.this.mFragments[i] = ToDoFragment.newInstance(this.mTabs.get(2).getTab(), "", this.isFrom);
                                break;
                            case "GEO":
                                ToDoActivity.this.mFragments[i] = FOHome.newInstance(this.mTabs.get(1).getTab(), "", this.isFrom);
                                break;
                        }
                    }
                }
            }
            return ToDoActivity.this.mFragments[i];
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i) {
            return this.mTabs.get(i).getTabName() != null ? this.mTabs.get(i).getTabName().toUpperCase() : "";
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return ToDoActivity.this.mFragments.length;
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 2) {
            Fragment fragment = this.mFragments[1];
            if (fragment instanceof ToDoFragment) {
                ((ToDoFragment) fragment).onActivityResult(i, i2, intent);
            }
        }
    }
}
