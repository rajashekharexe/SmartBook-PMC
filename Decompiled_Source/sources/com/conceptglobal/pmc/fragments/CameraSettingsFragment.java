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
public class CameraSettingsFragment extends Fragment {
    private int cameraSwitchValue;
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
        this.rootView = layoutInflater.inflate(R.layout.fragment_camera_settings, viewGroup, false);
        initialization();
        getData();
        setData();
        return this.rootView;
    }

    private void initialization() {
        this.switchNotification = (Switch) this.rootView.findViewById(R.id.switch1);
        this.switchTicker = (Switch) this.rootView.findViewById(R.id.switchTicker);
        this.saveButton = (Button) this.rootView.findViewById(R.id.buttonSaveChange);
        if (SharedPrefManager.getString(getActivity().getApplicationContext(), ConstantDeclarations.getInstance().getKeyTicketVisibility(), "False").equalsIgnoreCase("True")) {
            this.switchTicker.setChecked(true);
        } else {
            this.switchTicker.setChecked(false);
        }
        this.switchTicker.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.fragments.CameraSettingsFragment.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                CameraSettingsFragment.this.notifStatus = z;
                try {
                    if (z) {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateCameraSwitchStatus(2));
                        SharedPrefManager.putString(CameraSettingsFragment.this.getActivity().getApplicationContext(), ConstantDeclarations.getInstance().getKeyTicketVisibility(), "True");
                        Toast.makeText(CameraSettingsFragment.this.con, "Custom Camera Enabled..", 0).show();
                    } else {
                        if (z) {
                            return;
                        }
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateCameraSwitchStatus(1));
                        SharedPrefManager.putString(CameraSettingsFragment.this.getActivity().getApplicationContext(), ConstantDeclarations.getInstance().getKeyTicketVisibility(), "False");
                        Toast.makeText(CameraSettingsFragment.this.con, "Custom Camera Disabled..", 0).show();
                    }
                } catch (Exception e) {
                    e.getMessage();
                }
            }
        });
    }

    private void getData() {
        try {
            this.cameraSwitchValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValueFromConfigurableLookup("cameraOptions"));
        } catch (Exception e) {
            this.userNotifyStatus = true;
            e.printStackTrace();
        }
    }

    private void setData() {
        if (SharedPrefManager.getString(getActivity().getApplicationContext(), ConstantDeclarations.getInstance().getKeyTicketVisibility(), "True").equalsIgnoreCase("True")) {
            this.switchTicker.setChecked(true);
        } else {
            this.switchTicker.setChecked(false);
        }
    }

    private void sendNotificationStatus(boolean z) {
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
                CustomActionBar.initActionBar((AppCompatActivity) this.con, "Camera Settings (Training - " + UtilDeclarations.getApplicationVersion(this.con) + ")");
                return;
            }
            CustomActionBar.initActionBar((AppCompatActivity) this.con, " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settingsToolbarText()) + " (Training " + UtilDeclarations.getApplicationVersion(this.con) + " )");
            return;
        }
        if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settingsToolbarText()) == null) {
            CustomActionBar.initActionBar((AppCompatActivity) this.con, "Camera Settings ( Live " + UtilDeclarations.getApplicationVersion(this.con) + ")");
            return;
        }
        CustomActionBar.initActionBar((AppCompatActivity) this.con, " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settingsToolbarText()) + " (Live " + UtilDeclarations.getApplicationVersion(this.con) + " )");
    }
}
