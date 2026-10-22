package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.ReportViewActivity;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.FarmerFormActivity;
import com.conceptglobal.pmc.fo.FarmerFormActivity_Expenses;
import com.conceptglobal.pmc.fo.MBAActivity;
import com.conceptglobal.pmc.fo.SAAttributeActivity_FBF;
import com.conceptglobal.pmc.fo.SurveyActivity;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.promotions.downloadmanager.DefaultRetryPolicy;
import com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequest;
import com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1;
import com.conceptglobal.pmc.promotions.downloadmanager.FileDownloadManager;
import com.conceptglobal.pmc.promotions.utils.UtilDeclarations;
import com.conceptglobal.pmc.registration.DraftList;
import com.conceptglobal.pmc.sync.GetToken;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.Search;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.File;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FarmerSelectionRecyclerToDoAdapter_Expenses extends RecyclerView.Adapter<SelectionTODOHolder> implements Filterable, View.OnClickListener {
    private static final int DOWNLOAD_THREAD_POOL_SIZE = 4;
    public static int pos1;
    private Context context;
    private List<AssignmentActivityDetailsModel> customerList;
    private boolean isCalendarView;
    private String isFrom;
    private LayoutInflater mInflater;
    private List<AssignmentActivityDetailsModel> mOriginalNames;
    private int lastPosition = -1;
    private String searchString = "";
    private int packageId = 0;
    private FileDownloadManager downloadManager = new FileDownloadManager(4);

    public FarmerSelectionRecyclerToDoAdapter_Expenses(Context context, ArrayList<AssignmentActivityDetailsModel> arrayList, boolean z, String str) {
        this.context = context;
        this.customerList = arrayList;
        this.mOriginalNames = arrayList;
        this.isCalendarView = z;
        this.isFrom = str;
        this.mInflater = LayoutInflater.from(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public SelectionTODOHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_customeractivitylist_item_expenses, viewGroup, false);
        this.lastPosition = i;
        return new SelectionTODOHolder(inflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(SelectionTODOHolder selectionTODOHolder, int i) {
        ColorStateList colorStateList;
        String str;
        final AssignmentActivityDetailsModel assignmentActivityDetailsModel = this.customerList.get(i);
        ColorStateList textColors = selectionTODOHolder.tvFarmerName.getTextColors();
        try {
            Long.valueOf(UtilDeclarations.getNoOfDaysDiff(assignmentActivityDetailsModel.getStartDate())).intValue();
            if (assignmentActivityDetailsModel.getIsExpensesSubmited() == 1) {
                if (assignmentActivityDetailsModel.getExpType().equalsIgnoreCase("TODO")) {
                    int intValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getExpApprovalToDO(assignmentActivityDetailsModel.getActivityAssignmentId()));
                    if (intValue == 1) {
                        selectionTODOHolder.txtID.setText("Approved");
                        selectionTODOHolder.txtID.setTextColor(this.context.getResources().getColor(R.color.colorAccentHalf));
                    } else if (intValue == 0) {
                        selectionTODOHolder.txtID.setText("Approval Pending");
                        selectionTODOHolder.txtID.setTextColor(this.context.getResources().getColor(R.color.red));
                    } else if (intValue == 2) {
                        selectionTODOHolder.txtID.setText("Rejected");
                        selectionTODOHolder.txtID.setTextColor(this.context.getResources().getColor(R.color.red));
                    }
                } else if (assignmentActivityDetailsModel.getExpType().equalsIgnoreCase("SELF")) {
                    int intValue2 = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getExpApprovalSelf(assignmentActivityDetailsModel.getTransId()));
                    if (intValue2 == 1) {
                        selectionTODOHolder.txtID.setText("Approved");
                        selectionTODOHolder.txtID.setTextColor(this.context.getResources().getColor(R.color.colorAccentHalf));
                    } else if (intValue2 == 0) {
                        selectionTODOHolder.txtID.setText("Approval Pending");
                        selectionTODOHolder.txtID.setTextColor(this.context.getResources().getColor(R.color.red));
                    } else if (intValue2 == 2) {
                        selectionTODOHolder.txtID.setText("Rejected");
                        selectionTODOHolder.txtID.setTextColor(this.context.getResources().getColor(R.color.red));
                    }
                } else if (assignmentActivityDetailsModel.getExpType().equalsIgnoreCase("EXP")) {
                    colorStateList = textColors;
                    int intValue3 = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getExpApproval(assignmentActivityDetailsModel.getTransId()));
                    if (intValue3 == 1) {
                        selectionTODOHolder.txtID.setText("Approved");
                        selectionTODOHolder.txtID.setTextColor(this.context.getResources().getColor(R.color.colorAccentHalf));
                    } else if (intValue3 == 0) {
                        selectionTODOHolder.txtID.setText("Approval Pending");
                        selectionTODOHolder.txtID.setTextColor(this.context.getResources().getColor(R.color.red));
                    } else if (intValue3 == 2) {
                        selectionTODOHolder.txtID.setText("Rejected");
                        selectionTODOHolder.txtID.setTextColor(this.context.getResources().getColor(R.color.red));
                    }
                }
                colorStateList = textColors;
            } else {
                colorStateList = textColors;
                selectionTODOHolder.txtID.setText("Not Submitted");
                selectionTODOHolder.txtID.setTextColor(this.context.getResources().getColor(R.color.blue_dark));
            }
            TextView textView = selectionTODOHolder.tvassignmentId;
            StringBuilder sb = new StringBuilder("Expenses Assignment ID : ");
            sb.append((Object) Search.getString(this.searchString, assignmentActivityDetailsModel.getActivityAssignmentId() + ""));
            textView.setText(sb.toString());
            if (assignmentActivityDetailsModel.getActivitySegmentId() == 2 || assignmentActivityDetailsModel.getActivitySegmentId() == 1 || assignmentActivityDetailsModel.getActivitySegmentId() == 3 || assignmentActivityDetailsModel.getActivitySegmentId() == 8) {
                str = "Activity Assignment ID :";
                ColorStateList colorStateList2 = colorStateList;
                if (this.searchString != null && assignmentActivityDetailsModel != null) {
                    GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getCustomerNameBySegmentValue(assignmentActivityDetailsModel.getActivitySegmentValue(), assignmentActivityDetailsModel.getActivitySegmentId()));
                    if (assignmentActivityDetailsModel.getPerson1() != null) {
                        selectionTODOHolder.tvFarmerName.setVisibility(0);
                        selectionTODOHolder.tvFarmerName.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getPerson1()));
                    } else {
                        selectionTODOHolder.tvFarmerName.setVisibility(8);
                    }
                    if (assignmentActivityDetailsModel.getContactNumber() != null) {
                        selectionTODOHolder.tvFarmerNumber.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getContactNumber()));
                    } else {
                        selectionTODOHolder.tvFarmerNumber.setVisibility(8);
                    }
                    if (assignmentActivityDetailsModel.getPackageId() > 0) {
                        if (this.isFrom.equalsIgnoreCase("FeedBack")) {
                            selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getFBFActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (P - " + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()) + ")" + assignmentActivityDetailsModel.getPackageName());
                        } else if (this.isFrom.equalsIgnoreCase("Survey")) {
                            selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getSurveyActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (P - " + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()) + ")" + assignmentActivityDetailsModel.getPackageName());
                        } else {
                            selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (P - " + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()) + ")" + assignmentActivityDetailsModel.getPackageName());
                        }
                        selectionTODOHolder.tvActvityAssigned.setTextColor(this.context.getResources().getColor(R.color.Segment8));
                    } else {
                        if (this.isFrom.equalsIgnoreCase("FeedBack")) {
                            selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getFBFActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                        } else if (this.isFrom.equalsIgnoreCase("Survey")) {
                            selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getSurveyActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                        } else {
                            selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                        }
                        selectionTODOHolder.tvActvityAssigned.setTextColor(colorStateList2);
                    }
                    selectionTODOHolder.tvParentSegmentValue.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getLocation1() + "(" + assignmentActivityDetailsModel.getLocation2() + ")"));
                    if (assignmentActivityDetailsModel.getStartDate() != null) {
                        selectionTODOHolder.tvFromDate.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getStartDate()));
                    }
                    if (assignmentActivityDetailsModel.getEndDate() != null) {
                        selectionTODOHolder.tvToDate.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getEndDate()));
                    }
                }
            } else if (this.searchString == null || assignmentActivityDetailsModel == null) {
                str = "Activity Assignment ID :";
            } else {
                if (assignmentActivityDetailsModel.getPerson1() != null) {
                    selectionTODOHolder.tvFarmerName.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getPerson1()));
                }
                if (assignmentActivityDetailsModel.getContactNumber() != null) {
                    selectionTODOHolder.tvFarmerNumber.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getContactNumber()));
                }
                selectionTODOHolder.tvFarmerName.setVisibility(8);
                if (assignmentActivityDetailsModel.getLocation1() != null && assignmentActivityDetailsModel.getLocation1().length() > 0) {
                    selectionTODOHolder.tvFarmerNumber.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getLocation1()));
                }
                if (assignmentActivityDetailsModel.getPackageId() <= 0 || assignmentActivityDetailsModel.getPackageName() == null) {
                    str = "Activity Assignment ID :";
                    if (this.isFrom.equalsIgnoreCase("FeedBack")) {
                        selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getFBFActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                    } else if (this.isFrom.equalsIgnoreCase("Survey")) {
                        selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getSurveyActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                    } else {
                        selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                    }
                    selectionTODOHolder.tvActvityAssigned.setTextColor(colorStateList);
                } else {
                    if (this.isFrom.equalsIgnoreCase("FeedBack")) {
                        TextView textView2 = selectionTODOHolder.tvActvityAssigned;
                        StringBuilder sb2 = new StringBuilder();
                        str = "Activity Assignment ID :";
                        sb2.append((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getFBFActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                        sb2.append(" (P - ");
                        sb2.append(String.valueOf(assignmentActivityDetailsModel.getAssignmentId()));
                        sb2.append(")");
                        sb2.append(assignmentActivityDetailsModel.getPackageName());
                        textView2.setText(sb2.toString());
                    } else {
                        str = "Activity Assignment ID :";
                        if (this.isFrom.equalsIgnoreCase("Survey")) {
                            selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getSurveyActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (P - " + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()) + ")" + assignmentActivityDetailsModel.getPackageName());
                        } else {
                            selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (P - " + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()) + ")" + assignmentActivityDetailsModel.getPackageName());
                        }
                    }
                    selectionTODOHolder.tvActvityAssigned.setTextColor(this.context.getResources().getColor(R.color.Segment8));
                }
                if (assignmentActivityDetailsModel.getLocation2() != null && assignmentActivityDetailsModel.getLocation2().length() > 0) {
                    selectionTODOHolder.tvParentSegmentValue.setText(Search.getString(this.searchString, "(" + assignmentActivityDetailsModel.getLocation2() + ")"));
                }
                if (assignmentActivityDetailsModel.getStartDate() != null) {
                    selectionTODOHolder.tvFromDate.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getStartDate()));
                }
            }
            if (this.isFrom.equalsIgnoreCase("FeedBack")) {
                selectionTODOHolder.tvDaysRemaining.setVisibility(0);
                selectionTODOHolder.tvDaysRemaining.setText("(" + GetDataFromDB.getInstance().getFBFSegmentName(assignmentActivityDetailsModel.getActivitySegmentId()) + ")");
            } else {
                if (!this.isFrom.equalsIgnoreCase("Survey") && !this.isFrom.equalsIgnoreCase("ExpensesToDo")) {
                    selectionTODOHolder.tvDaysRemaining.setVisibility(0);
                    selectionTODOHolder.tvDaysRemaining.setText("(" + GetDataFromDB.getInstance().getSegmentName(assignmentActivityDetailsModel.getActivitySegmentId()) + ")");
                }
                selectionTODOHolder.tvDaysRemaining.setVisibility(8);
                if (assignmentActivityDetailsModel.getCreateddate() != null) {
                    selectionTODOHolder.tvFromDate.setText(UtilDeclarations.convertDate(assignmentActivityDetailsModel.getCreateddate()));
                }
                if (assignmentActivityDetailsModel.getAssignmentId() > 0) {
                    selectionTODOHolder.tvassignmentId.setText("Expenses Assignment ID : " + String.valueOf(assignmentActivityDetailsModel.getActivityAssignmentId()));
                }
                if (assignmentActivityDetailsModel.getTransId() > 0) {
                    selectionTODOHolder.tvassignmentId.setText("Expenses Assignment ID : " + String.valueOf(assignmentActivityDetailsModel.getTransId()));
                }
                if (assignmentActivityDetailsModel.getTransId() > 0) {
                    selectionTODOHolder.tvFarmerNumber.setVisibility(0);
                    String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getCustomerNameBySegmentValue(assignmentActivityDetailsModel.getActivitySegmentValue(), assignmentActivityDetailsModel.getActivitySegmentId()));
                    selectionTODOHolder.tvFarmerNumber.setText(Search.getString(this.searchString, stringValue));
                    if (stringValue.equalsIgnoreCase("n/a")) {
                        selectionTODOHolder.tvFarmerNumber.setVisibility(8);
                    }
                }
            }
            if (assignmentActivityDetailsModel.getLatitude() == null || assignmentActivityDetailsModel.getLongitude() == null || assignmentActivityDetailsModel.getLatitude().trim().equals("") || assignmentActivityDetailsModel.getLongitude().trim().equals("")) {
                selectionTODOHolder.mapView.setVisibility(8);
            } else {
                selectionTODOHolder.mapView.setVisibility(0);
            }
            ConstantsPMC.getInstance().getUserId();
            if (assignmentActivityDetailsModel.getIsExpensesSubmited() <= 0 || assignmentActivityDetailsModel.getIsExpensesSubmited() != 1) {
                selectionTODOHolder.cardview.setBackgroundColor(this.context.getResources().getColor(R.color.white));
                selectionTODOHolder.llView.setBackgroundColor(this.context.getResources().getColor(R.color.white));
                selectionTODOHolder.ivSave.setVisibility(8);
            } else {
                selectionTODOHolder.cardview.setBackgroundColor(this.context.getResources().getColor(R.color.colorAccentHalf));
                selectionTODOHolder.llView.setBackgroundColor(this.context.getResources().getColor(R.color.gray2));
                selectionTODOHolder.ivSave.setVisibility(8);
            }
            selectionTODOHolder.tv_actAssignId.setText(str + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()));
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e("FSRecyclerToDoAdapter", e);
        }
        selectionTODOHolder.llView.setTag(Integer.valueOf(i));
        selectionTODOHolder.llView.setOnClickListener(this);
        selectionTODOHolder.ivSave.setOnClickListener(this);
        selectionTODOHolder.ivSave.setTag(Integer.valueOf(i));
        if (assignmentActivityDetailsModel.getContactNumber() == null || assignmentActivityDetailsModel.getContactNumber().equalsIgnoreCase("") || assignmentActivityDetailsModel.getContactNumber().equalsIgnoreCase("null")) {
            selectionTODOHolder.ivSegmentType.setVisibility(4);
        } else {
            selectionTODOHolder.ivSegmentType.setTag(Integer.valueOf(i));
            selectionTODOHolder.ivSegmentType.setVisibility(0);
            selectionTODOHolder.ivSegmentType.setOnClickListener(this);
        }
        if (assignmentActivityDetailsModel.getActivitySegmentId() == 1) {
            selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment1));
        } else if (assignmentActivityDetailsModel.getActivitySegmentId() == 2) {
            selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment2));
        } else if (assignmentActivityDetailsModel.getActivitySegmentId() == 3) {
            selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment3));
        } else if (assignmentActivityDetailsModel.getActivitySegmentId() == 4) {
            selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment4));
        } else if (assignmentActivityDetailsModel.getActivitySegmentId() == 5) {
            selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment5));
        } else if (assignmentActivityDetailsModel.getActivitySegmentId() == 8) {
            selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment8));
        } else {
            assignmentActivityDetailsModel.getActivitySegmentId();
        }
        selectionTODOHolder.mapView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.FarmerSelectionRecyclerToDoAdapter_Expenses.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FarmerSelectionRecyclerToDoAdapter_Expenses.this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://maps.google.com/maps?daddr=" + assignmentActivityDetailsModel.getLatitude() + "," + assignmentActivityDetailsModel.getLongitude() + "&saddr=Current%20Location")));
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.customerList.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.FarmerSelectionRecyclerToDoAdapter_Expenses.2
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                FarmerSelectionRecyclerToDoAdapter_Expenses.this.customerList = (ArrayList) filterResults.values;
                FarmerSelectionRecyclerToDoAdapter_Expenses.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                try {
                    ArrayList arrayList = new ArrayList();
                    if (FarmerSelectionRecyclerToDoAdapter_Expenses.this.customerList == null || FarmerSelectionRecyclerToDoAdapter_Expenses.this.customerList.size() != FarmerSelectionRecyclerToDoAdapter_Expenses.this.mOriginalNames.size()) {
                        FarmerSelectionRecyclerToDoAdapter_Expenses farmerSelectionRecyclerToDoAdapter_Expenses = FarmerSelectionRecyclerToDoAdapter_Expenses.this;
                        farmerSelectionRecyclerToDoAdapter_Expenses.customerList = farmerSelectionRecyclerToDoAdapter_Expenses.mOriginalNames;
                    }
                    if (charSequence != null && charSequence.length() != 0) {
                        String lowerCase = charSequence.toString().toLowerCase();
                        for (int i = 0; i < FarmerSelectionRecyclerToDoAdapter_Expenses.this.customerList.size(); i++) {
                            FarmerSelectionRecyclerToDoAdapter_Expenses.this.searchString = lowerCase.toString();
                            AssignmentActivityDetailsModel assignmentActivityDetailsModel = (AssignmentActivityDetailsModel) FarmerSelectionRecyclerToDoAdapter_Expenses.this.customerList.get(i);
                            if (assignmentActivityDetailsModel.getPerson1() != null && assignmentActivityDetailsModel.getPerson1().toLowerCase().contains(FarmerSelectionRecyclerToDoAdapter_Expenses.this.searchString)) {
                                arrayList.add(assignmentActivityDetailsModel);
                            } else if (assignmentActivityDetailsModel.getContactNumber() == null || !assignmentActivityDetailsModel.getContactNumber().toString().toLowerCase().contains(FarmerSelectionRecyclerToDoAdapter_Expenses.this.searchString)) {
                                if (GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId()).toLowerCase().contains(FarmerSelectionRecyclerToDoAdapter_Expenses.this.searchString)) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                } else if (assignmentActivityDetailsModel.getPerson2() != null && assignmentActivityDetailsModel.getPerson2().toString().contains(FarmerSelectionRecyclerToDoAdapter_Expenses.this.searchString)) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                } else if (assignmentActivityDetailsModel.getLocation1() != null && assignmentActivityDetailsModel.getLocation1().toLowerCase().contains(FarmerSelectionRecyclerToDoAdapter_Expenses.this.searchString)) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                } else if (assignmentActivityDetailsModel.getLocation2() != null && assignmentActivityDetailsModel.getLocation2().toLowerCase().contains(FarmerSelectionRecyclerToDoAdapter_Expenses.this.searchString)) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                }
                            } else {
                                arrayList.add(assignmentActivityDetailsModel);
                            }
                        }
                        filterResults.count = arrayList.size();
                        filterResults.values = arrayList;
                        return filterResults;
                    }
                    filterResults.count = FarmerSelectionRecyclerToDoAdapter_Expenses.this.customerList.size();
                    FarmerSelectionRecyclerToDoAdapter_Expenses.this.searchString = "";
                    filterResults.values = FarmerSelectionRecyclerToDoAdapter_Expenses.this.customerList;
                    return filterResults;
                } catch (Exception e) {
                    PLog.e("Filter", e);
                    filterResults.count = FarmerSelectionRecyclerToDoAdapter_Expenses.this.customerList.size();
                    FarmerSelectionRecyclerToDoAdapter_Expenses.this.searchString = "";
                    filterResults.values = FarmerSelectionRecyclerToDoAdapter_Expenses.this.customerList;
                    return filterResults;
                }
            }
        };
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent;
        String str;
        int intValue = ((Integer) view.getTag()).intValue();
        switch (view.getId()) {
            case R.id.CustomerTypeMainLayout /* 2131296264 */:
                try {
                    if (this.customerList.get(intValue).getActivityMasterId() == 1567) {
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (GetDataFromDB.getInstance().getSegmentType(this.customerList.get(intValue).getActivitySegmentId()) == 3) {
                    try {
                        String str2 = this.isFrom;
                        if (str2 != null && str2.equalsIgnoreCase("Survey")) {
                            pos1 = intValue;
                            callSegmentTypeList(this.customerList.get(intValue).getActivitySegmentId(), intValue);
                            break;
                        } else {
                            String str3 = this.isFrom;
                            if (str3 != null && str3.equalsIgnoreCase("FeedBack")) {
                                intent = new Intent(this.context, (Class<?>) SAAttributeActivity_FBF.class);
                                intent.putExtra("TRANSID", this.customerList.get(intValue).getTransId());
                                intent.putExtra("isCompleted", "1");
                            } else {
                                String str4 = this.isFrom;
                                if (str4 != null && str4.equalsIgnoreCase("ExpensesToDo")) {
                                    intent = new Intent(this.context, (Class<?>) FarmerFormActivity_Expenses.class);
                                    if (this.customerList.get(intValue).getIsExpensesSubmited() > 0 && this.customerList.get(intValue).getIsExpensesSubmited() == 1) {
                                    }
                                } else {
                                    intent = new Intent(this.context, (Class<?>) FarmerFormActivity.class);
                                }
                            }
                            intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.customerList.get(intValue).getActivitySegmentValue());
                            intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), this.customerList.get(intValue).getActivitySegmentValue());
                            intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.customerList.get(intValue).getActivityMasterId());
                            intent.putExtra("SEGMENTID", this.customerList.get(intValue).getActivitySegmentId());
                            intent.putExtra("ACTIVITYNAME", GetDataFromDB.getInstance().getFBFActiviyName(this.customerList.get(intValue).getActivityMasterId()));
                            intent.putExtra("AssignmentId", this.customerList.get(intValue).getAssignmentId());
                            intent.putExtra("ActivityAssignmentId", this.customerList.get(intValue).getActivityAssignmentId());
                            intent.putExtra("PackageId", this.customerList.get(intValue).getPackageId());
                            intent.putExtra("TRANSID", this.customerList.get(intValue).getTransId());
                            intent.putExtra("ExpensesSubmited", this.customerList.get(intValue).getIsExpensesSubmited());
                            Bundle bundle = new Bundle();
                            bundle.putParcelable("MODELCLASS", this.customerList.get(intValue));
                            intent.putExtras(bundle);
                            intent.addFlags(67108864);
                            this.context.startActivity(intent.addFlags(131072).addFlags(67108864));
                            break;
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                } else if (GetDataFromDB.getInstance().getSegmentType(this.customerList.get(intValue).getActivitySegmentId()) == 2) {
                    Intent intent2 = new Intent(this.context, (Class<?>) MBAActivity.class);
                    intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.customerList.get(intValue).getActivitySegmentValue());
                    intent2.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), this.customerList.get(intValue).getActivitySegmentValue());
                    intent2.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.customerList.get(intValue).getActivityMasterId());
                    intent2.putExtra("SEGMENTID", this.customerList.get(intValue).getActivitySegmentId());
                    intent2.putExtra("ACTIVITYNAME", GetDataFromDB.getInstance().getActiviyName(this.customerList.get(intValue).getActivityMasterId()));
                    intent2.putExtra("AssignmentId", this.customerList.get(intValue).getAssignmentId());
                    intent2.putExtra("ActivityAssignmentId", this.customerList.get(intValue).getActivityAssignmentId());
                    intent2.putExtra("PackageId", this.customerList.get(intValue).getPackageId());
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelable("MODELCLASS", this.customerList.get(intValue));
                    intent2.putExtras(bundle2);
                    intent2.addFlags(67108864);
                    this.context.startActivity(intent2.addFlags(131072).addFlags(67108864));
                    break;
                }
                break;
            case R.id.imageViewSegmentType /* 2131296828 */:
                if (this.customerList.get(intValue).getContactNumber() == null || this.customerList.get(intValue).getContactNumber().trim().length() <= 0) {
                    Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_mobileNumNAToast()), 0).show();
                    break;
                } else {
                    Intent intent3 = new Intent();
                    intent3.setAction("android.intent.action.DIAL");
                    intent3.setData(Uri.parse("tel:" + this.customerList.get(intValue).getContactNumber()));
                    this.context.startActivity(intent3);
                    break;
                }
            case R.id.iv_status_farmer_namess /* 2131296890 */:
                try {
                    AssignmentActivityDetailsModel assignmentActivityDetailsModel = this.customerList.get(intValue);
                    if (assignmentActivityDetailsModel.getExpType().equalsIgnoreCase("TODO")) {
                        str = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getExpanceAssignList(assignmentActivityDetailsModel.getActivityAssignmentId()));
                    } else if (assignmentActivityDetailsModel.getExpType().equalsIgnoreCase("SELF")) {
                        str = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getExpanceTranList(assignmentActivityDetailsModel.getTransId()));
                    } else if (assignmentActivityDetailsModel.getExpType().equalsIgnoreCase("EXP")) {
                        str = assignmentActivityDetailsModel.getTransId() + "";
                    } else {
                        str = "";
                    }
                    String str5 = ConstantsPMC.getInstance().getUrlPMCServicePdf() + str;
                    Intent intent4 = new Intent(this.context, (Class<?>) ReportViewActivity.class);
                    intent4.putExtra(Constants.MessagePayloadKeys.FROM, "Expenses");
                    intent4.putExtra("activityID", 4);
                    intent4.putExtra("activityName", "Expenses");
                    intent4.putExtra("ExpensesUrl", str5);
                    this.context.startActivity(intent4);
                    break;
                } catch (Exception unused) {
                    return;
                }
            case R.id.latlongs /* 2131296898 */:
                this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://maps.google.com/maps?daddr=" + this.customerList.get(intValue).getLatitude() + "," + this.customerList.get(intValue).getLongitude() + "&saddr=Current%20Location")));
                break;
        }
    }

    private void callSegmentTypeList(int i, int i2) {
        if (i == 1 || i == 2 || i == 10) {
            Intent intent = new Intent(this.context, (Class<?>) DraftList.class);
            intent.putExtra("segmentId", i);
            intent.putExtra("FromSelfAssignment", false);
            intent.putExtra("FromTestmonial", false);
            intent.putExtra("FromFeedBack", false);
            intent.putExtra("FromSurvey", true);
            intent.putExtra("isFromOrders", 0);
            intent.putExtra("isFromComplaints", 0);
            if (i == 1) {
                intent.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
            } else if (i == 2) {
                intent.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
            }
            intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.customerList.get(i2).getActivityMasterId());
            intent.putExtra("SEGMENTID", this.customerList.get(i2).getActivitySegmentId());
            intent.putExtra("ACTIVITYNAME", GetDataFromDB.getInstance().getSurveyActiviyName(this.customerList.get(i2).getActivityMasterId()));
            intent.putExtra("AssignmentId", this.customerList.get(i2).getAssignmentId());
            intent.putExtra("ActivityAssignmentId", this.customerList.get(i2).getActivityAssignmentId());
            intent.putExtra("PackageId", this.customerList.get(i2).getPackageId());
            Bundle bundle = new Bundle();
            bundle.putParcelable("MODELCLASS", this.customerList.get(i2));
            intent.putExtras(bundle);
            ((Activity) this.context).startActivityForResult(intent, 2);
        }
    }

    public void callSurvey(String str) {
        Intent intent = new Intent(this.context, (Class<?>) SurveyActivity.class);
        intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), str);
        intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.customerList.get(pos1).getActivityMasterId());
        intent.putExtra("SEGMENTID", this.customerList.get(pos1).getActivitySegmentId());
        intent.putExtra("ACTIVITYNAME", GetDataFromDB.getInstance().getSurveyActiviyName(this.customerList.get(pos1).getActivityMasterId()));
        intent.putExtra("AssignmentId", this.customerList.get(pos1).getAssignmentId());
        intent.putExtra("ActivityAssignmentId", this.customerList.get(pos1).getActivityAssignmentId());
        intent.putExtra("PackageId", this.customerList.get(pos1).getPackageId());
        Bundle bundle = new Bundle();
        bundle.putParcelable("MODELCLASS", this.customerList.get(pos1));
        intent.putExtras(bundle);
        intent.addFlags(67108864);
        this.context.startActivity(intent.addFlags(131072).addFlags(67108864));
    }

    public static class SelectionTODOHolder extends RecyclerView.ViewHolder {
        protected CardView cardview;
        protected String id;
        private ImageView ivSave;
        private ImageView ivSegmentType;
        private RelativeLayout llView;
        private ImageView mapView;
        private TextView tvActvityAssigned;
        private TextView tvDaysRemaining;
        private TextView tvFarmerName;
        private TextView tvFarmerNumber;
        private TextView tvFromDate;
        private TextView tvParentSegmentValue;
        private TextView tvToDate;
        private TextView tv_actAssignId;
        private TextView tvassignmentId;
        private TextView txtID;
        private TextView txtNoDaysLeft;

        public SelectionTODOHolder(View view) {
            super(view);
            this.cardview = (CardView) view.findViewById(R.id.cardViewSegmentTypeNameTODO);
            this.ivSave = (ImageView) view.findViewById(R.id.iv_status_farmer_namess);
            this.llView = (RelativeLayout) view.findViewById(R.id.CustomerTypeMainLayout);
            this.tvFarmerName = (TextView) view.findViewById(R.id.textiv_status_farmer_Name);
            this.txtNoDaysLeft = (TextView) view.findViewById(R.id.txtNoDaysLeft);
            this.tvFarmerNumber = (TextView) view.findViewById(R.id.textCustomerTypePhoneNo);
            this.tvActvityAssigned = (TextView) view.findViewById(R.id.textCustomerActivityName);
            this.ivSegmentType = (ImageView) view.findViewById(R.id.imageViewSegmentType);
            this.tvParentSegmentValue = (TextView) view.findViewById(R.id.textCustomerTypeParentName);
            this.tvDaysRemaining = (TextView) view.findViewById(R.id.textViewDaysLeft);
            this.tvFromDate = (TextView) view.findViewById(R.id.textFromDate);
            this.tvToDate = (TextView) view.findViewById(R.id.textToDate);
            this.tvassignmentId = (TextView) view.findViewById(R.id.textCustomerAssingmentID);
            this.mapView = (ImageView) view.findViewById(R.id.latlongs);
            this.txtID = (TextView) view.findViewById(R.id.txtID);
            this.tv_actAssignId = (TextView) view.findViewById(R.id.tv_actAssignId);
        }
    }

    public void setIsCalenderView(boolean z, ArrayList<AssignmentActivityDetailsModel> arrayList) {
        this.isCalendarView = z;
        this.customerList = arrayList;
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void downloadContent(String str, long j) {
        if (UtilDeclarations.isOnline(this.context)) {
            File file = new File(ConstantDeclarations.getInstance().getPdfStoragePath());
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file + File.separator + j + ".pdf");
            if (file2.exists()) {
                return;
            }
            this.downloadManager.add(new DownloadRequest(Uri.parse(str)).setRetryPolicy(new DefaultRetryPolicy()).setDestinationURI(Uri.parse(file2.getAbsolutePath())).setPriority(DownloadRequest.Priority.HIGH).setStatusListener(new DownloadStatusListenerV1() { // from class: com.conceptglobal.pmc.adapter.FarmerSelectionRecyclerToDoAdapter_Expenses.3
                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1
                public void onDownloadComplete(DownloadRequest downloadRequest) {
                    Log.w("download-", "Sucess---");
                    FarmerSelectionRecyclerToDoAdapter_Expenses.this.viewpdf(downloadRequest.getUri());
                }

                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1
                public void onDownloadFailed(DownloadRequest downloadRequest, int i, String str2) {
                    Log.w("download-", "Failed---");
                }

                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1
                public void onProgress(DownloadRequest downloadRequest, long j2, long j3, int i) {
                    Log.w("download-", (j3 / 1024) + "kb of " + (j2 / 1024) + "kb");
                    long j4 = (j3 * 100) / j2;
                }
            }));
            return;
        }
        Toast.makeText(this.context, "Please enable data connection", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void viewpdf(Uri uri) {
        try {
            Intent intent = new Intent();
            intent.setDataAndType(uri, "application/pdf");
            this.context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private class GetPDFUrlTask extends AsyncTask<String, Void, String> {
        long transIdVal;

        GetPDFUrlTask(long j) {
            this.transIdVal = j;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            String str;
            try {
                Gson create = new GsonBuilder().disableHtmlEscaping().create();
                String str2 = "{\"TransId\":\"" + this.transIdVal + "\"}";
                String sendRequestwithToken = WebService.getInstance().sendRequestwithToken(str2, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getGetPDFURL(), strArr[0]);
                if (sendRequestwithToken == null || sendRequestwithToken.equals("")) {
                    return null;
                }
                ResponseModel responseModel = (ResponseModel) create.fromJson((Reader) new StringReader(sendRequestwithToken), ResponseModel.class);
                JSONObject jSONObject = new JSONObject(sendRequestwithToken);
                if (responseModel.getStatus().equals("AUTHORISED")) {
                    if (responseModel.getData() == null || jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).isEmpty()) {
                        return null;
                    }
                    str = jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                } else {
                    if (!responseModel.getStatus().equals("UNAUTHORISED") || !responseModel.getStatusMessage().equals("Invalid Token")) {
                        return null;
                    }
                    new GetToken(null, 2).StartGetToken();
                    str = "1";
                }
                return str;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            if (!TextUtils.isEmpty(str)) {
                FarmerSelectionRecyclerToDoAdapter_Expenses.this.downloadContent(str, this.transIdVal);
            }
            super.onPostExecute((GetPDFUrlTask) str);
        }
    }
}
