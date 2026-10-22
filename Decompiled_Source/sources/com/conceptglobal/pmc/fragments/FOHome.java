package com.conceptglobal.pmc.fragments;

import android.app.SearchManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.cardview.widget.CardView;
import androidx.core.view.MenuItemCompat;
import androidx.fragment.app.Fragment;
import com.conceptglobal.pmc.activity.TargetVsPlanSummaryActivity;
import com.conceptglobal.pmc.adapter.VillageSelectionAdapter;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.LatLongDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.SVRadiusDataModel;
import com.conceptglobal.pmc.model.SupervisoryAssignmentData;
import com.conceptglobal.pmc.model.VillageDetails;
import com.conceptglobal.pmc.registration.UnVerifiedFramersList;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FOHome extends Fragment implements View.OnClickListener {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    protected static final String TAG = "FOHome";
    public static DecimalFormat twoDForm = new DecimalFormat("#.##");
    private VillageSelectionAdapter adapter;
    private EditText brandSearch;
    private TextView btnClear;
    private TextView btnGo;
    private Context context;
    private EditText cropSearch;
    private EditText custTypeSearch;
    private CardView cvFarmerOTPVerification;
    private CardView cvRetailerOTPVerification;
    private Double dbllatitude;
    private Double dbllongitude;
    private MenuItem filterItem;
    private LinearLayout filtersLL;
    private GetDataFromDB getData;
    private String isFrom;
    private boolean isLocationRequestProcessing;
    private TextView loaderText;
    private RelativeLayout loaderrl;
    private LocationManager locationMgr;
    private ListView lvList;
    private String mParam1;
    private String mParam2;
    private LocationListener myLocationListener;
    private EditText radiusSearch;
    private View rootView;
    private TextView tvBrandId;
    private TextView tvCropId;
    private TextView tvCustTypeId;
    private TextView tvPD;
    private TextView tvRetailerWIPCount;
    private TextView tvScroll;
    private TextView tvTBV;
    private TextView tvVC;
    private TextView tvVillageName;
    private TextView tvWIPCount;
    private List<VillageDetails> listVillageNames = new ArrayList();
    private List<VillageDetails> tempListVillageNames = new ArrayList();
    private int countSync = 0;
    public String filteredCutomerType = "";
    private String svIDs = "";
    private String addCustTypeQuery = "";
    private String addCropQuery = "";
    private String addBrandQuery = "";
    private String addRadiusQuery = "";
    private boolean hasLocation = false;
    private LocationUtils mLocationUtils = new LocationUtils();

    private double deg2rad(double d) {
        return (d * 3.141592653589793d) / 180.0d;
    }

    private double rad2deg(double d) {
        return (d * 180.0d) / 3.141592653589793d;
    }

    public static FOHome newInstance(String str, String str2, String str3) {
        FOHome fOHome = new FOHome();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putString(ARG_PARAM2, str2);
        bundle.putString("IsFrom", str3);
        fOHome.setArguments(bundle);
        return fOHome;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.rootView == null) {
            this.rootView = layoutInflater.inflate(R.layout.village_list_view, viewGroup, false);
        }
        setHasOptionsMenu(true);
        init();
        String str = this.isFrom;
        if (str != null && str.equalsIgnoreCase("Survey")) {
            setSueveyLayoutData();
        } else {
            setLayoutData();
        }
        checkCountForSync();
        return this.rootView;
    }

    private void loadData() {
        new LoadDataTask().execute(new Void[0]);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mParam1 = getArguments().getString(ARG_PARAM1);
            this.mParam2 = getArguments().getString(ARG_PARAM2);
            this.isFrom = getArguments().getString("IsFrom");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
    }

    private void init() {
        this.context = getContext();
        this.getData = new GetDataFromDB();
        this.lvList = (ListView) this.rootView.findViewById(R.id.lv_village_list);
        this.tvVillageName = (TextView) this.rootView.findViewById(R.id.tv_villagename_village_list);
        this.tvTBV = (TextView) this.rootView.findViewById(R.id.tv_tbv_village_list);
        this.tvPD = (TextView) this.rootView.findViewById(R.id.tv_pd_village_list);
        this.tvVC = (TextView) this.rootView.findViewById(R.id.tv_vc_village_list);
        this.loaderrl = (RelativeLayout) this.rootView.findViewById(R.id.loaderrl);
        this.loaderText = (TextView) this.rootView.findViewById(R.id.loadertxt);
        this.filtersLL = (LinearLayout) this.rootView.findViewById(R.id.filtersVillList);
        EditText editText = (EditText) this.rootView.findViewById(R.id.ed_custType);
        this.custTypeSearch = editText;
        editText.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_customTypeFilterText()));
        EditText editText2 = (EditText) this.rootView.findViewById(R.id.ed_cropSearch);
        this.cropSearch = editText2;
        editText2.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cropFilterText()));
        this.cropSearch.setVisibility(8);
        EditText editText3 = (EditText) this.rootView.findViewById(R.id.ed_Brand);
        this.brandSearch = editText3;
        editText3.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_brandFilterText()));
        this.brandSearch.setVisibility(8);
        EditText editText4 = (EditText) this.rootView.findViewById(R.id.ed_RadiusSearch);
        this.radiusSearch = editText4;
        editText4.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_radiusFilterText()));
        this.radiusSearch.setVisibility(8);
        this.tvCustTypeId = (TextView) this.rootView.findViewById(R.id.tvCustTypeId);
        this.tvCropId = (TextView) this.rootView.findViewById(R.id.tvCropId);
        TextView textView = (TextView) this.rootView.findViewById(R.id.tvBrandId);
        this.tvBrandId = textView;
        textView.setVisibility(8);
        TextView textView2 = (TextView) this.rootView.findViewById(R.id.filter_list_goBtn);
        this.btnGo = textView2;
        textView2.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_goFilterText()));
        TextView textView3 = (TextView) this.rootView.findViewById(R.id.farmer_lsit_ClearBtn);
        this.btnClear = textView3;
        textView3.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_clearFilterText()));
        this.custTypeSearch.setOnClickListener(this);
        this.cropSearch.setOnClickListener(this);
        this.radiusSearch.setOnClickListener(this);
        this.btnGo.setOnClickListener(this);
        this.btnClear.setOnClickListener(this);
        this.tvScroll = (TextView) this.rootView.findViewById(R.id.tv_scroll_village_list);
        this.cvFarmerOTPVerification = (CardView) this.rootView.findViewById(R.id.cvFarmerOTPVerification);
        this.cvRetailerOTPVerification = (CardView) this.rootView.findViewById(R.id.cvRetailerOTPVerification);
        this.tvWIPCount = (TextView) this.rootView.findViewById(R.id.tvWIPCount);
        this.tvRetailerWIPCount = (TextView) this.rootView.findViewById(R.id.tvRetailerWIPCount);
        this.tvScroll.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_todoAbbrevations()));
        this.tvScroll.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_todoAbbrevations()));
        this.tvScroll.setSelected(true);
        this.tvTBV.setOnClickListener(this);
        this.tvPD.setOnClickListener(this);
        this.tvVC.setOnClickListener(this);
        this.cvFarmerOTPVerification.setOnClickListener(this);
        this.cvRetailerOTPVerification.setOnClickListener(this);
        updateUnverifiedFarmerCount();
        updateUnverifiedRetailerCount();
    }

    private void updateUnverifiedFarmerCount() {
        String str;
        if (validateFarmerWithOTP() && (str = this.isFrom) != null && !str.equalsIgnoreCase("Survey")) {
            try {
                String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getUnVerifiedFarmersCount());
                if (!TextUtils.isEmpty(singleValue)) {
                    if (Integer.parseInt(singleValue) > 0) {
                        this.cvFarmerOTPVerification.setVisibility(0);
                        this.tvWIPCount.setText(GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getUnVerifiedFarmersCount()));
                    } else {
                        this.cvFarmerOTPVerification.setVisibility(8);
                    }
                } else {
                    this.cvFarmerOTPVerification.setVisibility(8);
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        this.cvFarmerOTPVerification.setVisibility(8);
    }

    private void updateUnverifiedRetailerCount() {
        String str;
        if (validateRetailerWithOTP() && (str = this.isFrom) != null && !str.equalsIgnoreCase("Survey")) {
            try {
                String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getUnVerifiedRetailersCount("2"));
                if (!TextUtils.isEmpty(singleValue)) {
                    if (Integer.parseInt(singleValue) > 0) {
                        this.cvRetailerOTPVerification.setVisibility(0);
                        this.tvRetailerWIPCount.setText(singleValue);
                    } else {
                        this.cvRetailerOTPVerification.setVisibility(8);
                    }
                } else {
                    this.cvRetailerOTPVerification.setVisibility(8);
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        this.cvRetailerOTPVerification.setVisibility(8);
    }

    private boolean validateFarmerWithOTP() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("FarmerOTPRoleId"));
            String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
            if (singleValue == null || singleValue.length() <= 0) {
                return false;
            }
            for (String str : singleValue.split(",")) {
                if (str.equals(singleValue2)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean validateRetailerWithOTP() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("RetailerOTPRoleId"));
            String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
            if (singleValue == null || singleValue.length() <= 0) {
                return false;
            }
            for (String str : singleValue.split(",")) {
                if (str.equals(singleValue2)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private void setLayoutData() {
        if (this.mParam1.equalsIgnoreCase("Activity")) {
            this.tvVillageName.setText("ACTIVITY");
        } else {
            this.tvVillageName.setText("GEOGRAPHY");
        }
        this.tvTBV.setText("To Be Completed");
        this.tvPD.setText("Not Synced");
        this.tvVC.setText(getResources().getString(R.string.pmc_string_pfu));
    }

    private void setSueveyLayoutData() {
        this.tvVillageName.setText("Survey");
        this.tvTBV.setText("To Be Completed");
        this.tvPD.setText("Not Synced");
        this.tvVC.setText(getResources().getString(R.string.pmc_string_pfu));
    }

    private void getLocationDataFromDB(String str) {
        int i = 0;
        if (this.mParam1.equalsIgnoreCase("Activity")) {
            List<VillageDetails> activityNamesForToDo = this.getData.getActivityNamesForToDo(Queries.getInstance().getGetAllActivityTODOData(str));
            this.listVillageNames = activityNamesForToDo;
            if (activityNamesForToDo != null) {
                while (i < this.listVillageNames.size()) {
                    try {
                        this.listVillageNames.get(i).setTbv(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getGetAllActivityTODODataTBV(this.listVillageNames.get(i).getVillageName(), str)));
                        this.listVillageNames.get(i).setPd(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getGetAllActivityTODODataPAD(this.listVillageNames.get(i).getVillageName(), str)));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    i++;
                }
                return;
            }
            return;
        }
        List<VillageDetails> villageNames = this.getData.getVillageNames(Queries.getInstance().getGetAllVillagesData(str));
        this.listVillageNames = villageNames;
        if (villageNames != null) {
            while (i < this.listVillageNames.size()) {
                try {
                    this.listVillageNames.get(i).setTbv(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getGetAllVillagesDataTBV(this.listVillageNames.get(i).getVillageName(), this.listVillageNames.get(i).getMandalName(), str)));
                    this.listVillageNames.get(i).setPd(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getGetAllVillagesDataPD(this.listVillageNames.get(i).getVillageName(), this.listVillageNames.get(i).getMandalName(), str)));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getDataFromDB() {
        String str = this.isFrom;
        if (str != null && str.equalsIgnoreCase("Survey")) {
            if (this.mParam1.equalsIgnoreCase("Survey")) {
                List<VillageDetails> activityNamesForToDo = this.getData.getActivityNamesForToDo(Queries.getInstance().getGetAllSurveyTODOData());
                this.listVillageNames = activityNamesForToDo;
                if (activityNamesForToDo != null) {
                    for (int i = 0; i < this.listVillageNames.size(); i++) {
                        try {
                            this.listVillageNames.get(i).setTbv(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getGetAllSurveyTODODataTBV(this.listVillageNames.get(i).getVillageName())));
                            this.listVillageNames.get(i).setPd(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getGetAllSurveyTODODataPD(this.listVillageNames.get(i).getVillageName())));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    return;
                }
                return;
            }
            this.listVillageNames = this.getData.getVillageNames(Queries.getInstance().getGetAllSurveyVillagesData());
            return;
        }
        this.mParam1.equalsIgnoreCase("Activity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setData() {
        this.lvList.setAdapter((ListAdapter) null);
        List<VillageDetails> list = this.listVillageNames;
        if (list != null && list.size() > 0) {
            VillageSelectionAdapter villageSelectionAdapter = new VillageSelectionAdapter(getActivity(), this.listVillageNames, this.mParam1, this.filteredCutomerType, this.isFrom, this.svIDs);
            this.adapter = villageSelectionAdapter;
            this.lvList.setAdapter((ListAdapter) villageSelectionAdapter);
            return;
        }
        Crouton.showText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_todoFarmerAssignAlertText()) != null ? GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_todoFarmerAssignAlertText()) : "", Style.ALERT);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        loadData();
        updateUnverifiedFarmerCount();
        updateUnverifiedRetailerCount();
    }

    private class LoadDataTask extends AsyncTask<Void, Void, Void> {
        private LoadDataTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            FOHome.this.loaderrl.setVisibility(0);
            FOHome.this.loaderText.setText("Loading data..");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            if (FOHome.this.isFrom == null || !FOHome.this.isFrom.equalsIgnoreCase("Survey")) {
                return null;
            }
            FOHome.this.getDataFromDB();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r5) {
            FOHome.this.loaderrl.setVisibility(8);
            if (FOHome.this.isFrom == null || !FOHome.this.isFrom.equalsIgnoreCase("Survey")) {
                if (FOHome.this.dbllatitude == null || FOHome.this.dbllatitude.doubleValue() <= 0.0d) {
                    FOHome.this.fetchLocation();
                    return;
                } else {
                    new LoadRadiusDataTask().execute(new Void[0]);
                    return;
                }
            }
            FOHome.this.setData();
        }
    }

    private class LoadRadiusDataTask extends AsyncTask<Void, Void, Void> {
        private LoadRadiusDataTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            FOHome.this.loaderrl.setVisibility(0);
            FOHome.this.loaderText.setText("Filtering data..");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            FOHome.this.disPlaySVRadiusData();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r2) {
            FOHome.this.loaderrl.setVisibility(8);
            FOHome.this.setData();
        }
    }

    private void checkCountForSync() {
        try {
            this.countSync = UtilDeclarations.getCountForSync();
        } catch (Exception e) {
            this.countSync = 0;
            PLog.e(TAG, e);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.cvFarmerOTPVerification /* 2131296536 */:
                Intent intent = new Intent(getActivity(), (Class<?>) UnVerifiedFramersList.class);
                intent.putExtra("farmerType", "UnVerifiedFarmer");
                startActivity(intent);
                break;
            case R.id.cvRetailerOTPVerification /* 2131296537 */:
                Intent intent2 = new Intent(getActivity(), (Class<?>) UnVerifiedFramersList.class);
                intent2.putExtra("farmerType", "UnVerifiedRetailer");
                startActivity(intent2);
                break;
            case R.id.ed_cropSearch /* 2131296583 */:
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cropFilterText()), Queries.getInstance().getCropNames(), view, this.tvCropId);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e) {
                    PLog.e(TAG, e);
                    return;
                }
            case R.id.ed_custType /* 2131296584 */:
                try {
                    ListPopupOne listPopupOne2 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_customTypeFilterText()), Queries.getInstance().getActivitySegments(), view, this.tvCustTypeId);
                    listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne2.show();
                    listPopupOne2.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e2) {
                    PLog.e(TAG, e2);
                    return;
                }
            case R.id.farmer_lsit_ClearBtn /* 2131296743 */:
                this.custTypeSearch.setText("");
                this.brandSearch.setText("");
                this.cropSearch.setText("");
                this.radiusSearch.setText("");
                this.tvCropId.setText("");
                this.tvCustTypeId.setText("");
                this.tvBrandId.setText("");
                this.filteredCutomerType = "";
                this.listVillageNames = this.getData.getVillageNames(Queries.getInstance().getGetAllVillagesData());
                String str = this.isFrom;
                if (str != null && str.equalsIgnoreCase("Survey")) {
                    setData();
                    break;
                } else {
                    Double d = this.dbllatitude;
                    if (d != null && d.doubleValue() > 0.0d) {
                        new LoadRadiusDataTask().execute(new Void[0]);
                        break;
                    } else {
                        fetchLocation();
                        break;
                    }
                }
            case R.id.filter_list_goBtn /* 2131296763 */:
                if (this.tvCustTypeId.getText().toString().length() != 0) {
                    this.listVillageNames = this.getData.getVillageNames(Queries.getInstance().getGetAllVillagesDataBySegment(this.tvCustTypeId.getText().toString()));
                    this.filteredCutomerType = this.tvCustTypeId.getText().toString();
                } else {
                    this.listVillageNames = this.getData.getVillageNames(Queries.getInstance().getGetAllVillagesData());
                    this.filteredCutomerType = "";
                }
                String str2 = this.isFrom;
                if (str2 != null && str2.equalsIgnoreCase("Survey")) {
                    setData();
                    break;
                } else {
                    String str3 = this.isFrom;
                    if (str3 != null && str3.equalsIgnoreCase("Survey")) {
                        setData();
                        break;
                    } else {
                        Double d2 = this.dbllatitude;
                        if (d2 != null && d2.doubleValue() > 0.0d) {
                            new LoadRadiusDataTask().execute(new Void[0]);
                            break;
                        } else {
                            fetchLocation();
                            break;
                        }
                    }
                }
                break;
            case R.id.tv_pd_village_list /* 2131297638 */:
                Crouton.showText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pendingDataHint()) != null ? GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pendingDataHint()) : "", Style.INFO);
                break;
            case R.id.tv_tbv_village_list /* 2131297670 */:
                Crouton.showText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_tbvScrollText()) != null ? GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_tbvScrollText()) : "", Style.INFO);
                break;
            case R.id.tv_vc_village_list /* 2131297689 */:
                Crouton.showText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_draftsHint()) != null ? GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_draftsHint()) : "", Style.INFO);
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            getActivity().finish();
            return true;
        }
        if (itemId != R.id.filter_todo) {
            if (itemId == R.id.targetVsActual) {
                Intent intent = new Intent(getActivity(), (Class<?>) TargetVsPlanSummaryActivity.class);
                intent.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, "Target&PlanSummary");
                this.context.startActivity(intent);
                return true;
            }
            return super.onOptionsItemSelected(menuItem);
        }
        if (this.filtersLL.getVisibility() == 8) {
            this.filtersLL.setVisibility(0);
            menuItem.setIcon(R.drawable.ic_filter_release_24);
        } else if (this.filtersLL.getVisibility() == 0) {
            this.filtersLL.setVisibility(8);
            menuItem.setIcon(R.drawable.ic_filter_24);
        }
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.search_only, menu);
        this.filterItem = menu.findItem(R.id.filter_todo);
        MenuItem findItem = menu.findItem(R.id.targetVsActual);
        if (this.mParam1.equalsIgnoreCase("Activity")) {
            this.filterItem.setVisible(false);
            findItem.setVisible(true);
        } else {
            this.filterItem.setVisible(true);
            findItem.setVisible(false);
        }
        findItem.setVisible(false);
        String str = this.isFrom;
        if (str != null && str.equalsIgnoreCase("Survey")) {
            this.filterItem.setVisible(false);
        }
        if (this.filtersLL.getVisibility() == 0) {
            this.filterItem.setIcon(R.drawable.ic_filter_release_24);
        }
        MenuItem findItem2 = menu.findItem(R.id.search_only);
        SearchManager searchManager = (SearchManager) getActivity().getSystemService(FirebaseAnalytics.Event.SEARCH);
        final SearchView searchView = (SearchView) MenuItemCompat.getActionView(findItem2);
        if (searchView != null) {
            searchView.setSearchableInfo(searchManager.getSearchableInfo(getActivity().getComponentName()));
            searchView.setIconifiedByDefault(false);
        }
        MenuItemCompat.setOnActionExpandListener(findItem2, new MenuItemCompat.OnActionExpandListener() { // from class: com.conceptglobal.pmc.fragments.FOHome.1
            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                if (FOHome.this.adapter == null) {
                    return true;
                }
                FOHome.this.adapter.getFilter().filter(ConstantDeclarations.getInstance().getEMPTY());
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }

            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (FOHome.this.adapter == null) {
                    return true;
                }
                FOHome.this.adapter.getFilter().filter(ConstantDeclarations.getInstance().getEMPTY());
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }
        });
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.fragments.FOHome.2
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str2) {
                if (FOHome.this.adapter == null) {
                    return true;
                }
                FOHome.this.adapter.getFilter().filter(str2);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str2) {
                if (FOHome.this.adapter == null) {
                    return true;
                }
                FOHome.this.adapter.getFilter().filter(str2);
                return true;
            }
        });
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    private class LocalBroadcastReceiver extends BroadcastReceiver {
        private LocalBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equalsIgnoreCase("android.intent.action.ToDoLocationPermissionGranted")) {
                FOHome.this.fetchLocation();
                return;
            }
            if (intent.getAction().equalsIgnoreCase("android.intent.action.ToDoLocationPermissionDenied")) {
                FOHome.this.mLocationUtils.showDialog(FOHome.this.getActivity(), LocationUtils.PERMISSION_DENIED);
            } else if (intent.getAction().equalsIgnoreCase("android.intent.action.ToDoGPSTurnedOnResult")) {
                FOHome.this.fetchLocation();
            } else if (intent.getAction().equalsIgnoreCase("android.intent.action.ToDoGPSNotTurnedOnResult")) {
                FOHome.this.mLocationUtils.showDialog(FOHome.this.getActivity(), LocationUtils.GPS_NOT_TURNED_ON);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchLocation() {
        if (this.isLocationRequestProcessing) {
            return;
        }
        this.isLocationRequestProcessing = true;
        if (!this.mLocationUtils.checkPermissions(getActivity())) {
            this.mLocationUtils.requestPermissions(getActivity());
            return;
        }
        try {
            new FetchLocation(getActivity(), true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.FOHome.3
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    FOHome.this.isLocationRequestProcessing = false;
                    FOHome.this.dbllatitude = Double.valueOf(locationInfo.getLatitude());
                    FOHome.this.dbllongitude = Double.valueOf(locationInfo.getLongitude());
                    new LoadRadiusDataTask().execute(new Void[0]);
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void disPlaySVRadiusData() {
        LatLongDetails latLongInfo;
        if (this.dbllatitude == null || this.dbllongitude == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<SupervisoryAssignmentData> sVActivityAssignmentIDs = GetDataFromDB.getInstance().getSVActivityAssignmentIDs(Queries.getInstance().getSVAssignmentIDs());
        new HashMap();
        HashMap<String, SVRadiusDataModel> sVRadiusData = GetDataFromDB.getInstance().getSVRadiusData(Queries.getInstance().getSVRadiusDataQry());
        Double.valueOf(0.0d);
        Double.valueOf(0.0d);
        this.tempListVillageNames.clear();
        for (int i = 0; i < sVActivityAssignmentIDs.size(); i++) {
            sVRadiusData.get(sVActivityAssignmentIDs.get(i).getActivityassignmentid());
            SupervisoryAssignmentData supervisoryAssignmentData = sVActivityAssignmentIDs.get(i);
            Double radius = supervisoryAssignmentData.getRadius();
            if (supervisoryAssignmentData.getActivitySegmentId() == 1) {
                latLongInfo = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsQry(supervisoryAssignmentData.getActivitySegmentValue(), supervisoryAssignmentData.getActivitySegmentId()));
            } else if (supervisoryAssignmentData.getActivitySegmentId() == 4) {
                latLongInfo = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsQry(supervisoryAssignmentData.getActivitySegmentValue(), supervisoryAssignmentData.getActivitySegmentId()));
            } else if (sVActivityAssignmentIDs.get(i).getActivitySegmentId() == 2) {
                latLongInfo = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsDealerQry(supervisoryAssignmentData.getActivitySegmentValue(), supervisoryAssignmentData.getActivitySegmentId()));
            } else if (sVActivityAssignmentIDs.get(i).getActivitySegmentId() == 3) {
                latLongInfo = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsDealerQry(supervisoryAssignmentData.getActivitySegmentValue(), supervisoryAssignmentData.getActivitySegmentId()));
            } else if (sVActivityAssignmentIDs.get(i).getActivitySegmentId() == 8) {
                latLongInfo = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsQry(supervisoryAssignmentData.getActivitySegmentValue(), supervisoryAssignmentData.getActivitySegmentId()));
            } else {
                latLongInfo = sVActivityAssignmentIDs.get(i).getActivitySegmentId() == 18 ? GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsDealerQry(supervisoryAssignmentData.getActivitySegmentValue(), supervisoryAssignmentData.getActivitySegmentId())) : null;
            }
            if (latLongInfo != null && latLongInfo.getLatitude() != null && !latLongInfo.getLongitude().equalsIgnoreCase("NULL") && latLongInfo.getLatitude().length() > 0) {
                double distance = distance(this.dbllatitude, this.dbllongitude, Double.valueOf(Double.parseDouble(latLongInfo.getLatitude())), Double.valueOf(Double.parseDouble(latLongInfo.getLongitude())), 'K');
                Double.valueOf(distance).getClass();
                if (distance <= radius.doubleValue()) {
                    arrayList.add(sVActivityAssignmentIDs.get(i).getActivityassignmentid());
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            sb.append(",");
        }
        String sb2 = sb.toString();
        if (!sb2.isEmpty()) {
            sb2 = sb2.substring(0, sb2.length() - 1);
        }
        getLocationDataFromDB(sb2);
        this.svIDs = sb2;
    }

    public double distance(Double d, Double d2, Double d3, Double d4, char c) {
        double d5;
        double rad2deg = rad2deg(Math.acos((Math.sin(deg2rad(d.doubleValue())) * Math.sin(deg2rad(d3.doubleValue()))) + (Math.cos(deg2rad(d.doubleValue())) * Math.cos(deg2rad(d3.doubleValue())) * Math.cos(deg2rad(d2.doubleValue() - d4.doubleValue()))))) * 60.0d * 1.1515d;
        if (c == 'K' || c == 'k') {
            d5 = 1.609344d;
        } else {
            if (c != 'N' && c != 'n') {
                if (c == 'M' || c == 'm') {
                    d5 = 1609.344d;
                }
                return Double.parseDouble(twoDForm.format(rad2deg));
            }
            d5 = 0.8684d;
        }
        rad2deg *= d5;
        return Double.parseDouble(twoDForm.format(rad2deg));
    }
}
