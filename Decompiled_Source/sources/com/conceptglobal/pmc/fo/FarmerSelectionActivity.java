package com.conceptglobal.pmc.fo;

import android.app.Activity;
import android.app.ProgressDialog;
import android.app.SearchManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.SearchView;
import androidx.core.view.MenuItemCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.FarmerSelectionRecyclerToDoAdapter;
import com.conceptglobal.pmc.adapter.FeedBackRecyclerToDoAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class FarmerSelectionActivity extends BaseActivity implements View.OnClickListener {
    protected static final String TAG = "FarmerSelectionActivity";
    public static DecimalFormat twoDForm = new DecimalFormat("#.##");
    private EditText brandSearch;
    private TextView btnClear;
    private TextView btnGo;
    private Context context;
    private EditText cropSearch;
    private EditText custTypeSearch;
    private Double dbllatitude;
    private Double dbllongitude;
    private String filteredCustType;
    private LinearLayout filtersLL;
    private String from;
    private int isMba;
    private String location1;
    private String location2;
    private LocationControl locationControlTask;
    private LocationManager locationMgr;
    private LocationUtils mLocationUtils;
    private LocationListener myLocationListener;
    private EditText radiusSearch;
    private FarmerSelectionRecyclerToDoAdapter recyclerAdapter;
    private FeedBackRecyclerToDoAdapter recyclerAdapter1;
    private RecyclerView segmentTypelist;
    private ArrayList<AssignmentActivityDetailsModel> tempListFarmerNames;
    private TextView tvBrandId;
    private TextView tvCropId;
    private TextView tvCustTypeId;
    private int villageID;
    private ArrayList<AssignmentActivityDetailsModel> listFarmerNames = new ArrayList<>();
    private String addCustTypeQuery = "";
    private String addCropQuery = "";
    private String addBrandQuery = "";
    private String addRadiusQuery = "";
    private String isFrom = "";
    private String SVIDS = "";
    private boolean hasLocation = false;

    private double deg2rad(double d) {
        return (d * 3.141592653589793d) / 180.0d;
    }

    private double rad2deg(double d) {
        return (d * 180.0d) / 3.141592653589793d;
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.listview_header);
        this.context = this;
        this.mLocationUtils = new LocationUtils();
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        init();
        getData();
        setActionBar();
        setData(this.listFarmerNames);
    }

    private void setActionBar() {
        Intent intent = getIntent();
        if (this.from.equalsIgnoreCase("Activity")) {
            if (this.isFrom.equalsIgnoreCase("FeedBack")) {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getFBFActiviyName(Integer.parseInt(this.location1)).toUpperCase(Locale.getDefault()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                return;
            }
            if (this.isFrom.equalsIgnoreCase("Survey")) {
                CustomActionBar.initActionBar(this, "Survey Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                return;
            }
            CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getActiviyName(Integer.parseInt(this.location1)).toUpperCase(Locale.getDefault()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            return;
        }
        CustomActionBar.initActionBar(this, intent.getStringExtra(ConstantDeclarations.getInstance().getKEYVILLAGENAME()).toUpperCase(Locale.getDefault()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
    }

    private void init() {
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.lv_list_header);
        this.segmentTypelist = recyclerView;
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.segmentTypelist.setLayoutManager(linearLayoutManager);
        this.filtersLL = (LinearLayout) findViewById(R.id.filtersGEOList);
        EditText editText = (EditText) findViewById(R.id.ed_custType);
        this.custTypeSearch = editText;
        editText.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_customTypeFilterText()));
        EditText editText2 = (EditText) findViewById(R.id.ed_crop);
        this.cropSearch = editText2;
        editText2.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cropFilterText()));
        EditText editText3 = (EditText) findViewById(R.id.ed_RadiusSearch);
        this.radiusSearch = editText3;
        editText3.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_radiusFilterText()));
        EditText editText4 = (EditText) findViewById(R.id.ed_Brand);
        this.brandSearch = editText4;
        editText4.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_brandFilterText()));
        this.brandSearch.setVisibility(8);
        this.tvCustTypeId = (TextView) findViewById(R.id.tvCustTypeId);
        this.tvCropId = (TextView) findViewById(R.id.tvCropId);
        TextView textView = (TextView) findViewById(R.id.tvBrandId);
        this.tvBrandId = textView;
        textView.setVisibility(8);
        TextView textView2 = (TextView) findViewById(R.id.filter_GEO_goBtn);
        this.btnGo = textView2;
        textView2.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_goFilterText()));
        TextView textView3 = (TextView) findViewById(R.id.filter_GEO_ClearBtn);
        this.btnClear = textView3;
        textView3.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_clearFilterText()));
        this.custTypeSearch.setOnClickListener(this);
        this.cropSearch.setOnClickListener(this);
        this.radiusSearch.setOnClickListener(this);
        this.btnGo.setOnClickListener(this);
        this.btnClear.setOnClickListener(this);
    }

    private void getData() {
        Intent intent = getIntent();
        this.from = intent.getStringExtra("FROM");
        if (intent.hasExtra("IsFrom")) {
            String stringExtra = intent.getStringExtra("IsFrom");
            this.isFrom = stringExtra;
            if (stringExtra == null) {
                this.isFrom = "";
            }
            String str = this.isFrom;
            if (str != null && (str.equalsIgnoreCase("Survey") || this.isFrom.equalsIgnoreCase("FeedBack"))) {
                this.from = "Activity";
            }
        }
        this.location1 = intent.getStringExtra("location1");
        this.location2 = intent.getStringExtra("location2");
        this.villageID = intent.getIntExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), 0);
        this.isMba = intent.getIntExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
        this.filteredCustType = intent.getStringExtra("FilteredCustType");
        this.SVIDS = intent.getStringExtra("SVIDS");
        if (this.isFrom.equalsIgnoreCase("FeedBack")) {
            this.filtersLL.setVisibility(8);
        }
        String str2 = this.isFrom;
        if (str2 != null && str2.equalsIgnoreCase("Survey")) {
            if (!this.filteredCustType.equals("")) {
                this.addCustTypeQuery = " and pmcSurveyAssignmentActivityDetails.ActivitySegmentId=" + this.filteredCustType + " ";
            }
            if (this.from.equalsIgnoreCase("Activity")) {
                this.listFarmerNames = GetDataFromDB.getInstance().getFarmerToDODetails(Queries.getInstance().getAllSurveysDataWithFilterByActivity(this.location1.toLowerCase(), this.location2.toLowerCase(), this.addCustTypeQuery, this.addCropQuery));
                return;
            } else {
                this.listFarmerNames = GetDataFromDB.getInstance().getFarmerToDODetails(Queries.getInstance().getAllFarmersDataWithFilter(this.location1.toLowerCase(), this.location2.toLowerCase(), this.addCustTypeQuery, this.addCropQuery));
                return;
            }
        }
        String str3 = this.isFrom;
        if (str3 != null && str3.equalsIgnoreCase("FeedBack")) {
            if (!this.filteredCustType.equals("")) {
                this.addCustTypeQuery = " and pmcFBFAssignmentActivityDetails.ActivitySegmentId=" + this.filteredCustType + " ";
            }
            this.listFarmerNames = GetDataFromDB.getInstance().getFBFFarmerToDODetails(Queries.getInstance().getAllFBFDataWithFilterByActivity(this.location1.toLowerCase(), this.location2.toLowerCase(), this.addCustTypeQuery, this.addCropQuery));
            return;
        }
        if (!this.filteredCustType.equals("")) {
            this.addCustTypeQuery = " and pmcassignmentactivitydetails.ActivitySegmentId=" + this.filteredCustType + " ";
        }
        if (this.from.equalsIgnoreCase("Activity")) {
            this.listFarmerNames = GetDataFromDB.getInstance().getFarmerToDODetails(Queries.getInstance().getSVAllFarmersDataWithFilterByActivity(this.location1.toLowerCase(), this.location2.toLowerCase(), this.addCustTypeQuery, this.addCropQuery, this.SVIDS));
        } else {
            this.listFarmerNames = GetDataFromDB.getInstance().getFarmerToDODetails(Queries.getInstance().getAllFarmersDataWithFilter(this.location1.toLowerCase(), this.location2.toLowerCase(), this.addCustTypeQuery, this.addCropQuery, this.SVIDS));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setData(ArrayList<AssignmentActivityDetailsModel> arrayList) {
        if (arrayList != null && arrayList.size() > 0) {
            if (this.isFrom.equalsIgnoreCase("FeedBack")) {
                this.segmentTypelist.setAdapter(null);
                FeedBackRecyclerToDoAdapter feedBackRecyclerToDoAdapter = new FeedBackRecyclerToDoAdapter(this.context, arrayList, false, this.isFrom);
                this.recyclerAdapter1 = feedBackRecyclerToDoAdapter;
                this.segmentTypelist.setAdapter(feedBackRecyclerToDoAdapter);
                return;
            }
            if (!TextUtils.isEmpty(this.SVIDS)) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (this.SVIDS.contains(arrayList.get(i).getActivityAssignmentId() + "")) {
                        arrayList.get(i).setIsInsideRadius(1);
                    }
                }
            }
            this.segmentTypelist.setAdapter(null);
            FarmerSelectionRecyclerToDoAdapter farmerSelectionRecyclerToDoAdapter = new FarmerSelectionRecyclerToDoAdapter(this.context, arrayList, false, this.isFrom);
            this.recyclerAdapter = farmerSelectionRecyclerToDoAdapter;
            this.segmentTypelist.setAdapter(farmerSelectionRecyclerToDoAdapter);
            return;
        }
        startActivity(new Intent(this.context, (Class<?>) ToDoActivity.class).addFlags(335544320));
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ed_Brand /* 2131296574 */:
                TextView textView = this.tvCropId;
                if (textView != null || textView.getText().toString().length() > 0) {
                    try {
                        ListPopupOne listPopupOne = new ListPopupOne(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().brandNamesBassedOnCropId(this.tvCropId.getText().toString()), view, this.tvBrandId);
                        listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne.show();
                        listPopupOne.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e) {
                        PLog.e(TAG, e);
                    }
                } else {
                    Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseSelectCropToast()), 0).show();
                    break;
                }
                break;
            case R.id.ed_crop /* 2131296582 */:
                try {
                    ListPopupOne listPopupOne2 = new ListPopupOne(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().getCropNames(), view, this.tvCropId);
                    listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne2.show();
                    listPopupOne2.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e2) {
                    PLog.e(TAG, e2);
                    return;
                }
            case R.id.ed_custType /* 2131296584 */:
                try {
                    ListPopupOne listPopupOne3 = new ListPopupOne(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().getActivitySegments(), view, this.tvCustTypeId);
                    listPopupOne3.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne3.show();
                    listPopupOne3.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e3) {
                    PLog.e(TAG, e3);
                    return;
                }
            case R.id.filter_GEO_ClearBtn /* 2131296757 */:
                this.custTypeSearch.setText("");
                this.brandSearch.setText("");
                this.cropSearch.setText("");
                this.radiusSearch.setText("");
                this.tvCropId.setText("");
                this.tvCustTypeId.setText("");
                this.tvBrandId.setText("");
                getData();
                setData(this.listFarmerNames);
                break;
            case R.id.filter_GEO_goBtn /* 2131296758 */:
                if (this.tvCustTypeId.getText().toString().length() != 0 || this.tvCropId.getText().toString().length() != 0 || this.radiusSearch.getText().toString().length() != 0) {
                    UtilDeclarations.hideInputKeyboard(this.context);
                    if (this.tvCustTypeId.getText().toString().length() != 0) {
                        this.addCustTypeQuery = " and pmcassignmentactivitydetails.ActivitySegmentId=" + this.tvCustTypeId.getText().toString() + " ";
                    }
                    if (this.tvCropId.getText().toString().length() != 0) {
                        this.addCropQuery = " and attributeValue =" + this.tvCropId.getText().toString() + " ";
                    }
                    try {
                        this.listFarmerNames.clear();
                        if (this.radiusSearch.getText().toString() != null && this.radiusSearch.getText().toString().length() > 0) {
                            ArrayList<AssignmentActivityDetailsModel> farmerToDOLatLongDetails = GetDataFromDB.getInstance().getFarmerToDOLatLongDetails(Queries.getInstance().getAllFarmersDataFilterWithRadius(this.location1.toLowerCase(), this.location2.toLowerCase(), this.addCustTypeQuery, this.addCropQuery));
                            this.listFarmerNames = farmerToDOLatLongDetails;
                            try {
                                this.hasLocation = false;
                                if (farmerToDOLatLongDetails != null && farmerToDOLatLongDetails.size() > 0) {
                                    fetchLocation();
                                } else if (this.listFarmerNames.size() > 0) {
                                    setData(this.listFarmerNames);
                                } else {
                                    Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 1).show();
                                    this.segmentTypelist.setAdapter(null);
                                }
                            } catch (Exception e4) {
                                PLog.e(TAG, e4, 0);
                            }
                        } else {
                            getData();
                            if (this.listFarmerNames.size() > 0) {
                                setData(this.listFarmerNames);
                            } else {
                                Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 1).show();
                                this.segmentTypelist.setAdapter(null);
                            }
                        }
                        this.addCustTypeQuery = "";
                        this.addCropQuery = "";
                    } catch (Exception e5) {
                        PLog.e(TAG, e5);
                    }
                }
                if (this.listFarmerNames.size() <= 0) {
                    Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 1).show();
                    this.segmentTypelist.setAdapter(null);
                }
                this.addCustTypeQuery = "";
                this.addCropQuery = "";
                this.addRadiusQuery = "";
                break;
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.search_filter_only, menu);
        MenuItem findItem = menu.findItem(R.id.search_only);
        if (this.isFrom.equalsIgnoreCase("FeedBack")) {
            this.filtersLL.setVisibility(8);
            menu.findItem(R.id.filter_GEO).setVisible(false);
        } else if (this.isFrom.equalsIgnoreCase("Survey")) {
            this.filtersLL.setVisibility(8);
            menu.findItem(R.id.filter_GEO).setVisible(false);
        } else if (this.filtersLL.getVisibility() == 0) {
            menu.findItem(R.id.filter_GEO).setIcon(R.drawable.ic_filter_release_24);
        }
        SearchManager searchManager = (SearchManager) getSystemService(FirebaseAnalytics.Event.SEARCH);
        final SearchView searchView = (SearchView) MenuItemCompat.getActionView(findItem);
        if (searchView != null) {
            searchView.setSearchableInfo(searchManager.getSearchableInfo(getComponentName()));
            searchView.setIconifiedByDefault(false);
        }
        MenuItemCompat.setOnActionExpandListener(findItem, new MenuItemCompat.OnActionExpandListener() { // from class: com.conceptglobal.pmc.fo.FarmerSelectionActivity.1
            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                if (FarmerSelectionActivity.this.isFrom.equalsIgnoreCase("FeedBack")) {
                    if (FarmerSelectionActivity.this.recyclerAdapter1 == null) {
                        return true;
                    }
                    FarmerSelectionActivity.this.recyclerAdapter1.getFilter().filter("");
                    searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                    return true;
                }
                if (FarmerSelectionActivity.this.recyclerAdapter == null) {
                    return true;
                }
                FarmerSelectionActivity.this.recyclerAdapter.getFilter().filter("");
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }

            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (FarmerSelectionActivity.this.isFrom.equalsIgnoreCase("FeedBack")) {
                    if (FarmerSelectionActivity.this.recyclerAdapter1 == null) {
                        return true;
                    }
                    FarmerSelectionActivity.this.recyclerAdapter1.getFilter().filter("");
                    searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                    return true;
                }
                if (FarmerSelectionActivity.this.recyclerAdapter == null) {
                    return true;
                }
                FarmerSelectionActivity.this.recyclerAdapter.getFilter().filter("");
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }
        });
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.fo.FarmerSelectionActivity.2
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                if (FarmerSelectionActivity.this.isFrom.equalsIgnoreCase("FeedBack")) {
                    if (FarmerSelectionActivity.this.recyclerAdapter1 == null) {
                        return true;
                    }
                    FarmerSelectionActivity.this.recyclerAdapter1.getFilter().filter(str);
                    return true;
                }
                if (FarmerSelectionActivity.this.recyclerAdapter == null) {
                    return true;
                }
                FarmerSelectionActivity.this.recyclerAdapter.getFilter().filter(str);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (FarmerSelectionActivity.this.isFrom.equalsIgnoreCase("FeedBack")) {
                    if (FarmerSelectionActivity.this.recyclerAdapter1 == null) {
                        return true;
                    }
                    FarmerSelectionActivity.this.recyclerAdapter1.getFilter().filter(str);
                    return true;
                }
                if (FarmerSelectionActivity.this.recyclerAdapter == null) {
                    return true;
                }
                FarmerSelectionActivity.this.recyclerAdapter.getFilter().filter(str);
                return true;
            }
        });
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
            return true;
        }
        if (itemId == R.id.filter_GEO) {
            if (this.filtersLL.getVisibility() == 8) {
                this.filtersLL.setVisibility(0);
                menuItem.setIcon(R.drawable.ic_filter_release_24);
            } else if (this.filtersLL.getVisibility() == 0) {
                this.filtersLL.setVisibility(8);
                menuItem.setIcon(R.drawable.ic_filter_24);
            }
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getData();
        setData(this.listFarmerNames);
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

    class DecimalDigitsInputFilter implements InputFilter {
        Pattern mPattern;

        public DecimalDigitsInputFilter(int i, int i2) {
            StringBuilder sb = new StringBuilder("[0-9]{0,");
            sb.append(i - 1);
            sb.append("}+((\\.[0-9]{0,");
            sb.append(i2 - 1);
            sb.append("})?)||(\\.)?");
            this.mPattern = Pattern.compile(sb.toString());
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            if (this.mPattern.matcher(spanned).matches()) {
                return null;
            }
            return "";
        }
    }

    private void enableGPS() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsTurnedOffAlert())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsOKButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerSelectionActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FarmerSelectionActivity.this.startActivity(new Intent("android.settings.SECURITY_SETTINGS"));
                ((Activity) FarmerSelectionActivity.this.context).finish();
            }
        });
        builder.show();
    }

    private class LocationControl extends AsyncTask<Context, Void, Void> {
        private final ProgressDialog dialog;

        private LocationControl() {
            this.dialog = new ProgressDialog(FarmerSelectionActivity.this.context);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.dialog.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gettLocationPWDialog()));
            this.dialog.setButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerSelectionActivity.LocationControl.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    FarmerSelectionActivity.this.hasLocation = true;
                }
            });
            this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Context... contextArr) {
            while (!FarmerSelectionActivity.this.hasLocation) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    PLog.e(FarmerSelectionActivity.TAG, e);
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r11) {
            if (FarmerSelectionActivity.this.dbllatitude != null && FarmerSelectionActivity.this.dbllongitude != null) {
                if (this.dialog.isShowing()) {
                    this.dialog.dismiss();
                }
                FarmerSelectionActivity.this.tempListFarmerNames = new ArrayList();
                Double.valueOf(0.0d);
                Double valueOf = Double.valueOf(0.0d);
                if (FarmerSelectionActivity.this.radiusSearch != null && FarmerSelectionActivity.this.radiusSearch.getText().toString().length() > 0) {
                    valueOf = Double.valueOf(Double.parseDouble(FarmerSelectionActivity.this.radiusSearch.getText().toString()));
                }
                FarmerSelectionActivity.this.tempListFarmerNames.clear();
                for (int i = 0; i < FarmerSelectionActivity.this.listFarmerNames.size(); i++) {
                    AssignmentActivityDetailsModel assignmentActivityDetailsModel = (AssignmentActivityDetailsModel) FarmerSelectionActivity.this.listFarmerNames.get(i);
                    if (assignmentActivityDetailsModel.getLatitude() != null && !assignmentActivityDetailsModel.getLongitude().equalsIgnoreCase("NULL") && assignmentActivityDetailsModel.getLatitude().length() > 0) {
                        FarmerSelectionActivity farmerSelectionActivity = FarmerSelectionActivity.this;
                        double distance = farmerSelectionActivity.distance(farmerSelectionActivity.dbllatitude, FarmerSelectionActivity.this.dbllongitude, Double.valueOf(Double.parseDouble(assignmentActivityDetailsModel.getLatitude())), Double.valueOf(Double.parseDouble(assignmentActivityDetailsModel.getLongitude())), 'K');
                        Double.valueOf(distance).getClass();
                        if (distance <= valueOf.doubleValue()) {
                            FarmerSelectionActivity.this.tempListFarmerNames.add(assignmentActivityDetailsModel);
                        }
                    }
                }
                if (FarmerSelectionActivity.this.tempListFarmerNames.size() <= 0) {
                    Toast.makeText(FarmerSelectionActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
                    FarmerSelectionActivity.this.segmentTypelist.setAdapter(null);
                    return;
                } else {
                    FarmerSelectionActivity farmerSelectionActivity2 = FarmerSelectionActivity.this;
                    farmerSelectionActivity2.setData(farmerSelectionActivity2.tempListFarmerNames);
                    return;
                }
            }
            if (this.dialog.isShowing()) {
                this.dialog.dismiss();
            }
            FarmerSelectionActivity.this.locationNotFound();
        }
    }

    public void locationNotFound() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_notAbleCaptureGPSAlert())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerSelectionActivity.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FarmerSelectionActivity.this.hasLocation = false;
                FarmerSelectionActivity.this.locationControlTask = new LocationControl();
                FarmerSelectionActivity.this.locationControlTask.execute(new Context[0]);
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerSelectionActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.show();
    }

    public void disPlayRadiusData() {
        if (this.dbllatitude != null && this.dbllongitude != null) {
            this.tempListFarmerNames = new ArrayList<>();
            Double.valueOf(0.0d);
            Double valueOf = Double.valueOf(0.0d);
            EditText editText = this.radiusSearch;
            if (editText != null && editText.getText().toString().length() > 0) {
                valueOf = Double.valueOf(Double.parseDouble(this.radiusSearch.getText().toString()));
            }
            this.tempListFarmerNames.clear();
            for (int i = 0; i < this.listFarmerNames.size(); i++) {
                AssignmentActivityDetailsModel assignmentActivityDetailsModel = this.listFarmerNames.get(i);
                if (assignmentActivityDetailsModel.getLatitude() != null && !assignmentActivityDetailsModel.getLongitude().equalsIgnoreCase("NULL") && assignmentActivityDetailsModel.getLatitude().length() > 0) {
                    double distance = distance(this.dbllatitude, this.dbllongitude, Double.valueOf(Double.parseDouble(assignmentActivityDetailsModel.getLatitude())), Double.valueOf(Double.parseDouble(assignmentActivityDetailsModel.getLongitude())), 'K');
                    Double.valueOf(distance).getClass();
                    if (distance <= valueOf.doubleValue()) {
                        this.tempListFarmerNames.add(assignmentActivityDetailsModel);
                    }
                }
            }
            if (this.tempListFarmerNames.size() > 0) {
                if (this.isFrom.equalsIgnoreCase("FeedBack")) {
                    this.segmentTypelist.setAdapter(null);
                    FeedBackRecyclerToDoAdapter feedBackRecyclerToDoAdapter = new FeedBackRecyclerToDoAdapter(this.context, this.tempListFarmerNames, false, this.isFrom);
                    this.recyclerAdapter1 = feedBackRecyclerToDoAdapter;
                    this.segmentTypelist.setAdapter(feedBackRecyclerToDoAdapter);
                    return;
                }
                this.segmentTypelist.setAdapter(null);
                FarmerSelectionRecyclerToDoAdapter farmerSelectionRecyclerToDoAdapter = new FarmerSelectionRecyclerToDoAdapter(this.context, this.tempListFarmerNames, false, this.isFrom);
                this.recyclerAdapter = farmerSelectionRecyclerToDoAdapter;
                this.segmentTypelist.setAdapter(farmerSelectionRecyclerToDoAdapter);
                return;
            }
            Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
            this.segmentTypelist.setAdapter(null);
            return;
        }
        locationNotFound();
    }

    public class MyLocationListener implements LocationListener {
        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        public MyLocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (location != null) {
                FarmerSelectionActivity.this.dbllatitude = Double.valueOf(location.getLatitude());
                FarmerSelectionActivity.this.dbllongitude = Double.valueOf(location.getLongitude());
                FarmerSelectionActivity.this.hasLocation = true;
            }
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            Toast.makeText(FarmerSelectionActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsEnabledAlert()), 0).show();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 34 || iArr.length <= 0) {
            return;
        }
        if (iArr[0] == 0) {
            fetchLocation();
        } else {
            this.mLocationUtils.showDialog(this, LocationUtils.PERMISSION_DENIED);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1) {
            if (i == 2 && i2 == -1) {
                this.recyclerAdapter.callSurvey(intent.getStringExtra(ConstantDeclarations.getInstance().getKEYFARMERID()));
                return;
            }
            return;
        }
        if (i2 == -1) {
            fetchLocation();
        } else {
            if (i2 != 0) {
                return;
            }
            this.mLocationUtils.showDialog(this, LocationUtils.GPS_NOT_TURNED_ON);
        }
    }

    private void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, false, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.FarmerSelectionActivity.6
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    FarmerSelectionActivity.this.dbllatitude = Double.valueOf(locationInfo.getLatitude());
                    FarmerSelectionActivity.this.dbllongitude = Double.valueOf(locationInfo.getLongitude());
                    FarmerSelectionActivity.this.disPlayRadiusData();
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
