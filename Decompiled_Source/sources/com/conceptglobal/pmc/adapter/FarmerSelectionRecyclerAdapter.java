package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.FarmerFormActivity;
import com.conceptglobal.pmc.fo.MBAActivity;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.Search;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FarmerSelectionRecyclerAdapter extends RecyclerView.Adapter<SelectionListViewHolder> implements Filterable, View.OnClickListener {
    private Context context;
    private List<AssignmentActivityDetailsModel> listFarmerNames;
    private LayoutInflater mInflater;
    private List<AssignmentActivityDetailsModel> mOriginalNames;
    private int villageId;
    private String searchString = "";
    private int lastPosition = -1;

    public FarmerSelectionRecyclerAdapter(Context context, List<AssignmentActivityDetailsModel> list, int i) {
        this.context = context;
        this.villageId = i;
        this.listFarmerNames = list;
        this.mOriginalNames = list;
        this.mInflater = LayoutInflater.from(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public SelectionListViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.template_farmer_names, viewGroup, false);
        this.lastPosition = i;
        return new SelectionListViewHolder(inflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(SelectionListViewHolder selectionListViewHolder, int i) {
        if (this.listFarmerNames.get(i).getPerson1() != null) {
            selectionListViewHolder.tvFarmerName.setText(Search.getString(this.searchString, this.listFarmerNames.get(i).getPerson1()));
        }
        if (this.listFarmerNames.get(i).getActivitySegmentId() == 1 || this.listFarmerNames.get(i).getActivitySegmentId() == 2) {
            selectionListViewHolder.llView.setBackgroundDrawable(this.context.getResources().getDrawable(R.drawable.dw_list_selection_village));
            selectionListViewHolder.tvFarmerNumber.setText(Search.getString(this.searchString, this.listFarmerNames.get(i).getContactNumber()));
        } else {
            selectionListViewHolder.llView.setBackgroundDrawable(this.context.getResources().getDrawable(R.drawable.dw_list_selection));
            selectionListViewHolder.tvFarmerNumber.setText(Search.getString(this.searchString, "NA"));
        }
        if (this.listFarmerNames.get(i).getActivityMasterId() != 0) {
            selectionListViewHolder.tvActivityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getActiviyName(this.listFarmerNames.get(i).getActivityMasterId()).replace(",", " , ")));
        }
        if (this.listFarmerNames.get(i).getServerUpdatedStatus() != null && this.listFarmerNames.get(i).getServerUpdatedStatus().equalsIgnoreCase("false")) {
            selectionListViewHolder.ivSave.setVisibility(0);
        } else {
            selectionListViewHolder.ivSave.setVisibility(8);
        }
        selectionListViewHolder.llView.setTag(Integer.valueOf(i));
        selectionListViewHolder.llView.setOnClickListener(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.listFarmerNames.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.FarmerSelectionRecyclerAdapter.1
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                FarmerSelectionRecyclerAdapter.this.listFarmerNames = (ArrayList) filterResults.values;
                FarmerSelectionRecyclerAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (FarmerSelectionRecyclerAdapter.this.listFarmerNames == null || FarmerSelectionRecyclerAdapter.this.listFarmerNames.size() != FarmerSelectionRecyclerAdapter.this.mOriginalNames.size()) {
                    FarmerSelectionRecyclerAdapter farmerSelectionRecyclerAdapter = FarmerSelectionRecyclerAdapter.this;
                    farmerSelectionRecyclerAdapter.listFarmerNames = farmerSelectionRecyclerAdapter.mOriginalNames;
                }
                if (charSequence == null || charSequence.length() == 0) {
                    filterResults.count = FarmerSelectionRecyclerAdapter.this.listFarmerNames.size();
                    FarmerSelectionRecyclerAdapter.this.searchString = "";
                    filterResults.values = FarmerSelectionRecyclerAdapter.this.listFarmerNames;
                } else {
                    String lowerCase = charSequence.toString().toLowerCase();
                    for (int i = 0; i < FarmerSelectionRecyclerAdapter.this.listFarmerNames.size(); i++) {
                        FarmerSelectionRecyclerAdapter.this.searchString = lowerCase.toString();
                        AssignmentActivityDetailsModel assignmentActivityDetailsModel = (AssignmentActivityDetailsModel) FarmerSelectionRecyclerAdapter.this.listFarmerNames.get(i);
                        if (assignmentActivityDetailsModel.getPerson1().toLowerCase().contains(lowerCase.toString())) {
                            arrayList.add(assignmentActivityDetailsModel);
                        } else if (assignmentActivityDetailsModel.getContactNumber().toString().contains(lowerCase.toString())) {
                            arrayList.add(assignmentActivityDetailsModel);
                        } else if (GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId()).toLowerCase().contains(lowerCase.toString())) {
                            arrayList.add(assignmentActivityDetailsModel);
                        }
                    }
                    filterResults.count = arrayList.size();
                    filterResults.values = arrayList;
                }
                return filterResults;
            }
        };
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (view.getId() != R.id.ll_view_template_farmer_names) {
            return;
        }
        if (this.listFarmerNames.get(intValue).getActivitySegmentId() == 1 || this.listFarmerNames.get(intValue).getActivitySegmentId() == 2) {
            Intent intent = new Intent(this.context, (Class<?>) FarmerFormActivity.class);
            intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.listFarmerNames.get(intValue).getActivitySegmentValue());
            intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), this.villageId);
            intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.listFarmerNames.get(intValue).getActivityMasterId());
            intent.putExtra("SEGMENTID", this.listFarmerNames.get(intValue).getActivitySegmentId());
            intent.putExtra("ACTIVITYNAME", GetDataFromDB.getInstance().getActiviyName(this.listFarmerNames.get(intValue).getActivityMasterId()));
            intent.putExtra("AssignmentId", this.listFarmerNames.get(intValue).getActivityAssignmentId());
            intent.addFlags(67108864);
            this.context.startActivity(intent.addFlags(131072).addFlags(67108864));
            return;
        }
        Intent intent2 = new Intent(this.context, (Class<?>) MBAActivity.class);
        intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.listFarmerNames.get(intValue).getActivitySegmentValue());
        intent2.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), this.villageId);
        intent2.addFlags(67108864);
        this.context.startActivity(intent2.addFlags(131072).addFlags(67108864));
    }

    public static class SelectionListViewHolder extends RecyclerView.ViewHolder {
        protected CardView cardview;
        protected String id;
        protected ImageView ivSave;
        protected LinearLayout llView;
        protected TextView tvActivityAssigned;
        protected TextView tvFarmerName;
        protected TextView tvFarmerNumber;

        public SelectionListViewHolder(View view) {
            super(view);
            this.cardview = (CardView) view.findViewById(R.id.cardViewSegmentTypeName);
            this.ivSave = (ImageView) view.findViewById(R.id.iv_status_farmer_names);
            this.llView = (LinearLayout) view.findViewById(R.id.ll_view_template_farmer_names);
            this.tvFarmerName = (TextView) view.findViewById(R.id.tv_farmer_name_template_farmer_names);
            this.tvFarmerNumber = (TextView) view.findViewById(R.id.tv_phone_number_template_farmer_names);
            this.tvActivityAssigned = (TextView) view.findViewById(R.id.tv_activity_assigned);
        }
    }
}
