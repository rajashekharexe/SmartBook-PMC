package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.model.BrandSuggesionsModel;
import com.conceptglobal.pmc.model.SuggesionsModel;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.List;

/* loaded from: classes.dex */
public class DosageSuggesionsListAdapter extends RecyclerView.Adapter<ViewHolder> {
    List<BrandSuggesionsModel> data;
    private int deviceHeight;
    Context mContext;
    private LayoutInflater mInflater;

    public DosageSuggesionsListAdapter(Context context, List<BrandSuggesionsModel> list) {
        this.mContext = context;
        this.data = list;
        new SuggesionsModel();
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(this.mInflater.inflate(R.layout.drand_suggesions_list_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        BrandSuggesionsModel brandSuggesionsModel = this.data.get(i);
        if (i == 0) {
            viewHolder.tvAttrName.setTextSize(14.0f);
            viewHolder.tvAttrValue.setTextSize(14.0f);
            viewHolder.tvAttrName.setTextColor(this.mContext.getResources().getColor(R.color.white));
            viewHolder.tvAttrName.setBackgroundResource(R.drawable.edit_bg_table_desable_cell);
            viewHolder.tvAttrValue.setTextColor(this.mContext.getResources().getColor(R.color.white));
            viewHolder.tvAttrValue.setBackgroundResource(R.drawable.edit_bg_table_desable_cell);
            viewHolder.tvAttrName2.setTextSize(14.0f);
            viewHolder.tvAttrValue2.setTextSize(14.0f);
            viewHolder.tvAttrName2.setTextColor(this.mContext.getResources().getColor(R.color.white));
            viewHolder.tvAttrName2.setBackgroundResource(R.drawable.edit_bg_table_desable_cell);
            viewHolder.tvAttrValue2.setTextColor(this.mContext.getResources().getColor(R.color.white));
            viewHolder.tvAttrValue2.setBackgroundResource(R.drawable.edit_bg_table_desable_cell);
        }
        viewHolder.tvAttrName.setText(brandSuggesionsModel.getAttributeName());
        viewHolder.tvAttrValue.setText(brandSuggesionsModel.getAttributeValue());
        viewHolder.tvAttrName2.setText(brandSuggesionsModel.getAttributeName2());
        viewHolder.tvAttrValue2.setText(brandSuggesionsModel.getAttributeValue2());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.data.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView tvAttrName;
        TextView tvAttrName2;
        TextView tvAttrValue;
        TextView tvAttrValue2;

        public ViewHolder(View view) {
            super(view);
            this.tvAttrName = (TextView) view.findViewById(R.id.tvAttrName);
            this.tvAttrValue = (TextView) view.findViewById(R.id.tvAttrValue);
            this.tvAttrName2 = (TextView) view.findViewById(R.id.tvAttrName2);
            this.tvAttrValue2 = (TextView) view.findViewById(R.id.tvAttrValue2);
        }
    }
}
