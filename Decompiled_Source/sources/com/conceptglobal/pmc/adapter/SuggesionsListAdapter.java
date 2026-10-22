package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.model.SuggesionsModel;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.List;

/* loaded from: classes.dex */
public class SuggesionsListAdapter extends RecyclerView.Adapter<ViewHolder> {
    List<SuggesionsModel> data;
    private int deviceHeight;
    Context mContext;
    private LayoutInflater mInflater;

    public SuggesionsListAdapter(Context context, List<SuggesionsModel> list) {
        this.mContext = context;
        this.data = list;
        SuggesionsModel suggesionsModel = new SuggesionsModel();
        suggesionsModel.setAttributeName("ATTRIBUTE NAME");
        suggesionsModel.setAttributeValue("SUGGESTED VALUES");
        list.add(0, suggesionsModel);
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(this.mInflater.inflate(R.layout.suggesions_list_item, (ViewGroup) null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        SuggesionsModel suggesionsModel = this.data.get(i);
        if (i == 0) {
            viewHolder.tvAttrName.setTextSize(14.0f);
            viewHolder.tvAttrValue.setTextSize(14.0f);
            viewHolder.tvAttrName.setTextColor(this.mContext.getResources().getColor(R.color.white));
            viewHolder.tvAttrName.setBackgroundResource(R.drawable.edit_bg_table_desable_cell);
            viewHolder.tvAttrValue.setTextColor(this.mContext.getResources().getColor(R.color.white));
            viewHolder.tvAttrValue.setBackgroundResource(R.drawable.edit_bg_table_desable_cell);
        }
        viewHolder.tvAttrName.setText(suggesionsModel.getAttributeName());
        viewHolder.tvAttrValue.setText(suggesionsModel.getAttributeValue());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.data.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView tvAttrName;
        TextView tvAttrValue;

        public ViewHolder(View view) {
            super(view);
            this.tvAttrName = (TextView) view.findViewById(R.id.tvAttrName);
            this.tvAttrValue = (TextView) view.findViewById(R.id.tvAttrValue);
        }
    }
}
