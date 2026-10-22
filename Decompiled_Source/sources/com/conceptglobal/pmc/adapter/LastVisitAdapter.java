package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.LastVisitModel;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class LastVisitAdapter extends BaseAdapter {
    private Context context;
    private LayoutInflater mInflater;
    LinkedHashMap<String, List<LastVisitModel>> maps;
    private ViewHolder holder = new ViewHolder();
    private List<LastVisitModel> lastVisitData = new ArrayList();
    private String activityName = "";
    private List<String> keys = new ArrayList();

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public LastVisitAdapter(Context context, List<LastVisitModel> list, LinkedHashMap<String, List<LastVisitModel>> linkedHashMap) {
        this.context = context;
        this.mInflater = LayoutInflater.from(context);
        this.maps = linkedHashMap;
        Iterator<Map.Entry<String, List<LastVisitModel>>> it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            this.keys.add(it.next().getKey());
        }
    }

    private class ViewHolder {
        private TextView etVisitDiscription;
        private TextView tvActivity;
        private TextView tvBrand;
        private TextView tvCrop;
        private TextView tvDate;
        private TextView tvTitleActivity;
        private TextView tvTitleBrand;
        private TextView tvTitleCrop;
        private TextView tvTitleDate;
        private TextView tvTitleDiscription;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.last_visit, viewGroup, false);
            this.holder = new ViewHolder();
            init(view, i);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        this.lastVisitData = this.maps.get(this.keys.get(i));
        String str = "";
        String str2 = str;
        for (int i2 = 0; i2 < this.lastVisitData.size(); i2++) {
            if (this.lastVisitData.get(i2).getAttributeName() != null && !this.lastVisitData.get(i2).getAttributeName().equalsIgnoreCase("null") && !this.lastVisitData.get(i2).getAttributeName().equalsIgnoreCase("")) {
                str = str + this.lastVisitData.get(i2).getAttributeName() + IOUtils.LINE_SEPARATOR_UNIX;
            }
            if (this.lastVisitData.get(i2).getAttributeValue() != null && !this.lastVisitData.get(i2).getAttributeValue().equalsIgnoreCase("null") && !this.lastVisitData.get(i2).getAttributeValue().equalsIgnoreCase("")) {
                str2 = str2 + this.lastVisitData.get(i2).getAttributeValue() + IOUtils.LINE_SEPARATOR_UNIX;
            }
            if (i2 == 0) {
                this.holder.tvTitleDate.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_lastVisitDataText()));
                this.holder.tvTitleActivity.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_activityLastVisitText()));
                this.holder.tvTitleDiscription.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_descriptioLastVisitText()));
                if (this.lastVisitData.get(i2).getLastVisitDate() != null && !this.lastVisitData.get(i2).getLastVisitDate().equalsIgnoreCase("null")) {
                    this.holder.tvDate.setText(this.lastVisitData.get(i2).getLastVisitDate());
                }
                if (this.lastVisitData.get(i2).getActivityName() != null && !this.lastVisitData.get(i2).getActivityName().equalsIgnoreCase("null")) {
                    this.holder.tvActivity.setText(this.lastVisitData.get(i2).getActivityName());
                }
                if (this.lastVisitData.get(i2).getVisitDescription() != null && !this.lastVisitData.get(i2).getVisitDescription().equalsIgnoreCase("null")) {
                    this.holder.etVisitDiscription.setText(this.lastVisitData.get(i2).getVisitDescription());
                }
            }
            if (i2 == this.lastVisitData.size() - 1) {
                this.holder.tvTitleBrand.setText(str);
                this.holder.tvBrand.setText(str2);
            }
        }
        return view;
    }

    private void init(View view, int i) {
        this.holder.tvTitleDate = (TextView) view.findViewById(R.id.tv_title_visit_date_last_visit);
        this.holder.tvDate = (TextView) view.findViewById(R.id.tv_visit_date_last_visit);
        this.holder.tvTitleActivity = (TextView) view.findViewById(R.id.tv_title_activity_last_visit);
        this.holder.tvActivity = (TextView) view.findViewById(R.id.tv_activity_last_visit);
        this.holder.tvTitleCrop = (TextView) view.findViewById(R.id.tv_title_crop_last_visit);
        this.holder.tvCrop = (TextView) view.findViewById(R.id.tv_crop_last_visit);
        this.holder.tvTitleBrand = (TextView) view.findViewById(R.id.tv_title_brand_last_visit);
        this.holder.tvBrand = (TextView) view.findViewById(R.id.tv_brand_last_visit);
        this.holder.tvTitleDiscription = (TextView) view.findViewById(R.id.tv_title_discription_last_visit);
        this.holder.etVisitDiscription = (TextView) view.findViewById(R.id.et_discription_last_visit);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.keys.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.maps.get(this.keys.get(i));
    }
}
