package com.conceptglobal.pmc.fragments;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.NotificationStatusModel;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.sync.GetToken;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.gson.Gson;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class SettingsFragment extends Fragment {
    private Context con;
    private boolean notifStatus;
    private ProgressDialog progressDialog;
    private String response;
    private View rootView;
    private Button saveButton;
    private Switch switchNotification;
    private Switch switchTicker;
    private String urlString;
    private boolean userNotifyStatus = true;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.con = layoutInflater.getContext();
        this.rootView = layoutInflater.inflate(R.layout.fragment_settings, viewGroup, false);
        initialization();
        getData();
        setData();
        return this.rootView;
    }

    private void initialization() {
        this.switchNotification = (Switch) this.rootView.findViewById(R.id.switch1);
        this.switchTicker = (Switch) this.rootView.findViewById(R.id.switchTicker);
        Button button = (Button) this.rootView.findViewById(R.id.buttonSaveChange);
        this.saveButton = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.SettingsFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if ((!SettingsFragment.this.notifStatus) == SettingsFragment.this.userNotifyStatus) {
                    if (SettingsFragment.this.progressDialog == null || !SettingsFragment.this.progressDialog.isShowing()) {
                        SettingsFragment settingsFragment = SettingsFragment.this;
                        settingsFragment.progressDialog = ProgressDialog.show(settingsFragment.getContext(), null, "Sending data to server, Please wait..");
                    }
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.SettingsFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SettingsFragment.this.sendNotificationStatus(SettingsFragment.this.notifStatus);
                        }
                    }).start();
                    return;
                }
                Toast.makeText(SettingsFragment.this.con, "No changes are made", 0).show();
            }
        });
        this.switchNotification.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.fragments.SettingsFragment.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsFragment.this.notifStatus = z;
                if (z) {
                    Toast.makeText(SettingsFragment.this.con, "Notifications Enabled..", 0).show();
                } else {
                    if (z) {
                        return;
                    }
                    Toast.makeText(SettingsFragment.this.con, "Notification Disabled..", 0).show();
                }
            }
        });
        if (SharedPrefManager.getString(getActivity().getApplicationContext(), ConstantDeclarations.getInstance().getKeyTicketVisibility(), "True").equalsIgnoreCase("False")) {
            this.switchTicker.setChecked(false);
        } else {
            this.switchTicker.setChecked(true);
        }
        this.switchTicker.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.fragments.SettingsFragment.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsFragment.this.notifStatus = z;
                if (z) {
                    SharedPrefManager.putString(SettingsFragment.this.getActivity().getApplicationContext(), ConstantDeclarations.getInstance().getKeyTicketVisibility(), "True");
                    Toast.makeText(SettingsFragment.this.con, "Ticker Enabled..", 0).show();
                } else {
                    if (z) {
                        return;
                    }
                    SharedPrefManager.putString(SettingsFragment.this.getActivity().getApplicationContext(), ConstantDeclarations.getInstance().getKeyTicketVisibility(), "False");
                    Toast.makeText(SettingsFragment.this.con, "Ticker Disabled..", 0).show();
                }
            }
        });
    }

    private void getData() {
        try {
            this.userNotifyStatus = GetDataFromDB.getInstance().getcount(Queries.getInstance().getNotificationStatus()) != 0;
        } catch (Exception e) {
            this.userNotifyStatus = true;
            e.printStackTrace();
        }
    }

    private void setData() {
        this.switchNotification.setChecked(this.userNotifyStatus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNotificationStatus(boolean z) {
        Log.i("Notification Status", this.switchNotification.isSelected() + "");
        try {
            NotificationStatusModel notificationStatusModel = new NotificationStatusModel();
            Gson gson = new Gson();
            notificationStatusModel.setPDAID(ConstantsPMC.getInstance().getDeviceID());
            notificationStatusModel.setIsEnabled(z ? 1 : 0);
            String json = gson.toJson(notificationStatusModel);
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            this.urlString = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSendNotificationEnabledStatus();
            this.response = WebService.getInstance().sendRequestwithToken(json, this.urlString, wcfToken);
            ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(this.response), ResponseModel.class);
            this.response = (String) responseModel.getData();
            if (responseModel.getStatus().equals("AUTHORISED")) {
                if (responseModel.getData() != null && !this.response.isEmpty()) {
                    if (this.response.contains("Success")) {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateNotificationstatus(notificationStatusModel.getIsEnabled()));
                        this.userNotifyStatus = this.notifStatus;
                    } else if (this.response.contains("Failed")) {
                        this.switchNotification.setChecked(this.userNotifyStatus);
                        this.notifStatus = this.userNotifyStatus;
                    }
                } else {
                    this.switchNotification.setChecked(this.userNotifyStatus);
                    this.notifStatus = this.userNotifyStatus;
                }
            } else if (responseModel.getStatus().equals("UNAUTHORISED")) {
                this.switchNotification.setChecked(this.userNotifyStatus);
                this.notifStatus = this.userNotifyStatus;
                if (responseModel.getStatusMessage().equals("Invalid Token")) {
                    new GetToken(getActivity(), 2).StartGetToken();
                    Class<?> cls = Class.forName("com.conceptglobal.pmc.fragments.SettingsFragment");
                    Method declaredMethod = cls.getDeclaredMethod("sendNotificationStatus", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cls.newInstance(), Boolean.valueOf(z));
                }
            }
        } catch (Exception e) {
            PLog.e("Settingsfragment", e.toString(), "sendNotificationStatus", this.response);
        }
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        this.progressDialog.dismiss();
    }

    private void setCustomActionBar() {
        if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
            if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settingsToolbarText()) == null) {
                CustomActionBar.initActionBar((AppCompatActivity) this.con, "Settings (Training - " + UtilDeclarations.getApplicationVersion(this.con) + ")");
                return;
            }
            CustomActionBar.initActionBar((AppCompatActivity) this.con, " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settingsToolbarText()) + " (Training " + UtilDeclarations.getApplicationVersion(this.con) + " )");
            return;
        }
        if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settingsToolbarText()) == null) {
            CustomActionBar.initActionBar((AppCompatActivity) this.con, "Settings ( Live " + UtilDeclarations.getApplicationVersion(this.con) + ")");
            return;
        }
        CustomActionBar.initActionBar((AppCompatActivity) this.con, " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settingsToolbarText()) + " (Live " + UtilDeclarations.getApplicationVersion(this.con) + " )");
    }
}
