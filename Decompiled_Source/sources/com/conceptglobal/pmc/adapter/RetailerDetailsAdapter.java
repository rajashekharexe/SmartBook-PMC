package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import com.conceptglobal.pmc.model.PmcRetailersModel;
import com.conceptglobal.pmc.utils.Search;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class RetailerDetailsAdapter extends BaseAdapter implements Filterable {
    public static List<PmcRetailersModel> mDuplicate = new ArrayList();
    public static List<PmcRetailersModel> mOriginalNames;
    private LayoutInflater mInflater;
    private List<PmcRetailersModel> retailerNamesList;
    private ViewHolder holder = new ViewHolder();
    private String searchString = "";

    public RetailerDetailsAdapter(Context context, List<PmcRetailersModel> list) {
        new ArrayList();
        this.retailerNamesList = list;
        mDuplicate = new ArrayList();
        this.mInflater = LayoutInflater.from(context);
    }

    private class ViewHolder {
        private TextView tvVillageName;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.template_retailers_display, viewGroup, false);
            this.holder = new ViewHolder();
            init(view, i);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        this.holder.tvVillageName.setText(Search.getString(this.searchString, this.retailerNamesList.get(i).getContactName()));
        return view;
    }

    private void init(View view, int i) {
        this.holder.tvVillageName = (TextView) view.findViewById(R.id.tv_textview_display);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.retailerNamesList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.retailerNamesList.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return this.retailerNamesList.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.RetailerDetailsAdapter.1
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                RetailerDetailsAdapter.this.retailerNamesList = (ArrayList) filterResults.values;
                RetailerDetailsAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (RetailerDetailsAdapter.mOriginalNames == null) {
                    RetailerDetailsAdapter.mOriginalNames = new ArrayList(RetailerDetailsAdapter.this.retailerNamesList);
                }
                if (charSequence == null || charSequence.length() == 0) {
                    filterResults.count = RetailerDetailsAdapter.mOriginalNames.size();
                    RetailerDetailsAdapter.this.searchString = "";
                    filterResults.values = RetailerDetailsAdapter.mOriginalNames;
                } else {
                    String lowerCase = charSequence.toString().toLowerCase(Locale.getDefault());
                    for (int i = 0; i < RetailerDetailsAdapter.mOriginalNames.size(); i++) {
                        RetailerDetailsAdapter.this.searchString = lowerCase.toString();
                        PmcRetailersModel pmcRetailersModel = RetailerDetailsAdapter.mOriginalNames.get(i);
                        if (pmcRetailersModel.getContactName().toString().toLowerCase(Locale.getDefault()).contains(lowerCase.toString())) {
                            arrayList.add(pmcRetailersModel);
                        }
                    }
                    RetailerDetailsAdapter.mDuplicate = arrayList;
                    filterResults.count = arrayList.size();
                    filterResults.values = arrayList;
                }
                return filterResults;
            }
        };
    }
}
