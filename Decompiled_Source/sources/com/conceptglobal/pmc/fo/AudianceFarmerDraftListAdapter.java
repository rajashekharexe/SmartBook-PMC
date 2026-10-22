package com.conceptglobal.pmc.fo;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.ifastscroll.SectionTitleProvider;
import com.conceptglobal.pmc.model.DashboardListModel;
import com.conceptglobal.pmc.textdrawable.ColorGenerator;
import com.conceptglobal.pmc.textdrawable.TextDrawable;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.StringUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class AudianceFarmerDraftListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements Filterable, SectionTitleProvider, CompoundButton.OnCheckedChangeListener {
    private static final String TAG = "AFDraftListAdapter";
    private static final int VIEWTYPE_ITEM = 1;
    private static final int VIEWTYPE_LOADER = 2;
    private final Context context;
    private String draftStatus;
    private List<DashboardListModel> filterDraftListOriginalData;
    private String from;
    private String isFrom;
    private boolean isFromSelfAssignment;
    List<String> model;
    private List<DashboardListModel> originalDraftList;
    private int segmentId;
    protected boolean showLoader;
    private String strVal;
    private IUpdateFarmersCount updateFarmersCount;
    String value;
    private String searchString = "";
    private int lastPosition = -1;
    private ColorGenerator mColorGenerator = ColorGenerator.MATERIAL;
    private HashMap<String, DashboardListModel> selectedFarmers = new HashMap<>();
    private TextDrawable.IBuilder mDrawableBuilder = TextDrawable.builder().round();

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
    }

    public AudianceFarmerDraftListAdapter(Context context, List<DashboardListModel> list, String str, String str2, String str3, int i, boolean z, IUpdateFarmersCount iUpdateFarmersCount) {
        this.filterDraftListOriginalData = new ArrayList();
        this.context = context;
        this.originalDraftList = list;
        this.filterDraftListOriginalData = list;
        this.from = str;
        this.draftStatus = str2;
        this.isFrom = str3;
        this.segmentId = i;
        this.isFromSelfAssignment = z;
        this.updateFarmersCount = iUpdateFarmersCount;
    }

    public HashMap<String, DashboardListModel> getSelectedFarmerData() {
        return this.selectedFarmers;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<DashboardListModel> list = this.filterDraftListOriginalData;
        if (list == null || list.size() == 0) {
            return 0;
        }
        return this.filterDraftListOriginalData.size() + 1;
    }

    public String getItem(int i) {
        return this.filterDraftListOriginalData.get(i).getData().get(0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return (i == 0 || i != getItemCount() - 1) ? 1 : 2;
    }

    public void showLoading(boolean z) {
        this.showLoader = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
        if (viewHolder instanceof LoaderViewHolder) {
            LoaderViewHolder loaderViewHolder = (LoaderViewHolder) viewHolder;
            if (this.showLoader) {
                loaderViewHolder.mProgressBar.setVisibility(0);
                return;
            } else {
                loaderViewHolder.mProgressBar.setVisibility(8);
                return;
            }
        }
        DraftListViewHolder draftListViewHolder = (DraftListViewHolder) viewHolder;
        DashboardListModel dashboardListModel = this.filterDraftListOriginalData.get(i);
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        ArrayList arrayList = (ArrayList) dashboardListModel.getData();
        if (arrayList.get(0) != null && ((String) arrayList.get(0)).trim().length() > 0) {
            draftListViewHolder.profile_image.setImageDrawable(this.mDrawableBuilder.build(String.valueOf(((String) arrayList.get(0)).charAt(0)).toUpperCase(Locale.getDefault()), this.mColorGenerator.getRandomColor()));
        } else {
            draftListViewHolder.profile_image.setImageDrawable(this.context.getResources().getDrawable(R.drawable.ic_user_pic));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            String str = (String) arrayList.get(i2);
            this.strVal = str;
            if (str != null && str.trim().length() > 0) {
                if (i2 == 0 || i2 == 2) {
                    sb2.append(this.strVal.toUpperCase());
                    sb2.append("<br>");
                } else {
                    sb.append(this.strVal);
                    sb.append("<br>");
                }
                arrayList2.addAll(StringUtils.getNumbersFromString(this.strVal, 5));
            }
        }
        if (this.isFrom.equalsIgnoreCase("DRAFT") || (this.isFrom.equalsIgnoreCase("Sent") && dashboardListModel.getUpdatedDate() != null && dashboardListModel.getUpdatedDate().length() > 0)) {
            sb.append("Draft since \"" + UtilDeclarations.getNoOfDaysDiff(dashboardListModel.getUpdatedDate()) + "\" days");
        }
        try {
            sb2.delete(sb2.length() - 4, sb2.length());
            sb.delete(sb.length() - 4, sb.length());
        } catch (Exception unused) {
        }
        draftListViewHolder.profTextView.setText(Html.fromHtml(sb2.toString()));
        draftListViewHolder.profTextView2.setText(Html.fromHtml(sb.toString()));
        draftListViewHolder.id = this.filterDraftListOriginalData.get(i).getDraftId();
        draftListViewHolder.cbAudianceFarmerSelect.setOnCheckedChangeListener(null);
        if (this.selectedFarmers.containsKey(dashboardListModel.getDraftId())) {
            draftListViewHolder.cbAudianceFarmerSelect.setChecked(true);
        } else {
            draftListViewHolder.cbAudianceFarmerSelect.setChecked(false);
        }
        draftListViewHolder.cbAudianceFarmerSelect.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerDraftListAdapter.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    AudianceFarmerDraftListAdapter.this.selectedFarmers.put(((DashboardListModel) AudianceFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getDraftId(), (DashboardListModel) AudianceFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i));
                } else {
                    AudianceFarmerDraftListAdapter.this.selectedFarmers.remove(((DashboardListModel) AudianceFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getDraftId());
                }
                AudianceFarmerDraftListAdapter.this.updateFarmersCount.setDisplay(AudianceFarmerDraftListAdapter.this.selectedFarmers.size());
            }
        });
        draftListViewHolder.cardview.setTag(draftListViewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 2) {
            return new LoaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_footer, viewGroup, false));
        }
        if (i == 1) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.audiance_draft_list_row, viewGroup, false);
            this.lastPosition = i;
            return new DraftListViewHolder(inflate);
        }
        throw new IllegalArgumentException("Invalid ViewType: " + i);
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.fo.AudianceFarmerDraftListAdapter.2
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                AudianceFarmerDraftListAdapter.this.filterDraftListOriginalData = (ArrayList) filterResults.values;
                AudianceFarmerDraftListAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (charSequence == null || charSequence.length() == 0) {
                    filterResults.count = AudianceFarmerDraftListAdapter.this.originalDraftList.size();
                    AudianceFarmerDraftListAdapter.this.searchString = "";
                    filterResults.values = AudianceFarmerDraftListAdapter.this.originalDraftList;
                } else {
                    if (AudianceFarmerDraftListAdapter.this.originalDraftList.size() > 0) {
                        AudianceFarmerDraftListAdapter.this.searchString = charSequence.toString().toLowerCase(Locale.getDefault());
                        for (int i = 0; i < AudianceFarmerDraftListAdapter.this.originalDraftList.size(); i++) {
                            DashboardListModel dashboardListModel = (DashboardListModel) AudianceFarmerDraftListAdapter.this.originalDraftList.get(i);
                            AudianceFarmerDraftListAdapter.this.model = dashboardListModel.getData();
                            boolean z = false;
                            for (int i2 = 0; i2 < AudianceFarmerDraftListAdapter.this.model.size(); i2++) {
                                String str = AudianceFarmerDraftListAdapter.this.model.get(i2);
                                if (str != null && str.toLowerCase(Locale.getDefault()).contains(AudianceFarmerDraftListAdapter.this.searchString)) {
                                    z = true;
                                }
                            }
                            if (z) {
                                arrayList.add(dashboardListModel);
                            }
                        }
                    }
                    filterResults.count = arrayList.size();
                    filterResults.values = arrayList;
                }
                return filterResults;
            }
        };
    }

    @Override // com.conceptglobal.ifastscroll.SectionTitleProvider
    public String getSectionTitle(int i) {
        try {
            ArrayList arrayList = (ArrayList) this.filterDraftListOriginalData.get(i).getData();
            if (arrayList.get(0) == null || ((String) arrayList.get(0)).trim().length() <= 0) {
                return null;
            }
            return String.valueOf(((String) arrayList.get(0)).charAt(0)).toUpperCase(Locale.getDefault());
        } catch (Exception e) {
            PLog.e("AddFarmerDraftListAdapter", e);
            e.printStackTrace();
            return null;
        }
    }

    public static class DraftListViewHolder extends RecyclerView.ViewHolder {
        protected CardView cardview;
        protected CheckBox cbAudianceFarmerSelect;
        protected String id;
        protected LinearLayout ll;
        protected TextView profTextView;
        protected TextView profTextView2;
        protected ImageView profile_image;

        public DraftListViewHolder(View view) {
            super(view);
            this.cardview = (CardView) view.findViewById(R.id.cardview);
            this.ll = (LinearLayout) view.findViewById(R.id.addingdynamicdrafts);
            this.profile_image = (ImageView) view.findViewById(R.id.profile_image);
            this.profTextView = (TextView) view.findViewById(R.id.tv_textview_display);
            this.profTextView2 = (TextView) view.findViewById(R.id.tv_textview_display2);
            this.cbAudianceFarmerSelect = (CheckBox) view.findViewById(R.id.cbSelectFarmer);
        }
    }

    public class LoaderViewHolder extends RecyclerView.ViewHolder {
        ProgressBar mProgressBar;

        public LoaderViewHolder(View view) {
            super(view);
            this.mProgressBar = (ProgressBar) view.findViewById(R.id.progressbar);
        }
    }
}
