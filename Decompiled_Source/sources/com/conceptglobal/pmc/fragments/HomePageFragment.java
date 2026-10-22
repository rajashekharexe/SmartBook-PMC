package com.conceptglobal.pmc.fragments;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.imaterialdesign.app.Dialog;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.LoginActivity;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.SyncResultReceiver;
import com.conceptglobal.pmc.adapter.AsymmetricGridViewAdapter;
import com.conceptglobal.pmc.adapter.HomePageGridAdapter;
import com.conceptglobal.pmc.adapter.WeatherRecyclerViewAdapter;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.interfaces.OnResultReceiver;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.HomeLocationDetails;
import com.conceptglobal.pmc.model.JSONWeatherParser;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.model.TableBean;
import com.conceptglobal.pmc.model.UserFunctions;
import com.conceptglobal.pmc.model.Weather;
import com.conceptglobal.pmc.model.WeatherCacheModel;
import com.conceptglobal.pmc.service.MasterSyncService;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.smartalerts.Basics;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.ScrollTextView;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmc.utils.WeatherHttpClient;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.github.amlcurran.showcaseview.ShowcaseView;
import com.github.amlcurran.showcaseview.targets.Target;
import com.google.gson.Gson;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.Reader;
import java.io.StringReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.IOUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HomePageFragment extends Fragment implements OnResultReceiver {
    protected static final String TAG = "HomePageFragment";
    private static AsymmetricGridViewAdapter mAdapter;
    private static Menu optionsMenu;
    private static Context scontext;
    String activitiesPend;
    String assignmentsPend;
    private Basics basics;
    private EditText cityEntryEditText;
    private TextView cityText;
    private String cityWeather;
    private Context context;
    private String countryWeather;
    SharedPreferences.Editor editor;
    private FloatingActionButton fabStopMode;
    String farmersPending;
    private Button getCityWeatherBtn;
    private GetDataFromDB getData;
    private ImageView getLocationWeatherBtn;
    private HomePageGridAdapter homePageGridAdapter;
    String imagesPend;
    private LayoutInflater inflaterLoc;
    private int isLocationWeather;
    private double latitude;
    LinearLayout ll_ticker;
    String location;
    private double longitude;
    private Activity mActivity;
    private Handler mHandler;
    private LocalBroadcastReceiver mLocalBroadcastReceiver;
    public SyncResultReceiver mReceiver;
    MenuItem menuItem;
    private String msg;
    private MyPhoneStateListener myListener;
    private TextView noWeatherText;
    private ProgressDialog progressDialog;
    private RelativeLayout progressLayout;
    MenuItem reportItem;
    String retailersPending;
    View rootView;
    private RecyclerView rvGridItems;
    ScrollTextView scrollTextView;
    SharedPreferences sharedPreferences;
    private ShowcaseView showcaseView;
    private ShowcaseView showcaseview2;
    private TelephonyManager telManager;
    private File tempFile;
    TextView txt_marketname;
    private WeatherRecyclerViewAdapter weatherAdapter;
    MenuItem weatherItem;
    private RelativeLayout weatherMainLayout;
    private RecyclerView weatherView;
    private int countSync = 0;
    private List<UserFunctions> userFunctions = new ArrayList();
    private boolean isActivityInForeground = true;
    Dialog.Builder builder = null;
    private List<Weather> weatherList = new ArrayList();
    private Weather currentWeather = new Weather();
    private List<Weather> forecastWeatherList = new ArrayList();
    private int todayWeather = 0;
    private int forecastWeather = 0;
    private final String TEMP_FILE_NAME = "weather_temp1.txt";
    private int counter = 0;
    LocationUtils mLocationUtils = new LocationUtils();
    private ArrayList<String> keysList = new ArrayList<>();
    int tickerPos = 0;
    HashMap<String, ArrayList<TableBean>> tableBeansHashmap = new HashMap<>();
    BroadcastReceiver mCompressionResult = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
        }
    };
    Runnable mDialogRunnable = new Runnable() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.11
        @Override // java.lang.Runnable
        public void run() {
            HomePageFragment homePageFragment = HomePageFragment.this;
            homePageFragment.showAlertDialog(homePageFragment.msg);
        }
    };
    Runnable mRunnable = new Runnable() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.12
        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(HomePageFragment.this.mActivity.getApplicationContext(), HomePageFragment.this.msg, 0).show();
        }
    };
    private BroadcastReceiver tickermessge = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.19
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HomePageFragment.this.tickerPos = intent.getIntExtra("tickerpos", 0);
            try {
                if (HomePageFragment.this.keysList.size() == HomePageFragment.this.tickerPos) {
                    HomePageFragment.this.tickerPos = 0;
                    HomePageFragment homePageFragment = HomePageFragment.this;
                    homePageFragment.setTickerData(homePageFragment.tableBeansHashmap.get(HomePageFragment.this.keysList.get(HomePageFragment.this.tickerPos)));
                } else {
                    HomePageFragment homePageFragment2 = HomePageFragment.this;
                    homePageFragment2.setTickerData(homePageFragment2.tableBeansHashmap.get(HomePageFragment.this.keysList.get(HomePageFragment.this.tickerPos)));
                }
            } catch (Exception e) {
                PLog.e(HomePageFragment.TAG, e);
            }
        }
    };

    public void fragmentCommunication() {
    }

    static /* synthetic */ int access$2108(HomePageFragment homePageFragment) {
        int i = homePageFragment.counter;
        homePageFragment.counter = i + 1;
        return i;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.rootView = layoutInflater.inflate(R.layout.activity_main_home, viewGroup, false);
        this.context = layoutInflater.getContext();
        scontext = layoutInflater.getContext();
        this.basics = new Basics(this.context);
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("MyPref", 4);
        this.sharedPreferences = sharedPreferences;
        this.editor = sharedPreferences.edit();
        init();
        getDataFromDB();
        try {
            if (SharedPrefManager.getString(getActivity().getApplicationContext(), ConstantDeclarations.getInstance().getKeyTicketVisibility(), "True").equalsIgnoreCase("False")) {
                this.ll_ticker.setVisibility(8);
            } else {
                this.ll_ticker.setVisibility(0);
                getTickerData();
                int val = this.scrollTextView.getVal();
                this.tickerPos = val;
                setTickerData(this.tableBeansHashmap.get(this.keysList.get(val)));
            }
        } catch (Exception e) {
            e.getMessage();
        }
        this.location = this.sharedPreferences.getString("location", "");
        LocalBroadcastManager.getInstance(getContext()).registerReceiver(this.tickermessge, new IntentFilter("gettickercall"));
        String string = this.sharedPreferences.getString("location", "");
        this.location = string;
        if (!TextUtils.isEmpty(string)) {
            checkHomeLocationStatus();
        }
        return this.rootView;
    }

    private void getTickerData() {
        try {
            HashMap<String, ArrayList<TableBean>> pricesListData = GetDataFromDB.getInstance().getPricesListData();
            this.tableBeansHashmap = pricesListData;
            if (pricesListData.size() > 0) {
                this.ll_ticker.setVisibility(0);
                this.scrollTextView.setVisibility(0);
                Iterator<String> it = this.tableBeansHashmap.keySet().iterator();
                while (it.hasNext()) {
                    this.keysList.add(it.next());
                }
                return;
            }
            this.ll_ticker.setVisibility(8);
            this.scrollTextView.setVisibility(8);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void setTickerData(ArrayList<TableBean> arrayList) {
        try {
            StringBuilder sb = new StringBuilder();
            Iterator<TableBean> it = arrayList.iterator();
            String str = null;
            while (it.hasNext()) {
                TableBean next = it.next();
                String str2 = "";
                String commodity = next.getCommodity() != null ? next.getCommodity() : "";
                String market = next.getMarket() != null ? next.getMarket() : "";
                String variety = next.getVariety() != null ? next.getVariety() : "";
                String arrival_date = next.getArrival_date() != null ? next.getArrival_date() : "";
                String coloredSpanned = getColoredSpanned(next.getMin_price() != null ? next.getMin_price() : "", "#FF0000");
                String coloredSpanned2 = getColoredSpanned(next.getMax_price() != null ? next.getMax_price() : "", "#2EC54A");
                if (next.getModal_price() != null) {
                    str2 = next.getModal_price();
                }
                sb.append(commodity + "(" + variety + ")-" + arrival_date + "-" + getColoredSpanned("Min Price-", "#C5C5C5") + coloredSpanned + "-" + getColoredSpanned("Max Price-", "#C5C5C5") + coloredSpanned2 + "-" + getColoredSpanned("Modal Price-", "#C5C5C5") + getColoredSpanned(str2, "#009fe3") + "   ");
                str = market;
            }
            this.txt_marketname.setText(Html.fromHtml(getColoredSpanned("Market-", "#C5C5C5") + str));
            this.scrollTextView.setText(Html.fromHtml(sb.toString()));
            this.scrollTextView.startScroll();
            this.scrollTextView.setVal(this.tickerPos);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String getColoredSpanned(String str, String str2) {
        return "<font color=" + str2 + ">" + str + "</font>";
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mActivity = getActivity();
        SyncResultReceiver syncResultReceiver = new SyncResultReceiver(new Handler());
        this.mReceiver = syncResultReceiver;
        syncResultReceiver.setReceiver(this);
        setHasOptionsMenu(true);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.GPSTurnedOnForWeather");
        this.mLocalBroadcastReceiver = new LocalBroadcastReceiver();
        LocalBroadcastManager.getInstance(getActivity()).registerReceiver(this.mLocalBroadcastReceiver, intentFilter);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        initialization();
        checkCountForSynFO();
        getGsmLevels();
        ((PMCApplication) getActivity().getApplication()).setIsHomeFragmentActive(true);
        if (UtilDeclarations.isOnline(this.context)) {
            if (UtilDeclarations.isServiceRunning(this.context.getApplicationContext(), SyncDataService.class)) {
                setRefreshActionButtonState(true);
                return;
            }
            return;
        }
        setRefreshActionButtonState(false);
    }

    private void checkHomeLocationStatus() {
        try {
            String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getHomeAddressDetaisCount());
            if (!TextUtils.isEmpty(stringValue) && (stringValue == null || !stringValue.equalsIgnoreCase("null"))) {
                HomeLocationDetails homeAddressInfo = GetDataFromDB.getInstance().getHomeAddressInfo(Queries.getInstance().getHomeAddressDetais());
                if (homeAddressInfo == null || homeAddressInfo.getLongitude().isEmpty() || !UtilDeclarations.isOnline(this.context)) {
                    return;
                }
                sendHoeLocationDetailsToserver(homeAddressInfo);
                return;
            }
            showHomeLocationUpdateAlertDialog("Please update your home location details to continue further");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void sendHoeLocationDetailsToserver(HomeLocationDetails homeLocationDetails) {
        try {
            new SendSDTVTask().execute(new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void init() {
        this.getData = GetDataFromDB.getInstance();
        this.inflaterLoc = (LayoutInflater) this.context.getSystemService("layout_inflater");
        this.weatherView = (RecyclerView) this.rootView.findViewById(R.id.weatherView);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context, 0, false);
        this.weatherView.setHasFixedSize(true);
        this.weatherView.setLayoutManager(linearLayoutManager);
        this.progressLayout = (RelativeLayout) this.rootView.findViewById(R.id.progressBar);
        this.weatherMainLayout = (RelativeLayout) this.rootView.findViewById(R.id.weatherParent);
        this.noWeatherText = (TextView) this.rootView.findViewById(R.id.noweatherText);
        WeatherRecyclerViewAdapter weatherRecyclerViewAdapter = new WeatherRecyclerViewAdapter(this.context, this.weatherList);
        this.weatherAdapter = weatherRecyclerViewAdapter;
        this.weatherView.setAdapter(weatherRecyclerViewAdapter);
        this.cityText = (TextView) this.rootView.findViewById(R.id.cityTextView);
        this.cityEntryEditText = (EditText) this.rootView.findViewById(R.id.locEditWeather);
        this.getLocationWeatherBtn = (ImageView) this.rootView.findViewById(R.id.getlocBtn);
        this.getCityWeatherBtn = (Button) this.rootView.findViewById(R.id.getCityWeatherBtn);
        this.scrollTextView = (ScrollTextView) this.rootView.findViewById(R.id.txt_price_display);
        this.txt_marketname = (TextView) this.rootView.findViewById(R.id.txt_marketname);
        this.ll_ticker = (LinearLayout) this.rootView.findViewById(R.id.ll_ticker);
        RecyclerView recyclerView = (RecyclerView) this.rootView.findViewById(R.id.rvHomePageGrids);
        this.rvGridItems = recyclerView;
        recyclerView.setHasFixedSize(true);
        new LinearLayoutManager(getActivity()).setOrientation(1);
        this.rvGridItems.setLayoutManager(new GridLayoutManager(this.context, 3));
        this.getLocationWeatherBtn.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomePageFragment.this.cityEntryEditText.setText("");
                HomePageFragment.this.progressLayout.setVisibility(0);
                HomePageFragment.this.getLocation(true);
            }
        });
        this.getCityWeatherBtn.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String trim = HomePageFragment.this.cityEntryEditText.getText().toString().trim();
                if (trim.equals("")) {
                    Toast.makeText(HomePageFragment.this.context, "No location entered", 0).show();
                    return;
                }
                HomePageFragment.this.cityEntryEditText.setText("");
                HomePageFragment.this.progressLayout.setVisibility(0);
                HomePageFragment.this.getWeatherInfo("" + trim, "", false, false);
            }
        });
    }

    private void showPopupForLocationTracker() {
        final android.app.Dialog dialog = new android.app.Dialog(this.context);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_foreground_service_end);
        final EditText editText = (EditText) dialog.findViewById(R.id.etDistance);
        ((Button) dialog.findViewById(R.id.btnEndDay)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HomePageFragment.this.sharedPreferences.getString("location", "").equals("Start day")) {
                    HomePageFragment.this.editor.putString("location", "End day");
                    HomePageFragment.this.editor.commit();
                    HomePageFragment.this.basics.stopLocationTrackerService();
                    InsertDataIntoDB.updateCloseDayFOTrackerHeader(com.conceptglobal.pmc.fotracker.util.UtilDeclarations.getDateTime(), editText.getText().toString(), "na", "na");
                    dialog.dismiss();
                }
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getLocation(boolean z) {
        if (z) {
            fetchLocation();
        } else {
            getWeatherInCache();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getWeatherInfo(final String str, final String str2, final boolean z, boolean z2) {
        if (UtilDeclarations.isOnline(this.context)) {
            this.currentWeather = new Weather();
            this.weatherList.clear();
            if (!z2) {
                this.forecastWeatherList.clear();
            }
            new Thread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    String str3;
                    final Weather weather;
                    if (z) {
                        HomePageFragment.this.isLocationWeather = 1;
                        str3 = WeatherHttpClient.BASE_URL_LOC + "lat=" + str + "&lon=" + str2 + "&APPID=6125571beb5e3ff4af5889504fbfa254&units=metric";
                    } else {
                        HomePageFragment.this.isLocationWeather = 0;
                        str3 = WeatherHttpClient.BASE_URL_CITY + str + "&APPID=6125571beb5e3ff4af5889504fbfa254&units=metric";
                    }
                    try {
                        weather = JSONWeatherParser.getWeather(new WeatherHttpClient().getWeatherData(str3));
                        if (weather.currentCondition.getIcon() != null && !weather.currentCondition.getIcon().equals("")) {
                            weather.iconData = new WeatherHttpClient().getImage(weather.currentCondition.getIcon());
                        }
                        if (weather.location.getCity() != null && weather.location.getCountry() != null) {
                            HomePageFragment.this.cityWeather = weather.location.getCity();
                            HomePageFragment.this.countryWeather = weather.location.getCountry();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        weather = null;
                    }
                    if (weather != null) {
                        HomePageFragment.this.todayWeather = 1;
                        HomePageFragment.this.mActivity.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                HomePageFragment.this.addLayout(weather, true);
                                HomePageFragment.this.setWeatherView(true);
                            }
                        });
                    } else {
                        HomePageFragment.this.todayWeather = 0;
                        HomePageFragment.this.mActivity.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.5.2
                            @Override // java.lang.Runnable
                            public void run() {
                                HomePageFragment.this.setWeatherView(true);
                            }
                        });
                    }
                }
            }).start();
            if (z2) {
                return;
            }
            new Thread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.6
                @Override // java.lang.Runnable
                public void run() {
                    final List<Weather> arrayList;
                    new ArrayList();
                    try {
                        arrayList = JSONWeatherParser.getWeatherList(new WeatherHttpClient().getWeatherData(z ? WeatherHttpClient.FORECAST_URL_LOC + "lat=" + str + "&lon=" + str2 + "&APPID=6125571beb5e3ff4af5889504fbfa254&units=metric" : WeatherHttpClient.FORECAST_URL_CITY + str + "&APPID=6125571beb5e3ff4af5889504fbfa254&units=metric"));
                        for (Weather weather : arrayList) {
                            weather.iconData = new WeatherHttpClient().getImage(weather.currentCondition.getIcon());
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        arrayList = new ArrayList();
                    }
                    if (arrayList.size() > 0) {
                        HomePageFragment.this.forecastWeather = 1;
                        HomePageFragment.this.mActivity.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.6.1
                            @Override // java.lang.Runnable
                            public void run() {
                                HomePageFragment.this.ChangeUI(arrayList);
                            }
                        });
                    } else {
                        HomePageFragment.this.forecastWeather = 0;
                        HomePageFragment.this.mActivity.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.6.2
                            @Override // java.lang.Runnable
                            public void run() {
                                HomePageFragment.this.setWeatherView(true);
                            }
                        });
                    }
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWeatherView(boolean z) {
        int i = this.todayWeather;
        if ((i == 1 && this.forecastWeather == 1) || (i == 1 && this.forecastWeather == 0)) {
            if (this.weatherList.size() > 0) {
                if (this.weatherList.size() == 1 && this.forecastWeatherList.size() > 0) {
                    this.weatherList.addAll(this.forecastWeatherList);
                }
                this.weatherAdapter.notifyDataSetChanged();
                this.weatherView.setVisibility(0);
                this.progressLayout.setVisibility(8);
                this.noWeatherText.setVisibility(8);
                this.cityText.setVisibility(0);
                if (this.cityWeather.length() > 0) {
                    this.cityText.setText(this.cityWeather + "/" + this.countryWeather);
                }
                if (z) {
                    WeatherCacheModel weatherCacheModel = new WeatherCacheModel();
                    weatherCacheModel.setCity(this.cityWeather);
                    weatherCacheModel.setCountry(this.countryWeather);
                    weatherCacheModel.setCurrentWeather(this.currentWeather);
                    weatherCacheModel.setForecastWeatherList(this.forecastWeatherList);
                    weatherCacheModel.setIsCurrentLocation(this.isLocationWeather);
                    weatherCacheModel.setLatitude(this.latitude + "");
                    weatherCacheModel.setLongitude(this.longitude + "");
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH);
                    weatherCacheModel.setTimeUpdated(simpleDateFormat.format(Calendar.getInstance().getTime()));
                    if (this.todayWeather == 1) {
                        weatherCacheModel.setCurrentWeatherUpdatedTime(simpleDateFormat.format(Calendar.getInstance().getTime()));
                    }
                    if (this.forecastWeather == 1) {
                        weatherCacheModel.setForecastWeatherUpdatedTime(simpleDateFormat.format(Calendar.getInstance().getTime()));
                    }
                    saveWeatherInCache(weatherCacheModel);
                    return;
                }
                return;
            }
            return;
        }
        this.cityText.setVisibility(4);
        this.weatherView.setVisibility(4);
        this.progressLayout.setVisibility(4);
        this.noWeatherText.setVisibility(0);
    }

    private void saveWeatherInCache(WeatherCacheModel weatherCacheModel) {
        String json = new Gson().toJson(weatherCacheModel);
        try {
            this.tempFile = new File(getActivity().getBaseContext().getCacheDir().getPath() + "/weather_temp1.txt");
            FileWriter fileWriter = new FileWriter(this.tempFile);
            fileWriter.write(json);
            fileWriter.close();
        } catch (Exception e) {
            PLog.e(TAG, e.toString());
        }
    }

    private void getWeatherInCache() {
        Gson gson = new Gson();
        try {
            this.tempFile = new File(getActivity().getBaseContext().getCacheDir().getPath() + "/weather_temp1.txt");
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new FileReader(this.tempFile));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine + IOUtils.LINE_SEPARATOR_UNIX);
            }
            WeatherCacheModel weatherCacheModel = (WeatherCacheModel) gson.fromJson((Reader) new StringReader(sb.toString()), WeatherCacheModel.class);
            this.cityWeather = weatherCacheModel.getCity();
            this.countryWeather = weatherCacheModel.getCountry();
            if (weatherCacheModel.getLatitude().length() > 0 && weatherCacheModel.getLongitude().length() > 0) {
                this.latitude = Double.parseDouble(weatherCacheModel.getLatitude());
                this.longitude = Double.parseDouble(weatherCacheModel.getLongitude());
            }
            this.weatherList.add(weatherCacheModel.getCurrentWeather());
            this.todayWeather = 1;
            List<Weather> forecastWeatherList = weatherCacheModel.getForecastWeatherList();
            if (forecastWeatherList != null && forecastWeatherList.size() > 0) {
                this.forecastWeatherList = forecastWeatherList;
                this.forecastWeather = 1;
                this.weatherList.addAll(forecastWeatherList);
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH);
            try {
                if (isBeforeDay(simpleDateFormat.parse(weatherCacheModel.getTimeUpdated()))) {
                    if (weatherCacheModel.getIsCurrentLocation() == 1) {
                        getWeatherInfo(this.latitude + "", this.longitude + "", true, false);
                    } else {
                        getWeatherInfo(this.cityWeather, "", false, false);
                    }
                } else if (differenceInMinutes(simpleDateFormat.parse(weatherCacheModel.getCurrentWeatherUpdatedTime())) > 60) {
                    if (weatherCacheModel.getIsCurrentLocation() == 1) {
                        getWeatherInfo(this.latitude + "", this.longitude + "", true, true);
                    } else {
                        getWeatherInfo(this.cityWeather, "", false, true);
                    }
                }
            } catch (Exception e) {
                PLog.e(TAG, e.toString());
            }
            setWeatherView(false);
        } catch (Exception e2) {
            PLog.e(TAG, e2.toString());
            getLocation(true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        ((PMCApplication) getActivity().getApplication()).setIsHomeFragmentActive(false);
        TelephonyManager telephonyManager = this.telManager;
        if (telephonyManager != null) {
            telephonyManager.listen(this.myListener, 0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        LocalBroadcastManager.getInstance(getActivity()).unregisterReceiver(this.mLocalBroadcastReceiver);
        LocalBroadcastManager.getInstance(getActivity()).unregisterReceiver(this.tickermessge);
    }

    private void checkCountForSynFO() {
        try {
            this.countSync = UtilDeclarations.getCountForSync();
        } catch (Exception unused) {
            this.countSync = 0;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onOptionsMenuClosed(Menu menu) {
        super.onOptionsMenuClosed(menu);
    }

    private void initialization() {
        getResources().getDimensionPixelSize(R.dimen.margin);
        setAdapter();
    }

    private void setAdapter() {
        try {
            HomePageGridAdapter homePageGridAdapter = new HomePageGridAdapter(getActivity(), getItems());
            this.homePageGridAdapter = homePageGridAdapter;
            this.rvGridItems.setAdapter(homePageGridAdapter);
            this.homePageGridAdapter.notifyDataSetChanged();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void getDataFromDB() {
        this.userFunctions = this.getData.getModules(Queries.getInstance().gettingFunctionNames());
    }

    private void addSttaicUserFunction() {
        UserFunctions userFunctions = new UserFunctions();
        userFunctions.setFunctionId(25);
        userFunctions.setFunctionName("Planning and Reports");
        userFunctions.setNavigationUrl("Planning and Reports");
        userFunctions.setPdafunction("Planning and Reports");
        this.userFunctions.add(userFunctions);
    }

    private void addAttendance() {
        UserFunctions userFunctions = new UserFunctions();
        userFunctions.setFunctionId(25);
        userFunctions.setFunctionName("Attendance Approval");
        userFunctions.setNavigationUrl("AttendanceApproval");
        userFunctions.setPdafunction("PMCAttendance");
        this.userFunctions.add(userFunctions);
    }

    private void addAttendanceReports() {
        UserFunctions userFunctions = new UserFunctions();
        userFunctions.setFunctionId(11);
        userFunctions.setFunctionName("Attendance Report");
        userFunctions.setNavigationUrl("AttendanceReport");
        userFunctions.setPdafunction("Attendance Reports");
        this.userFunctions.add(userFunctions);
    }

    private void addMarketingFunction() {
        UserFunctions userFunctions = new UserFunctions();
        userFunctions.setFunctionId(26);
        userFunctions.setFunctionName("Testimonial");
        userFunctions.setNavigationUrl("Testimonial");
        userFunctions.setPdafunction("Testimonial");
        this.userFunctions.add(userFunctions);
    }

    private void addChannelOrdersFunction() {
        UserFunctions userFunctions = new UserFunctions();
        userFunctions.setFunctionId(28);
        userFunctions.setFunctionName("Channel Orders");
        userFunctions.setNavigationUrl("Channel Orders");
        userFunctions.setPdafunction("Channel Orders");
        this.userFunctions.add(userFunctions);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        getActivity().getMenuInflater().inflate(R.menu.sync_menu, menu);
        optionsMenu = menu;
        MenuItem findItem = menu.findItem(R.id.sync_data_village);
        this.menuItem = findItem;
        if (this.countSync == 0) {
            findItem.setIcon(R.drawable.ic_action_refresh);
        } else {
            findItem.setIcon(R.drawable.ic_action_refresh_pending);
        }
        if (UtilDeclarations.isOnline(this.context) && UtilDeclarations.isServiceRunning(this.context.getApplicationContext(), SyncDataService.class)) {
            this.menuItem.setActionView(R.layout.actionbar_indeterminate_progress);
        }
        this.reportItem = menu.findItem(R.id.signal_report);
        if (UtilDeclarations.isOnline(this.context)) {
            this.reportItem.setVisible(true);
            this.reportItem.setIcon(R.drawable.signal_3);
        } else {
            this.reportItem.setVisible(true);
            this.reportItem.setIcon(R.drawable.signal_empty);
        }
        this.weatherItem = menu.findItem(R.id.weather_report);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            getActivity().finish();
            return true;
        }
        if (itemId == R.id.sync_data_village) {
            if (UtilDeclarations.isOnline(this.context)) {
                setRefreshActionButtonState(true);
                if (this.countSync != 0) {
                    if (!UtilDeclarations.isServiceRunning(this.mActivity.getApplicationContext(), SyncDataService.class)) {
                        Intent intent = new Intent(this.mActivity, (Class<?>) SyncDataService.class);
                        intent.putExtra("callbackActivity", TAG);
                        intent.putExtra("receiver", this.mReceiver);
                        this.mActivity.startService(intent);
                    } else {
                        Toast.makeText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_dataSendBGToast()), 1).show();
                    }
                    if (!UtilDeclarations.isServiceRunning(this.mActivity.getApplicationContext(), MasterSyncService.class)) {
                        Intent intent2 = new Intent(this.mActivity, (Class<?>) MasterSyncService.class);
                        intent2.putExtra("callbackActivity", TAG);
                        intent2.putExtra("receiver", this.mReceiver);
                        this.mActivity.startService(intent2);
                    } else {
                        Toast.makeText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_dataSendBGToast()), 1).show();
                    }
                } else {
                    if (!UtilDeclarations.isServiceRunning(this.mActivity.getApplicationContext(), MasterSyncService.class)) {
                        Intent intent3 = new Intent(this.mActivity, (Class<?>) MasterSyncService.class);
                        intent3.putExtra("callbackActivity", TAG);
                        intent3.putExtra("receiver", this.mReceiver);
                        this.mActivity.startService(intent3);
                    } else {
                        Toast.makeText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_dataSendBGToast()), 1).show();
                    }
                    if (!UtilDeclarations.isServiceRunning(this.mActivity.getApplicationContext(), SyncDataService.class)) {
                        Intent intent4 = new Intent(this.mActivity, (Class<?>) SyncDataService.class);
                        intent4.putExtra("callbackActivity", TAG);
                        intent4.putExtra("receiver", this.mReceiver);
                        this.mActivity.startService(intent4);
                    } else {
                        Toast.makeText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_dataSendBGToast()), 1).show();
                    }
                }
            } else {
                Crouton.showText(getActivity(), this.getData.getValue(LabelUtils.getInstance().getPmc_CannotSyncAlertText()) != null ? this.getData.getValue(LabelUtils.getInstance().getPmc_CannotSyncAlertText()) : "", Style.ALERT);
            }
            if (UtilDeclarations.getCountForFOTrackerSync() > 0 && UtilDeclarations.isOnline(this.context) && !UtilDeclarations.isServiceRunning(this.context, com.conceptglobal.pmc.fotracker.sync.SyncDataService.class)) {
                Intent intent5 = new Intent(this.context, (Class<?>) com.conceptglobal.pmc.fotracker.sync.SyncDataService.class);
                intent5.putExtra("capallbackActivity", TAG);
                intent5.putExtra("receiver", this.mReceiver);
                this.mActivity.startService(intent5);
            }
        } else if (itemId == R.id.weather_report) {
            if (this.weatherMainLayout.getVisibility() == 0) {
                this.weatherMainLayout.setVisibility(8);
            } else if (this.weatherMainLayout.getVisibility() == 8) {
                this.weatherMainLayout.setVisibility(0);
                this.getLocationWeatherBtn.performClick();
            } else {
                this.weatherMainLayout.setVisibility(8);
            }
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mActivity);
        builder.setMessage(str).setCancelable(false).setPositiveButton(this.getData.getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        if (getActivity().isFinishing()) {
            return;
        }
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(getActivity())) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showHomeLocationUpdateAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mActivity);
        builder.setMessage(str).setCancelable(false).setPositiveButton(this.getData.getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                HomePageFragment.this.getFragmentManager().beginTransaction().replace(R.id.container, new HomeLocationDetailsFragment()).commit();
            }
        }).setNegativeButton("Update Later", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        if (getActivity().isFinishing()) {
            return;
        }
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(getActivity())) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    public static void setRefreshActionButtonState(final boolean z) {
        ((Activity) scontext).runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.10
            @Override // java.lang.Runnable
            public void run() {
                MenuItem findItem;
                int i;
                if (HomePageFragment.optionsMenu == null || (findItem = HomePageFragment.optionsMenu.findItem(R.id.sync_data_village)) == null) {
                    return;
                }
                if (z) {
                    findItem.setActionView(R.layout.actionbar_indeterminate_progress);
                } else {
                    findItem.setActionView((View) null);
                }
                try {
                    i = UtilDeclarations.getCountForSync();
                } catch (Exception unused) {
                    i = 0;
                }
                if (i == 0) {
                    findItem.setIcon(R.drawable.ic_action_refresh);
                } else {
                    findItem.setIcon(R.drawable.ic_action_refresh_pending);
                }
            }
        });
    }

    @Override // com.conceptglobal.pmc.interfaces.OnResultReceiver
    public void onReceiveResult(int i, Bundle bundle) {
        if (i == 0) {
            ProgressDialog progressDialog = this.progressDialog;
            if (progressDialog != null) {
                progressDialog.isShowing();
                return;
            }
            return;
        }
        if (i != 1) {
            return;
        }
        String string = bundle.getString("respMsg");
        String string2 = bundle.getString("callbackActivity");
        Log.i(TAG, "Act response--" + string);
        Log.i(TAG, "Act callbackActivity--" + string2);
        if (this.countSync != 0) {
            notifyUser(string2, string);
        } else {
            notifyUser(string2, "Data synchronized");
        }
    }

    private void notifyUser(String str, String str2) {
        MenuItem menuItem;
        if (TextUtils.isEmpty(str) || !str.equals(TAG)) {
            return;
        }
        if (this.isActivityInForeground) {
            setRefreshActionButtonState(false);
            ProgressDialog progressDialog = this.progressDialog;
            if (progressDialog != null && progressDialog.isShowing()) {
                this.progressDialog.dismiss();
            }
            Handler handler = new Handler(Looper.getMainLooper());
            this.mHandler = handler;
            this.msg = str2;
            handler.post(this.mRunnable);
            checkCountForSynFO();
            if (this.countSync == 0 && (menuItem = this.menuItem) != null) {
                menuItem.setIcon(R.drawable.ic_action_refresh);
            }
            setAdapter();
            return;
        }
        if (UtilDeclarations.isAppRunningInForeground(this.mActivity.getApplicationContext())) {
            Handler handler2 = new Handler(Looper.getMainLooper());
            this.mHandler = handler2;
            this.msg = str2;
            handler2.post(this.mRunnable);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.conceptglobal.pmc.model.StaggeredItemsModel> getItems() {
        /*
            Method dump skipped, instructions count: 3567
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.HomePageFragment.getItems():java.util.List");
    }

    private int getGsmLevels() {
        Menu menu;
        MenuItem findItem;
        if (UtilDeclarations.isOnline(this.context) && (menu = optionsMenu) != null && (findItem = menu.findItem(R.id.signal_report)) != null) {
            findItem.setIcon(R.drawable.signal_empty);
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return 0;
        }
        this.myListener = new MyPhoneStateListener();
        TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
        this.telManager = telephonyManager;
        telephonyManager.listen(this.myListener, 256);
        return 0;
    }

    private class MyPhoneStateListener extends PhoneStateListener {
        public int signalLevel;
        public int singalStenths;

        private MyPhoneStateListener() {
            this.singalStenths = 0;
            this.signalLevel = 0;
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            MenuItem findItem;
            super.onSignalStrengthsChanged(signalStrength);
            int gsmSignalStrength = signalStrength.getGsmSignalStrength();
            this.singalStenths = signalStrength.getGsmSignalStrength();
            System.out.println("----- gsm strength" + gsmSignalStrength);
            System.out.println("----- gsm strength" + this.singalStenths);
            if (HomePageFragment.optionsMenu == null || (findItem = HomePageFragment.optionsMenu.findItem(R.id.signal_report)) == null) {
                return;
            }
            int i = this.singalStenths;
            if (i > 30) {
                findItem.setIcon(R.drawable.signal_1);
                return;
            }
            if (i > 20 && i < 30) {
                findItem.setIcon(R.drawable.signal_2);
            } else if (i < 20) {
                findItem.setIcon(R.drawable.signal_3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ChangeUI(List<Weather> list) {
        for (Weather weather : list) {
            String dateText = weather.currentCondition.getDateText();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH);
            try {
                if (isAfterDay(simpleDateFormat.parse(dateText)) && new SimpleDateFormat("HH:mm:ss").format(simpleDateFormat.parse(dateText)).equals("15:00:00")) {
                    addLayout(weather, false);
                }
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        setWeatherView(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLayout(Weather weather, boolean z) {
        if (this.weatherList.size() != 0) {
            this.weatherList.add(weather);
        } else if (z) {
            this.weatherList.add(0, weather);
        } else {
            this.weatherList.add(0, new Weather());
            this.weatherList.add(1, weather);
        }
        if (z) {
            this.currentWeather = weather;
        } else {
            this.forecastWeatherList.add(weather);
        }
    }

    public static boolean isAfterDay(Date date) {
        if (date == null) {
            throw new IllegalArgumentException("The dates must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return isAfterDay(calendar, Calendar.getInstance());
    }

    public static boolean isAfterDay(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The dates must not be null");
        }
        if (calendar.get(0) < calendar2.get(0)) {
            return false;
        }
        if (calendar.get(0) > calendar2.get(0)) {
            return true;
        }
        if (calendar.get(1) < calendar2.get(1)) {
            return false;
        }
        return calendar.get(1) > calendar2.get(1) || calendar.get(6) > calendar2.get(6);
    }

    public static boolean isBeforeDay(Date date) {
        if (date == null) {
            throw new IllegalArgumentException("The dates must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return isBeforeDay(calendar, Calendar.getInstance());
    }

    public static boolean isBeforeDay(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The dates must not be null");
        }
        if (calendar.get(0) < calendar2.get(0)) {
            return true;
        }
        if (calendar.get(0) > calendar2.get(0)) {
            return false;
        }
        if (calendar.get(1) < calendar2.get(1)) {
            return true;
        }
        return calendar.get(1) <= calendar2.get(1) && calendar.get(6) < calendar2.get(6);
    }

    public static long differenceInMinutes(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return TimeUnit.MILLISECONDS.toMinutes(Calendar.getInstance().getTimeInMillis() - calendar.getTimeInMillis());
    }

    private void showOverLayWalkthrough() {
        Target target = new Target() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.13
            @Override // com.github.amlcurran.showcaseview.targets.Target
            public Point getPoint() {
                return new Point(UtilDeclarations.getScreenWidth() - HomePageFragment.optionsMenu.findItem(R.id.sync_data_village).getIcon().getIntrinsicWidth(), ((AppCompatActivity) HomePageFragment.this.getActivity()).getSupportActionBar().getHeight());
            }
        };
        final Target target2 = new Target() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.14
            @Override // com.github.amlcurran.showcaseview.targets.Target
            public Point getPoint() {
                return new Point(UtilDeclarations.getScreenWidth() - (HomePageFragment.optionsMenu.findItem(R.id.signal_report).getIcon().getIntrinsicWidth() * 2), ((AppCompatActivity) HomePageFragment.this.getActivity()).getSupportActionBar().getHeight());
            }
        };
        final Target target3 = new Target() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.15
            @Override // com.github.amlcurran.showcaseview.targets.Target
            public Point getPoint() {
                return new Point(UtilDeclarations.getScreenWidth() - ((HomePageFragment.optionsMenu.findItem(R.id.signal_report).getIcon().getIntrinsicWidth() * 7) / 2), ((AppCompatActivity) HomePageFragment.this.getActivity()).getSupportActionBar().getHeight());
            }
        };
        new Target() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.16
            @Override // com.github.amlcurran.showcaseview.targets.Target
            public Point getPoint() {
                UtilDeclarations.getScreenWidth();
                int intrinsicWidth = (HomePageFragment.optionsMenu.findItem(R.id.signal_report).getIcon().getIntrinsicWidth() * 7) / 2;
                return new Point(30, ((AppCompatActivity) HomePageFragment.this.getActivity()).getSupportActionBar().getHeight());
            }
        };
        ShowcaseView build = new ShowcaseView.Builder((Activity) this.context).setTarget(target).setContentTitle("Sync Icon").setContentText("Click here for update in data.").withMaterialShowcase().setStyle(R.style.CustomShowcaseTheme2).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = HomePageFragment.this.counter;
                if (i == 0) {
                    HomePageFragment.this.showcaseView.setTarget(target2);
                    HomePageFragment.this.showcaseView.setContentTitle("Internet Strength");
                    HomePageFragment.this.showcaseView.setContentText("This shows the strength of your internet");
                } else if (i == 1) {
                    HomePageFragment.this.showcaseView.setTarget(target3);
                    HomePageFragment.this.showcaseView.setContentTitle("Weather Icon");
                    HomePageFragment.this.showcaseView.setContentText("Click here for weather details");
                } else if (i == 2) {
                    HomePageFragment.this.showcaseView.hide();
                }
                HomePageFragment.access$2108(HomePageFragment.this);
            }
        }).build();
        this.showcaseView = build;
        build.setButtonText("Next");
    }

    private void setAlpha(float f, View... viewArr) {
        for (View view : viewArr) {
            view.setAlpha(f);
        }
    }

    private void getLanguageConfigurations() {
        try {
            new SharedPrefManager();
            try {
                GetDataFromDB.getInstance().getFOLables(Queries.getInstance().getStrings(SharedPrefManager.getPMCLanguage(this.context)));
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e(TAG, e);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            PLog.e(TAG, e2);
        }
    }

    private class LocalBroadcastReceiver extends BroadcastReceiver {
        private LocalBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equalsIgnoreCase("android.intent.action.GPSTurnedOnResult")) {
                HomePageFragment.this.fetchLocation();
            }
            if (intent.getAction().equalsIgnoreCase("compress_video")) {
                intent.getExtras().getString("compressedFilePath");
                Long.valueOf(intent.getExtras().getLong("imageId"));
                if (!UtilDeclarations.isOnline(HomePageFragment.this.context) || UtilDeclarations.isServiceRunning(HomePageFragment.this.context, SyncDataService.class)) {
                    return;
                }
                new Handler().postDelayed(new Runnable() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.LocalBroadcastReceiver.1
                    @Override // java.lang.Runnable
                    public void run() {
                        new SendDataServiceUtil(HomePageFragment.this.context).startService();
                    }
                }, 5000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(getActivity())) {
            this.mLocationUtils.requestPermissions(getActivity());
            return;
        }
        try {
            new FetchLocation(getActivity(), false, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.18
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    if (locationInfo == null) {
                        HomePageFragment.this.setWeatherView(true);
                        return;
                    }
                    HomePageFragment.this.latitude = locationInfo.getLatitude();
                    HomePageFragment.this.longitude = locationInfo.getLongitude();
                    if (UtilDeclarations.isOnline(HomePageFragment.this.context)) {
                        HomePageFragment.this.getWeatherInfo("" + HomePageFragment.this.latitude, "" + HomePageFragment.this.longitude, true, false);
                    }
                }
            }, "");
        } catch (Exception e) {
            e.printStackTrace();
        }
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

    private void showAlertDialogLogout(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mActivity);
        builder.setMessage(str).setCancelable(false).setPositiveButton(this.getData.getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.HomePageFragment.20
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                Intent intent = new Intent();
                intent.setAction(ConstantsPMC.ACTION_FINISH);
                intent.putExtra(ConstantsPMC.ACTION_MSG, "finish");
                HomePageFragment.this.context.sendBroadcast(intent);
                HomePageFragment.this.context.startActivity(new Intent(HomePageFragment.this.context, (Class<?>) LoginActivity.class));
            }
        });
        if (getActivity().isFinishing()) {
            return;
        }
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(getActivity())) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private boolean getLoginStatus() {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, -3);
            return GetDataFromDB.getInstance().getIsRecordExists(Queries.getInstance().getLoginTimeStatus(simpleDateFormat.format(calendar.getTime())));
        } catch (Exception unused) {
            return false;
        }
    }

    private class SendSDTVTask extends AsyncTask<Void, String, String> {
        private SendSDTVTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            HomePageFragment.this.sendHomeLocationDetails();
            return "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute((SendSDTVTask) str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendHomeLocationDetails() {
        try {
            HomeLocationDetails homeAddressInfo = GetDataFromDB.getInstance().getHomeAddressInfo(Queries.getInstance().getHomeAddressDetais());
            Gson gson = new Gson();
            if (ConstantsPMC.getInstance().getDeviceID().length() != 0) {
                homeAddressInfo.setPdaId(ConstantsPMC.getInstance().getDeviceID());
            }
            String sendRequestwithToken = WebService.getInstance().sendRequestwithToken(gson.toJson(homeAddressInfo), ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodsaveHomeLocation(), ConstantsPMC.getInstance().getWcfToken());
            ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(sendRequestwithToken), ResponseModel.class);
            new JSONObject(sendRequestwithToken);
            if (responseModel.getStatus().equals("AUTHORISED") && responseModel.getStatusMessage().equalsIgnoreCase("Sucess")) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("HomeLocationSyncStatus", "True");
                com.conceptglobal.pmc.database.InsertDataIntoDB.UpdateUserDetailsFOHomeLocation(contentValues, ConstantsPMC.getInstance().getDeviceID());
                return;
            }
            responseModel.getStatus().equals("UNAUTHORISED");
        } catch (Exception e) {
            PLog.e(TAG, e.toString(), "getGeoDetails", null);
        }
    }

    private String getDate() {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, -7);
            return GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getExpCount(simpleDateFormat.format(calendar.getTime())));
        } catch (Exception e) {
            PLog.e(TAG, e, 0);
            return "";
        }
    }
}
