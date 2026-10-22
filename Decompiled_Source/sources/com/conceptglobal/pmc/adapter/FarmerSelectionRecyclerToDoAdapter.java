package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.net.Uri;
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
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.FarmerFormActivity;
import com.conceptglobal.pmc.fo.MBAActivity;
import com.conceptglobal.pmc.fo.SAAttributeActivity_FBF;
import com.conceptglobal.pmc.fo.SurveyActivity;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.registration.DraftList;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.Search;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FarmerSelectionRecyclerToDoAdapter extends RecyclerView.Adapter<SelectionTODOHolder> implements Filterable, View.OnClickListener {
    public static int pos1;
    private Context context;
    private List<AssignmentActivityDetailsModel> customerList;
    private boolean isCalendarView;
    private String isFrom;
    long isRaiusCheckRequired;
    private LayoutInflater mInflater;
    private List<AssignmentActivityDetailsModel> mOriginalNames;
    private String outOfDateMsg;
    private String outOfRangeMsg;
    private int lastPosition = -1;
    private String searchString = "";
    private int packageId = 0;

    public FarmerSelectionRecyclerToDoAdapter(Context context, ArrayList<AssignmentActivityDetailsModel> arrayList, boolean z, String str) {
        this.outOfRangeMsg = "";
        this.outOfDateMsg = "";
        this.isRaiusCheckRequired = 0L;
        this.context = context;
        this.customerList = arrayList;
        this.mOriginalNames = arrayList;
        this.isCalendarView = z;
        this.isFrom = str;
        this.outOfRangeMsg = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_outSideRadiusAlert());
        this.outOfDateMsg = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_dateRangeAlert());
        try {
            this.isRaiusCheckRequired = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("TODORadiusCheckRequired"));
            this.mInflater = LayoutInflater.from(context);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public SelectionTODOHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_customeractivitylist_item, viewGroup, false);
        this.lastPosition = i;
        return new SelectionTODOHolder(inflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(SelectionTODOHolder selectionTODOHolder, int i) {
        final AssignmentActivityDetailsModel assignmentActivityDetailsModel = this.customerList.get(i);
        ColorStateList textColors = selectionTODOHolder.tvFarmerName.getTextColors();
        try {
            selectionTODOHolder.tvassignmentId.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getActivityAssignmentId() + ""));
            if (assignmentActivityDetailsModel.getActivitySegmentId() != 2 && assignmentActivityDetailsModel.getActivitySegmentId() != 1 && assignmentActivityDetailsModel.getActivitySegmentId() != 3 && assignmentActivityDetailsModel.getActivitySegmentId() != 8) {
                if (this.searchString != null && assignmentActivityDetailsModel != null) {
                    if (assignmentActivityDetailsModel.getPerson1() != null) {
                        selectionTODOHolder.tvFarmerName.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getPerson1()));
                    }
                    if (assignmentActivityDetailsModel.getContactNumber() != null) {
                        selectionTODOHolder.tvFarmerNumber.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getContactNumber()));
                    }
                    selectionTODOHolder.tvFarmerName.setVisibility(8);
                    selectionTODOHolder.tvFarmerNumber.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getLocation1()));
                    if (assignmentActivityDetailsModel.getPackageId() > 0 && assignmentActivityDetailsModel.getPackageName() != null) {
                        if (!this.isFrom.equalsIgnoreCase("FeedBack")) {
                            if (this.isFrom.equalsIgnoreCase("Survey")) {
                                selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getSurveyActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (P - " + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()) + ")" + assignmentActivityDetailsModel.getPackageName());
                            } else {
                                selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (P - " + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()) + ")" + assignmentActivityDetailsModel.getPackageName());
                            }
                        } else {
                            selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getFBFActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (P - " + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()) + ")" + assignmentActivityDetailsModel.getPackageName());
                        }
                        selectionTODOHolder.tvActvityAssigned.setTextColor(this.context.getResources().getColor(R.color.Segment8));
                    } else {
                        if (!this.isFrom.equalsIgnoreCase("FeedBack")) {
                            if (this.isFrom.equalsIgnoreCase("Survey")) {
                                selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getSurveyActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                            } else {
                                selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getFBFActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                            }
                        } else {
                            selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getFBFActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                        }
                        selectionTODOHolder.tvActvityAssigned.setTextColor(textColors);
                    }
                    selectionTODOHolder.tvParentSegmentValue.setText(Search.getString(this.searchString, "(" + assignmentActivityDetailsModel.getLocation2() + ")"));
                    if (assignmentActivityDetailsModel.getStartDate() != null) {
                        selectionTODOHolder.tvFromDate.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getStartDate()));
                    }
                    if (assignmentActivityDetailsModel.getEndDate() != null) {
                        selectionTODOHolder.tvToDate.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getEndDate()));
                    }
                }
            } else if (this.searchString != null && assignmentActivityDetailsModel != null) {
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
                    if (!this.isFrom.equalsIgnoreCase("FeedBack")) {
                        if (this.isFrom.equalsIgnoreCase("Survey")) {
                            selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getSurveyActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (P - " + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()) + ")" + assignmentActivityDetailsModel.getPackageName());
                        } else {
                            selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (P - " + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()) + ")" + assignmentActivityDetailsModel.getPackageName());
                        }
                    } else {
                        selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getFBFActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (P - " + String.valueOf(assignmentActivityDetailsModel.getAssignmentId()) + ")" + assignmentActivityDetailsModel.getPackageName());
                    }
                    selectionTODOHolder.tvActvityAssigned.setTextColor(this.context.getResources().getColor(R.color.Segment8));
                } else {
                    if (!this.isFrom.equalsIgnoreCase("FeedBack")) {
                        if (this.isFrom.equalsIgnoreCase("Survey")) {
                            selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getSurveyActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                        } else {
                            selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                        }
                    } else {
                        selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getFBFActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                    }
                    selectionTODOHolder.tvActvityAssigned.setTextColor(textColors);
                }
                selectionTODOHolder.tvParentSegmentValue.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getLocation1() + "(" + assignmentActivityDetailsModel.getLocation2() + ")"));
                if (assignmentActivityDetailsModel.getStartDate() != null) {
                    selectionTODOHolder.tvFromDate.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getStartDate()));
                }
                if (assignmentActivityDetailsModel.getEndDate() != null) {
                    selectionTODOHolder.tvToDate.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getEndDate()));
                }
            }
            if (!this.isFrom.equalsIgnoreCase("FeedBack")) {
                if (this.isFrom.equalsIgnoreCase("Survey")) {
                    selectionTODOHolder.tvDaysRemaining.setVisibility(8);
                } else {
                    selectionTODOHolder.tvDaysRemaining.setVisibility(0);
                    selectionTODOHolder.tvDaysRemaining.setText("(" + GetDataFromDB.getInstance().getSegmentName(assignmentActivityDetailsModel.getActivitySegmentId()) + ")");
                }
            } else {
                selectionTODOHolder.tvDaysRemaining.setVisibility(0);
                selectionTODOHolder.tvDaysRemaining.setText("(" + GetDataFromDB.getInstance().getFBFSegmentName(assignmentActivityDetailsModel.getActivitySegmentId()) + ")");
            }
            if (assignmentActivityDetailsModel.getLatitude() != null && assignmentActivityDetailsModel.getLongitude() != null && !assignmentActivityDetailsModel.getLatitude().trim().equals("") && !assignmentActivityDetailsModel.getLongitude().trim().equals("")) {
                if (this.isFrom.equalsIgnoreCase("ToDo")) {
                    selectionTODOHolder.mapView.setVisibility(8);
                } else {
                    selectionTODOHolder.mapView.setVisibility(0);
                }
            } else {
                selectionTODOHolder.mapView.setVisibility(8);
            }
            String userId = ConstantsPMC.getInstance().getUserId();
            if (assignmentActivityDetailsModel.getCreatedBy() > 0 && assignmentActivityDetailsModel.getCreatedBy() == Integer.valueOf(userId).intValue()) {
                selectionTODOHolder.cardview.setBackgroundColor(this.context.getResources().getColor(R.color.white));
            } else {
                selectionTODOHolder.cardview.setBackgroundColor(this.context.getResources().getColor(R.color.colorAccentQuarter));
            }
            if (this.isRaiusCheckRequired == 1 && assignmentActivityDetailsModel.getIsInsideRadius() != 1) {
                selectionTODOHolder.cardview.setBackgroundColor(this.context.getResources().getColor(R.color.gray3));
            }
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e("FSRecyclerToDoAdapter", e);
        }
        selectionTODOHolder.ivSave.setVisibility(8);
        if (assignmentActivityDetailsModel.getIsTransactionDone() == 2) {
            selectionTODOHolder.ivSave.setVisibility(0);
        } else {
            selectionTODOHolder.ivSave.setVisibility(8);
        }
        selectionTODOHolder.llView.setTag(Integer.valueOf(i));
        selectionTODOHolder.llView.setOnClickListener(this);
        if (assignmentActivityDetailsModel.getContactNumber() == null || assignmentActivityDetailsModel.getContactNumber().equalsIgnoreCase("")) {
            selectionTODOHolder.ivSegmentType.setVisibility(8);
        } else {
            selectionTODOHolder.ivSegmentType.setTag(Integer.valueOf(i));
            selectionTODOHolder.ivSegmentType.setVisibility(0);
            selectionTODOHolder.ivSegmentType.setOnClickListener(this);
        }
        if (assignmentActivityDetailsModel.getActivitySegmentId() != 1) {
            if (assignmentActivityDetailsModel.getActivitySegmentId() != 2) {
                if (assignmentActivityDetailsModel.getActivitySegmentId() != 3) {
                    if (assignmentActivityDetailsModel.getActivitySegmentId() != 4) {
                        if (assignmentActivityDetailsModel.getActivitySegmentId() != 5) {
                            if (assignmentActivityDetailsModel.getActivitySegmentId() != 8) {
                                assignmentActivityDetailsModel.getActivitySegmentId();
                            } else {
                                selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment8));
                            }
                        } else {
                            selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment5));
                        }
                    } else {
                        selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment4));
                    }
                } else {
                    selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment3));
                }
            } else {
                selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment2));
            }
        } else {
            selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment1));
        }
        selectionTODOHolder.mapView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.FarmerSelectionRecyclerToDoAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FarmerSelectionRecyclerToDoAdapter.this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://maps.google.com/maps?daddr=" + assignmentActivityDetailsModel.getLatitude() + "," + assignmentActivityDetailsModel.getLongitude() + "&saddr=Current%20Location")));
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.customerList.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.FarmerSelectionRecyclerToDoAdapter.2
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                FarmerSelectionRecyclerToDoAdapter.this.customerList = (ArrayList) filterResults.values;
                FarmerSelectionRecyclerToDoAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                try {
                    ArrayList arrayList = new ArrayList();
                    if (FarmerSelectionRecyclerToDoAdapter.this.customerList == null || FarmerSelectionRecyclerToDoAdapter.this.customerList.size() != FarmerSelectionRecyclerToDoAdapter.this.mOriginalNames.size()) {
                        FarmerSelectionRecyclerToDoAdapter farmerSelectionRecyclerToDoAdapter = FarmerSelectionRecyclerToDoAdapter.this;
                        farmerSelectionRecyclerToDoAdapter.customerList = farmerSelectionRecyclerToDoAdapter.mOriginalNames;
                    }
                    if (charSequence != null && charSequence.length() != 0) {
                        String lowerCase = charSequence.toString().toLowerCase();
                        for (int i = 0; i < FarmerSelectionRecyclerToDoAdapter.this.customerList.size(); i++) {
                            FarmerSelectionRecyclerToDoAdapter.this.searchString = lowerCase.toString();
                            AssignmentActivityDetailsModel assignmentActivityDetailsModel = (AssignmentActivityDetailsModel) FarmerSelectionRecyclerToDoAdapter.this.customerList.get(i);
                            if (assignmentActivityDetailsModel.getPerson1() != null && assignmentActivityDetailsModel.getPerson1().toLowerCase().contains(FarmerSelectionRecyclerToDoAdapter.this.searchString)) {
                                arrayList.add(assignmentActivityDetailsModel);
                            } else if (assignmentActivityDetailsModel.getContactNumber() == null || !assignmentActivityDetailsModel.getContactNumber().toString().toLowerCase().contains(FarmerSelectionRecyclerToDoAdapter.this.searchString)) {
                                if (GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId()).toLowerCase().contains(FarmerSelectionRecyclerToDoAdapter.this.searchString)) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                } else if (assignmentActivityDetailsModel.getPerson2() != null && assignmentActivityDetailsModel.getPerson2().toString().contains(FarmerSelectionRecyclerToDoAdapter.this.searchString)) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                } else if (assignmentActivityDetailsModel.getLocation1() != null && assignmentActivityDetailsModel.getLocation1().toLowerCase().contains(FarmerSelectionRecyclerToDoAdapter.this.searchString)) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                } else if (assignmentActivityDetailsModel.getLocation2() != null && assignmentActivityDetailsModel.getLocation2().toLowerCase().contains(FarmerSelectionRecyclerToDoAdapter.this.searchString)) {
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
                    filterResults.count = FarmerSelectionRecyclerToDoAdapter.this.customerList.size();
                    FarmerSelectionRecyclerToDoAdapter.this.searchString = "";
                    filterResults.values = FarmerSelectionRecyclerToDoAdapter.this.customerList;
                    return filterResults;
                } catch (Exception e) {
                    PLog.e("Filter", e);
                    filterResults.count = FarmerSelectionRecyclerToDoAdapter.this.customerList.size();
                    FarmerSelectionRecyclerToDoAdapter.this.searchString = "";
                    filterResults.values = FarmerSelectionRecyclerToDoAdapter.this.customerList;
                    return filterResults;
                }
            }
        };
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent;
        int intValue = ((Integer) view.getTag()).intValue();
        int id = view.getId();
        if (id != R.id.CustomerTypeMainLayout) {
            if (id == R.id.imageViewSegmentType) {
                if (this.customerList.get(intValue).getContactNumber() == null || this.customerList.get(intValue).getContactNumber().trim().length() <= 0) {
                    Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_mobileNumNAToast()), 0).show();
                    return;
                }
                Intent intent2 = new Intent();
                intent2.setAction("android.intent.action.DIAL");
                intent2.setData(Uri.parse("tel:" + this.customerList.get(intValue).getContactNumber()));
                this.context.startActivity(intent2);
                return;
            }
            if (id != R.id.latlongs) {
                return;
            }
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://maps.google.com/maps?daddr=" + this.customerList.get(intValue).getLatitude() + "," + this.customerList.get(intValue).getLongitude() + "&saddr=Current%20Location")));
            return;
        }
        if (GetDataFromDB.getInstance().getSegmentType(this.customerList.get(intValue).getActivitySegmentId()) == 3) {
            Log.d("timer", "start getSegmentType " + System.currentTimeMillis());
            String str = this.isFrom;
            if (str != null && str.equalsIgnoreCase("Survey")) {
                pos1 = intValue;
                callSegmentTypeList(this.customerList.get(intValue).getActivitySegmentId(), intValue);
                return;
            }
            String str2 = this.isFrom;
            if (str2 != null && str2.equalsIgnoreCase("FeedBack")) {
                intent = new Intent(this.context, (Class<?>) SAAttributeActivity_FBF.class);
                intent.putExtra("TRANSID", this.customerList.get(intValue).getTransId());
                intent.putExtra("isCompleted", "1");
                intent.putExtra("ACTIVITYNAME", GetDataFromDB.getInstance().getFBFActiviyName(this.customerList.get(intValue).getActivityMasterId()));
            } else {
                try {
                    if (this.customerList.get(intValue).getActivitySegmentId() != 10 && GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("TODORadiusCheckRequired")) == 1 && this.customerList.get(intValue).getIsInsideRadius() != 1) {
                        showAlert(this.outOfRangeMsg);
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                try {
                    long lookupValue = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("IsTodoDateValidationRequired"));
                    if (!TextUtils.isEmpty(this.customerList.get(intValue).getStartDate()) && lookupValue == 1) {
                        String diffDaysForTodo = UtilDeclarations.diffDaysForTodo(this.customerList.get(intValue).getStartDate(), "yyyy-MM-dd");
                        String diffDaysForTodo2 = UtilDeclarations.diffDaysForTodo(this.customerList.get(intValue).getEndDate(), "yyyy-MM-dd");
                        if (!TextUtils.isEmpty(diffDaysForTodo) && !TextUtils.isEmpty(diffDaysForTodo2) && (Integer.parseInt(diffDaysForTodo) < 0 || Integer.parseInt(diffDaysForTodo2) > 0)) {
                            showAlert(this.outOfDateMsg);
                            return;
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                intent = new Intent(this.context, (Class<?>) FarmerFormActivity.class);
                intent.putExtra("ACTIVITYNAME", GetDataFromDB.getInstance().getActiviyName(this.customerList.get(intValue).getActivityMasterId()));
            }
            intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.customerList.get(intValue).getActivitySegmentValue());
            intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), this.customerList.get(intValue).getActivitySegmentValue());
            intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.customerList.get(intValue).getActivityMasterId());
            intent.putExtra("SEGMENTID", this.customerList.get(intValue).getActivitySegmentId());
            intent.putExtra("AssignmentId", this.customerList.get(intValue).getAssignmentId());
            intent.putExtra("ActivityAssignmentId", this.customerList.get(intValue).getActivityAssignmentId());
            intent.putExtra("PackageId", this.customerList.get(intValue).getPackageId());
            Bundle bundle = new Bundle();
            bundle.putParcelable("MODELCLASS", this.customerList.get(intValue));
            intent.putExtras(bundle);
            intent.addFlags(67108864);
            this.context.startActivity(intent.addFlags(131072).addFlags(67108864));
            return;
        }
        if (GetDataFromDB.getInstance().getSegmentType(this.customerList.get(intValue).getActivitySegmentId()) == 2) {
            Intent intent3 = new Intent(this.context, (Class<?>) MBAActivity.class);
            intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.customerList.get(intValue).getActivitySegmentValue());
            intent3.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), this.customerList.get(intValue).getActivitySegmentValue());
            intent3.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.customerList.get(intValue).getActivityMasterId());
            intent3.putExtra("SEGMENTID", this.customerList.get(intValue).getActivitySegmentId());
            intent3.putExtra("ACTIVITYNAME", GetDataFromDB.getInstance().getActiviyName(this.customerList.get(intValue).getActivityMasterId()));
            intent3.putExtra("AssignmentId", this.customerList.get(intValue).getAssignmentId());
            intent3.putExtra("ActivityAssignmentId", this.customerList.get(intValue).getActivityAssignmentId());
            intent3.putExtra("PackageId", this.customerList.get(intValue).getPackageId());
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("MODELCLASS", this.customerList.get(intValue));
            intent3.putExtras(bundle2);
            intent3.addFlags(67108864);
            this.context.startActivity(intent3.addFlags(131072).addFlags(67108864));
        }
    }

    private void callSegmentTypeList(int i, int i2) {
        if (i == 1 || i == 2 || i == 3 || i == 10) {
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
            } else if (i == 3) {
                intent.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
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
        private TextView tvassignmentId;

        public SelectionTODOHolder(View view) {
            super(view);
            this.cardview = (CardView) view.findViewById(R.id.cardViewSegmentTypeNameTODO);
            this.ivSave = (ImageView) view.findViewById(R.id.iv_status_farmer_namess);
            this.llView = (RelativeLayout) view.findViewById(R.id.CustomerTypeMainLayout);
            this.tvFarmerName = (TextView) view.findViewById(R.id.textiv_status_farmer_Name);
            this.tvFarmerNumber = (TextView) view.findViewById(R.id.textCustomerTypePhoneNo);
            this.tvActvityAssigned = (TextView) view.findViewById(R.id.textCustomerActivityName);
            this.ivSegmentType = (ImageView) view.findViewById(R.id.imageViewSegmentType);
            this.tvParentSegmentValue = (TextView) view.findViewById(R.id.textCustomerTypeParentName);
            this.tvDaysRemaining = (TextView) view.findViewById(R.id.textViewDaysLeft);
            this.tvFromDate = (TextView) view.findViewById(R.id.textFromDate);
            this.tvToDate = (TextView) view.findViewById(R.id.textToDate);
            this.tvassignmentId = (TextView) view.findViewById(R.id.textCustomerAssingmentID);
            this.mapView = (ImageView) view.findViewById(R.id.latlongs);
        }
    }

    public void setIsCalenderView(boolean z, ArrayList<AssignmentActivityDetailsModel> arrayList) {
        this.isCalendarView = z;
        this.customerList = arrayList;
        notifyDataSetChanged();
    }

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.FarmerSelectionRecyclerToDoAdapter.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }
}
