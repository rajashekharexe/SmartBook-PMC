package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import com.conceptglobal.pmc.model.FieldTypes;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.Search;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class ListSelectionAdapter extends BaseAdapter implements Filterable, View.OnClickListener {
    public static List<FieldTypes> mDuplicate = new ArrayList();
    public static List<FieldTypes> mOriginalNames;
    private List<FieldTypes> arrayList;
    private Context ctx;
    private String farmerID;
    private LayoutInflater inflater;
    boolean isFisFromFeedback;
    private String searchString = "";
    private int segmentId;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public ListSelectionAdapter(Context context, List<FieldTypes> list, String str, int i, boolean z) {
        this.farmerID = "0";
        this.segmentId = 0;
        this.arrayList = list;
        mDuplicate = new ArrayList();
        mOriginalNames = null;
        this.ctx = context;
        this.farmerID = str;
        this.segmentId = i;
        this.isFisFromFeedback = z;
        this.inflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.inflater.inflate(R.layout.inflate_moreselection, (ViewGroup) null);
        }
        ViewHolder viewHolder = new ViewHolder();
        viewHolder.name = (TextView) view.findViewById(R.id.items_more_selections);
        viewHolder.name.setText(Search.getString(this.searchString, this.arrayList.get(i).getName()));
        view.setTag(this.arrayList.get(i));
        view.setOnClickListener(this);
        return view;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<FieldTypes> list = this.arrayList;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.arrayList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.arrayList.get(i).toString();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FieldTypes fieldTypes = (FieldTypes) view.getTag();
        Intent intent = new Intent();
        intent.putExtra(ConstantDeclarations.getInstance().getKEYSELECTION(), new String[]{Integer.toString(fieldTypes.getId()), fieldTypes.getName()});
        intent.putExtra("FarmerId", this.farmerID);
        intent.putExtra("SegmentId", this.segmentId);
        intent.putExtra("isfrom", this.isFisFromFeedback);
        ((Activity) this.ctx).setResult(-1, intent);
        ((Activity) this.ctx).finish();
    }

    public class ViewHolder {
        TextView name;

        public ViewHolder() {
        }
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.ListSelectionAdapter.1
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                ListSelectionAdapter.this.arrayList = (ArrayList) filterResults.values;
                ListSelectionAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (ListSelectionAdapter.mOriginalNames == null) {
                    ListSelectionAdapter.mOriginalNames = new ArrayList(ListSelectionAdapter.this.arrayList);
                }
                if (charSequence == null || charSequence.length() == 0) {
                    filterResults.count = ListSelectionAdapter.mOriginalNames.size();
                    ListSelectionAdapter.this.searchString = "";
                    filterResults.values = ListSelectionAdapter.mOriginalNames;
                } else {
                    String lowerCase = charSequence.toString().toLowerCase(Locale.getDefault());
                    for (int i = 0; i < ListSelectionAdapter.mOriginalNames.size(); i++) {
                        ListSelectionAdapter.this.searchString = lowerCase.toString();
                        if (ListSelectionAdapter.mOriginalNames.get(i).getName().toString().toLowerCase(Locale.getDefault()).contains(lowerCase.toString())) {
                            arrayList.add(ListSelectionAdapter.mOriginalNames.get(i));
                        }
                    }
                    ListSelectionAdapter.mDuplicate = arrayList;
                    filterResults.count = arrayList.size();
                    filterResults.values = arrayList;
                }
                return filterResults;
            }
        };
    }
}
