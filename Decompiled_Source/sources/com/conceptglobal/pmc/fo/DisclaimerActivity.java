package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.MainHomePageActivity;
import com.conceptglobal.pmc.SyncPMC;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class DisclaimerActivity extends BaseActivity implements View.OnClickListener {
    private static final String TAG = "DisclaimerActivity";
    private Button btnagree;
    private Button btndisagree;
    private Button btninactive;
    private Intent intentGetData;
    private String villageName;
    private int farmerID = 0;
    private int villageID = 0;

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_disclaimer);
        initialization();
        setActionBar();
        getData();
    }

    private void initialization() {
        this.btnagree = (Button) findViewById(R.id.btn_agree);
        this.btndisagree = (Button) findViewById(R.id.btn_disagree);
        this.btninactive = (Button) findViewById(R.id.btn_inactive_farmer_other_details);
        this.btnagree.setOnClickListener(this);
        this.btndisagree.setOnClickListener(this);
        this.btninactive.setOnClickListener(this);
    }

    private void getData() {
        Intent intent = getIntent();
        this.intentGetData = intent;
        this.farmerID = intent.getIntExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), 0);
        this.villageID = this.intentGetData.getIntExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), 0);
    }

    private void setActionBar() {
        getIntent();
        getSupportActionBar().setDisplayOptions(16);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        getSupportActionBar().setCustomView(R.layout.header_actionbar);
        getSupportActionBar().setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.action_bar_bg_blue)));
        ((TextView) findViewById(R.id.tv_subtitle_header_actionbar)).setText(getResources().getString(R.string.pmc_disclaimer));
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.btn_agree) {
            if (id == R.id.btn_disagree) {
                showAlertCancel("Do You Want to DisAgree  ?", 1);
                return;
            } else {
                if (id != R.id.btn_inactive_farmer_other_details) {
                    return;
                }
                showAlertCancel("Do You Want to InActive  ?", 2);
                return;
            }
        }
        Intent intent = new Intent(this, (Class<?>) FarmerFormActivity.class);
        intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
        intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), this.villageID);
        intent.addFlags(67108864);
        startActivity(intent.addFlags(131072).addFlags(67108864));
        finish();
    }

    private void showAlertCancel(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.DisclaimerActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                int i3 = i;
                if (i3 == 1) {
                    try {
                        InsertDataIntoDB.updatearmer("Update  pmcFarmerDetails set Field1='0' , isVisited='true' where farmerId= " + DisclaimerActivity.this.farmerID + "");
                        DisclaimerActivity.this.villageName = GetDataFromDB.getInstance().getStringValue("select villageName from pmcFarmerDetails where farmerId=" + DisclaimerActivity.this.farmerID + "");
                    } catch (Exception e) {
                        e.printStackTrace();
                        PLog.e(DisclaimerActivity.TAG, e);
                    }
                    if (UtilDeclarations.isOnline(DisclaimerActivity.this)) {
                        DisclaimerActivity.this.startActivity(new Intent(DisclaimerActivity.this, (Class<?>) SyncPMC.class));
                    } else {
                        Intent intent = new Intent(DisclaimerActivity.this, (Class<?>) FarmerSelectionActivity.class);
                        intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGENAME(), DisclaimerActivity.this.villageName);
                        intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), DisclaimerActivity.this.villageID);
                        intent.addFlags(335544320);
                        DisclaimerActivity.this.startActivity(intent.addFlags(131072).addFlags(67108864));
                    }
                } else if (i3 == 2) {
                    try {
                        InsertDataIntoDB.updatearmer("Update pmcFarmerDetails set isActive='false'  ,isVisited='true' where farmerId= " + DisclaimerActivity.this.farmerID + "");
                    } catch (Exception e2) {
                        PLog.e(DisclaimerActivity.TAG, e2);
                        e2.printStackTrace();
                    }
                    if (UtilDeclarations.isOnline(DisclaimerActivity.this)) {
                        DisclaimerActivity.this.startActivity(new Intent(DisclaimerActivity.this, (Class<?>) SyncPMC.class));
                    } else {
                        DisclaimerActivity.this.startActivity(new Intent(DisclaimerActivity.this, (Class<?>) MainHomePageActivity.class));
                    }
                    DisclaimerActivity.this.finish();
                }
                DisclaimerActivity.this.finish();
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.DisclaimerActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
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
