package com.conceptglobal.pmc.registration;

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
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
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
import com.conceptglobal.pmc.utils.ConstantDeclarations;
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
public class DraftList extends BaseActivity implements AdapterView.OnItemClickListener, IFragmentToActivity {
    public static final int SURVEY_CONTEXT_ADD_FARMER = 101;
    private static final String TAG = "DraftList";
    private static String farmerType;
    public String ACTIVITYNAME;
    public int ActivityAssignmentId;
    public int AssignmentId;
    public int PackageId;
    private Context context;
    private FloatingActionButton fab;
    private GestureDetector gestureDetector;
    private GetDataFromDB getDataFromDB;
    private CircleImageView globalView;
    private boolean inDragMode;
    private int initViewX;
    private int initViewY;
    private int initX;
    private int initY;
    public boolean isFromFeedBack;
    public boolean isFromSelfAssignment;
    public boolean isFromSurvey;
    public boolean isFromTestmonial;
    public int isFromTodo;
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
    private boolean isEligibletoAdd = true;

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
        farmerType = intent.getStringExtra("farmerType");
        if (intent.hasExtra("segmentId")) {
            this.segmentId = intent.getExtras().getInt("segmentId");
        }
        if (intent.hasExtra("FromSelfAssignment")) {
            this.isFromSelfAssignment = intent.getExtras().getBoolean("FromSelfAssignment");
        }
        if (intent.hasExtra("isFromTodo")) {
            this.isFromTodo = intent.getExtras().getInt("isFromTodo", 0);
        }
        if (intent.hasExtra("FromTestmonial")) {
            this.isFromTestmonial = intent.getExtras().getBoolean("FromTestmonial");
        }
        if (intent.hasExtra("FromFeedBack")) {
            this.isFromFeedBack = intent.getExtras().getBoolean("FromFeedBack");
        }
        if (intent.hasExtra("FromSurvey")) {
            this.isFromSurvey = intent.getExtras().getBoolean("FromSurvey");
            this.PackageId = intent.getExtras().getInt("PackageId");
            this.AssignmentId = intent.getExtras().getInt("AssignmentId");
            this.ActivityAssignmentId = intent.getExtras().getInt("ActivityAssignmentId");
            this.ACTIVITYNAME = intent.getExtras().getString("ACTIVITYNAME");
        }
        if (this.isFromSelfAssignment || this.isFromTestmonial || this.isFromFeedBack || this.isFromSurvey) {
            this.dLST = GetDataFromDB.getInstance().getSwipeTabsInDraftListForSelfAssignment();
        } else {
            this.dLST = GetDataFromDB.getInstance().getSwipeTabsInDraftList(farmerType);
        }
        if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
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
        } else if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
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
        } else if (farmerType.equalsIgnoreCase("Planter")) {
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
        } else if (farmerType.equalsIgnoreCase("Village")) {
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
        } else if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || farmerType.equalsIgnoreCase("Dealer")) {
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

    /* JADX WARN: Removed duplicated region for block: B:39:0x010e A[Catch: Exception -> 0x0114, TRY_LEAVE, TryCatch #0 {Exception -> 0x0114, blocks: (B:18:0x00a3, B:21:0x00af, B:23:0x00b7, B:27:0x00bf, B:29:0x00c9, B:32:0x00d2, B:34:0x00da, B:39:0x010e, B:44:0x00f8), top: B:17:0x00a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void init() {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.registration.DraftList.init():void");
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void navigateToDestinationActivity(String str) {
        Intent intent;
        if (farmerType.equals(ConstantsPMC.TYPE_FARMER)) {
            intent = new Intent(this, (Class<?>) AddFarmer.class);
            intent.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
        } else if (farmerType.equals(ConstantsPMC.TYPE_Retailer)) {
            intent = new Intent(this, (Class<?>) AddRetailer.class);
            intent.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
        } else if (farmerType.equals("Planter")) {
            intent = new Intent(this, (Class<?>) AddFarmer.class);
            intent.putExtra("farmerType", "Planter");
        } else if (farmerType.equals("Planter")) {
            intent = new Intent(this, (Class<?>) AddFarmer.class);
            intent.putExtra("farmerType", "Village");
        } else if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || farmerType.equalsIgnoreCase("Dealer")) {
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
    protected void onResume() {
        super.onResume();
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("dataType");
        farmerType = intent.getStringExtra("farmerType");
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
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(UtilDeclarations.convertDiptoPix(50, this.context), UtilDeclarations.convertDiptoPix(50, this.context), 2002, 8, -3);
        layoutParams.gravity = 85;
        layoutParams.x = UtilDeclarations.convertDiptoPix(15, this.context);
        layoutParams.y = UtilDeclarations.convertDiptoPix(120, this.context);
        this.globalView.setOnTouchListener(new View.OnTouchListener() { // from class: com.conceptglobal.pmc.registration.DraftList.3
            /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
            
                if (r0 != 2) goto L27;
             */
            @Override // android.view.View.OnTouchListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
                /*
                    r5 = this;
                    com.conceptglobal.pmc.registration.DraftList r0 = com.conceptglobal.pmc.registration.DraftList.this
                    android.view.GestureDetector r0 = com.conceptglobal.pmc.registration.DraftList.access$500(r0)
                    boolean r0 = r0.onTouchEvent(r7)
                    r1 = 1
                    if (r0 == 0) goto L15
                    com.conceptglobal.pmc.registration.DraftList r6 = com.conceptglobal.pmc.registration.DraftList.this
                    java.lang.String r7 = "-1"
                    com.conceptglobal.pmc.registration.DraftList.access$400(r6, r7)
                    return r1
                L15:
                    int r0 = r7.getAction()
                    r2 = 0
                    if (r0 == 0) goto L23
                    if (r0 == r1) goto L62
                    r6 = 2
                    if (r0 == r6) goto L67
                    goto Lf3
                L23:
                    com.conceptglobal.pmc.registration.DraftList r0 = com.conceptglobal.pmc.registration.DraftList.this
                    com.conceptglobal.pmc.registration.DraftList.access$602(r0, r1)
                    com.conceptglobal.pmc.registration.DraftList r0 = com.conceptglobal.pmc.registration.DraftList.this
                    android.view.WindowManager$LayoutParams r3 = r2
                    int r3 = r3.x
                    com.conceptglobal.pmc.registration.DraftList.access$702(r0, r3)
                    com.conceptglobal.pmc.registration.DraftList r0 = com.conceptglobal.pmc.registration.DraftList.this
                    android.view.WindowManager$LayoutParams r3 = r2
                    int r3 = r3.y
                    com.conceptglobal.pmc.registration.DraftList.access$802(r0, r3)
                    com.conceptglobal.pmc.registration.DraftList r0 = com.conceptglobal.pmc.registration.DraftList.this
                    float r3 = r7.getRawX()
                    int r3 = (int) r3
                    android.widget.ImageView r6 = (android.widget.ImageView) r6
                    int r4 = r6.getLeft()
                    int r3 = r3 - r4
                    int r3 = java.lang.Math.abs(r3)
                    com.conceptglobal.pmc.registration.DraftList.access$902(r0, r3)
                    com.conceptglobal.pmc.registration.DraftList r0 = com.conceptglobal.pmc.registration.DraftList.this
                    float r3 = r7.getRawY()
                    int r3 = (int) r3
                    int r6 = r6.getTop()
                    int r3 = r3 - r6
                    int r6 = java.lang.Math.abs(r3)
                    com.conceptglobal.pmc.registration.DraftList.access$1002(r0, r6)
                L62:
                    com.conceptglobal.pmc.registration.DraftList r6 = com.conceptglobal.pmc.registration.DraftList.this
                    com.conceptglobal.pmc.registration.DraftList.access$602(r6, r2)
                L67:
                    com.conceptglobal.pmc.registration.DraftList r6 = com.conceptglobal.pmc.registration.DraftList.this
                    boolean r6 = com.conceptglobal.pmc.registration.DraftList.access$600(r6)
                    if (r6 != 0) goto Lf3
                    com.conceptglobal.pmc.registration.DraftList r6 = com.conceptglobal.pmc.registration.DraftList.this
                    int r0 = com.conceptglobal.pmc.registration.DraftList.access$700(r6)
                    com.conceptglobal.pmc.registration.DraftList r3 = com.conceptglobal.pmc.registration.DraftList.this
                    int r3 = com.conceptglobal.pmc.registration.DraftList.access$900(r3)
                    int r0 = r0 + r3
                    float r3 = r7.getRawX()
                    int r3 = (int) r3
                    int r0 = r0 - r3
                    com.conceptglobal.pmc.registration.DraftList.access$1102(r6, r0)
                    com.conceptglobal.pmc.registration.DraftList r6 = com.conceptglobal.pmc.registration.DraftList.this
                    int r0 = com.conceptglobal.pmc.registration.DraftList.access$800(r6)
                    float r7 = r7.getRawY()
                    int r7 = (int) r7
                    int r0 = r0 - r7
                    com.conceptglobal.pmc.registration.DraftList r7 = com.conceptglobal.pmc.registration.DraftList.this
                    int r7 = com.conceptglobal.pmc.registration.DraftList.access$1000(r7)
                    int r0 = r0 + r7
                    com.conceptglobal.pmc.registration.DraftList.access$1202(r6, r0)
                    com.conceptglobal.pmc.registration.DraftList r6 = com.conceptglobal.pmc.registration.DraftList.this
                    int r6 = com.conceptglobal.pmc.registration.DraftList.access$1100(r6)
                    if (r6 <= 0) goto Lee
                    com.conceptglobal.pmc.registration.DraftList r6 = com.conceptglobal.pmc.registration.DraftList.this
                    int r6 = com.conceptglobal.pmc.registration.DraftList.access$1100(r6)
                    com.conceptglobal.pmc.registration.DraftList r7 = com.conceptglobal.pmc.registration.DraftList.this
                    int r7 = com.conceptglobal.pmc.registration.DraftList.access$1300(r7)
                    if (r6 >= r7) goto Lee
                    com.conceptglobal.pmc.registration.DraftList r6 = com.conceptglobal.pmc.registration.DraftList.this
                    int r6 = com.conceptglobal.pmc.registration.DraftList.access$1200(r6)
                    if (r6 <= 0) goto Lee
                    com.conceptglobal.pmc.registration.DraftList r6 = com.conceptglobal.pmc.registration.DraftList.this
                    int r6 = com.conceptglobal.pmc.registration.DraftList.access$1200(r6)
                    com.conceptglobal.pmc.registration.DraftList r7 = com.conceptglobal.pmc.registration.DraftList.this
                    int r7 = com.conceptglobal.pmc.registration.DraftList.access$1400(r7)
                    if (r6 < r7) goto Lc8
                    goto Lee
                Lc8:
                    android.view.WindowManager$LayoutParams r6 = r2
                    com.conceptglobal.pmc.registration.DraftList r7 = com.conceptglobal.pmc.registration.DraftList.this
                    int r7 = com.conceptglobal.pmc.registration.DraftList.access$1100(r7)
                    r6.x = r7
                    android.view.WindowManager$LayoutParams r6 = r2
                    com.conceptglobal.pmc.registration.DraftList r7 = com.conceptglobal.pmc.registration.DraftList.this
                    int r7 = com.conceptglobal.pmc.registration.DraftList.access$1200(r7)
                    r6.y = r7
                    com.conceptglobal.pmc.registration.DraftList r6 = com.conceptglobal.pmc.registration.DraftList.this
                    android.view.WindowManager r6 = com.conceptglobal.pmc.registration.DraftList.access$1600(r6)
                    com.conceptglobal.pmc.registration.DraftList r7 = com.conceptglobal.pmc.registration.DraftList.this
                    com.conceptglobal.pmc.utils.CircleImageView r7 = com.conceptglobal.pmc.registration.DraftList.access$1500(r7)
                    android.view.WindowManager$LayoutParams r0 = r2
                    r6.updateViewLayout(r7, r0)
                    goto Lf3
                Lee:
                    com.conceptglobal.pmc.registration.DraftList r6 = com.conceptglobal.pmc.registration.DraftList.this
                    com.conceptglobal.pmc.registration.DraftList.access$602(r6, r2)
                Lf3:
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.registration.DraftList.AnonymousClass3.onTouch(android.view.View, android.view.MotionEvent):boolean");
            }
        });
        this.windowManager.addView(this.globalView, layoutParams);
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
        private final SparseArray<WeakReference<Fragment>> instantiatedFragments;
        Fragment[] mFragments;
        ArrayList<DraftListSwipeTabs> mTabs;

        public PagerAdapter(FragmentManager fragmentManager, ArrayList<DraftListSwipeTabs> arrayList) {
            super(fragmentManager);
            this.mTabs = new ArrayList<>();
            this.instantiatedFragments = new SparseArray<>();
            this.mTabs = arrayList;
            this.mFragments = new Fragment[arrayList.size()];
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
                        this.mFragments[i] = DraftFragment.newInstance(i, DraftList.farmerType);
                        break;
                    case "Audience/DRAFT":
                        this.mFragments[i] = DraftFragment.newInstance(i, DraftList.farmerType);
                        break;
                    case "ALL":
                        if (DraftList.farmerType.equals(ConstantsPMC.TYPE_FARMER)) {
                            this.mFragments[i] = FarmersSearchFragment.newInstance(DraftList.farmerType);
                            break;
                        } else if (DraftList.farmerType.equals("Planter")) {
                            this.mFragments[i] = FarmersSearchFragment.newInstance(DraftList.farmerType);
                            break;
                        } else if (DraftList.farmerType.equals("Village")) {
                            this.mFragments[i] = FarmersSearchFragment.newInstance(DraftList.farmerType);
                            break;
                        } else if (DraftList.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || DraftList.farmerType.equalsIgnoreCase("Dealer")) {
                            this.mFragments[i] = RetailersSearchFragment.newInstance(DraftList.farmerType);
                            break;
                        } else {
                            this.mFragments[i] = RetailersSearchFragment.newInstance(DraftList.farmerType);
                            break;
                        }
                        break;
                    case "SENT":
                        this.mFragments[i] = DraftFragment.newInstance(i, DraftList.farmerType);
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
        ShowcaseView build = new ShowcaseView.Builder(this).setTarget(new ViewTarget(this.fab)).setContentTitle("ADD " + farmerType).setContentText("Click Here to add " + farmerType).withMaterialShowcase().setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DraftList.this.counter != 0) {
                    return;
                }
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                DraftList.this.vp.setCurrentItem(3);
                DraftList.this.StartOverlayFragment();
                DraftList.this.showcaseView.hide();
                DraftList.this.fab.setEnabled(true);
                Toast.makeText(DraftList.this.getBaseContext(), "Testing", 0).show();
            }
        }).build();
        this.showcaseView = build;
        build.setButtonPosition(layoutParams);
        this.showcaseView.setButtonText("Next");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void StartOverlayFragment() {
        if (farmerType.equals(ConstantsPMC.TYPE_FARMER)) {
            ((FarmersSearchFragment) this.mPagerAdapter.getFragment(3)).fragmentCommunication();
            return;
        }
        if (farmerType.equals("Planter")) {
            ((FarmersSearchFragment) this.mPagerAdapter.getFragment(3)).fragmentCommunication();
            return;
        }
        if (farmerType.equals("Village")) {
            try {
                ((FarmersSearchFragment) this.mPagerAdapter.getFragment(3)).fragmentCommunication();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        ((RetailersSearchFragment) this.mPagerAdapter.getFragment(3)).fragmentCommunication();
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
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(DraftList.this);
                if (DraftList.this.isValidMobileNumber(editText.getText().toString())) {
                    if (DraftList.this.isValidMobileNumberWithExp(editText.getText().toString())) {
                        DraftList.this.checkFarmerInTerritory(editText.getText().toString());
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
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(DraftList.this);
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

    public void checkGSTExistOrNot(String str, String str2) {
        try {
            if (this.getDataFromDB.isMobileNumExists("SELECT PANNo FROM DealerMaster where  PANNo = '" + str2 + "' and (IsActive=1 or IsActive='True')")) {
                showRetailerDetailsDialog(this.getDataFromDB.getTerritoryDealerDetails(Queries.getInstance().getTerritoryRetailerQry1WithGst(str2)), "DealerMaster");
            } else {
                showRetailerNoDataAvailableDialog("No Retailer/Distributor data found.", str, str2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean checkisGSTExistOrNot(String str, String str2) {
        try {
            GetDataFromDB getDataFromDB = this.getDataFromDB;
            StringBuilder sb = new StringBuilder("SELECT VATNo FROM DealerMaster where  VATNo = '");
            sb.append(str2);
            sb.append("' and (IsActive=1 or IsActive='True')");
            return getDataFromDB.isMobileNumExists(sb.toString());
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean checkisMfmsExistOrNot(String str, String str2) {
        try {
            GetDataFromDB getDataFromDB = this.getDataFromDB;
            StringBuilder sb = new StringBuilder("SELECT PANNo FROM DealerMaster where  PANNo = '");
            sb.append(str2);
            sb.append("' and (IsActive=1 or IsActive='True')");
            return getDataFromDB.isMobileNumExists(sb.toString());
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private void showNoDataAvailableDialog(String str, final String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false);
        builder.setPositiveButton("Add Farmer", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent(DraftList.this.context, (Class<?>) AddFarmer.class);
                Bundle bundle = new Bundle();
                bundle.putString("MobileNumber", str2);
                bundle.putString("farmerType", ConstantsPMC.TYPE_FARMER);
                if (DraftList.this.isFromTestmonial) {
                    bundle.putBoolean("isFromTestimonal", DraftList.this.isFromTestmonial);
                } else if (DraftList.this.isFromFeedBack) {
                    bundle.putBoolean("isFromFeedBack", DraftList.this.isFromFeedBack);
                } else if (DraftList.this.isFromSurvey) {
                    bundle.putBoolean("isFromSurvey", DraftList.this.isFromSurvey);
                } else {
                    bundle.putBoolean("FromSelfAssignment", DraftList.this.isFromSelfAssignment);
                }
                bundle.putInt("SegmentId", DraftList.this.segmentId);
                intent.putExtras(bundle);
                if (!DraftList.this.isFromSurvey) {
                    DraftList.this.context.startActivity(intent);
                    DraftList.this.finish();
                } else {
                    DraftList.this.startActivityForResult(intent, 101);
                }
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(getResources().getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.8
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
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (str.equals("FarmerMaster")) {
                    Intent intent = new Intent(DraftList.this.context, (Class<?>) AddFarmer.class);
                    Bundle bundle = new Bundle();
                    bundle.putString("farmerId", territotyFarmerMaster.getRespondentNo());
                    bundle.putString("farmerType", ConstantsPMC.TYPE_FARMER);
                    bundle.putString("isFraom", "ALL");
                    if (DraftList.this.isFromSurvey) {
                        bundle.putBoolean("isFromSurvey", DraftList.this.isFromSurvey);
                    }
                    intent.putExtras(bundle);
                    if (!DraftList.this.isFromSurvey) {
                        DraftList.this.context.startActivity(intent);
                        DraftList.this.finish();
                    } else {
                        DraftList.this.startActivityForResult(intent, 101);
                    }
                    dialog.dismiss();
                }
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.10
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
        System.out.println("[6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]");
        return Pattern.compile("[6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]").matcher(str).matches();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRetailerMobileSearchDialog() {
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_mobile_search);
        final EditText editText = (EditText) dialog.findViewById(R.id.etMobileNumber);
        final EditText editText2 = (EditText) dialog.findViewById(R.id.etGstNumber);
        editText2.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_retailer_dialog_hint()));
        editText2.setVisibility(0);
        Button button = (Button) dialog.findViewById(R.id.btn_cancel_alert);
        Button button2 = (Button) dialog.findViewById(R.id.btn_search_alert);
        button2.setText("Search Retailer/Distributor");
        dialog.setCanceledOnTouchOutside(false);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(DraftList.this);
                if (!DraftList.this.isValidMobileNumber(editText.getText().toString()) || !DraftList.this.isValidMobileNumberWithExp(editText.getText().toString())) {
                    editText.setError("Please enter 10 digit valid mobile number");
                    return;
                }
                if (editText2.getText().toString().isEmpty() || !DraftList.isValidPANNo(editText2.getText().toString())) {
                    editText2.setError("Please enter valid PAN");
                    return;
                }
                if (DraftList.this.checkIsRetailerMobileExist(editText.getText().toString(), editText2.getText().toString()) && DraftList.this.checkisMfmsExistOrNot(editText.getText().toString(), editText2.getText().toString())) {
                    if (DraftList.this.checkIsRetailerMobileExist(editText.getText().toString(), editText2.getText().toString())) {
                        DraftList.this.checkRetailerInTerritory(editText.getText().toString(), editText2.getText().toString());
                    } else if (DraftList.this.checkisMfmsExistOrNot(editText.getText().toString(), editText2.getText().toString())) {
                        DraftList.this.checkGSTExistOrNot(editText.getText().toString(), editText2.getText().toString());
                    }
                } else {
                    DraftList.this.checkRetailerInTerritory(editText.getText().toString(), editText2.getText().toString());
                }
                dialog.dismiss();
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(DraftList.this);
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

    public void checkRetailerInTerritory(String str, String str2) {
        try {
            String encryptRemovenewLine = Encryption.encryptRemovenewLine(str);
            boolean isMobileNumExists = this.getDataFromDB.isMobileNumExists("SELECT MobileNumber FROM DealerMaster where  MobileNumber = '" + encryptRemovenewLine + "' and PANNo = '" + str2 + "' and CustomerTypeID = '2' ");
            TerritotyDealerMaster territoryDealerDetails = this.getDataFromDB.getTerritoryDealerDetails(Queries.getInstance().getTerritoryRetailerQry(encryptRemovenewLine));
            if (isMobileNumExists) {
                showRetailerDetailsDialog(this.getDataFromDB.getTerritoryDealerDetails(Queries.getInstance().getTerritoryRetailerQry1(encryptRemovenewLine, str2)), "DealerMaster");
            } else if (territoryDealerDetails.getContactId() != null && !territoryDealerDetails.getContactId().equals("0")) {
                showRetailerDetailsDialog(territoryDealerDetails, "TerritoryDealerMaster");
            } else {
                showRetailerNoDataAvailableDialog("No Retailer/Distributor data found.", str, str2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean checkIsRetailerMobileExist(String str, String str2) {
        try {
            String encryptRemovenewLine = Encryption.encryptRemovenewLine(str);
            boolean isMobileNumExists = this.getDataFromDB.isMobileNumExists("SELECT MobileNumber FROM DealerMaster where  MobileNumber = '" + encryptRemovenewLine + "' and PANNo = '" + str2 + "' and CustomerTypeID = '2' ");
            TerritotyDealerMaster territoryDealerDetails = this.getDataFromDB.getTerritoryDealerDetails(Queries.getInstance().getTerritoryRetailerQry(encryptRemovenewLine));
            if (!isMobileNumExists || territoryDealerDetails.getContactId() == null) {
                return false;
            }
            return !territoryDealerDetails.getContactId().equals("0");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private void showRetailerNoDataAvailableDialog(String str, final String str2, final String str3) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton("Add", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent(DraftList.this.context, (Class<?>) AddRetailer.class);
                Bundle bundle = new Bundle();
                bundle.putString("MobileNumber", str2);
                bundle.putString("GstNo", str3);
                intent.putExtra("farmerType", DraftList.farmerType);
                if (DraftList.this.isFromTestmonial) {
                    bundle.putBoolean("isFromTestimonal", DraftList.this.isFromTestmonial);
                } else if (DraftList.this.isFromFeedBack) {
                    bundle.putBoolean("isFromFeedBack", DraftList.this.isFromFeedBack);
                } else {
                    bundle.putBoolean("FromSelfAssignment", DraftList.this.isFromSelfAssignment);
                }
                if (DraftList.this.isFromSurvey) {
                    bundle.putBoolean("isFromSurvey", DraftList.this.isFromSurvey);
                }
                bundle.putInt("SegmentId", DraftList.this.segmentId);
                intent.putExtras(bundle);
                if (!DraftList.this.isFromSurvey) {
                    DraftList.this.context.startActivity(intent);
                    DraftList.this.finish();
                } else {
                    DraftList.this.startActivityForResult(intent, 101);
                }
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(getResources().getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.14
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
        textView.setText(str2 + "\n\n" + getResources().getString(R.string.pmc_reg_retailer_name) + "   : " + territotyDealerMaster.getRetailerShopName() + "\n\n" + getResources().getString(R.string.pmc_reg_mobile_no) + " : " + territotyDealerMaster.getMobileNumber() + "\n\n" + getResources().getString(R.string.pmc_reg_pan_no) + " : " + territotyDealerMaster.getPanno() + "\n\nMandal Name    : " + territotyDealerMaster.getTerritory() + "\n\nVillage Name     : " + territotyDealerMaster.getVillage());
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.15
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
                    Intent intent = new Intent(DraftList.this.context, (Class<?>) AddRetailer.class);
                    Bundle bundle = new Bundle();
                    bundle.putString("farmerId", territotyDealerMaster.getContactId() + "");
                    if (i == 2) {
                        intent.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                    } else if (i == 3) {
                        intent.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
                    }
                    if (DraftList.this.isFromSurvey) {
                        bundle.putBoolean("isFromSurvey", DraftList.this.isFromSurvey);
                    }
                    bundle.putString("isFraom", "ALL");
                    intent.putExtras(bundle);
                    if (!DraftList.this.isFromSurvey) {
                        DraftList.this.context.startActivity(intent);
                        DraftList.this.finish();
                    } else {
                        DraftList.this.startActivityForResult(intent, 101);
                    }
                    dialog.dismiss();
                }
                dialog.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.registration.DraftList.16
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
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 101) {
            if (this.isFromSurvey) {
                if (farmerType.equals(ConstantsPMC.TYPE_FARMER) || farmerType.equals(ConstantsPMC.TYPE_Retailer)) {
                    Intent intent2 = new Intent();
                    intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), intent.getStringExtra(ConstantDeclarations.getInstance().getKEYFARMERID()));
                    intent2.putExtra("SEGMENTID", intent.getStringExtra("SEGMENTID"));
                    intent2.putExtra("isFrom", this.isFromSurvey);
                    setResult(-1, intent2);
                    finish();
                    return;
                }
                return;
            }
            return;
        }
        if (!farmerType.equals(ConstantsPMC.TYPE_FARMER)) {
            if (farmerType.equals(ConstantsPMC.TYPE_Retailer)) {
                ((RetailersSearchFragment) this.mPagerAdapter.getFragment(0)).onActivityResult(i, i2, intent);
                return;
            }
            if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || farmerType.equalsIgnoreCase("Dealer")) {
                ((RetailersSearchFragment) this.mPagerAdapter.getFragment(0)).onActivityResult(i, i2, intent);
                return;
            } else {
                if (farmerType.equals("Village")) {
                    ((FarmersSearchFragment) this.mPagerAdapter.getFragment(0)).onActivityResult(i, i2, intent);
                    return;
                }
                return;
            }
        }
        ((FarmersSearchFragment) this.mPagerAdapter.getFragment(0)).onActivityResult(i, i2, intent);
    }

    public static boolean isValidGSTNo(String str) {
        Pattern compile = Pattern.compile("^[0-9]{2}[A-Za-z]{5}[0-9]{4}[A-Za-z]{1}[1-9A-Za-z]{1}[Zz]{1}[0-9A-Za-z]{1}$");
        if (str == null) {
            return false;
        }
        return compile.matcher(str).matches();
    }

    public static boolean isValidPANNo(String str) {
        Pattern compile = Pattern.compile("[A-Z]{5}[0-9]{4}[A-Z]{1}");
        if (str == null) {
            return false;
        }
        return compile.matcher(str).matches();
    }

    private void validateRetailerAddtionStatus() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("RetailerNonAddtionRoleIDs"));
            String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
            if (singleValue == null || singleValue.length() <= 0) {
                return;
            }
            for (String str : singleValue.split(",")) {
                if (str.equals(singleValue2)) {
                    this.isEligibletoAdd = false;
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setBottomViewPadding() {
        ViewCompat.setOnApplyWindowInsetsListener(this.fab, new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.registration.DraftList$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return DraftList.lambda$setBottomViewPadding$0(view, windowInsetsCompat);
            }
        });
    }

    static /* synthetic */ WindowInsetsCompat lambda$setBottomViewPadding$0(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        TabWidget tabWidget = (TabWidget) view.findViewById(android.R.id.tabs);
        if (tabWidget != null) {
            tabWidget.setPadding(tabWidget.getPaddingLeft(), tabWidget.getPaddingTop(), tabWidget.getPaddingRight(), insets.bottom);
        }
        return windowInsetsCompat;
    }
}
