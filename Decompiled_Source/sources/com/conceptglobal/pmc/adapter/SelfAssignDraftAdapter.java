package com.conceptglobal.pmc.adapter;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.Bundle;
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
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.SAAttributeActivity;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.Search;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class SelfAssignDraftAdapter extends RecyclerView.Adapter<SelectionTODOHolder> implements Filterable, View.OnClickListener {
    private Context context;
    private List<AssignmentActivityDetailsModel> customerList;
    private boolean isCalendarView;
    private LayoutInflater mInflater;
    private List<AssignmentActivityDetailsModel> mOriginalNames;
    private int lastPosition = -1;
    private String searchString = "";
    private int packageId = 0;
    private int itemPosition = 0;

    public SelfAssignDraftAdapter(Context context, ArrayList<AssignmentActivityDetailsModel> arrayList) {
        this.context = context;
        this.customerList = arrayList;
        this.mOriginalNames = arrayList;
        this.mInflater = LayoutInflater.from(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public SelectionTODOHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_customeractivitylist_item, viewGroup, false);
        this.lastPosition = i;
        return new SelectionTODOHolder(inflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(SelectionTODOHolder selectionTODOHolder, int i) {
        AssignmentActivityDetailsModel assignmentActivityDetailsModel = this.customerList.get(i);
        ColorStateList textColors = selectionTODOHolder.tvFarmerName.getTextColors();
        selectionTODOHolder.tvassignmentId.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getTransId() + ""));
        selectionTODOHolder.tvassignmentId.setVisibility(8);
        if (this.searchString != null && assignmentActivityDetailsModel != null) {
            if (assignmentActivityDetailsModel.getPerson1() == null) {
                if (assignmentActivityDetailsModel.getActivitySegmentValue() != null) {
                    try {
                        selectionTODOHolder.tvFarmerName.setVisibility(0);
                        String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getCustomerNameBySegmentValue(assignmentActivityDetailsModel.getActivitySegmentValue(), assignmentActivityDetailsModel.getActivitySegmentId()));
                        if (assignmentActivityDetailsModel.getActivitySegmentId() != 1 && assignmentActivityDetailsModel.getActivitySegmentId() != 2 && assignmentActivityDetailsModel.getActivitySegmentId() != 3 && assignmentActivityDetailsModel.getActivitySegmentId() != 8) {
                            selectionTODOHolder.tvFarmerName.setText(Search.getString(this.searchString, stringValue));
                        }
                        selectionTODOHolder.tvFarmerName.setText(Search.getString(this.searchString, Encryption.decrypt(stringValue)));
                    } catch (Exception e) {
                        e.printStackTrace();
                        selectionTODOHolder.tvFarmerName.setVisibility(8);
                    }
                } else {
                    selectionTODOHolder.tvFarmerName.setVisibility(8);
                }
            } else {
                selectionTODOHolder.tvFarmerName.setVisibility(0);
                selectionTODOHolder.tvFarmerName.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getPerson1()));
            }
            if (assignmentActivityDetailsModel.getContactNumber() != null) {
                selectionTODOHolder.tvFarmerNumber.setText(Search.getString(this.searchString, assignmentActivityDetailsModel.getContactNumber()));
            } else {
                selectionTODOHolder.tvFarmerNumber.setVisibility(8);
            }
            if (assignmentActivityDetailsModel.getPackageId() > 0) {
                selectionTODOHolder.tvActvityAssigned.setText(((Object) Search.getString(this.searchString, GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId()))) + " (" + String.valueOf(assignmentActivityDetailsModel.getPackageId()) + ")");
                selectionTODOHolder.tvActvityAssigned.setTextColor(this.context.getResources().getColor(R.color.Segment8));
            } else {
                selectionTODOHolder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId())));
                selectionTODOHolder.tvActvityAssigned.setTextColor(textColors);
            }
            selectionTODOHolder.tvParentSegmentValue.setText(Search.getString(this.searchString, ""));
            selectionTODOHolder.tvParentSegmentValue.setVisibility(8);
            selectionTODOHolder.tvFromDate.setText(Search.getString(this.searchString, ""));
            try {
                Date parse = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss").parse(assignmentActivityDetailsModel.getEndDate());
                selectionTODOHolder.tvToDate.setText(new SimpleDateFormat("dd MMM yyyy").format(parse) + "");
            } catch (ParseException e2) {
                e2.printStackTrace();
            }
        }
        selectionTODOHolder.tvDaysRemaining.setText("(" + GetDataFromDB.getInstance().getSegmentName(assignmentActivityDetailsModel.getActivitySegmentId()) + ")");
        if (assignmentActivityDetailsModel.getIsTransactionDone() == 2) {
            selectionTODOHolder.ivSave.setVisibility(0);
        } else {
            selectionTODOHolder.ivSave.setVisibility(8);
        }
        selectionTODOHolder.llView.setTag(Integer.valueOf(i));
        selectionTODOHolder.iv_deleteDraft.setTag(Integer.valueOf(i));
        selectionTODOHolder.iv_deleteDraft.setVisibility(0);
        selectionTODOHolder.llView.setOnClickListener(this);
        selectionTODOHolder.iv_deleteDraft.setOnClickListener(this);
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
                                return;
                            } else {
                                selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment8));
                                return;
                            }
                        }
                        selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment5));
                        return;
                    }
                    selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment4));
                    return;
                }
                selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment3));
                return;
            }
            selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment2));
            return;
        }
        selectionTODOHolder.tvDaysRemaining.setTextColor(this.context.getResources().getColor(R.color.Segment1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.customerList.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.1
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                SelfAssignDraftAdapter.this.customerList = (ArrayList) filterResults.values;
                SelfAssignDraftAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                try {
                    ArrayList arrayList = new ArrayList();
                    if (SelfAssignDraftAdapter.this.customerList == null || SelfAssignDraftAdapter.this.customerList.size() != SelfAssignDraftAdapter.this.mOriginalNames.size()) {
                        SelfAssignDraftAdapter selfAssignDraftAdapter = SelfAssignDraftAdapter.this;
                        selfAssignDraftAdapter.customerList = selfAssignDraftAdapter.mOriginalNames;
                    }
                    if (charSequence != null && charSequence.length() != 0) {
                        String lowerCase = charSequence.toString().toLowerCase();
                        for (int i = 0; i < SelfAssignDraftAdapter.this.customerList.size(); i++) {
                            SelfAssignDraftAdapter.this.searchString = lowerCase.toString();
                            AssignmentActivityDetailsModel assignmentActivityDetailsModel = (AssignmentActivityDetailsModel) SelfAssignDraftAdapter.this.customerList.get(i);
                            if (assignmentActivityDetailsModel.getPerson1() != null) {
                                if (assignmentActivityDetailsModel.getPerson1().toLowerCase().contains(lowerCase.toString())) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                }
                            } else if (assignmentActivityDetailsModel.getContactNumber() != null) {
                                if (assignmentActivityDetailsModel.getContactNumber().toString() != null && assignmentActivityDetailsModel.getContactNumber().toString().contains(lowerCase.toString())) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                }
                            } else if (GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId()).toLowerCase().contains(lowerCase.toString())) {
                                arrayList.add(assignmentActivityDetailsModel);
                            } else if (assignmentActivityDetailsModel.getPerson2() != null) {
                                if (assignmentActivityDetailsModel.getPerson2().toString() != null && assignmentActivityDetailsModel.getPerson2().toString().contains(lowerCase.toString())) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                }
                            } else if (assignmentActivityDetailsModel.getLocation1() != null) {
                                if (assignmentActivityDetailsModel.getLocation1().toString() != null && assignmentActivityDetailsModel.getLocation1().toString().contains(lowerCase.toString())) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                }
                            } else if (assignmentActivityDetailsModel.getLocation2() != null && assignmentActivityDetailsModel.getLocation2().toString() != null && assignmentActivityDetailsModel.getLocation2().toString().contains(lowerCase.toString())) {
                                arrayList.add(assignmentActivityDetailsModel);
                            }
                        }
                        filterResults.count = arrayList.size();
                        filterResults.values = arrayList;
                        return filterResults;
                    }
                    filterResults.count = SelfAssignDraftAdapter.this.customerList.size();
                    SelfAssignDraftAdapter.this.searchString = "";
                    filterResults.values = SelfAssignDraftAdapter.this.customerList;
                    return filterResults;
                } catch (Exception e) {
                    PLog.e("Filter", e);
                    filterResults.count = SelfAssignDraftAdapter.this.customerList.size();
                    SelfAssignDraftAdapter.this.searchString = "";
                    filterResults.values = SelfAssignDraftAdapter.this.customerList;
                    return filterResults;
                }
            }
        };
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        this.itemPosition = intValue;
        int id = view.getId();
        if (id == R.id.CustomerTypeMainLayout) {
            Intent intent = new Intent(this.context, (Class<?>) SAAttributeActivity.class);
            intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.customerList.get(intValue).getActivitySegmentValue());
            intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), this.customerList.get(intValue).getActivitySegmentValue());
            intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.customerList.get(intValue).getActivityMasterId());
            intent.putExtra("SEGMENTID", this.customerList.get(intValue).getActivitySegmentId());
            intent.putExtra("ACTIVITYNAME", GetDataFromDB.getInstance().getActiviyName(this.customerList.get(intValue).getActivityMasterId()));
            intent.putExtra("AssignmentId", this.customerList.get(intValue).getAssignmentId());
            intent.putExtra("ACTIVITYID", this.customerList.get(intValue).getActivityMasterId());
            intent.putExtra("ISSELFASSIGN", 1);
            intent.putExtra("PackageId", this.customerList.get(intValue).getPackageId());
            intent.putExtra("TRANSID", this.customerList.get(intValue).getTransId());
            Bundle bundle = new Bundle();
            bundle.putParcelable("MODELCLASS", this.customerList.get(intValue));
            intent.putExtras(bundle);
            intent.addFlags(67108864);
            this.context.startActivity(intent.addFlags(131072).addFlags(67108864));
            return;
        }
        if (id != R.id.imageViewSegmentType) {
            if (id != R.id.iv_deleteDraft) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
            builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_confirmDelActivityDialog()));
            builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_yesText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.2
                /* JADX WARN: Removed duplicated region for block: B:11:0x005c A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:16:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
                @Override // android.content.DialogInterface.OnClickListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onClick(android.content.DialogInterface r5, int r6) {
                    /*
                        r4 = this;
                        com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter r5 = com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.this
                        java.util.List r5 = com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.access$1200(r5)
                        com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter r6 = com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.this
                        int r6 = com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.access$1500(r6)
                        java.lang.Object r5 = r5.get(r6)
                        com.conceptglobal.pmc.model.AssignmentActivityDetailsModel r5 = (com.conceptglobal.pmc.model.AssignmentActivityDetailsModel) r5
                        long r5 = r5.getTransId()
                        r0 = 1
                        com.conceptglobal.pmc.database.GetDataFromDB r1 = com.conceptglobal.pmc.database.GetDataFromDB.getInstance()     // Catch: java.lang.Exception -> L4e
                        com.conceptglobal.pmc.common.Queries r2 = com.conceptglobal.pmc.common.Queries.getInstance()     // Catch: java.lang.Exception -> L4e
                        java.lang.String r2 = r2.getDeletionQueryForSelfAssignmentDrafts1(r5)     // Catch: java.lang.Exception -> L4e
                        boolean r1 = r1.executeRawQuery(r2)     // Catch: java.lang.Exception -> L4e
                        com.conceptglobal.pmc.database.GetDataFromDB r2 = com.conceptglobal.pmc.database.GetDataFromDB.getInstance()     // Catch: java.lang.Exception -> L4b
                        com.conceptglobal.pmc.common.Queries r3 = com.conceptglobal.pmc.common.Queries.getInstance()     // Catch: java.lang.Exception -> L4b
                        java.lang.String r3 = r3.getDeletionQueryForSelfAssignmentDrafts2(r5)     // Catch: java.lang.Exception -> L4b
                        boolean r0 = r2.executeRawQuery(r3)     // Catch: java.lang.Exception -> L4b
                        com.conceptglobal.pmc.database.GetDataFromDB r2 = com.conceptglobal.pmc.database.GetDataFromDB.getInstance()     // Catch: java.lang.Exception -> L47
                        com.conceptglobal.pmc.common.Queries r3 = com.conceptglobal.pmc.common.Queries.getInstance()     // Catch: java.lang.Exception -> L47
                        java.lang.String r5 = r3.getDelForSADraftsImages(r5)     // Catch: java.lang.Exception -> L47
                        r2.executeRawQuery(r5)     // Catch: java.lang.Exception -> L47
                        goto L5a
                    L47:
                        r5 = move-exception
                        r6 = r0
                        r0 = r1
                        goto L50
                    L4b:
                        r5 = move-exception
                        r0 = r1
                        goto L4f
                    L4e:
                        r5 = move-exception
                    L4f:
                        r6 = 1
                    L50:
                        java.lang.String r1 = "SelfAssignDraftAdapter"
                        com.conceptglobal.pmc.utils.PLog.e(r1, r5)
                        r5.printStackTrace()
                        r1 = r0
                        r0 = r6
                    L5a:
                        if (r1 == 0) goto L72
                        if (r0 == 0) goto L72
                        com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter r5 = com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.this
                        java.util.List r5 = com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.access$1200(r5)
                        com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter r6 = com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.this
                        int r6 = com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.access$1500(r6)
                        r5.remove(r6)
                        com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter r5 = com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.this
                        r5.notifyDataSetChanged()
                    L72:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.AnonymousClass2.onClick(android.content.DialogInterface, int):void");
                }
            });
            builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.SelfAssignDraftAdapter.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            AlertDialog show = builder.show();
            if (UtilDeclarations.isTablet(this.context)) {
                UtilDeclarations.makeTabletDialogTextlarge(show);
                return;
            }
            return;
        }
        if (this.customerList.get(intValue).getContactNumber() == null || this.customerList.get(intValue).getContactNumber().trim().length() <= 0) {
            Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_mobileNumNAToast()), 0).show();
            return;
        }
        Intent intent2 = new Intent();
        intent2.setAction("android.intent.action.DIAL");
        intent2.setData(Uri.parse("tel:" + this.customerList.get(intValue).getContactNumber()));
        this.context.startActivity(intent2);
    }

    public static class SelectionTODOHolder extends RecyclerView.ViewHolder {
        protected CardView cardview;
        protected String id;
        private ImageView ivSave;
        private ImageView ivSegmentType;
        private ImageView iv_deleteDraft;
        private RelativeLayout llView;
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
            this.iv_deleteDraft = (ImageView) view.findViewById(R.id.iv_deleteDraft);
            this.tvParentSegmentValue = (TextView) view.findViewById(R.id.textCustomerTypeParentName);
            this.tvDaysRemaining = (TextView) view.findViewById(R.id.textViewDaysLeft);
            this.tvFromDate = (TextView) view.findViewById(R.id.textFromDate);
            this.tvToDate = (TextView) view.findViewById(R.id.textToDate);
            this.tvassignmentId = (TextView) view.findViewById(R.id.textCustomerAssingmentID);
        }
    }
}
