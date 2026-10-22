package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.imaterialdesign.widget.TabIndicatorView;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.AddFarmer;
import com.conceptglobal.pmc.fragments.AddRetailer;
import com.conceptglobal.pmc.fragments.DraftFragment;
import com.conceptglobal.pmc.fragments.FarmersSearchFragment;
import com.conceptglobal.pmc.fragments.RetailersSearchFragment;
import com.conceptglobal.pmc.interfaces.IFragmentToActivity;
import com.conceptglobal.pmc.model.DraftListSwipeTabs;
import com.conceptglobal.pmc.model.TerritotyDealerMaster;
import com.conceptglobal.pmc.model.TerritotyFarmerMaster;
import com.conceptglobal.pmc.textdrawable.ColorGenerator;
import com.conceptglobal.pmc.textdrawable.TextDrawable;
import com.conceptglobal.pmc.utils.CircleImageView;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmc.views.CustomViewPager;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.github.amlcurran.showcaseview.ShowcaseView;
import com.github.amlcurran.showcaseview.targets.ViewTarget;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class AudianceFarmerSelectionList extends BaseActivity implements AdapterView.OnItemClickListener, IFragmentToActivity {
    private static final String TAG = "DraftList";
    private Context context;
    private FloatingActionButton fab;
    private String farmerType;
    private GestureDetector gestureDetector;
    private GetDataFromDB getDataFromDB;
    private CircleImageView globalView;
    private boolean inDragMode;
    private int initViewX;
    private int initViewY;
    private int initX;
    private int initY;
    public boolean isFromSelfAssignment;
    private Context mContext;
    private TextDrawable.IBuilder mDrawableBuilder;
    private PagerAdapter mPagerAdapter;
    private Toolbar mToolbar;
    private int newX;
    private int newY;
    private int screenHight;
    private int screenWidth;
    public int segmentId;
    private ShowcaseView showcaseView;
    private TabIndicatorView tiv;
    private CustomViewPager vp;
    private WindowManager windowManager;
    private ColorGenerator mColorGenerator = ColorGenerator.MATERIAL;
    private ArrayList<DraftListSwipeTabs> dLST = new ArrayList<>();
    private int counter = 0;
    public String sourceQry = "";

    @Override // com.conceptglobal.pmc.interfaces.IFragmentToActivity
    public void communicateToFragment() {
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
    }

    @Override // com.conceptglobal.pmc.interfaces.IFragmentToActivity
    public void showToast(String str) {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.draft_list);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        this.mContext = this;
        this.getDataFromDB = GetDataFromDB.getInstance();
        Intent intent = getIntent();
        this.farmerType = intent.getStringExtra("farmerType");
        if (intent.hasExtra("SEGMENTID")) {
            this.segmentId = intent.getExtras().getInt("SEGMENTID");
        }
        if (intent.hasExtra("FromSelfAssignment")) {
            this.isFromSelfAssignment = intent.getExtras().getBoolean("FromSelfAssignment");
        }
        if (intent.hasExtra("SourceQry")) {
            this.sourceQry = intent.getExtras().getString("SourceQry");
        }
        if (this.sourceQry.contains("FarmerMaster")) {
            this.farmerType = ConstantsPMC.TYPE_FARMER;
        } else if (this.sourceQry.contains("DealerMaster")) {
            this.farmerType = ConstantsPMC.TYPE_Retailer;
        }
        if (this.isFromSelfAssignment) {
            this.dLST = GetDataFromDB.getInstance().getSwipeTabsInDraftListForSelfAssignment();
        } else {
            this.dLST = GetDataFromDB.getInstance().getSwipeTabsInDraftList(this.farmerType);
        }
        if (this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) == null) {
                    this.mToolbar = CustomActionBar.initActionBar(this, "Farmer Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) == null) {
                this.mToolbar = CustomActionBar.initActionBar(this, "Farmer Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        } else if (this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addRetailersDetailsText()) == null) {
                    this.mToolbar = CustomActionBar.initActionBar(this, "Retailer Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerDetails()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addRetailersDetailsText()) == null) {
                this.mToolbar = CustomActionBar.initActionBar(this, "Retailer Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerDetails()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        } else if (this.farmerType.equalsIgnoreCase("Planter")) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addPlanterHomeText()) == null) {
                    this.mToolbar = CustomActionBar.initActionBar(this, "Planter Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addPlanterHomeText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addPlanterHomeText()) == null) {
                this.mToolbar = CustomActionBar.initActionBar(this, "Planter Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addPlanterHomeText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        } else if (this.farmerType.equalsIgnoreCase("Village")) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addVillageText()) == null) {
                    this.mToolbar = CustomActionBar.initActionBar(this, "Village Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addVillageText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addVillageText()) == null) {
                this.mToolbar = CustomActionBar.initActionBar(this, "Village Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addVillageText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        } else if (this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || this.farmerType.equalsIgnoreCase("Dealer")) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addRetailersDetailsText()) == null) {
                    this.mToolbar = CustomActionBar.initActionBar(this, "Distributor Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_distributorDetails()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addRetailersDetailsText()) == null) {
                this.mToolbar = CustomActionBar.initActionBar(this, "Distributor Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                this.mToolbar = CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_distributorDetails()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        }
        init();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00db A[Catch: Exception -> 0x00e1, TRY_LEAVE, TryCatch #0 {Exception -> 0x00e1, blocks: (B:8:0x0078, B:11:0x0084, B:13:0x008c, B:18:0x0094, B:20:0x009c, B:23:0x00a5, B:25:0x00ad, B:28:0x00db, B:31:0x00c3), top: B:7:0x0078 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void init() {
        /*
            r6 = this;
            java.lang.String r0 = "Distributor"
            r1 = 2131297009(0x7f0902f1, float:1.821195E38)
            android.view.View r1 = r6.findViewById(r1)
            com.conceptglobal.pmc.views.CustomViewPager r1 = (com.conceptglobal.pmc.views.CustomViewPager) r1
            r6.vp = r1
            r1 = 2131297008(0x7f0902f0, float:1.8211949E38)
            android.view.View r1 = r6.findViewById(r1)
            com.conceptglobal.imaterialdesign.widget.TabIndicatorView r1 = (com.conceptglobal.imaterialdesign.widget.TabIndicatorView) r1
            r6.tiv = r1
            com.conceptglobal.pmc.fo.AudianceFarmerSelectionList$PagerAdapter r1 = new com.conceptglobal.pmc.fo.AudianceFarmerSelectionList$PagerAdapter
            androidx.fragment.app.FragmentManager r2 = r6.getSupportFragmentManager()
            java.util.ArrayList<com.conceptglobal.pmc.model.DraftListSwipeTabs> r3 = r6.dLST
            java.lang.String r4 = r6.farmerType
            r1.<init>(r2, r3, r4)
            r6.mPagerAdapter = r1
            com.conceptglobal.pmc.views.CustomViewPager r2 = r6.vp
            r2.setAdapter(r1)
            boolean r1 = r6.isFromSelfAssignment
            if (r1 == 0) goto L3b
            com.conceptglobal.imaterialdesign.widget.TabIndicatorView r1 = r6.tiv
            android.widget.LinearLayout$LayoutParams r2 = new android.widget.LinearLayout$LayoutParams
            r3 = 0
            r2.<init>(r3, r3)
            r1.setLayoutParams(r2)
        L3b:
            com.conceptglobal.imaterialdesign.widget.TabIndicatorView r1 = r6.tiv
            com.conceptglobal.imaterialdesign.widget.TabIndicatorView$ViewPagerIndicatorFactory r2 = new com.conceptglobal.imaterialdesign.widget.TabIndicatorView$ViewPagerIndicatorFactory
            com.conceptglobal.pmc.views.CustomViewPager r3 = r6.vp
            r2.<init>(r3)
            r1.setTabIndicatorFactory(r2)
            com.conceptglobal.pmc.views.CustomViewPager r1 = r6.vp
            com.conceptglobal.pmc.fo.AudianceFarmerSelectionList$1 r2 = new com.conceptglobal.pmc.fo.AudianceFarmerSelectionList$1
            r2.<init>()
            r1.addOnPageChangeListener(r2)
            r1 = 2131296734(0x7f0901de, float:1.8211393E38)
            android.view.View r1 = r6.findViewById(r1)
            com.conceptglobal.imaterialdesign.widget.FloatingActionButton r1 = (com.conceptglobal.imaterialdesign.widget.FloatingActionButton) r1
            r6.fab = r1
            com.conceptglobal.pmc.fo.AudianceFarmerSelectionList$2 r2 = new com.conceptglobal.pmc.fo.AudianceFarmerSelectionList$2
            r2.<init>()
            r1.setOnClickListener(r2)
            java.lang.String r1 = r6.farmerType
            java.lang.String r2 = "Village"
            boolean r1 = r1.equalsIgnoreCase(r2)
            r2 = 8
            if (r1 == 0) goto L78
            com.conceptglobal.imaterialdesign.widget.FloatingActionButton r1 = r6.fab
            r1.setVisibility(r2)
            r6.StartOverlayFragment()
        L78:
            java.lang.String r1 = r6.farmerType     // Catch: java.lang.Exception -> Le1
            boolean r1 = r1.equalsIgnoreCase(r0)     // Catch: java.lang.Exception -> Le1
            java.lang.String r3 = "Retailer"
            java.lang.String r4 = "Dealer"
            if (r1 != 0) goto L94
            java.lang.String r1 = r6.farmerType     // Catch: java.lang.Exception -> Le1
            boolean r1 = r1.equalsIgnoreCase(r4)     // Catch: java.lang.Exception -> Le1
            if (r1 != 0) goto L94
            java.lang.String r1 = r6.farmerType     // Catch: java.lang.Exception -> Le1
            boolean r1 = r1.equals(r3)     // Catch: java.lang.Exception -> Le1
            if (r1 == 0) goto Le5
        L94:
            java.lang.String r1 = r6.farmerType     // Catch: java.lang.Exception -> Le1
            boolean r0 = r1.equalsIgnoreCase(r0)     // Catch: java.lang.Exception -> Le1
            if (r0 != 0) goto Lc3
            java.lang.String r0 = r6.farmerType     // Catch: java.lang.Exception -> Le1
            boolean r0 = r0.equalsIgnoreCase(r4)     // Catch: java.lang.Exception -> Le1
            if (r0 == 0) goto La5
            goto Lc3
        La5:
            java.lang.String r0 = r6.farmerType     // Catch: java.lang.Exception -> Le1
            boolean r0 = r0.equals(r3)     // Catch: java.lang.Exception -> Le1
            if (r0 == 0) goto Lc0
            com.conceptglobal.pmc.database.GetDataFromDB r0 = com.conceptglobal.pmc.database.GetDataFromDB.getInstance()     // Catch: java.lang.Exception -> Le1
            com.conceptglobal.pmc.common.Queries r1 = com.conceptglobal.pmc.common.Queries.getInstance()     // Catch: java.lang.Exception -> Le1
            java.lang.String r3 = "IsNotRequireAddRetailer"
            java.lang.String r1 = r1.getItemValue(r3)     // Catch: java.lang.Exception -> Le1
            long r0 = r0.getLookupValue(r1)     // Catch: java.lang.Exception -> Le1
            goto Ld5
        Lc0:
            r0 = 0
            goto Ld5
        Lc3:
            com.conceptglobal.pmc.database.GetDataFromDB r0 = com.conceptglobal.pmc.database.GetDataFromDB.getInstance()     // Catch: java.lang.Exception -> Le1
            com.conceptglobal.pmc.common.Queries r1 = com.conceptglobal.pmc.common.Queries.getInstance()     // Catch: java.lang.Exception -> Le1
            java.lang.String r3 = "IsNotRequireAddDistributor"
            java.lang.String r1 = r1.getItemValue(r3)     // Catch: java.lang.Exception -> Le1
            long r0 = r0.getLookupValue(r1)     // Catch: java.lang.Exception -> Le1
        Ld5:
            r3 = 1
            int r5 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r5 != 0) goto Le5
            com.conceptglobal.imaterialdesign.widget.FloatingActionButton r0 = r6.fab     // Catch: java.lang.Exception -> Le1
            r0.setVisibility(r2)     // Catch: java.lang.Exception -> Le1
            goto Le5
        Le1:
            r0 = move-exception
            r0.printStackTrace()
        Le5:
            com.conceptglobal.imaterialdesign.widget.FloatingActionButton r0 = r6.fab
            r0.setVisibility(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.init():void");
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void navigateToDestinationActivity(String str) {
        Intent intent;
        if (this.farmerType.equals(ConstantsPMC.TYPE_FARMER)) {
            intent = new Intent(this, (Class<?>) AddFarmer.class);
            intent.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
        } else if (this.farmerType.equals(ConstantsPMC.TYPE_Retailer)) {
            intent = new Intent(this, (Class<?>) AddRetailer.class);
            intent.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
        } else if (this.farmerType.equals("Planter")) {
            intent = new Intent(this, (Class<?>) AddFarmer.class);
            intent.putExtra("farmerType", "Planter");
        } else if (this.farmerType.equals("Planter")) {
            intent = new Intent(this, (Class<?>) AddFarmer.class);
            intent.putExtra("farmerType", "Village");
        } else if (this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || this.farmerType.equalsIgnoreCase("Dealer")) {
            intent = new Intent(this, (Class<?>) AddRetailer.class);
            intent.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
        } else {
            intent = null;
        }
        intent.addFlags(67108864);
        this.mContext.startActivity(intent);
        finish();
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("dataType");
        this.farmerType = intent.getStringExtra("farmerType");
        if (stringExtra != null) {
            if (stringExtra.equals("draft") || stringExtra.equals("newRecord")) {
                this.vp.setCurrentItem(0);
                return;
            } else if (stringExtra.equals("notSent")) {
                this.vp.setCurrentItem(1);
                return;
            } else {
                if (stringExtra.equals("rejected")) {
                    return;
                }
                this.vp.setCurrentItem(2);
                return;
            }
        }
        this.vp.setCurrentItem(0);
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        CircleImageView circleImageView = this.globalView;
        if (circleImageView == null || !circleImageView.isAttachedToWindow()) {
            return;
        }
        this.windowManager.removeView(this.globalView);
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    private void addFView() {
        this.windowManager = (WindowManager) this.context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.screenWidth = displayMetrics.widthPixels;
        this.screenHight = displayMetrics.heightPixels;
        this.inDragMode = false;
        CircleImageView circleImageView = new CircleImageView(this.context);
        this.globalView = circleImageView;
        circleImageView.setImageResource(R.drawable.ic_menu_btn_add);
        this.globalView.setBackgroundResource(R.color.colorPrimaryHalf);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(UtilDeclarations.convertDiptoPix(50, this.context), UtilDeclarations.convertDiptoPix(50, this.context), 2002, 8, -3);
        layoutParams.gravity = 85;
        layoutParams.x = UtilDeclarations.convertDiptoPix(15, this.context);
        layoutParams.y = UtilDeclarations.convertDiptoPix(120, this.context);
    }

    private class SingleTapConfirm extends GestureDetector.SimpleOnGestureListener {
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return true;
        }

        private SingleTapConfirm() {
        }
    }

    private static class PagerAdapter extends FragmentStatePagerAdapter {
        String farmertypeNew;
        private final SparseArray<WeakReference<Fragment>> instantiatedFragments;
        Fragment[] mFragments;
        ArrayList<DraftListSwipeTabs> mTabs;

        public PagerAdapter(FragmentManager fragmentManager, ArrayList<DraftListSwipeTabs> arrayList, String str) {
            super(fragmentManager);
            this.mTabs = new ArrayList<>();
            this.instantiatedFragments = new SparseArray<>();
            this.mTabs = arrayList;
            this.mFragments = new Fragment[arrayList.size()];
            this.farmertypeNew = str;
        }

        private void setFragment(String str, Fragment fragment) {
            for (int i = 0; i < this.mTabs.size(); i++) {
                if (this.mTabs.get(i).getTab().equalsIgnoreCase(str)) {
                    this.mFragments[i] = fragment;
                    return;
                }
            }
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            Fragment fragment = (Fragment) super.instantiateItem(viewGroup, i);
            this.instantiatedFragments.put(i, new WeakReference<>(fragment));
            return fragment;
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            this.instantiatedFragments.remove(i);
            super.destroyItem(viewGroup, i, obj);
        }

        public Fragment getFragment(int i) {
            WeakReference<Fragment> weakReference = this.instantiatedFragments.get(i);
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int i) {
            if (this.mFragments[i] == null) {
                String tab = this.mTabs.get(i).getTab();
                tab.hashCode();
                switch (tab) {
                    case "NOTSENT":
                        this.mFragments[i] = DraftFragment.newInstance(i, this.farmertypeNew);
                        break;
                    case "ALL":
                        this.mFragments[i] = AudianceFarmersSearchFragment.newInstance(this.farmertypeNew);
                        break;
                    case "SENT":
                        this.mFragments[i] = DraftFragment.newInstance(i, this.farmertypeNew);
                        break;
                    case "DRAFT":
                        this.mFragments[i] = DraftFragment.newInstance(i, this.farmertypeNew);
                        break;
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

    private void showWalkthrough() {
        this.fab.setEnabled(false);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        ShowcaseView build = new ShowcaseView.Builder(this).setTarget(new ViewTarget(this.fab)).setContentTitle("ADD " + this.farmerType).setContentText("Click Here to add " + this.farmerType).withMaterialShowcase().setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AudianceFarmerSelectionList.this.counter != 0) {
                    return;
                }
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                AudianceFarmerSelectionList.this.vp.setCurrentItem(3);
                AudianceFarmerSelectionList.this.StartOverlayFragment();
                AudianceFarmerSelectionList.this.showcaseView.hide();
                AudianceFarmerSelectionList.this.fab.setEnabled(true);
                Toast.makeText(AudianceFarmerSelectionList.this.getBaseContext(), "Testing", 0).show();
            }
        }).build();
        this.showcaseView = build;
        build.setButtonPosition(layoutParams);
        this.showcaseView.setButtonText("Next");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void StartOverlayFragment() {
        if (this.farmerType.equals(ConstantsPMC.TYPE_FARMER)) {
            ((FarmersSearchFragment) this.mPagerAdapter.getFragment(3)).fragmentCommunication();
            return;
        }
        if (this.farmerType.equals("Planter")) {
            ((FarmersSearchFragment) this.mPagerAdapter.getFragment(3)).fragmentCommunication();
        } else if (this.farmerType.equals("Village")) {
            ((FarmersSearchFragment) this.mPagerAdapter.getFragment(3)).fragmentCommunication();
        } else {
            ((RetailersSearchFragment) this.mPagerAdapter.getFragment(3)).fragmentCommunication();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMobileSearchDialog() {
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_mobile_search);
        final EditText editText = (EditText) dialog.findViewById(R.id.etMobileNumber);
        Button button = (Button) dialog.findViewById(R.id.btn_cancel_alert);
        Button button2 = (Button) dialog.findViewById(R.id.btn_search_alert);
        button2.setText("Search Farmer");
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AudianceFarmerSelectionList.this);
                if (AudianceFarmerSelectionList.this.isValidMobileNumber(editText.getText().toString())) {
                    if (AudianceFarmerSelectionList.this.isValidMobileNumberWithExp(editText.getText().toString())) {
                        AudianceFarmerSelectionList.this.checkFarmerInTerritory(editText.getText().toString());
                        dialog.dismiss();
                        return;
                    } else {
                        editText.setError("Invalid Mobile Number");
                        return;
                    }
                }
                editText.setError("Enter 10 Digit Mobile Number ");
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AudianceFarmerSelectionList.this);
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.getWindow().setLayout(-1, -2);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        if (!isFinishing()) {
            dialog.show();
        }
        dialog.getWindow().setGravity(17);
    }

    public void checkFarmerInTerritory(String str) {
        try {
            String encryptRemovenewLine = Encryption.encryptRemovenewLine(str);
            boolean isMobileNumExists = this.getDataFromDB.isMobileNumExists("SELECT Mobile FROM FarmerMaster where  Mobile = '" + encryptRemovenewLine + "'");
            this.getDataFromDB.isMobileNumExists("SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile ='" + encryptRemovenewLine + "'");
            TerritotyFarmerMaster territoryFarmereDetails = this.getDataFromDB.getTerritoryFarmereDetails(Queries.getInstance().getTerritoryFarmerQry(encryptRemovenewLine));
            if (isMobileNumExists) {
                showDetailsDialog(this.getDataFromDB.getSearchFarmereDetails(Queries.getInstance().getTerritoryFarmerQryInFarmerMaster(encryptRemovenewLine)), "FarmerMaster");
            } else if (territoryFarmereDetails.getFarmerID() != 0) {
                showDetailsDialog(territoryFarmereDetails, "TerritoryFarmerMaster");
            } else {
                showNoDataAvailableDialog("No Farmer data found.", str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showNoDataAvailableDialog(String str, final String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false);
        builder.setPositiveButton("Add Farmer", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent(AudianceFarmerSelectionList.this.context, (Class<?>) AddFarmer.class);
                Bundle bundle = new Bundle();
                bundle.putString("MobileNumber", str2);
                bundle.putString("farmerType", ConstantsPMC.TYPE_FARMER);
                intent.putExtras(bundle);
                AudianceFarmerSelectionList.this.context.startActivity(intent);
                AudianceFarmerSelectionList.this.finish();
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(getResources().getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showDetailsDialog(final TerritotyFarmerMaster territotyFarmerMaster, final String str) {
        String str2;
        String str3;
        if (str.equals("FarmerMaster")) {
            str2 = "Farmer available in your Territory";
            str3 = "Update Farmer";
        } else {
            str2 = "Farmer available in your Region, but not in this Territory";
            str3 = "Close";
        }
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_farmer_mobile_details_with_close);
        TextView textView = (TextView) dialog.findViewById(R.id.tvFarmerName);
        Button button = (Button) dialog.findViewById(R.id.btn_ok_alert);
        Button button2 = (Button) dialog.findViewById(R.id.btn_close_alert);
        button.setText(str3);
        if (str.equals("FarmerMaster")) {
            button.setVisibility(0);
        } else {
            button.setVisibility(8);
        }
        textView.setText(str2 + "\n\n" + getResources().getString(R.string.pmc_reg_farmer_name) + "   : " + territotyFarmerMaster.getFarmerName() + "\n\n" + getResources().getString(R.string.pmc_reg_mobile_no) + " : " + territotyFarmerMaster.getMobile() + "\n\nMandal Name    : " + territotyFarmerMaster.getTerritory() + "\n\nVillage Name     : " + territotyFarmerMaster.getVillage());
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (str.equals("FarmerMaster")) {
                    Intent intent = new Intent(AudianceFarmerSelectionList.this.context, (Class<?>) AddFarmer.class);
                    Bundle bundle = new Bundle();
                    bundle.putString("farmerId", territotyFarmerMaster.getRespondentNo());
                    bundle.putString("farmerType", ConstantsPMC.TYPE_FARMER);
                    bundle.putString("isFraom", "ALL");
                    intent.putExtras(bundle);
                    AudianceFarmerSelectionList.this.context.startActivity(intent);
                    AudianceFarmerSelectionList.this.finish();
                    dialog.dismiss();
                }
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.getWindow().setLayout(-1, -2);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidMobileNumber(String str) {
        return !str.isEmpty() && str.length() == 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidMobileNumberWithExp(String str) {
        System.out.println("[5-9][6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]");
        return Pattern.compile("[5-9][6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]").matcher(str).matches();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRetailerMobileSearchDialog() {
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_mobile_search);
        final EditText editText = (EditText) dialog.findViewById(R.id.etMobileNumber);
        Button button = (Button) dialog.findViewById(R.id.btn_cancel_alert);
        Button button2 = (Button) dialog.findViewById(R.id.btn_search_alert);
        button2.setText("Search Retailer/Distributor");
        dialog.setCanceledOnTouchOutside(false);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AudianceFarmerSelectionList.this);
                if (AudianceFarmerSelectionList.this.isValidMobileNumber(editText.getText().toString())) {
                    if (AudianceFarmerSelectionList.this.isValidMobileNumberWithExp(editText.getText().toString())) {
                        AudianceFarmerSelectionList.this.checkRetailerInTerritory(editText.getText().toString());
                        dialog.dismiss();
                        return;
                    } else {
                        editText.setError("Invalid Mobile Number");
                        return;
                    }
                }
                editText.setError("Please enter 10 digit mobile number");
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AudianceFarmerSelectionList.this);
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.getWindow().setLayout(-1, -2);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        if (!isFinishing()) {
            dialog.show();
        }
        dialog.getWindow().setGravity(17);
    }

    public void checkRetailerInTerritory(String str) {
        try {
            String encryptRemovenewLine = Encryption.encryptRemovenewLine(str);
            boolean isMobileNumExists = this.getDataFromDB.isMobileNumExists("SELECT MobileNumber FROM DealerMaster where  MobileNumber = '" + encryptRemovenewLine + "'");
            TerritotyDealerMaster territoryDealerDetails = this.getDataFromDB.getTerritoryDealerDetails(Queries.getInstance().getTerritoryRetailerQry(encryptRemovenewLine));
            if (isMobileNumExists) {
                showRetailerDetailsDialog(this.getDataFromDB.getTerritoryDealerDetails(Queries.getInstance().getTerritoryRetailerQry1(encryptRemovenewLine)), "DealerMaster");
            } else if (territoryDealerDetails.getContactId() != null && !territoryDealerDetails.getContactId().equals("0")) {
                showRetailerDetailsDialog(territoryDealerDetails, "TerritoryDealerMaster");
            } else {
                showRetailerNoDataAvailableDialog("No Retailer/Distributor data found.", str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showRetailerNoDataAvailableDialog(String str, final String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton("Add", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent(AudianceFarmerSelectionList.this.context, (Class<?>) AddRetailer.class);
                Bundle bundle = new Bundle();
                bundle.putString("MobileNumber", str2);
                intent.putExtra("farmerType", AudianceFarmerSelectionList.this.farmerType);
                intent.putExtras(bundle);
                AudianceFarmerSelectionList.this.context.startActivity(intent);
                AudianceFarmerSelectionList.this.finish();
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(getResources().getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showRetailerDetailsDialog(final TerritotyDealerMaster territotyDealerMaster, final String str) {
        String str2;
        String str3;
        if (str.equals("DealerMaster")) {
            str2 = "Retailer/Distributor available in your Territory";
            str3 = "Update Retailer/Distributor";
        } else {
            str2 = "Retailer/Distributor available in your Region, but not in this Territory";
            str3 = "Close";
        }
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_farmer_mobile_details_with_close);
        TextView textView = (TextView) dialog.findViewById(R.id.tvFarmerName);
        Button button = (Button) dialog.findViewById(R.id.btn_ok_alert);
        Button button2 = (Button) dialog.findViewById(R.id.btn_close_alert);
        button.setText(str3);
        if (str.equals("DealerMaster")) {
            button.setVisibility(0);
        } else {
            button.setVisibility(8);
        }
        textView.setText(str2 + "\n\n" + getResources().getString(R.string.pmc_reg_retailer_name) + "   : " + territotyDealerMaster.getRetailerShopName() + "\n\n" + getResources().getString(R.string.pmc_reg_mobile_no) + " : " + territotyDealerMaster.getMobileNumber() + "\n\nMandal Name    : " + territotyDealerMaster.getTerritory() + "\n\nVillage Name     : " + territotyDealerMaster.getVillage());
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i;
                if (str.equals("DealerMaster")) {
                    try {
                        i = GetDataFromDB.getInstance().getIntValue("select CustomertypeID from DealerMaster where ContactId = '" + territotyDealerMaster.getContactId() + "'");
                    } catch (Exception e) {
                        e.printStackTrace();
                        i = 2;
                    }
                    Intent intent = new Intent(AudianceFarmerSelectionList.this.context, (Class<?>) AddRetailer.class);
                    Bundle bundle = new Bundle();
                    bundle.putString("farmerId", territotyDealerMaster.getContactId() + "");
                    if (i == 2) {
                        intent.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                    } else if (i == 3) {
                        intent.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
                    }
                    bundle.putString("isFraom", "ALL");
                    intent.putExtras(bundle);
                    AudianceFarmerSelectionList.this.context.startActivity(intent);
                    AudianceFarmerSelectionList.this.finish();
                    dialog.dismiss();
                }
                dialog.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerSelectionList.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.getWindow().setLayout(-1, -2);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.farmerType.equals(ConstantsPMC.TYPE_FARMER)) {
            ((FarmersSearchFragment) this.mPagerAdapter.getFragment(0)).onActivityResult(i, i2, intent);
            return;
        }
        if (this.farmerType.equals(ConstantsPMC.TYPE_Retailer)) {
            ((RetailersSearchFragment) this.mPagerAdapter.getFragment(0)).onActivityResult(i, i2, intent);
        } else if (this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || this.farmerType.equalsIgnoreCase("Dealer")) {
            ((RetailersSearchFragment) this.mPagerAdapter.getFragment(0)).onActivityResult(i, i2, intent);
        }
    }
}
