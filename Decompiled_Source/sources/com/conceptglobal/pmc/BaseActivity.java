package com.conceptglobal.pmc;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocationSettings;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.FileUtils;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.File;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public abstract class BaseActivity extends AppCompatActivity {
    private LinearLayout llNotiifcation;
    String location;
    private BroadcastReceiver reciever = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.BaseActivity.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String stringExtra = intent.getStringExtra("Message");
                String stringExtra2 = intent.getStringExtra(SettingsJsonConstants.PROMPT_TITLE_KEY);
                View inflate = BaseActivity.this.getLayoutInflater().inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.custom_toast, (ViewGroup) BaseActivity.this.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.toast_layout_root));
                ((TextView) inflate.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.text)).setText(stringExtra2 + IOUtils.LINE_SEPARATOR_UNIX + stringExtra);
                Toast toast = new Toast(BaseActivity.this.getApplicationContext());
                toast.setGravity(80, 0, 0);
                toast.setDuration(1);
                toast.setView(inflate);
                toast.show();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    SharedPreferences sharedPreferences;

    protected abstract void displayNotification(String str, String str2);

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.reciever, new IntentFilter("SyncStatus"));
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("MyPref", 4);
        this.sharedPreferences = sharedPreferences;
        try {
            String string = sharedPreferences.getString("location", "");
            this.location = string;
            string.equals("Start day");
        } catch (Exception unused) {
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.reciever);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            if (!new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath(), ConstantDeclarations.getInstance().getDatabasePath()).exists()) {
                showAlert("Important files got deleted. Kindly register again.");
            }
        } catch (Exception unused) {
        }
        try {
            if (!UtilDeclarations.isTimeAutomatic(getApplicationContext())) {
                showTimeSettingsAlertDialog("Please select date & time of type Automatic from settings, to use application");
                return;
            }
        } catch (Exception unused2) {
        }
        try {
            if (UtilDeclarations.isDeveloperOptionsEnabled(getApplicationContext())) {
                showDeveloperOptionsAlertDialog("Please turn off developer options to continue to use application");
                return;
            }
        } catch (Exception unused3) {
        }
        try {
            if (getLoginStatus() > 1) {
                showAlertDialogLogout("You are not login from last few days please re-login again.");
            }
        } catch (Exception unused4) {
        }
    }

    private void showTimeSettingsAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.BaseActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                BaseActivity.this.startActivity(new Intent("android.settings.DATE_SETTINGS"));
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showDeveloperOptionsAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.BaseActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
                intent.setFlags(268435456);
                BaseActivity.this.startActivity(intent);
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.BaseActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                ExitActivity.exitApplicationAnRemoveFromRecent(BaseActivity.this);
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        PLog.location("Navigation", "onLowMemory********************* ", "BaseActivity", UtilDeclarations.getDateTime());
    }

    private void showAlertDialogLogout(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.BaseActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                Intent intent = new Intent();
                intent.setAction(ConstantsPMC.ACTION_FINISH);
                intent.putExtra(ConstantsPMC.ACTION_MSG, "finish");
                BaseActivity.this.sendBroadcast(intent);
                BaseActivity.this.startActivity(new Intent(BaseActivity.this, (Class<?>) LoginActivity.class));
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private long getLoginStatus() {
        try {
            return UtilDeclarations.findDifference(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getLoginTime()), UtilDeclarations.getDateTime());
        } catch (Exception unused) {
            return 0L;
        }
    }

    private void fetchLocation() {
        LocationUtils locationUtils = new LocationUtils();
        if (!locationUtils.checkPermissions(this)) {
            locationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocationSettings(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.BaseActivity.6
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }
            }, "HomePage");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
