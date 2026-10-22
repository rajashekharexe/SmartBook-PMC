package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TextView;
import com.conceptglobal.pmc.fo.FarmerSelectionActivity;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.Itext;
import com.conceptglobal.pmc.utils.Search;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class VillageDisplayAdapter extends BaseAdapter implements View.OnClickListener, Filterable {
    private Context context;
    private List<HashMap<String, String>> listVillageData;
    private LayoutInflater mInflater;
    private List<HashMap<String, String>> mOriginalNames;
    private ViewHolder holder = new ViewHolder();
    private String searchString = "";

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public VillageDisplayAdapter(Context context, List<HashMap<String, String>> list) {
        new ArrayList();
        this.context = context;
        this.listVillageData = list;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    private class ViewHolder {
        private LinearLayout llView;
        private TableLayout tLayout;
        private TextView tvVillageName;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate = this.mInflater.inflate(R.layout.template_village_display, (ViewGroup) null);
        init(inflate, i);
        this.holder.tvVillageName.setText(Search.getString(this.searchString, this.listVillageData.get(i).get("VillageName").toString()));
        if (this.listVillageData.get(i).size() > 2) {
            for (Map.Entry<String, String> entry : this.listVillageData.get(i).entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (!key.equalsIgnoreCase("VillageName") && !key.equalsIgnoreCase("villageId")) {
                    Itext itext = new Itext(this.context);
                    Itext itext2 = new Itext(this.context);
                    LinearLayout linearLayout = new LinearLayout(this.context);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 0.2f);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2, 0.8f);
                    linearLayout.setOrientation(0);
                    itext.setText(Search.getString(this.searchString, key));
                    itext2.setText("  " + value.toString());
                    linearLayout.addView(itext, layoutParams);
                    linearLayout.addView(itext2, layoutParams2);
                    this.holder.tLayout.addView(linearLayout);
                }
            }
        }
        return inflate;
    }

    private void init(View view, int i) {
        this.holder.tvVillageName = (TextView) view.findViewById(R.id.tv_name_temp_village_display);
        this.holder.tLayout = (TableLayout) view.findViewById(R.id.tl_temp_village_display);
        this.holder.llView = (LinearLayout) view.findViewById(R.id.ll_temp_village_display);
        view.findViewById(R.id.ll_temp_village_display).setTag(Integer.valueOf(i));
        this.holder.llView.setOnClickListener(this);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.listVillageData.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (view.getId() != R.id.ll_temp_village_display) {
            return;
        }
        Intent intent = new Intent(this.context, (Class<?>) FarmerSelectionActivity.class);
        intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGENAME(), this.listVillageData.get(intValue).get("VillageName").toString());
        intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), Integer.parseInt(this.listVillageData.get(intValue).get("villageId").toString()));
        intent.addFlags(335544320);
        this.context.startActivity(intent.addFlags(131072).addFlags(67108864));
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.VillageDisplayAdapter.1
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                VillageDisplayAdapter.this.listVillageData = (ArrayList) filterResults.values;
                VillageDisplayAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (VillageDisplayAdapter.this.mOriginalNames == null) {
                    VillageDisplayAdapter.this.mOriginalNames = new ArrayList(VillageDisplayAdapter.this.listVillageData);
                }
                if (charSequence == null || charSequence.length() == 0) {
                    filterResults.count = VillageDisplayAdapter.this.mOriginalNames.size();
                    VillageDisplayAdapter.this.searchString = "";
                    filterResults.values = VillageDisplayAdapter.this.mOriginalNames;
                } else {
                    String lowerCase = charSequence.toString().toLowerCase();
                    for (int i = 0; i < VillageDisplayAdapter.this.mOriginalNames.size(); i++) {
                        VillageDisplayAdapter.this.searchString = lowerCase.toString();
                        HashMap hashMap = (HashMap) VillageDisplayAdapter.this.mOriginalNames.get(i);
                        if (((String) hashMap.get("VillageName")).toLowerCase().contains(lowerCase.toString())) {
                            arrayList.add(hashMap);
                        } else if (hashMap.keySet().toString().toLowerCase().contains(lowerCase.toString())) {
                            arrayList.add(hashMap);
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
