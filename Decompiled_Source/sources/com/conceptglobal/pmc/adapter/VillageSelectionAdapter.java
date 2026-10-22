package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.FarmerSelectionActivity;
import com.conceptglobal.pmc.model.VillageDetails;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class VillageSelectionAdapter extends BaseAdapter implements View.OnClickListener, Filterable {
    private String SVIDs;
    private Activity context;
    private String filteredSegmentType;
    private String from;
    private String isFrom;
    private List<VillageDetails> listVillageNames;
    private LayoutInflater mInflater;
    private List<VillageDetails> mOriginalNames;
    private ViewHolder holder = new ViewHolder();
    private String searchString = "";

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public VillageSelectionAdapter(Activity activity, List<VillageDetails> list, String str, String str2, String str3, String str4) {
        new ArrayList();
        this.context = activity;
        this.listVillageNames = list;
        this.mOriginalNames = list;
        this.mInflater = LayoutInflater.from(activity);
        this.from = str;
        this.filteredSegmentType = str2;
        this.isFrom = str3;
        this.SVIDs = str4;
    }

    private class ViewHolder {
        private LinearLayout llView;
        private TextView tvDistrictName;
        private TextView tvMandalName;
        private TextView tvPd;
        private TextView tvTbv;
        private TextView tvVc;
        private TextView tvVillageName;

        private ViewHolder() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0191 A[Catch: Exception -> 0x026c, TryCatch #0 {Exception -> 0x026c, blocks: (B:5:0x0025, B:8:0x0035, B:10:0x0039, B:13:0x0040, B:15:0x006d, B:16:0x0183, B:18:0x0191, B:19:0x01be, B:23:0x01a8, B:24:0x007e, B:25:0x009b, B:27:0x009f, B:29:0x00a5, B:30:0x013a, B:32:0x014c, B:33:0x015c, B:34:0x00e1), top: B:4:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x01a8 A[Catch: Exception -> 0x026c, TryCatch #0 {Exception -> 0x026c, blocks: (B:5:0x0025, B:8:0x0035, B:10:0x0039, B:13:0x0040, B:15:0x006d, B:16:0x0183, B:18:0x0191, B:19:0x01be, B:23:0x01a8, B:24:0x007e, B:25:0x009b, B:27:0x009f, B:29:0x00a5, B:30:0x013a, B:32:0x014c, B:33:0x015c, B:34:0x00e1), top: B:4:0x0025 }] */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.adapter.VillageSelectionAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    private void init(View view, int i) {
        this.holder.tvVillageName = (TextView) view.findViewById(R.id.tv_village_name_template_village_names);
        this.holder.tvMandalName = (TextView) view.findViewById(R.id.tv_mandal_name_template_village_names);
        this.holder.tvDistrictName = (TextView) view.findViewById(R.id.tv_district_name_template_village_names);
        this.holder.tvTbv = (TextView) view.findViewById(R.id.tv_tbv_template_village_names);
        this.holder.tvTbv.setTypeface(this.holder.tvMandalName.getTypeface(), 1);
        this.holder.tvVc = (TextView) view.findViewById(R.id.tv_vc_template_village_names);
        this.holder.tvPd = (TextView) view.findViewById(R.id.tv_pd_template_village_names);
        this.holder.llView = (LinearLayout) view.findViewById(R.id.ll_view_template_village_names);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.listVillageNames.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (view.getId() != R.id.ll_view_template_village_names) {
            return;
        }
        if (this.listVillageNames.get(intValue).getTbv() != 0) {
            Intent intent = new Intent(this.context, (Class<?>) FarmerSelectionActivity.class);
            intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGENAME(), this.listVillageNames.get(intValue).getVillageName());
            intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), this.listVillageNames.get(intValue).getVillageId());
            intent.putExtra("location1", this.listVillageNames.get(intValue).getVillageName());
            intent.putExtra("location2", this.listVillageNames.get(intValue).getDistrictName());
            intent.putExtra("FROM", this.from);
            intent.putExtra("IsFrom", this.isFrom);
            intent.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), this.listVillageNames.get(intValue).getIsmba());
            intent.putExtra("FilteredCustType", this.filteredSegmentType);
            intent.putExtra("SVIDS", this.SVIDs);
            this.context.startActivity(intent.addFlags(335544320));
            return;
        }
        Crouton.showText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noDataFound()) != null ? GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noDataFound()) : "", Style.ALERT);
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.VillageSelectionAdapter.1
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                VillageSelectionAdapter.this.listVillageNames = (ArrayList) filterResults.values;
                VillageSelectionAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                try {
                    ArrayList arrayList = new ArrayList();
                    if (VillageSelectionAdapter.this.mOriginalNames == null) {
                        VillageSelectionAdapter.this.mOriginalNames = new ArrayList(VillageSelectionAdapter.this.listVillageNames);
                    }
                    if (charSequence != null && charSequence.length() != 0) {
                        String lowerCase = charSequence.toString().toLowerCase();
                        for (int i = 0; i < VillageSelectionAdapter.this.mOriginalNames.size(); i++) {
                            VillageSelectionAdapter.this.searchString = lowerCase.toString();
                            VillageDetails villageDetails = (VillageDetails) VillageSelectionAdapter.this.mOriginalNames.get(i);
                            if (villageDetails.getVillageName().toLowerCase().contains(lowerCase.toString())) {
                                arrayList.add(villageDetails);
                            } else if (villageDetails.getMandalName().toLowerCase().contains(lowerCase.toString())) {
                                arrayList.add(villageDetails);
                            } else if (villageDetails.getDistrictName().toLowerCase().contains(lowerCase.toString())) {
                                arrayList.add(villageDetails);
                            } else if (Integer.toString(villageDetails.getTbv()).toLowerCase().contains(lowerCase.toString())) {
                                arrayList.add(villageDetails);
                            } else if (Integer.toString(villageDetails.getPd()).toLowerCase().contains(lowerCase.toString())) {
                                arrayList.add(villageDetails);
                            } else if (Integer.toString(villageDetails.getVc()).toLowerCase().contains(lowerCase.toString())) {
                                arrayList.add(villageDetails);
                            }
                        }
                        filterResults.count = arrayList.size();
                        filterResults.values = arrayList;
                        return filterResults;
                    }
                    filterResults.count = VillageSelectionAdapter.this.mOriginalNames.size();
                    VillageSelectionAdapter.this.searchString = "";
                    filterResults.values = VillageSelectionAdapter.this.mOriginalNames;
                    return filterResults;
                } catch (Exception e) {
                    PLog.e("VillageSelAdapter", e);
                    filterResults.count = VillageSelectionAdapter.this.mOriginalNames.size();
                    VillageSelectionAdapter.this.searchString = "";
                    filterResults.values = VillageSelectionAdapter.this.mOriginalNames;
                    return filterResults;
                }
            }
        };
    }
}
