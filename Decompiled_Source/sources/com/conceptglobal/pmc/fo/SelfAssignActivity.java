package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.ifastscroll.FastScroller;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.SelfAssignAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.model.CustomListDisplayModel;
import com.conceptglobal.pmc.textdrawable.ColorGenerator;
import com.conceptglobal.pmc.textdrawable.TextDrawable;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmc.views.RippleView;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class SelfAssignActivity extends BaseActivity {
    private static final int GETCUSTOMER = 3;
    private static final int GETNEWACTIVITY = 2;
    private int activityId;
    private TextView assignTypeText;
    protected CardView cardview;
    private Context context;
    private RecyclerView customerList;
    private TextView farmerText;
    private FastScroller fastScroller;
    private GetDataFromDB getdataDb;
    private TextDrawable.IBuilder mDrawableBuilder;
    private TextView marketText;
    protected ImageView phonedail;
    protected TextView profTextView;
    protected ImageView profile_image;
    private TextView retailerText;
    private RippleView rippleView;
    private int segmentId;
    private List<CustomListDisplayModel> segmentlist;
    private TextView selectText;
    private TextView selecttitle;
    private String title;
    private TextView villageText;
    private String tag = "SelfAssignActivity";
    private String farmerId = "0";
    private int isFromassignment = 0;
    private int isFromComplaint = 0;
    private int isFromOrders = 0;
    private int isFromTestimonial = 0;
    private int isFromFeedBack = 0;
    private int isFromSurvey = 0;
    private int isFromTodo = 0;
    private ColorGenerator mColorGenerator = ColorGenerator.MATERIAL;

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.self_assign);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
            if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selfAssignText()) == null) {
                CustomActionBar.initActionBar(this, "Self Assignment(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selfAssignText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selfAssignText()) == null) {
            CustomActionBar.initActionBar(this, "Self Assignment(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        } else {
            CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selfAssignText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        }
        getData();
        if (this.isFromassignment == 1) {
            try {
                CustomActionBar.initActionBar(this, "Select Customer Type");
            } catch (Exception unused) {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selfAssignText()));
            }
        }
        if (this.isFromTestimonial == 111) {
            try {
                InsertDataIntoDB.insertLog4Trace("Testimonials Screen", "", String.valueOf(this.activityId), "", "", false);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                CustomActionBar.initActionBar(this, "Testimonials(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, "Testimonials(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        }
        if (this.isFromFeedBack == 222) {
            if (getIntent().hasExtra("Title")) {
                this.title = getIntent().getStringExtra("Title");
            }
            try {
                InsertDataIntoDB.insertLog4Trace("FeedBack Form Screen", "", String.valueOf(this.activityId), "", "", false);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                CustomActionBar.initActionBar(this, this.title + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, this.title + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        }
        if (this.isFromSurvey == 1) {
            try {
                InsertDataIntoDB.insertLog4Trace("FeedBack Form Screen", "", String.valueOf(this.activityId), "", "", false);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                CustomActionBar.initActionBar(this, "Survey(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, "Survey(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        } else {
            try {
                InsertDataIntoDB.insertLog4Trace("SelfAssign Screen", "", String.valueOf(this.activityId), "", "", false);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        init();
        checkDraftValidity();
    }

    private void getData() {
        Intent intent = getIntent();
        if (intent.hasExtra("isFromAssignment")) {
            this.isFromassignment = intent.getIntExtra("isFromAssignment", 0);
            this.activityId = intent.getIntExtra("ACTIVITYID", 0);
        }
        if (intent.hasExtra("isFromOrders")) {
            this.isFromOrders = intent.getIntExtra("isFromOrders", 0);
            this.activityId = intent.getIntExtra("ACTIVITYID", 0);
        }
        if (intent.hasExtra("isFromComplaints")) {
            this.isFromComplaint = intent.getIntExtra("isFromComplaints", 0);
            this.activityId = intent.getIntExtra("ACTIVITYID", 0);
        }
        if (intent.hasExtra("isFromTestimonial")) {
            this.isFromTestimonial = intent.getIntExtra("isFromTestimonial", 0);
            this.activityId = intent.getIntExtra("ACTIVITYID", 0);
        }
        if (intent.hasExtra("isFromFeedBack")) {
            this.isFromFeedBack = intent.getIntExtra("isFromFeedBack", 0);
            this.activityId = intent.getIntExtra("ACTIVITYID", 0);
        }
        if (intent.hasExtra("isFromSurvey")) {
            this.isFromSurvey = intent.getIntExtra("isFromSurvey", 0);
            this.activityId = intent.getIntExtra("ACTIVITYID", 0);
        }
        if (intent.hasExtra("isFromTodo")) {
            this.isFromTodo = intent.getIntExtra("isFromTodo", 0);
        }
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void init() {
        this.getdataDb = new GetDataFromDB();
        TextView textView = (TextView) findViewById(R.id.selecttitle);
        this.selecttitle = textView;
        textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectAsignTypeText()));
        if (this.isFromTestimonial == 111) {
            this.selecttitle.setText("Select Testimonial Type");
        } else if (this.isFromFeedBack == 222) {
            this.selecttitle.setText("Select Complaint Segment Type");
        }
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.listViewcustomerType);
        this.customerList = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.customerList.setLayoutManager(new LinearLayoutManager(this, 1, false));
        this.mDrawableBuilder = TextDrawable.builder().round();
        if (this.isFromassignment == 1) {
            this.segmentlist = this.getdataDb.getCustomTypeList(Queries.getInstance().getSegmentDataUserWise(this.activityId));
        } else if (this.isFromOrders == 1) {
            this.segmentlist = this.getdataDb.getCustomTypeList(Queries.getInstance().getSegmentDataOrders());
        } else if (this.isFromComplaint == 1) {
            this.segmentlist = this.getdataDb.getCustomTypeList(Queries.getInstance().getSegmentDataComplaints());
        } else if (this.isFromTestimonial == 111) {
            GetDataFromDB getDataFromDB = this.getdataDb;
            Queries queries = Queries.getInstance();
            new SharedPrefManager();
            this.segmentlist = getDataFromDB.getCustomTypeList(queries.getTSTSegmentData(SharedPrefManager.getPMCLanguage(this.context)));
        } else if (this.isFromFeedBack == 222) {
            GetDataFromDB getDataFromDB2 = this.getdataDb;
            Queries queries2 = Queries.getInstance();
            new SharedPrefManager();
            this.segmentlist = getDataFromDB2.getCustomTypeList(queries2.getFBFSegmentData(SharedPrefManager.getPMCLanguage(this.context)));
        } else {
            GetDataFromDB getDataFromDB3 = this.getdataDb;
            Queries queries3 = Queries.getInstance();
            new SharedPrefManager();
            this.segmentlist = getDataFromDB3.getCustomTypeList(queries3.getSegmentData(SharedPrefManager.getPMCLanguage(this.context)));
        }
        FastScroller fastScroller = (FastScroller) findViewById(R.id.fastscroll);
        this.fastScroller = fastScroller;
        fastScroller.setVisibility(8);
        SelfAssignAdapter selfAssignAdapter = new SelfAssignAdapter(this, this.segmentlist, this.isFromassignment, this.isFromOrders, this.isFromComplaint, this.isFromTestimonial, this.isFromFeedBack, this.isFromTodo);
        this.customerList.setAdapter(selfAssignAdapter);
        selfAssignAdapter.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 2) {
            if (i != 3) {
                return;
            }
            if (i2 != 0 && intent != null) {
                setResult(-1, intent);
                finish();
            }
        }
        if (i2 == 0 || intent == null || intent.getStringArrayExtra(ConstantDeclarations.getInstance().getKEYSELECTION()) == null) {
            return;
        }
        String[] stringArray = intent.getExtras().getStringArray(ConstantDeclarations.getInstance().getKEYSELECTION());
        this.farmerId = intent.getStringExtra("FarmerId");
        this.segmentId = intent.getIntExtra("SegmentId", 0);
        boolean booleanExtra = intent.getBooleanExtra("isfrom", false);
        Log.d("isfrom", "" + booleanExtra);
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (stringArray != null) {
            try {
                new ArrayList();
                String str = stringArray[0];
                List<String> list = this.getdataDb.getList(Queries.getInstance().getListOfAttributesUpdate(str));
                if (list != null && list.size() > 0) {
                    Iterator<String> it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            InsertDataIntoDB.insertCustomerAttributeDetails(this.farmerId, str, it.next(), this.segmentId, 0, timeInMillis, 1);
                        } catch (Exception e) {
                            PLog.e(this.tag, e);
                        }
                    }
                }
            } catch (Exception e2) {
                PLog.e(this.tag, e2);
            }
        }
        if (booleanExtra) {
            Intent intent2 = new Intent(getBaseContext(), (Class<?>) SAAttributeActivity_FBF.class);
            intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerId);
            intent2.putExtra("ACTIVITYID", Integer.parseInt(stringArray[0]));
            intent2.putExtra("ACTIVITYNAME", stringArray[1]);
            intent2.putExtra("SEGMENTID", this.segmentId);
            intent2.putExtra("TRANSID", timeInMillis);
            intent2.putExtra("ASSIGNMENTID", 0);
            intent2.addFlags(67108864);
            startActivity(intent2.addFlags(131072).addFlags(67108864));
            return;
        }
        Intent intent3 = new Intent(getBaseContext(), (Class<?>) SAAttributeActivity.class);
        intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerId);
        intent3.putExtra("ACTIVITYID", Integer.parseInt(stringArray[0]));
        intent3.putExtra("ACTIVITYNAME", stringArray[1]);
        intent3.putExtra("SEGMENTID", this.segmentId);
        intent3.putExtra("ISSELFASSIGN", 1);
        intent3.putExtra("TRANSID", timeInMillis);
        intent3.putExtra("ASSIGNMENTID", 0);
        intent3.addFlags(67108864);
        startActivity(intent3.addFlags(131072).addFlags(67108864));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.farmer, menu);
        MenuItem findItem = menu.findItem(R.id.item_add_draft);
        if (findItem != null && this.isFromFeedBack == 222) {
            findItem.setVisible(false);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
            return true;
        }
        if (itemId == R.id.item_add_draft) {
            if (this.isFromTestimonial == 111) {
                startActivity(new Intent(this, (Class<?>) SelfAssignDraftActivityCopy.class));
            } else {
                startActivity(new Intent(this, (Class<?>) SelfAssignDraftActivity.class));
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    private void checkDraftValidity() {
        try {
            int i = GetDataFromDB.getInstance().getcount(Queries.getInstance().getItemValue("DeleteSADrafts_Days"));
            if (i > 0) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                int i2 = i - 1;
                Calendar calendar = Calendar.getInstance();
                calendar.add(5, -i2);
                calendar.set(11, 0);
                calendar.set(12, 0);
                calendar.set(13, 0);
                calendar.set(14, 0);
                String format = simpleDateFormat.format(calendar.getTime());
                int intValue = this.getdataDb.getIntValue(Queries.getInstance().getDeleteDraftQueryCount(format));
                this.getdataDb.executeRawQueryInDB(Queries.getInstance().getDeleteDraftQuery(format));
                if (intValue > 0) {
                    showDetailsToUser(i2);
                }
            }
        } catch (Exception e) {
            PLog.e("Self Assign", e.getMessage());
        }
    }

    private void showDetailsToUser(int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage("Drafts which are older than " + i + " days are deleted from mobile").setCancelable(false).setNeutralButton("OK", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SelfAssignActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        }).setCancelable(false);
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }
}
