package com.conceptglobal.pmc.fo;

import android.content.Context;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.SelfAssignDraftAdapterCopy;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.util.ArrayList;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class SelfAssignDraftActivityCopy extends BaseActivity {
    protected static final String TAG = "SelfAssignDraftActivityCopy";
    private Context context;
    private ArrayList<AssignmentActivityDetailsModel> listFarmerNames = new ArrayList<>();
    private SelfAssignDraftAdapterCopy recyclerAdapter;
    private RecyclerView segmentTypelist;

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_self_assign_draft);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
            if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selfAssignDraftsText()) == null) {
                CustomActionBar.initActionBar(this, "Testimonial Drafts(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selfAssignDraftsText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selfAssignDraftsText()) == null) {
            CustomActionBar.initActionBar(this, "Testimonial Drafts(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        } else {
            CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selfAssignDraftsText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        }
        init();
        getData();
        setData();
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void init() {
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.lv_draft_header);
        this.segmentTypelist = recyclerView;
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.segmentTypelist.setLayoutManager(linearLayoutManager);
    }

    private void getData() {
        ArrayList<AssignmentActivityDetailsModel> selfDraftDetails = GetDataFromDB.getInstance().getSelfDraftDetails(Queries.getInstance().getAllDraftData_TST());
        this.listFarmerNames = selfDraftDetails;
        if (selfDraftDetails.size() == 0) {
            Toast.makeText(getBaseContext(), "No Drafts available", 0).show();
        }
    }

    private void setData() {
        ArrayList<AssignmentActivityDetailsModel> arrayList = this.listFarmerNames;
        if (arrayList != null && arrayList.size() > 0) {
            this.segmentTypelist.setAdapter(null);
            SelfAssignDraftAdapterCopy selfAssignDraftAdapterCopy = new SelfAssignDraftAdapterCopy(this.context, this.listFarmerNames);
            this.recyclerAdapter = selfAssignDraftAdapterCopy;
            this.segmentTypelist.setAdapter(selfAssignDraftAdapterCopy);
            return;
        }
        finish();
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getData();
        setData();
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
