package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Point;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.ApplyLeave;
import com.conceptglobal.pmc.AttendanceActivity;
import com.conceptglobal.pmc.ReportViewActivity;
import com.conceptglobal.pmc.ReportsActivity;
import com.conceptglobal.pmc.activity.MandiPricesActivity;
import com.conceptglobal.pmc.attendance.AttendamceReportActivity;
import com.conceptglobal.pmc.attendance.AttendanceApproveActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.NeoCampaignConstants;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fo.NeoCampaignWebView;
import com.conceptglobal.pmc.fo.SelfAssignActivity;
import com.conceptglobal.pmc.fo.ToDoActivity;
import com.conceptglobal.pmc.fo.ToDoActivityCopy;
import com.conceptglobal.pmc.fo.WebviewLandscapeActivity;
import com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.LatLongDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.SVRadiusDataModel;
import com.conceptglobal.pmc.model.StaggeredItemsModel;
import com.conceptglobal.pmc.model.SupervisoryAssignmentData;
import com.conceptglobal.pmc.packageofpractice.activity.PackageOfPracticeActivity;
import com.conceptglobal.pmc.promotions.activity.FilterActivity2;
import com.conceptglobal.pmc.promotions.activity.TargetAndPlanActivity;
import com.conceptglobal.pmc.registration.DraftList;
import com.conceptglobal.pmc.textdrawable.ColorGenerator;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.messaging.Constants;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import org.apache.http.HttpHeaders;

/* loaded from: classes.dex */
public class HomePageGridAdapter extends RecyclerView.Adapter<ViewHolder> {
    public static DecimalFormat twoDForm = new DecimalFormat("#.##");
    List<StaggeredItemsModel> data;
    private Double dbllatitude;
    private Double dbllongitude;
    private int deviceHeight;
    Context mContext;
    private LayoutInflater mInflater;
    ProgressBar progressBar;
    ImageView refreshView;
    TextView tvCount;
    private LocationUtils mLocationUtils = new LocationUtils();
    int svActityCount = 0;
    int selectedposition = 0;
    private final ColorGenerator mGenerator = ColorGenerator.TRANSPARENT;

    private double deg2rad(double d) {
        return (d * 3.141592653589793d) / 180.0d;
    }

    private double rad2deg(double d) {
        return (d * 180.0d) / 3.141592653589793d;
    }

    public HomePageGridAdapter(Context context, List<StaggeredItemsModel> list) {
        this.mContext = context;
        this.data = list;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        Display defaultDisplay = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.deviceHeight = point.y;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(this.mInflater.inflate(R.layout.tile_item_grid, (ViewGroup) null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final ViewHolder viewHolder, final int i) {
        viewHolder.cardView.setTag(this.data.get(i).getModuleid());
        viewHolder.title.setText(this.data.get(i).getTitle());
        String moduleid = this.data.get(i).getModuleid();
        if ((moduleid != null && (moduleid.equals("25") || moduleid.equals("26") || moduleid.equals("16") || moduleid.equals("20") || moduleid.equals("29") || moduleid.equals("31") || moduleid.equals("194"))) || moduleid.equals("195") || moduleid.equals("193") || moduleid.equals("33") || moduleid.equals("34")) {
            viewHolder.tvAlert.setVisibility(0);
        } else {
            viewHolder.tvAlert.setVisibility(8);
        }
        viewHolder.description.setText(this.data.get(i).getDescription() != null ? this.data.get(i).getDescription() : "");
        viewHolder.description1.setText(this.data.get(i).getDescription1() != null ? this.data.get(i).getDescription1() : "");
        viewHolder.description2.setText(this.data.get(i).getDescription2() != null ? this.data.get(i).getDescription2() : "");
        viewHolder.count.setText(this.data.get(i).getCount());
        viewHolder.count1.setText(this.data.get(i).getCount1());
        viewHolder.count2.setText(this.data.get(i).getCount2());
        if (this.data.get(i).getModuleid().equals("27") || this.data.get(i).getModuleid().equals("12")) {
            viewHolder.ivSVDataRefresh.setVisibility(0);
        } else {
            viewHolder.ivSVDataRefresh.setVisibility(8);
        }
        if (viewHolder.description.getText().toString().length() == 0) {
            viewHolder.firstDiscription.setVisibility(8);
        } else {
            viewHolder.firstDiscription.setVisibility(0);
        }
        if (viewHolder.description1.getText().toString().length() == 0) {
            viewHolder.secondDiscription.setVisibility(8);
        } else {
            viewHolder.secondDiscription.setVisibility(0);
        }
        if (viewHolder.description2.getText().toString().length() == 0) {
            viewHolder.thirdDiscription.setVisibility(8);
        } else {
            viewHolder.thirdDiscription.setVisibility(0);
        }
        if (viewHolder.description.getText().toString().length() == 0 && viewHolder.description1.getText().toString().length() == 0 && viewHolder.description2.getText().toString().length() == 0) {
            viewHolder.border.setVisibility(8);
        } else {
            viewHolder.border.setVisibility(0);
        }
        if (this.data.get(i).getModuleid().equals("11")) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(-10, 0, 0, 0);
            viewHolder.description.setLayoutParams(layoutParams);
            viewHolder.description1.setLayoutParams(layoutParams);
        }
        viewHolder.imgView.setImageDrawable(this.mContext.getResources().getDrawable(this.data.get(i).getDrawable()));
        viewHolder.cardView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.HomePageGridAdapter.1
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:133:0x02b1 -> B:129:0x06d1). Please report as a decompilation issue!!! */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ConstantsPMC.isRequestCancelled = true;
                String str = (String) ((CardView) view).getTag();
                if (str.equals("1")) {
                    Intent intent = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) DraftList.class);
                    intent.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
                    intent.putExtra("segmentId", 1);
                    HomePageGridAdapter.this.mContext.startActivity(intent.addFlags(67108864));
                } else if (str.equals("2")) {
                    Intent intent2 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) DraftList.class);
                    intent2.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                    intent2.putExtra("segmentId", 2);
                    HomePageGridAdapter.this.mContext.startActivity(intent2.addFlags(67108864));
                } else if (str.equals("3")) {
                    Intent intent3 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) DraftList.class);
                    intent3.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
                    intent3.putExtra("segmentId", 3);
                    HomePageGridAdapter.this.mContext.startActivity(intent3.addFlags(67108864));
                } else if (str.equals("4")) {
                    Intent intent4 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) DraftList.class);
                    intent4.putExtra("farmerType", "Village");
                    intent4.putExtra("segmentId", 4);
                    HomePageGridAdapter.this.mContext.startActivity(intent4.addFlags(67108864));
                } else if (str.equals("11")) {
                    HomePageGridAdapter.this.mContext.startActivity(new Intent(HomePageGridAdapter.this.mContext, (Class<?>) SelfAssignActivity.class).addFlags(67108864));
                } else if (str.equals("12")) {
                    Log.d("todo", "start click " + System.currentTimeMillis());
                    new SharedPrefManager();
                    SharedPrefManager.setTodoType(HomePageGridAdapter.this.mContext, "Todo");
                    Intent intent5 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ToDoActivity.class);
                    intent5.putExtra("IsFrom", "ToDo");
                    HomePageGridAdapter.this.mContext.startActivity(intent5.addFlags(67108864));
                } else if (str.equals("8")) {
                    Intent intent6 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) DraftList.class);
                    intent6.putExtra("farmerType", "Planter");
                    HomePageGridAdapter.this.mContext.startActivity(intent6.addFlags(67108864));
                } else if (str.equals("13")) {
                    Intent intent7 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) SelfAssignActivity.class);
                    intent7.putExtra("isFromOrders", 1);
                    HomePageGridAdapter.this.mContext.startActivity(intent7.addFlags(67108864));
                } else if (str.equals("14")) {
                    Intent intent8 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) SelfAssignActivity.class);
                    intent8.putExtra("isFromComplaints", 1);
                    HomePageGridAdapter.this.mContext.startActivity(intent8.addFlags(67108864));
                } else if (str.equals("25")) {
                    Intent intent9 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ReportsActivity.class);
                    intent9.putExtra(Constants.MessagePayloadKeys.FROM, "Reports");
                    intent9.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent9.addFlags(67108864));
                } else if (str.equals("9")) {
                    HomePageGridAdapter.this.mContext.startActivity(new Intent(HomePageGridAdapter.this.mContext, (Class<?>) FOTrackerForeGroundServiceActivity.class).setFlags(67108864));
                } else if (str.equals("15")) {
                    try {
                        if (GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getAttendanceStatusToday()) == 1) {
                            HomePageGridAdapter.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_attendance_submitted()));
                            return;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    try {
                        String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getTravelModeMsg());
                        String stringValue2 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getTravelModeDetails(UtilDeclarations.getDateInYYYYMMDD()));
                        if (TextUtils.isEmpty(stringValue) || TextUtils.isEmpty(stringValue2) || !stringValue.equalsIgnoreCase(stringValue2)) {
                            HomePageGridAdapter.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_not_eligible_for_travel_submit()));
                        } else {
                            Intent intent10 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) AttendanceActivity.class);
                            intent10.putExtra("FunctionID", HomePageGridAdapter.this.data.get(i).getFunctionID());
                            intent10.putExtra("Title", HomePageGridAdapter.this.data.get(i).getTitle());
                            HomePageGridAdapter.this.mContext.startActivity(intent10.setFlags(67108864));
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } else if (str.equals("192")) {
                    Intent intent11 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ApplyLeave.class);
                    intent11.putExtra("activityName", HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent11.setFlags(67108864));
                } else if (str.equals("34")) {
                    Intent intent12 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) WebviewLandscapeActivity.class);
                    intent12.putExtra(HttpHeaders.FROM, "Task Assign");
                    intent12.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent12.addFlags(67108864));
                } else if (str.equals("34")) {
                    Intent intent13 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ReportViewActivity.class);
                    intent13.putExtra(Constants.MessagePayloadKeys.FROM, "UserCreation");
                    intent13.putExtra("activityName", HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent13.addFlags(67108864));
                } else if (str.equals("194")) {
                    Intent intent14 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ReportViewActivity.class);
                    intent14.putExtra(Constants.MessagePayloadKeys.FROM, "ApproveResignations");
                    intent14.putExtra("activityName", HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent14.addFlags(67108864));
                } else if (str.equals("195")) {
                    Intent intent15 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ReportViewActivity.class);
                    intent15.putExtra(Constants.MessagePayloadKeys.FROM, "AttendanceRegularization");
                    intent15.putExtra("activityName", HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent15.addFlags(67108864));
                } else if (str.equals("200")) {
                    Intent intent16 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ReportViewActivity.class);
                    intent16.putExtra(Constants.MessagePayloadKeys.FROM, "Abscond");
                    intent16.putExtra("activityName", HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent16.addFlags(67108864));
                } else if (str.equals("196")) {
                    Intent intent17 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ReportsActivity.class);
                    intent17.putExtra(Constants.MessagePayloadKeys.FROM, "HRPolicy");
                    intent17.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent17.addFlags(67108864));
                } else if (str.equals("26")) {
                    Intent intent18 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ReportsActivity.class);
                    intent18.putExtra(Constants.MessagePayloadKeys.FROM, "Planning");
                    HomePageGridAdapter.this.mContext.startActivity(intent18.addFlags(67108864));
                } else if (str.equals("31")) {
                    Intent intent19 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ReportViewActivity.class);
                    intent19.putExtra(Constants.MessagePayloadKeys.FROM, "MDOLocation");
                    intent19.putExtra("activityName", HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent19.addFlags(67108864));
                } else if (str.equals("27")) {
                    HomePageGridAdapter.this.mContext.startActivity(new Intent(HomePageGridAdapter.this.mContext, (Class<?>) AttendanceActivity.class).setFlags(67108864));
                } else if (str.equals("1119")) {
                    Intent intent20 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) FilterActivity2.class);
                    intent20.putExtra("ContextId", 1);
                    intent20.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent20.setFlags(67108864));
                } else if (str.equals("1120")) {
                    Intent intent21 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) FilterActivity2.class);
                    intent21.putExtra("ContextId", 2);
                    intent21.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent21.setFlags(67108864));
                } else if (str.equals("1125")) {
                    Intent intent22 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ToDoActivityCopy.class);
                    intent22.putExtra("IsFrom", "FeedBack");
                    intent22.putExtra("Title", HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent22.addFlags(67108864));
                } else if (str.equals("10")) {
                    HomePageGridAdapter.this.mContext.startActivity(new Intent(HomePageGridAdapter.this.mContext, (Class<?>) AttendanceApproveActivity.class).setFlags(67108864));
                } else if (str.equals("16")) {
                    HomePageGridAdapter.this.mContext.startActivity(new Intent(HomePageGridAdapter.this.mContext, (Class<?>) AttendamceReportActivity.class).setFlags(67108864));
                } else if (str.equals("20")) {
                    Intent intent23 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) TargetAndPlanActivity.class);
                    intent23.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent23.setFlags(67108864));
                } else if (str.equals("1181")) {
                    HomePageGridAdapter.this.mContext.startActivity(new Intent(HomePageGridAdapter.this.mContext, (Class<?>) PackageOfPracticeActivity.class).setFlags(67108864));
                } else if (str.equals("29")) {
                    Intent intent24 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) MandiPricesActivity.class);
                    intent24.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, HomePageGridAdapter.this.data.get(i).getTitle());
                    HomePageGridAdapter.this.mContext.startActivity(intent24.setFlags(67108864));
                } else if (str.equals("30")) {
                    Log.d("todo", "start click " + System.currentTimeMillis());
                    Intent intent25 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ToDoActivity.class);
                    intent25.putExtra("IsFrom", "Survey");
                    HomePageGridAdapter.this.mContext.startActivity(intent25.addFlags(67108864));
                } else if (str.equals("28")) {
                    HomePageGridAdapter.this.loadChannelOrder();
                } else if (str.equals("420")) {
                    try {
                        Intent intent26 = new Intent("android.intent.action.VIEW");
                        intent26.addFlags(268435456);
                        intent26.setData(Uri.parse("market://details?id=com.microsoft.powerbim"));
                        HomePageGridAdapter.this.mContext.startActivity(intent26);
                    } catch (ActivityNotFoundException unused) {
                        HomePageGridAdapter.this.mContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=com.microsoft.powerbim")));
                    }
                } else if (str.equals("32")) {
                    Intent intent27 = new Intent(HomePageGridAdapter.this.mContext, (Class<?>) ToDoActivity.class);
                    intent27.putExtra("IsFrom", "ExpensesToDo");
                    HomePageGridAdapter.this.mContext.startActivity(intent27.addFlags(67108864));
                } else if (str.equals("33")) {
                    HomePageGridAdapter.this.LaunchCapaignPage();
                }
                try {
                    InsertDataIntoDB.insertLog4Trace("DashBoard", "", "", "", HomePageGridAdapter.this.data.get(i).getTitle(), false);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        });
        viewHolder.ivSVDataRefresh.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.HomePageGridAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomePageGridAdapter.this.refreshView = viewHolder.ivSVDataRefresh;
                HomePageGridAdapter.this.progressBar = viewHolder.pbSvDataRefresh;
                HomePageGridAdapter.this.tvCount = viewHolder.count2;
                HomePageGridAdapter.this.selectedposition = i;
                HomePageGridAdapter.this.fetchLocation();
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.data.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        View border;
        CardView cardView;
        TextView count;
        TextView count1;
        TextView count2;
        TextView count3;
        TextView description;
        TextView description1;
        TextView description2;
        TextView description4;
        RelativeLayout firstDiscription;
        ImageView imgView;
        ImageView ivSVDataRefresh;
        ProgressBar pbSvDataRefresh;
        RelativeLayout rlImgBg;
        RelativeLayout secondDiscription;
        RelativeLayout thirdDiscription;
        TextView title;
        TextView tvAlert;

        public ViewHolder(View view) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.title);
            this.tvAlert = (TextView) view.findViewById(R.id.tvalert);
            this.description = (TextView) view.findViewById(R.id.description);
            this.description1 = (TextView) view.findViewById(R.id.description1);
            this.description2 = (TextView) view.findViewById(R.id.description2);
            this.description4 = (TextView) view.findViewById(R.id.description4);
            this.count = (TextView) view.findViewById(R.id.count);
            this.count1 = (TextView) view.findViewById(R.id.count1);
            this.count2 = (TextView) view.findViewById(R.id.count2);
            this.count3 = (TextView) view.findViewById(R.id.count4);
            this.imgView = (ImageView) view.findViewById(R.id.btn);
            this.cardView = (CardView) view.findViewById(R.id.cardview);
            this.firstDiscription = (RelativeLayout) view.findViewById(R.id.firstdescription);
            this.secondDiscription = (RelativeLayout) view.findViewById(R.id.seconddescription);
            this.thirdDiscription = (RelativeLayout) view.findViewById(R.id.thirddescription);
            this.border = view.findViewById(R.id.border1);
            this.ivSVDataRefresh = (ImageView) view.findViewById(R.id.svDataRefresh);
            this.pbSvDataRefresh = (ProgressBar) view.findViewById(R.id.pbSvDataRefresh);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public void loadChannelOrder() {
        Intent intent = new Intent();
        String str = "";
        String str2 = "com.conceptglobal.channel_orders.OrdersHomePage";
        try {
            str = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValueFromConfigurableLookup("channelordersurl"));
            Log.i("test", "channelOrderPackageName ::::::::::com.conceptglobal.channel_orders.OrdersHomePage");
            Log.i("test", "channelOrderPlayStoreUrl ::::::::::" + str);
        } catch (Exception e) {
            String str3 = str;
            e.printStackTrace();
            str2 = "com.conceptglobal.channel_orders.OrdersHomePage";
            str = str3;
        }
        if (!TextUtils.isEmpty(str2)) {
            intent.setAction(str2);
            intent.addCategory("android.intent.category.DEFAULT");
        }
        try {
            try {
                GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getPasswordQuery());
                intent.putExtra("username", "102650");
                intent.putExtra(NeoCampaignConstants.PASSWORD, "Pass@12345");
                this.mContext.startActivity(intent);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (ActivityNotFoundException unused) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.addFlags(268435456);
            if (!TextUtils.isEmpty(str)) {
                intent2.setData(Uri.parse(str));
            }
            this.mContext.startActivity(intent2);
        } catch (SecurityException unused2) {
            Toast.makeText(this.mContext, "This App requires permission.", 0).show();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    private class SVDataRefreshTask extends AsyncTask<Void, Void, Integer> {
        ProgressBar progressBar;
        ImageView refreshView;
        TextView tvCount;

        public SVDataRefreshTask(ImageView imageView, ProgressBar progressBar, TextView textView) {
            this.refreshView = imageView;
            this.progressBar = progressBar;
            this.tvCount = textView;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            this.refreshView.setVisibility(8);
            this.progressBar.setVisibility(0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Integer doInBackground(Void... voidArr) {
            return Integer.valueOf(HomePageGridAdapter.this.svActityCount);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Integer num) {
            super.onPostExecute((SVDataRefreshTask) num);
            this.refreshView.setVisibility(0);
            this.progressBar.setVisibility(8);
            this.tvCount.setText("" + num);
        }
    }

    public void fetchLocation() {
        this.refreshView.setVisibility(8);
        this.progressBar.setVisibility(0);
        if (!this.mLocationUtils.checkPermissions((Activity) this.mContext)) {
            this.mLocationUtils.requestPermissions((Activity) this.mContext);
            return;
        }
        try {
            new FetchLocation((Activity) this.mContext, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.adapter.HomePageGridAdapter.3
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    HomePageGridAdapter.this.dbllatitude = Double.valueOf(locationInfo.getLatitude());
                    HomePageGridAdapter.this.dbllongitude = Double.valueOf(locationInfo.getLongitude());
                    if (HomePageGridAdapter.this.data.get(HomePageGridAdapter.this.selectedposition).getModuleid().equals("27")) {
                        HomePageGridAdapter homePageGridAdapter = HomePageGridAdapter.this;
                        homePageGridAdapter.svActityCount = homePageGridAdapter.disPlaySVRadiusData();
                    } else if (HomePageGridAdapter.this.data.get(HomePageGridAdapter.this.selectedposition).getModuleid().equals("12")) {
                        HomePageGridAdapter homePageGridAdapter2 = HomePageGridAdapter.this;
                        homePageGridAdapter2.svActityCount = homePageGridAdapter2.disPlayToDoRadiusData();
                    }
                    HomePageGridAdapter.this.refreshView.setVisibility(0);
                    HomePageGridAdapter.this.progressBar.setVisibility(8);
                    HomePageGridAdapter.this.tvCount.setText("" + HomePageGridAdapter.this.svActityCount);
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                    HomePageGridAdapter.this.refreshView.setVisibility(0);
                    HomePageGridAdapter.this.progressBar.setVisibility(8);
                }
            }, "");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int disPlaySVRadiusData() {
        if (this.dbllatitude == null || this.dbllongitude == null) {
            return 0;
        }
        List<SupervisoryAssignmentData> sVActivityAssignmentIDs = GetDataFromDB.getInstance().getSVActivityAssignmentIDs(Queries.getInstance().getSVToDoAssignmentIDs());
        new HashMap();
        HashMap<String, SVRadiusDataModel> sVRadiusData = GetDataFromDB.getInstance().getSVRadiusData(Queries.getInstance().getSVRadiusDataQry());
        Double.valueOf(0.0d);
        Double.valueOf(0.0d);
        int i = 0;
        for (int i2 = 0; i2 < sVActivityAssignmentIDs.size(); i2++) {
            SVRadiusDataModel sVRadiusDataModel = sVRadiusData.get(sVActivityAssignmentIDs.get(i2).getActivityassignmentid());
            if (sVRadiusDataModel != null) {
                Double radius = sVActivityAssignmentIDs.get(i2).getRadius();
                if (sVRadiusDataModel.getLatitude() != null && !sVRadiusDataModel.getLongitude().equalsIgnoreCase("NULL") && sVRadiusDataModel.getLatitude().length() > 0) {
                    double distance = distance(this.dbllatitude, this.dbllongitude, Double.valueOf(Double.parseDouble(sVRadiusDataModel.getLatitude())), Double.valueOf(Double.parseDouble(sVRadiusDataModel.getLongitude())), 'K');
                    Double.valueOf(distance).getClass();
                    if (distance <= radius.doubleValue()) {
                        i++;
                    }
                }
            }
        }
        return i;
    }

    public int disPlayToDoRadiusData() {
        LatLongDetails latLongInfo;
        if (this.dbllatitude == null || this.dbllongitude == null) {
            return 0;
        }
        List<SupervisoryAssignmentData> sVActivityAssignmentIDs = GetDataFromDB.getInstance().getSVActivityAssignmentIDs(Queries.getInstance().getToDoAssignmentIDs());
        new HashMap();
        HashMap<String, SVRadiusDataModel> sVRadiusData = GetDataFromDB.getInstance().getSVRadiusData(Queries.getInstance().getSVRadiusDataQry());
        Double.valueOf(0.0d);
        Double valueOf = Double.valueOf(0.0d);
        int i = 0;
        for (int i2 = 0; i2 < sVActivityAssignmentIDs.size(); i2++) {
            sVRadiusData.get(sVActivityAssignmentIDs.get(i2).getActivityassignmentid());
            SupervisoryAssignmentData supervisoryAssignmentData = sVActivityAssignmentIDs.get(i2);
            if (supervisoryAssignmentData.getActivitySegmentId() == 1) {
                latLongInfo = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsQry(supervisoryAssignmentData.getActivitySegmentValue(), supervisoryAssignmentData.getActivitySegmentId()));
            } else if (sVActivityAssignmentIDs.get(i2).getActivitySegmentId() == 2) {
                latLongInfo = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsDealerQry(supervisoryAssignmentData.getActivitySegmentValue(), supervisoryAssignmentData.getActivitySegmentId()));
            } else if (sVActivityAssignmentIDs.get(i2).getActivitySegmentId() == 3) {
                latLongInfo = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsDealerQry(supervisoryAssignmentData.getActivitySegmentValue(), supervisoryAssignmentData.getActivitySegmentId()));
            } else if (sVActivityAssignmentIDs.get(i2).getActivitySegmentId() == 8) {
                latLongInfo = GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsQry(supervisoryAssignmentData.getActivitySegmentValue(), supervisoryAssignmentData.getActivitySegmentId()));
            } else {
                latLongInfo = sVActivityAssignmentIDs.get(i2).getActivitySegmentId() == 18 ? GetDataFromDB.getInstance().getLatLongInfo(Queries.getInstance().getLotLongDetailsDealerQry(supervisoryAssignmentData.getActivitySegmentValue(), supervisoryAssignmentData.getActivitySegmentId())) : null;
            }
            if (latLongInfo != null && latLongInfo.getLatitude() != null && !latLongInfo.getLongitude().equalsIgnoreCase("NULL") && latLongInfo.getLatitude().length() > 0) {
                double distance = distance(this.dbllatitude, this.dbllongitude, Double.valueOf(Double.parseDouble(latLongInfo.getLatitude())), Double.valueOf(Double.parseDouble(latLongInfo.getLongitude())), 'K');
                Double.valueOf(distance).getClass();
                if (distance <= valueOf.doubleValue()) {
                    i++;
                }
            }
        }
        return i;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.HomePageGridAdapter.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.mContext)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void LaunchCapaignPage() {
        if (UtilDeclarations.isOnline(this.mContext)) {
            Intent intent = new Intent(this.mContext, (Class<?>) NeoCampaignWebView.class);
            intent.putExtra("IsAppover", true);
            this.mContext.startActivity(intent);
            return;
        }
        showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseCheckDataError()));
    }
}
