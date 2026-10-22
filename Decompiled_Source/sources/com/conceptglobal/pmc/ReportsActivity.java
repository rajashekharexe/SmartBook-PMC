package com.conceptglobal.pmc;

import android.content.Context;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.ifastscroll.FastScroller;
import com.conceptglobal.pmc.adapter.ReportsAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.ReportsActivityModel;
import com.conceptglobal.pmc.textdrawable.ColorGenerator;
import com.conceptglobal.pmc.textdrawable.TextDrawable;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.ExceptionHandler;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmc.views.RippleView;
import com.google.firebase.messaging.Constants;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ReportsActivity extends AppCompatActivity {
    private static final int GETCUSTOMER = 3;
    private static final int GETNEWACTIVITY = 2;
    protected CardView cardview;
    private Context context;
    private RecyclerView customerList;
    private TextView farmerText;
    private FastScroller fastScroller;
    private GetDataFromDB getdataDb;
    private TextDrawable.IBuilder mDrawableBuilder;
    private TextView marketText;
    protected TextView profTextView;
    protected ImageView profile_image;
    private List<ReportsActivityModel> reportslist;
    private TextView retailerText;
    private RippleView rippleView;
    private TextView selectText;
    private TextView selecttitle;
    private TextView villageText;
    private String tag = "SelfAssignActivity";
    private ColorGenerator mColorGenerator = ColorGenerator.MATERIAL;
    private String from = "";

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Thread.setDefaultUncaughtExceptionHandler(new ExceptionHandler(this));
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.reports);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        String string = getIntent().getExtras().getString(Constants.MessagePayloadKeys.FROM);
        this.from = string;
        if (string != null && string.equals("Planning")) {
            CustomActionBar.initActionBar(this, "Planning");
        } else {
            CustomActionBar.initActionBar(this, "Reports");
        }
        String str = this.from;
        if (str != null && str.equals("Planning")) {
            CustomActionBar.initActionBar(this, "Planning (" + UtilDeclarations.getApplicationVersion(this) + ")");
        } else {
            String str2 = this.from;
            if (str2 != null && str2.equals("HRPolicy")) {
                CustomActionBar.initActionBar(this, "Policy (" + UtilDeclarations.getApplicationVersion(this) + ")");
            } else {
                CustomActionBar.initActionBar(this, "Reports (" + UtilDeclarations.getApplicationVersion(this) + ")");
            }
        }
        init();
        getData();
        setAdapter();
    }

    private void setAdapter() {
        List<ReportsActivityModel> list = this.reportslist;
        if (list == null || list.size() <= 0) {
            return;
        }
        ReportsAdapter reportsAdapter = new ReportsAdapter(this, this.reportslist, this.from);
        this.customerList.setAdapter(reportsAdapter);
        reportsAdapter.notifyDataSetChanged();
    }

    private void getData() {
        getIntent();
        if (this.from.equals("Reports")) {
            try {
                String value = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_reports_reguler());
                String value2 = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_reports_farmertargets());
                String value3 = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_reports_dayend());
                String value4 = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_applyleave_report());
                String value5 = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_attendance_report());
                String value6 = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_tada_report());
                this.reportslist = new ArrayList();
                ReportsActivityModel reportsActivityModel = new ReportsActivityModel();
                reportsActivityModel.setActivityID(1);
                reportsActivityModel.setActivityName(value);
                ReportsActivityModel reportsActivityModel2 = new ReportsActivityModel();
                reportsActivityModel2.setActivityID(2);
                reportsActivityModel2.setActivityName(value2);
                ReportsActivityModel reportsActivityModel3 = new ReportsActivityModel();
                reportsActivityModel3.setActivityID(3);
                reportsActivityModel3.setActivityName(value3);
                ReportsActivityModel reportsActivityModel4 = new ReportsActivityModel();
                reportsActivityModel4.setActivityID(4);
                reportsActivityModel4.setActivityName(value5);
                ReportsActivityModel reportsActivityModel5 = new ReportsActivityModel();
                reportsActivityModel5.setActivityID(5);
                reportsActivityModel5.setActivityName(value4);
                ReportsActivityModel reportsActivityModel6 = new ReportsActivityModel();
                reportsActivityModel6.setActivityID(6);
                reportsActivityModel6.setActivityName(value6);
                this.reportslist.add(reportsActivityModel);
                this.reportslist.add(reportsActivityModel3);
                try {
                    String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("ResignationUserRoleId"));
                    String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
                    if (singleValue != null && singleValue.length() > 0) {
                        String[] split = singleValue.split(",");
                        int i = 0;
                        while (true) {
                            if (i >= split.length) {
                                break;
                            }
                            if (split[i].equals(singleValue2)) {
                                this.reportslist.add(reportsActivityModel4);
                                this.reportslist.add(reportsActivityModel5);
                                this.reportslist.add(reportsActivityModel6);
                                break;
                            }
                            i++;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (this.from.equals("Planning")) {
            this.reportslist = new ArrayList();
            ReportsActivityModel reportsActivityModel7 = new ReportsActivityModel();
            reportsActivityModel7.setActivityID(1);
            reportsActivityModel7.setActivityName("Demand Generation Plan");
            ReportsActivityModel reportsActivityModel8 = new ReportsActivityModel();
            reportsActivityModel8.setActivityID(2);
            reportsActivityModel8.setActivityName("Product Wise Sales Plan");
            ReportsActivityModel reportsActivityModel9 = new ReportsActivityModel();
            reportsActivityModel9.setActivityID(3);
            reportsActivityModel9.setActivityName("Distributor Sales Plan");
            this.reportslist.add(reportsActivityModel7);
            try {
                GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoles());
                GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
                this.reportslist.add(reportsActivityModel8);
                this.reportslist.add(reportsActivityModel9);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        if (this.from.equals("HRPolicy")) {
            String value7 = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_hr_policy());
            String value8 = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_training_document());
            this.reportslist = new ArrayList();
            ReportsActivityModel reportsActivityModel10 = new ReportsActivityModel();
            reportsActivityModel10.setActivityID(1);
            reportsActivityModel10.setActivityName(value7);
            ReportsActivityModel reportsActivityModel11 = new ReportsActivityModel();
            reportsActivityModel11.setActivityID(2);
            reportsActivityModel11.setActivityName(value8);
            this.reportslist.add(reportsActivityModel10);
            this.reportslist.add(reportsActivityModel11);
        }
    }

    private void init() {
        this.getdataDb = new GetDataFromDB();
        TextView textView = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.selecttitle);
        this.selecttitle = textView;
        textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectAsignTypeText()));
        RecyclerView recyclerView = (RecyclerView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.listViewcustomerType);
        this.customerList = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.customerList.setLayoutManager(new LinearLayoutManager(this, 1, false));
        this.mDrawableBuilder = TextDrawable.builder().round();
        FastScroller fastScroller = (FastScroller) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.fastscroll);
        this.fastScroller = fastScroller;
        fastScroller.setVisibility(8);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }
}
