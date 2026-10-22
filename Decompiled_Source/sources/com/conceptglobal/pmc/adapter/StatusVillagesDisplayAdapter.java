package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import com.conceptglobal.pmc.model.StatusVillagesActivityModel;
import com.conceptglobal.pmc.utils.Search;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class StatusVillagesDisplayAdapter extends BaseAdapter implements Filterable {
    private Context context;
    private List<StatusVillagesActivityModel> listActivities;
    private LayoutInflater mInflater;
    private List<StatusVillagesActivityModel> mOriginalNames;
    private ViewHolder holder = new ViewHolder();
    private String searchString = "";

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public StatusVillagesDisplayAdapter(Context context, List<StatusVillagesActivityModel> list) {
        this.context = context;
        this.listActivities = list;
        this.mInflater = LayoutInflater.from(context);
    }

    private class ViewHolder {
        private TextView tvactivityname;
        private TextView tvapprovepending;
        private TextView tvfopending;
        private TextView tvvillagename;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.listActivities.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.statusvillagelistadapter, viewGroup, false);
            this.holder = new ViewHolder();
            init(view, i);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        this.holder.tvvillagename.setText(Search.getString(this.searchString, this.listActivities.get(i).getVillagename() + "-" + this.listActivities.get(i).getStatename() + "-" + this.listActivities.get(i).getDistrictname() + "-" + this.listActivities.get(i).getTalukaname()));
        this.holder.tvactivityname.setText(Search.getString(this.searchString, this.listActivities.get(i).getActivityname()));
        this.holder.tvfopending.setText(Search.getString(this.searchString, Integer.toString(this.listActivities.get(i).getFopendingcount())));
        this.holder.tvapprovepending.setText(Search.getString(this.searchString, Integer.toString(this.listActivities.get(i).getApprovedcount())));
        return view;
    }

    private void init(View view, int i) {
        this.holder.tvvillagename = (TextView) view.findViewById(R.id.villmaarketsdvnames);
        this.holder.tvactivityname = (TextView) view.findViewById(R.id.villactivityname);
        this.holder.tvfopending = (TextView) view.findViewById(R.id.villfopending);
        this.holder.tvapprovepending = (TextView) view.findViewById(R.id.villapprovepending);
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.StatusVillagesDisplayAdapter.1
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                StatusVillagesDisplayAdapter.this.listActivities = (ArrayList) filterResults.values;
                StatusVillagesDisplayAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (StatusVillagesDisplayAdapter.this.mOriginalNames == null) {
                    StatusVillagesDisplayAdapter.this.mOriginalNames = new ArrayList(StatusVillagesDisplayAdapter.this.listActivities);
                }
                if (charSequence == null || charSequence.length() == 0) {
                    filterResults.count = StatusVillagesDisplayAdapter.this.mOriginalNames.size();
                    StatusVillagesDisplayAdapter.this.searchString = "";
                    filterResults.values = StatusVillagesDisplayAdapter.this.mOriginalNames;
                } else {
                    String lowerCase = charSequence.toString().toLowerCase();
                    for (int i = 0; i < StatusVillagesDisplayAdapter.this.mOriginalNames.size(); i++) {
                        StatusVillagesDisplayAdapter.this.searchString = lowerCase.toString();
                        StatusVillagesActivityModel statusVillagesActivityModel = (StatusVillagesActivityModel) StatusVillagesDisplayAdapter.this.mOriginalNames.get(i);
                        if (statusVillagesActivityModel.getMarketname().toLowerCase().contains(lowerCase.toString())) {
                            arrayList.add(statusVillagesActivityModel);
                        } else if (statusVillagesActivityModel.getActivityname().toString().contains(lowerCase.toString())) {
                            arrayList.add(statusVillagesActivityModel);
                        } else if (Integer.toString(statusVillagesActivityModel.getFopendingcount()).contains(lowerCase.toString())) {
                            arrayList.add(statusVillagesActivityModel);
                        } else if (Integer.toString(statusVillagesActivityModel.getApprovedcount()).contains(lowerCase.toString())) {
                            arrayList.add(statusVillagesActivityModel);
                        }
                    }
                    filterResults.count = arrayList.size();
                    filterResults.values = arrayList;
                }
                return filterResults;
            }
        };
    }
}
