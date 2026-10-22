package com.conceptglobal.pmc.fragments;

import android.app.Activity;
import android.app.ProgressDialog;
import android.app.SearchManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.SearchView;
import androidx.core.view.MenuItemCompat;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.adapter.FarmerSelectionRecyclerToDoAdapter;
import com.conceptglobal.pmc.adapter.FarmerSelectionRecyclerToDoAdapter_Expenses;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.FarmerFormActivity_Expenses;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.ApprovlStatusExpensesModel;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.ExpApprovalModel;
import com.conceptglobal.pmc.model.ExpensesRespMOdel;
import com.conceptglobal.pmc.model.LatLongDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.SVRadiusDataModel;
import com.conceptglobal.pmc.sync.MasterSync;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomProgressDialog;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import java.io.Reader;
import java.io.StringReader;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ToDoFragment extends Fragment implements View.OnClickListener {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private static final int DATEDIALOGID = 0;
    protected static final String TAG = "ToDoFragment";
    public static DecimalFormat twoDForm = new DecimalFormat("#.##");
    String Transids;
    private FarmerSelectionRecyclerToDoAdapter adapterRecyclerCustomers;
    private FarmerSelectionRecyclerToDoAdapter_Expenses adapterRecyclerCustomers_expenses;
    private ArrayList<ApprovlStatusExpensesModel> approvlStatusExpensesModels;
    private EditText brandSearch;
    private Button btnAddExpenses;
    private TextView btnClear;
    private TextView btnGo;
    private Context context;
    private EditText cropSearch;
    private EditText custTypeSearch;
    private Double dbllatitude;
    private Double dbllongitude;
    private LinearLayout filtersLL;
    private GetDataFromDB getDataFromDB;
    private String isFrom;
    private boolean isLocationRequestProcessing;
    private LocationControl locationControlTask;
    private LocationManager locationMgr;
    private Activity mActivity;
    private int mDay;
    private OnFragmentInteractionListener mListener;
    private LocalBroadcastReceiver mLocalBroadcastReceiver;
    private int mMonth;
    private String mParam1;
    private String mParam2;
    private int mYear;
    private LocationListener myLocationListener;
    private Queries queries;
    private EditText radiusSearch;
    private View rootView;
    private RecyclerView segmentTypelist;
    private ArrayList<AssignmentActivityDetailsModel> tempListFarmerNames;
    private TextView tvBrandId;
    private TextView tvCropId;
    private TextView tvCustTypeId;
    private TextView txt;
    private String mFiledStr = "";
    private ArrayList<AssignmentActivityDetailsModel> listFarmerNames = new ArrayList<>();
    private String addCustTypeQuery = "";
    private String addCropQuery = "";
    private boolean hasLocation = false;
    private LocationUtils mLocationUtils = new LocationUtils();
    private StringBuilder strBuildTranList = null;

    public interface OnFragmentInteractionListener {
        void onFragmentInteraction(Uri uri);
    }

    private double deg2rad(double d) {
        return (d * 3.141592653589793d) / 180.0d;
    }

    private double rad2deg(double d) {
        return (d * 180.0d) / 3.141592653589793d;
    }

    public static ToDoFragment newInstance(String str, String str2, String str3) {
        ToDoFragment toDoFragment = new ToDoFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putString(ARG_PARAM2, str2);
        bundle.putString("IsFrom", str3);
        toDoFragment.setArguments(bundle);
        return toDoFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        this.mActivity = getActivity();
        if (getArguments() != null) {
            this.mParam1 = getArguments().getString(ARG_PARAM1);
            this.mParam2 = getArguments().getString(ARG_PARAM2);
            this.isFrom = getArguments().getString("IsFrom");
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ToDoLocationPermissionGranted");
        intentFilter.addAction("android.intent.action.ToDoLocationPermissionDenied");
        intentFilter.addAction("android.intent.action.ToDoGPSTurnedOnResult");
        intentFilter.addAction("android.intent.action.ToDoGPSNotTurnedOnResult");
        this.mLocalBroadcastReceiver = new LocalBroadcastReceiver();
        LocalBroadcastManager.getInstance(getActivity()).registerReceiver(this.mLocalBroadcastReceiver, intentFilter);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.rootView == null) {
            this.rootView = layoutInflater.inflate(R.layout.fragment_to_do, viewGroup, false);
            this.strBuildTranList = new StringBuilder();
            intialize();
        }
        return this.rootView;
    }

    public void onButtonPressed(Uri uri) {
        OnFragmentInteractionListener onFragmentInteractionListener = this.mListener;
        if (onFragmentInteractionListener != null) {
            onFragmentInteractionListener.onFragmentInteraction(uri);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof OnFragmentInteractionListener) {
            this.mListener = (OnFragmentInteractionListener) context;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        getDataFromDB();
        setData(this.listFarmerNames);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        intialize();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.mListener = null;
    }

    private void intialize() {
        this.context = getActivity();
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        RecyclerView recyclerView = (RecyclerView) this.rootView.findViewById(R.id.lv_listRecycle);
        this.segmentTypelist = recyclerView;
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this.segmentTypelist.setLayoutManager(linearLayoutManager);
        this.filtersLL = (LinearLayout) this.rootView.findViewById(R.id.filtersTODOList);
        EditText editText = (EditText) this.rootView.findViewById(R.id.ed_custType);
        this.custTypeSearch = editText;
        editText.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_customTypeFilterText()));
        EditText editText2 = (EditText) this.rootView.findViewById(R.id.ed_crop);
        this.cropSearch = editText2;
        editText2.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cropFilterText()));
        EditText editText3 = (EditText) this.rootView.findViewById(R.id.ed_RadiusSearch);
        this.radiusSearch = editText3;
        editText3.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_radiusFilterText()));
        EditText editText4 = (EditText) this.rootView.findViewById(R.id.ed_Brand);
        this.brandSearch = editText4;
        editText4.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_brandFilterText()));
        this.brandSearch.setVisibility(8);
        this.tvCustTypeId = (TextView) this.rootView.findViewById(R.id.tvCustTypeId);
        this.tvCropId = (TextView) this.rootView.findViewById(R.id.tvCropId);
        TextView textView = (TextView) this.rootView.findViewById(R.id.tvBrandId);
        this.tvBrandId = textView;
        textView.setVisibility(8);
        TextView textView2 = (TextView) this.rootView.findViewById(R.id.filter_list_goBtn);
        this.btnGo = textView2;
        textView2.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_goFilterText()));
        Button button = (Button) this.rootView.findViewById(R.id.btn_addExpense);
        this.btnAddExpenses = button;
        button.setText("Additional Expenses");
        TextView textView3 = (TextView) this.rootView.findViewById(R.id.filter_list_ClearBtn);
        this.btnClear = textView3;
        textView3.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_clearFilterText()));
        this.custTypeSearch.setOnClickListener(this);
        this.cropSearch.setOnClickListener(this);
        this.radiusSearch.setOnClickListener(this);
        this.btnGo.setOnClickListener(this);
        this.btnClear.setOnClickListener(this);
        this.btnAddExpenses.setOnClickListener(this);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x0124 -> B:30:0x0130). Please report as a decompilation issue!!! */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_addExpense /* 2131296397 */:
                Intent intent = new Intent(this.context, (Class<?>) FarmerFormActivity_Expenses.class);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), "");
                intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), 5);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), 1567);
                intent.putExtra("SEGMENTID", 11);
                intent.putExtra("ACTIVITYNAME", "Additional Expenses");
                intent.putExtra("AssignmentId", 0);
                intent.putExtra("ActivityAssignmentId", 0);
                intent.putExtra("PackageId", 0);
                intent.putExtra("TRANSID", 0);
                intent.putExtra("ExpensesSubmited", 0);
                Bundle bundle = new Bundle();
                bundle.putParcelable("MODELCLASS", null);
                intent.putExtras(bundle);
                intent.addFlags(67108864);
                this.context.startActivity(intent.addFlags(131072).addFlags(67108864));
                break;
            case R.id.ed_crop /* 2131296582 */:
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(getActivity(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_cropFilterText()), Queries.getInstance().getCropNames(), view, this.tvCropId);
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
                    ListPopupOne listPopupOne2 = new ListPopupOne(getActivity(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_customTypeFilterText()), Queries.getInstance().getActivitySegments(), view, this.tvCustTypeId);
                    listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne2.show();
                    listPopupOne2.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e2) {
                    PLog.e(TAG, e2);
                    return;
                }
            case R.id.filter_list_ClearBtn /* 2131296762 */:
                this.custTypeSearch.setText("");
                this.brandSearch.setText("");
                this.cropSearch.setText("");
                this.radiusSearch.setText("");
                this.tvCropId.setText("");
                this.tvCustTypeId.setText("");
                this.tvBrandId.setText("");
                getDataFromDB();
                setData(this.listFarmerNames);
                break;
            case R.id.filter_list_goBtn /* 2131296763 */:
                if (this.tvCustTypeId.getText().toString().length() != 0 || this.tvCropId.getText().toString().length() != 0 || this.radiusSearch.getText().toString().length() != 0) {
                    UtilDeclarations.hideInputKeyboard(this.context);
                    if (this.tvCustTypeId.getText().toString().length() != 0) {
                        this.addCustTypeQuery = " and paad.ActivitySegmentId=" + this.tvCustTypeId.getText().toString() + " ";
                    }
                    if (this.tvCropId.getText().toString().length() != 0) {
                        this.addCropQuery = " and attributeValue =" + this.tvCropId.getText().toString() + " ";
                    }
                    try {
                        this.listFarmerNames.clear();
                        if (this.radiusSearch.getText().toString() != null && this.radiusSearch.getText().toString().length() > 0) {
                            if (this.mParam1.equalsIgnoreCase("Calendar")) {
                                this.listFarmerNames = GetDataFromDB.getInstance().getFarmerToDOLatLongDetails(Queries.getInstance().getAllFarmersDataTimeBasedByFilters(this.addCustTypeQuery, this.addCropQuery));
                            }
                            try {
                                this.hasLocation = false;
                                ArrayList<AssignmentActivityDetailsModel> arrayList = this.listFarmerNames;
                                if (arrayList != null && arrayList.size() > 0) {
                                    setData(this.listFarmerNames);
                                } else if (this.listFarmerNames.size() > 0) {
                                    setData(this.listFarmerNames);
                                } else {
                                    Toast.makeText(this.context, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 1).show();
                                    this.segmentTypelist.setAdapter(null);
                                }
                            } catch (Exception e3) {
                                PLog.e(TAG, e3);
                            }
                        } else {
                            getDataFromDB();
                            setData(this.listFarmerNames);
                        }
                        this.addCustTypeQuery = "";
                        this.addCropQuery = "";
                    } catch (Exception e4) {
                        PLog.e(TAG, e4);
                    }
                    if (this.listFarmerNames.size() <= 0) {
                        Toast.makeText(this.context, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 1).show();
                        this.segmentTypelist.setAdapter(null);
                    }
                    this.addCustTypeQuery = "";
                    this.addCropQuery = "";
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008d A[Catch: Exception -> 0x01bd, TRY_ENTER, TryCatch #0 {Exception -> 0x01bd, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x000c, B:9:0x0024, B:12:0x002a, B:14:0x0032, B:21:0x0069, B:22:0x0082, B:25:0x008d, B:27:0x009b, B:29:0x00cb, B:32:0x00ce, B:34:0x00e6, B:36:0x00ec, B:37:0x00f2, B:39:0x00f8, B:41:0x0104, B:43:0x0132, B:46:0x0135, B:48:0x014d, B:50:0x0153, B:51:0x0158, B:53:0x015e, B:55:0x016a, B:57:0x0188, B:69:0x018b, B:71:0x0193, B:73:0x01aa), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f8 A[Catch: Exception -> 0x01bd, TryCatch #0 {Exception -> 0x01bd, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x000c, B:9:0x0024, B:12:0x002a, B:14:0x0032, B:21:0x0069, B:22:0x0082, B:25:0x008d, B:27:0x009b, B:29:0x00cb, B:32:0x00ce, B:34:0x00e6, B:36:0x00ec, B:37:0x00f2, B:39:0x00f8, B:41:0x0104, B:43:0x0132, B:46:0x0135, B:48:0x014d, B:50:0x0153, B:51:0x0158, B:53:0x015e, B:55:0x016a, B:57:0x0188, B:69:0x018b, B:71:0x0193, B:73:0x01aa), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void getDataFromDB() {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.ToDoFragment.getDataFromDB():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setData(ArrayList<AssignmentActivityDetailsModel> arrayList) {
        String str = this.isFrom;
        if (str != null && str.equalsIgnoreCase("Survey")) {
            this.segmentTypelist.setAdapter(null);
            FarmerSelectionRecyclerToDoAdapter farmerSelectionRecyclerToDoAdapter = new FarmerSelectionRecyclerToDoAdapter(getActivity(), arrayList, false, this.isFrom);
            this.adapterRecyclerCustomers = farmerSelectionRecyclerToDoAdapter;
            this.segmentTypelist.setAdapter(farmerSelectionRecyclerToDoAdapter);
            return;
        }
        String str2 = this.isFrom;
        if (str2 != null && str2.equalsIgnoreCase("ExpensesToDo")) {
            FarmerSelectionRecyclerToDoAdapter_Expenses farmerSelectionRecyclerToDoAdapter_Expenses = new FarmerSelectionRecyclerToDoAdapter_Expenses(getActivity(), arrayList, false, this.isFrom);
            this.adapterRecyclerCustomers_expenses = farmerSelectionRecyclerToDoAdapter_Expenses;
            this.segmentTypelist.setAdapter(farmerSelectionRecyclerToDoAdapter_Expenses);
        } else {
            Double d = this.dbllatitude;
            if (d != null && d.doubleValue() > 0.0d) {
                disPlaySVRadiusData();
            } else {
                fetchLocation();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.filter_todo) {
            if (this.filtersLL.getVisibility() == 8) {
                this.filtersLL.setVisibility(0);
                menuItem.setIcon(R.drawable.ic_filter_release_24);
                return true;
            }
            if (this.filtersLL.getVisibility() != 0) {
                return true;
            }
            this.filtersLL.setVisibility(8);
            menuItem.setIcon(R.drawable.ic_filter_24);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.search_only, menu);
        MenuItem findItem = menu.findItem(R.id.search_only);
        menu.findItem(R.id.targetVsActual).setVisible(false);
        if (this.filtersLL.getVisibility() == 0) {
            menu.findItem(R.id.filter_todo).setIcon(R.drawable.ic_filter_release_24);
        }
        String str = this.isFrom;
        if (str != null && str.equalsIgnoreCase("Survey")) {
            menu.findItem(R.id.filter_todo).setVisible(false);
        }
        String str2 = this.isFrom;
        if (str2 != null && str2.equalsIgnoreCase("ExpensesToDo")) {
            menu.findItem(R.id.filter_todo).setVisible(false);
        }
        SearchManager searchManager = (SearchManager) getActivity().getSystemService(FirebaseAnalytics.Event.SEARCH);
        final SearchView searchView = (SearchView) MenuItemCompat.getActionView(findItem);
        if (searchView != null) {
            searchView.setSearchableInfo(searchManager.getSearchableInfo(getActivity().getComponentName()));
            searchView.setIconifiedByDefault(false);
        }
        MenuItemCompat.setOnActionExpandListener(findItem, new MenuItemCompat.OnActionExpandListener() { // from class: com.conceptglobal.pmc.fragments.ToDoFragment.1
            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                if (ToDoFragment.this.adapterRecyclerCustomers == null) {
                    return true;
                }
                ToDoFragment.this.adapterRecyclerCustomers.getFilter().filter(ConstantDeclarations.getInstance().getEMPTY());
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }

            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (ToDoFragment.this.adapterRecyclerCustomers == null) {
                    return true;
                }
                ToDoFragment.this.adapterRecyclerCustomers.getFilter().filter(ConstantDeclarations.getInstance().getEMPTY());
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }
        });
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.fragments.ToDoFragment.2
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str3) {
                if (ToDoFragment.this.adapterRecyclerCustomers == null) {
                    return true;
                }
                ToDoFragment.this.adapterRecyclerCustomers.getFilter().filter(str3);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str3) {
                if (ToDoFragment.this.adapterRecyclerCustomers == null) {
                    return true;
                }
                ToDoFragment.this.adapterRecyclerCustomers.getFilter().filter(str3);
                return true;
            }
        });
        super.onCreateOptionsMenu(menu, menuInflater);
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
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_gpsTurnedOffAlert())).setCancelable(false).setPositiveButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_gpsOKButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ToDoFragment.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ToDoFragment.this.startActivity(new Intent("android.settings.SECURITY_SETTINGS"));
                ToDoFragment.this.getActivity().finish();
            }
        });
        builder.show();
    }

    private class LocationControl extends AsyncTask<Context, Void, Void> {
        private final ProgressDialog dialog;

        private LocationControl() {
            this.dialog = new ProgressDialog(ToDoFragment.this.getActivity());
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.dialog.setMessage(ToDoFragment.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_gettLocationPWDialog()));
            this.dialog.setButton(ToDoFragment.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ToDoFragment.LocationControl.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    ToDoFragment.this.hasLocation = true;
                }
            });
            this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Context... contextArr) {
            while (!ToDoFragment.this.hasLocation) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    PLog.e(ToDoFragment.TAG, e);
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r11) {
            if (ToDoFragment.this.dbllatitude != null && ToDoFragment.this.dbllongitude != null) {
                if (this.dialog.isShowing()) {
                    this.dialog.dismiss();
                }
                ToDoFragment.this.tempListFarmerNames = new ArrayList();
                Double.valueOf(0.0d);
                Double valueOf = Double.valueOf(0.0d);
                if (ToDoFragment.this.radiusSearch != null && ToDoFragment.this.radiusSearch.getText().toString().length() > 0) {
                    valueOf = Double.valueOf(Double.parseDouble(ToDoFragment.this.radiusSearch.getText().toString()));
                }
                ToDoFragment.this.tempListFarmerNames.clear();
                for (int i = 0; i < ToDoFragment.this.listFarmerNames.size(); i++) {
                    AssignmentActivityDetailsModel assignmentActivityDetailsModel = (AssignmentActivityDetailsModel) ToDoFragment.this.listFarmerNames.get(i);
                    if (assignmentActivityDetailsModel.getLatitude() != null && !assignmentActivityDetailsModel.getLongitude().equalsIgnoreCase("NULL") && assignmentActivityDetailsModel.getLatitude().length() > 0) {
                        ToDoFragment toDoFragment = ToDoFragment.this;
                        double distance = toDoFragment.distance(toDoFragment.dbllatitude, ToDoFragment.this.dbllongitude, Double.valueOf(Double.parseDouble(assignmentActivityDetailsModel.getLatitude())), Double.valueOf(Double.parseDouble(assignmentActivityDetailsModel.getLongitude())), 'K');
                        Double.valueOf(distance).getClass();
                        if (distance <= valueOf.doubleValue()) {
                            ToDoFragment.this.tempListFarmerNames.add(assignmentActivityDetailsModel);
                        }
                    }
                }
                if (ToDoFragment.this.tempListFarmerNames.size() <= 0) {
                    Toast.makeText(ToDoFragment.this.getActivity().getApplicationContext(), ToDoFragment.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
                    ToDoFragment.this.segmentTypelist.setAdapter(null);
                    return;
                } else {
                    ToDoFragment toDoFragment2 = ToDoFragment.this;
                    toDoFragment2.setData(toDoFragment2.tempListFarmerNames);
                    return;
                }
            }
            if (this.dialog.isShowing()) {
                this.dialog.dismiss();
            }
            ToDoFragment.this.locationNotFound();
        }
    }

    public void locationNotFound() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_notAbleCaptureGPSAlert())).setCancelable(false).setPositiveButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ToDoFragment.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ToDoFragment.this.hasLocation = false;
                ToDoFragment.this.locationControlTask = new LocationControl();
                ToDoFragment.this.locationControlTask.execute(new Context[0]);
            }
        });
        builder.setNegativeButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ToDoFragment.5
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
                if (assignmentActivityDetailsModel.getLatitude() != null && !assignmentActivityDetailsModel.getLongitude().equalsIgnoreCase("NULL") && assignmentActivityDetailsModel.getLatitude().trim().length() > 0) {
                    double distance = distance(this.dbllatitude, this.dbllongitude, Double.valueOf(Double.parseDouble(assignmentActivityDetailsModel.getLatitude())), Double.valueOf(Double.parseDouble(assignmentActivityDetailsModel.getLongitude())), 'K');
                    Double.valueOf(distance).getClass();
                    if (distance <= valueOf.doubleValue()) {
                        this.tempListFarmerNames.add(assignmentActivityDetailsModel);
                    }
                }
            }
            if (this.tempListFarmerNames.size() > 0) {
                this.segmentTypelist.setAdapter(null);
                String str = this.isFrom;
                if (str != null && str.equalsIgnoreCase("ExpensesToDo")) {
                    FarmerSelectionRecyclerToDoAdapter_Expenses farmerSelectionRecyclerToDoAdapter_Expenses = new FarmerSelectionRecyclerToDoAdapter_Expenses(getActivity(), this.tempListFarmerNames, false, this.isFrom);
                    this.adapterRecyclerCustomers_expenses = farmerSelectionRecyclerToDoAdapter_Expenses;
                    this.segmentTypelist.setAdapter(farmerSelectionRecyclerToDoAdapter_Expenses);
                    return;
                } else {
                    FarmerSelectionRecyclerToDoAdapter farmerSelectionRecyclerToDoAdapter = new FarmerSelectionRecyclerToDoAdapter(getActivity(), this.tempListFarmerNames, false, this.isFrom);
                    this.adapterRecyclerCustomers = farmerSelectionRecyclerToDoAdapter;
                    this.segmentTypelist.setAdapter(farmerSelectionRecyclerToDoAdapter);
                    return;
                }
            }
            Toast.makeText(getActivity().getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
            this.segmentTypelist.setAdapter(null);
            return;
        }
        locationNotFound();
    }

    public void disPlaySVRadiusData() {
        if (this.dbllatitude != null && this.dbllongitude != null) {
            this.tempListFarmerNames = new ArrayList<>();
            HashMap<String, SVRadiusDataModel> hashMap = new HashMap<>();
            for (int i = 0; i < this.listFarmerNames.size(); i++) {
                hashMap = GetDataFromDB.getInstance().getSVRadiusData(Queries.getInstance().getSVRadiusDataQry());
            }
            Double.valueOf(0.0d);
            Double valueOf = Double.valueOf(0.0d);
            this.tempListFarmerNames.clear();
            int i2 = 0;
            while (true) {
                LatLongDetails latLongDetails = null;
                if (i2 >= this.listFarmerNames.size()) {
                    break;
                }
                hashMap.get(this.listFarmerNames.get(i2).getActivityAssignmentId() + "");
                AssignmentActivityDetailsModel assignmentActivityDetailsModel = this.listFarmerNames.get(i2);
                try {
                    valueOf = Double.valueOf(Double.parseDouble(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getActivityRadius(assignmentActivityDetailsModel.getActivityMasterId()))));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (assignmentActivityDetailsModel.getActivitySegmentId() == 1) {
                    latLongDetails = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsQry(assignmentActivityDetailsModel.getActivitySegmentValue(), assignmentActivityDetailsModel.getActivitySegmentId()));
                } else if (assignmentActivityDetailsModel.getActivitySegmentId() == 4) {
                    latLongDetails = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsQry(assignmentActivityDetailsModel.getActivitySegmentValue(), assignmentActivityDetailsModel.getActivitySegmentId()));
                } else if (assignmentActivityDetailsModel.getActivitySegmentId() == 2) {
                    latLongDetails = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsDealerQry(assignmentActivityDetailsModel.getActivitySegmentValue(), assignmentActivityDetailsModel.getActivitySegmentId()));
                } else if (assignmentActivityDetailsModel.getActivitySegmentId() == 3) {
                    latLongDetails = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsDealerQry(assignmentActivityDetailsModel.getActivitySegmentValue(), assignmentActivityDetailsModel.getActivitySegmentId()));
                } else if (assignmentActivityDetailsModel.getActivitySegmentId() == 8) {
                    latLongDetails = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsQry(assignmentActivityDetailsModel.getActivitySegmentValue(), assignmentActivityDetailsModel.getActivitySegmentId()));
                } else if (assignmentActivityDetailsModel.getActivitySegmentId() == 18) {
                    latLongDetails = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsDealerQry(assignmentActivityDetailsModel.getActivitySegmentValue(), assignmentActivityDetailsModel.getActivitySegmentId()));
                }
                if (latLongDetails != null && latLongDetails.getLatitude() != null && !latLongDetails.getLongitude().equalsIgnoreCase("NULL") && latLongDetails.getLatitude().length() > 0) {
                    double distance = distance(this.dbllatitude, this.dbllongitude, Double.valueOf(Double.parseDouble(latLongDetails.getLatitude())), Double.valueOf(Double.parseDouble(latLongDetails.getLongitude())), 'K');
                    Double.valueOf(distance).getClass();
                    if (distance <= valueOf.doubleValue()) {
                        this.tempListFarmerNames.add(assignmentActivityDetailsModel);
                        this.listFarmerNames.get(i2).setIsInsideRadius(1);
                    }
                }
                i2++;
            }
            if (this.listFarmerNames.size() > 0) {
                this.segmentTypelist.setAdapter(null);
                FarmerSelectionRecyclerToDoAdapter farmerSelectionRecyclerToDoAdapter = new FarmerSelectionRecyclerToDoAdapter(getActivity(), this.listFarmerNames, false, this.isFrom);
                this.adapterRecyclerCustomers = farmerSelectionRecyclerToDoAdapter;
                this.segmentTypelist.setAdapter(farmerSelectionRecyclerToDoAdapter);
                return;
            }
            Toast.makeText(getActivity().getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
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
                ToDoFragment.this.dbllatitude = Double.valueOf(location.getLatitude());
                ToDoFragment.this.dbllongitude = Double.valueOf(location.getLongitude());
                ToDoFragment.this.hasLocation = true;
            }
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            Toast.makeText(ToDoFragment.this.getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsEnabledAlert()), 0).show();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        LocalBroadcastManager.getInstance(getActivity()).unregisterReceiver(this.mLocalBroadcastReceiver);
    }

    private class LocalBroadcastReceiver extends BroadcastReceiver {
        private LocalBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equalsIgnoreCase("android.intent.action.ToDoLocationPermissionGranted")) {
                ToDoFragment.this.fetchLocation();
                return;
            }
            if (intent.getAction().equalsIgnoreCase("android.intent.action.ToDoLocationPermissionDenied")) {
                ToDoFragment.this.mLocationUtils.showDialog(ToDoFragment.this.getActivity(), LocationUtils.PERMISSION_DENIED);
            } else if (intent.getAction().equalsIgnoreCase("android.intent.action.ToDoGPSTurnedOnResult")) {
                ToDoFragment.this.fetchLocation();
            } else if (intent.getAction().equalsIgnoreCase("android.intent.action.ToDoGPSNotTurnedOnResult")) {
                ToDoFragment.this.mLocationUtils.showDialog(ToDoFragment.this.getActivity(), LocationUtils.GPS_NOT_TURNED_ON);
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
            new FetchLocation(getActivity(), true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.ToDoFragment.6
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    if (ToDoFragment.this.dbllatitude == null || ToDoFragment.this.dbllatitude.doubleValue() != locationInfo.getLatitude()) {
                        ToDoFragment.this.isLocationRequestProcessing = false;
                        ToDoFragment.this.dbllatitude = Double.valueOf(locationInfo.getLatitude());
                        ToDoFragment.this.dbllongitude = Double.valueOf(locationInfo.getLongitude());
                        ToDoFragment.this.disPlaySVRadiusData();
                    }
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 2) {
            return;
        }
        this.adapterRecyclerCustomers.callSurvey(intent.getStringExtra(ConstantDeclarations.getInstance().getKEYFARMERID()));
    }

    private class ApprovalCall extends AsyncTask<String, Void, String> {
        private CustomProgressDialog customProgressDialog;

        private ApprovalCall() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            ToDoFragment.this.getApprovalData();
            return "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute((ApprovalCall) str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getApprovalData() {
        try {
            Gson gson = new Gson();
            new ApprovlStatusExpensesModel();
            this.strBuildTranList.deleteCharAt(r2.length() - 1);
            this.Transids = this.strBuildTranList.toString();
            String str = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodExpensesApproval();
            ExpApprovalModel expApprovalModel = new ExpApprovalModel();
            expApprovalModel.setTransids(this.Transids);
            expApprovalModel.setPDAID(ConstantsPMC.getInstance().getDeviceID());
            JSONObject jSONObject = new JSONObject(WebService.getInstance().sendRequest(new Gson().toJson(expApprovalModel), str));
            if (!jSONObject.getString("status").equals("AUTHORISED") || jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) == null || jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() <= 10) {
                return;
            }
            ExpensesRespMOdel expensesRespMOdel = (ExpensesRespMOdel) gson.fromJson((Reader) new StringReader(MasterSync.decompressNew(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE))), ExpensesRespMOdel.class);
            for (int i = 0; i < expensesRespMOdel.getApprovlStatusExpensesModels().size(); i++) {
                GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().getUpdateExpensesDetails(expensesRespMOdel.getApprovlStatusExpensesModels().get(i).getTransId(), expensesRespMOdel.getApprovlStatusExpensesModels().get(i).getIsApproved(), expensesRespMOdel.getApprovlStatusExpensesModels().get(i).getApprovedBy()));
            }
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("errrorro", e.toString());
        }
    }
}
