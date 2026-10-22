package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class VillageDisplayDetailsAdapter extends BaseAdapter {
    private ViewHolder holder = new ViewHolder();
    private List<HashMap<String, String>> list_village_details;
    private LayoutInflater mInflater;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public VillageDisplayDetailsAdapter(Context context, List<HashMap<String, String>> list) {
        new ArrayList();
        this.list_village_details = list;
        this.mInflater = LayoutInflater.from(context);
    }

    private class ViewHolder {
        private TextView tvCount;
        private TextView tvName;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.template_card_key_value, viewGroup, false);
            this.holder = new ViewHolder();
            init(view, i);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        this.holder.tvName.setText(this.list_village_details.get(i).get("activityName").toString());
        this.holder.tvCount.setText(this.list_village_details.get(i).get("activityCount").toString());
        return view;
    }

    private void init(View view, int i) {
        this.holder.tvName = (TextView) view.findViewById(R.id.tv_template_key);
        this.holder.tvCount = (TextView) view.findViewById(R.id.tv_template_value);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.list_village_details.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }
}
