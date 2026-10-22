package com.conceptglobal.pmc.fragments;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.model.GetGeography;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.model.SDTV;
import com.conceptglobal.pmc.model.SendAckSdtv;
import com.conceptglobal.pmc.sync.GetToken;
import com.conceptglobal.pmc.utils.CustomProgressDialog;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Method;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FunctionalStateFragment extends Fragment implements View.OnClickListener {
    protected static final String TAG = "FunctionalStateFragment";
    private Button btnDownload;
    private Context context;
    private EditText edtDistrict;
    private EditText edtState;
    private SendAckSdtv objAck;
    private String response;
    View rootView;
    private TextView tvDistrictid;
    private TextView tvStateid;
    private String urlString;
    public WebService webServices;
    private boolean isSyncing = true;
    private final TextWatcher stateChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.FunctionalStateFragment.1
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            FunctionalStateFragment.this.edtDistrict.setText("");
            FunctionalStateFragment.this.tvDistrictid.setText("");
        }
    };

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.context = layoutInflater.getContext();
        View inflate = layoutInflater.inflate(R.layout.activity_functionlstate, viewGroup, false);
        this.rootView = inflate;
        this.edtState = (EditText) inflate.findViewById(R.id.et_state);
        this.edtDistrict = (EditText) this.rootView.findViewById(R.id.et_district);
        this.btnDownload = (Button) this.rootView.findViewById(R.id.btn_download);
        this.tvStateid = (TextView) this.rootView.findViewById(R.id.tv_stateid);
        this.tvDistrictid = (TextView) this.rootView.findViewById(R.id.tv_districtid);
        bindlabels();
        this.context = layoutInflater.getContext();
        this.edtState.setOnClickListener(this);
        this.edtDistrict.setOnClickListener(this);
        this.btnDownload.setOnClickListener(this);
        this.edtState.addTextChangedListener(this.stateChanged);
        this.webServices = WebService.getInstance();
        this.objAck = new SendAckSdtv();
        return this.rootView;
    }

    private void bindlabels() {
        this.edtState.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateText()));
        this.edtDistrict.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtText()));
        this.btnDownload.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_downloadFunStateButtonText()));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btn_download) {
            if (this.tvStateid.getText().toString().length() == 0) {
                Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseSelectStateToastInFS()), 0).show();
                return;
            }
            if (this.tvDistrictid.getText().toString().length() == 0) {
                String value = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseSelectDistrictToastInFS());
                Context context = this.context;
                if (TextUtils.isEmpty(value)) {
                    value = "Please select district";
                }
                Toast.makeText(context, value, 0).show();
                return;
            }
            if (UtilDeclarations.isOnline(this.context)) {
                new SDTSync().execute(new Void[0]);
                return;
            } else {
                showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_CannotSyncAlertText()));
                return;
            }
        }
        if (id != R.id.et_district) {
            if (id != R.id.et_state) {
                return;
            }
            ListPopupOne listPopupOne = new ListPopupOne(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateText()), Queries.getInstance().gettingStates(), view, this.tvStateid);
            listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
            listPopupOne.show();
            listPopupOne.getWindow().setSoftInputMode(3);
            return;
        }
        if (this.tvStateid.getText().toString().length() != 0) {
            ListPopupOne listPopupOne2 = new ListPopupOne(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtText()), Queries.getInstance().gettingDistricts(this.tvStateid.getText().toString()), view, this.tvDistrictid);
            listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
            listPopupOne2.show();
            listPopupOne2.getWindow().setSoftInputMode(3);
            return;
        }
        Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseSelectStateToastInFS()), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getGeoDetails() {
        try {
            GetGeography getGeography = new GetGeography();
            Gson gson = new Gson();
            getGeography.setStateId(Integer.parseInt(this.tvStateid.getText().toString()));
            if (this.tvDistrictid.getText().toString().length() != 0) {
                getGeography.setDistrictId(Integer.parseInt(this.tvDistrictid.getText().toString()));
            } else {
                getGeography.setDistrictId(0);
            }
            if (ConstantsPMC.getInstance().getDeviceID().length() != 0) {
                getGeography.setPDAID(Integer.parseInt(ConstantsPMC.getInstance().getDeviceID()));
            }
            String json = gson.toJson(getGeography);
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            String str = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSTDV();
            this.urlString = str;
            this.response = this.webServices.sendRequestwithToken(json, str, wcfToken);
            ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(this.response), ResponseModel.class);
            JSONObject jSONObject = new JSONObject(this.response);
            if (responseModel.getStatus().equals("AUTHORISED")) {
                if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) != null && jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() > 10) {
                    SendAckSdtv insertDtdv = InsertDataIntoDB.insertDtdv((SDTV) gson.fromJson((Reader) new StringReader(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE)), SDTV.class), this.objAck);
                    this.objAck = insertDtdv;
                    if (insertDtdv == null || insertDtdv.getAckList().toString().length() <= 0) {
                        return;
                    }
                    sendAcktoServer();
                    return;
                }
                this.isSyncing = false;
                return;
            }
            if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                new GetToken(this.context, 2).StartGetToken();
                Class<?> cls = Class.forName("com.conceptglobal.pmc.fragments.FunctionalStateFragment");
                Method declaredMethod = cls.getDeclaredMethod("getGeoDetails", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(cls.newInstance(), null);
            }
        } catch (Exception e) {
            this.isSyncing = false;
            PLog.e(TAG, e.toString(), "getGeoDetails", this.response);
        }
    }

    private void sendAcktoServer() {
        try {
            Gson gson = new Gson();
            this.objAck.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(this.objAck);
            this.urlString = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSTDAck();
            this.response = this.webServices.sendRequestwithToken(json, this.urlString, ConstantsPMC.getInstance().getWcfToken());
            ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(this.response), ResponseModel.class);
            JSONObject jSONObject = new JSONObject(this.response);
            if (responseModel.getStatus().equals("AUTHORISED")) {
                if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) != null && jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() > 3) {
                    if (!jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).contains(getResources().getString(R.string.success_message))) {
                        Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_invalidACKinFS()), 1).show();
                    }
                } else {
                    this.isSyncing = false;
                }
            } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                new GetToken(this.context, 2).StartGetToken();
                Class<?> cls = Class.forName("com.conceptglobal.pmc.fragments.FunctionalStateFragment");
                Method declaredMethod = cls.getDeclaredMethod("sendAcktoServer", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(cls.newInstance(), null);
            }
        } catch (Exception e) {
            this.isSyncing = false;
            PLog.e(TAG, e);
        }
    }

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FunctionalStateFragment.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_tryAgainDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FunctionalStateFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                FunctionalStateFragment.this.getGeoDetails();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(getActivity())) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private class SDTSync extends AsyncTask<Void, String, Void> {
        private CustomProgressDialog customProgressDialog;

        private SDTSync() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            CustomProgressDialog customProgressDialog = new CustomProgressDialog(FunctionalStateFragment.this.context, CustomProgressDialog.progressbarType.COUNT_BAR, "GetMasterSyncData");
            this.customProgressDialog = customProgressDialog;
            customProgressDialog.showDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_checkForNewMasterSyncPW()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            FunctionalStateFragment.this.getGeoDetails();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r4) {
            super.onPostExecute((SDTSync) r4);
            this.customProgressDialog.dismiss();
            if (!FunctionalStateFragment.this.isSyncing) {
                Toast.makeText(FunctionalStateFragment.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_recWrongRespFS()), 1).show();
            } else {
                Toast.makeText(FunctionalStateFragment.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_successInsertMasterData()), 1).show();
            }
            FunctionalStateFragment.this.getFragmentManager().beginTransaction().replace(R.id.container, new HomePageFragment()).commit();
        }
    }
}
