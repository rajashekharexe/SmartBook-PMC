package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
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
public class FarmerSelctionAdapter extends BaseAdapter implements View.OnClickListener, Filterable {
    private Context context;
    private List<AssignmentActivityDetailsModel> listFarmerNames;
    private LayoutInflater mInflater;
    private List<AssignmentActivityDetailsModel> mOriginalNames;
    private int villageId;
    private ViewHolder holder = new ViewHolder();
    private String searchString = "";

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public FarmerSelctionAdapter(Context context, List<AssignmentActivityDetailsModel> list, int i) {
        this.context = context;
        this.villageId = i;
        this.listFarmerNames = list;
        this.mOriginalNames = list;
        this.mInflater = LayoutInflater.from(context);
    }

    private class ViewHolder {
        private ImageView ivSave;
        private LinearLayout llView;
        private TextView tvActvityAssigned;
        private TextView tvFarmerName;
        private TextView tvFarmerNumber;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.template_farmer_names, viewGroup, false);
            this.holder = new ViewHolder();
            init(view, i);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        if (this.listFarmerNames.get(i).getPerson1() != null) {
            this.holder.tvFarmerName.setText(Search.getString(this.searchString, this.listFarmerNames.get(i).getPerson1()));
        }
        if (this.listFarmerNames.get(i).getActivitySegmentId() == 1 || this.listFarmerNames.get(i).getActivitySegmentId() == 2) {
            this.holder.llView.setBackgroundDrawable(this.context.getResources().getDrawable(R.drawable.dw_list_selection_village));
            this.holder.tvFarmerNumber.setText(Search.getString(this.searchString, this.listFarmerNames.get(i).getContactNumber()));
        } else {
            this.holder.llView.setBackgroundDrawable(this.context.getResources().getDrawable(R.drawable.dw_list_selection));
            this.holder.tvFarmerNumber.setText(Search.getString(this.searchString, "NA"));
        }
        if (this.listFarmerNames.get(i).getActivityMasterId() != 0) {
            this.holder.tvActvityAssigned.setText(Search.getString(this.searchString, GetDataFromDB.getInstance().getActiviyName(this.listFarmerNames.get(i).getActivityMasterId()).replace(",", " , ")));
        }
        if (this.listFarmerNames.get(i).getServerUpdatedStatus() == null || !this.listFarmerNames.get(i).getServerUpdatedStatus().equalsIgnoreCase("false")) {
            this.holder.ivSave.setVisibility(8);
        } else {
            this.holder.ivSave.setVisibility(0);
        }
        view.findViewById(R.id.ll_view_template_farmer_names).setTag(Integer.valueOf(i));
        this.holder.llView.setOnClickListener(this);
        return view;
    }

    private void init(View view, int i) {
        this.holder.ivSave = (ImageView) view.findViewById(R.id.iv_status_farmer_names);
        this.holder.llView = (LinearLayout) view.findViewById(R.id.ll_view_template_farmer_names);
        this.holder.tvFarmerName = (TextView) view.findViewById(R.id.tv_farmer_name_template_farmer_names);
        this.holder.tvFarmerNumber = (TextView) view.findViewById(R.id.tv_phone_number_template_farmer_names);
        this.holder.tvActvityAssigned = (TextView) view.findViewById(R.id.tv_activity_assigned);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.listFarmerNames.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
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

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.FarmerSelctionAdapter.1
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                FarmerSelctionAdapter.this.listFarmerNames = (ArrayList) filterResults.values;
                FarmerSelctionAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (FarmerSelctionAdapter.this.listFarmerNames == null || FarmerSelctionAdapter.this.listFarmerNames.size() != FarmerSelctionAdapter.this.mOriginalNames.size()) {
                    FarmerSelctionAdapter farmerSelctionAdapter = FarmerSelctionAdapter.this;
                    farmerSelctionAdapter.listFarmerNames = farmerSelctionAdapter.mOriginalNames;
                }
                if (charSequence == null || charSequence.length() == 0) {
                    filterResults.count = FarmerSelctionAdapter.this.listFarmerNames.size();
                    FarmerSelctionAdapter.this.searchString = "";
                    filterResults.values = FarmerSelctionAdapter.this.listFarmerNames;
                } else {
                    String lowerCase = charSequence.toString().toLowerCase();
                    for (int i = 0; i < FarmerSelctionAdapter.this.listFarmerNames.size(); i++) {
                        FarmerSelctionAdapter.this.searchString = lowerCase.toString();
                        AssignmentActivityDetailsModel assignmentActivityDetailsModel = (AssignmentActivityDetailsModel) FarmerSelctionAdapter.this.listFarmerNames.get(i);
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

    public void swapItems(List<AssignmentActivityDetailsModel> list) {
        this.listFarmerNames = list;
        this.mOriginalNames = list;
    }
}
