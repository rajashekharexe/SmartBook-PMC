package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.ifastscroll.SectionTitleProvider;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.ListSelectionActivity;
import com.conceptglobal.pmc.fo.SAAttributeActivityCopy;
import com.conceptglobal.pmc.model.CustomListDisplayModel;
import com.conceptglobal.pmc.textdrawable.ColorGenerator;
import com.conceptglobal.pmc.textdrawable.TextDrawable;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.Search;
import com.conceptglobal.pmc.utils.StringUtils;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class CustomerListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements View.OnClickListener, Filterable, SectionTitleProvider {
    private static final int GETCUSTOMER = 3;
    private static final int VIEWTYPE_ITEM = 1;
    private static final int VIEWTYPE_LOADER = 2;
    private int activityType;
    private Context context;
    private Dialog d_language;
    private int isFromAssignment;
    private int isFromOrders;
    private int isFromTestimonial;
    private int isFromcomplaint;
    private List<CustomListDisplayModel> listFarmerNames;
    private LayoutInflater mInflater;
    private List<CustomListDisplayModel> mOriginalNames;
    private int segmentId;
    protected boolean showLoader;
    private String strVal;
    private String TAG = "CustomerListAdapter";
    private String textStr = "";
    private String searchString = "";
    private String farmerId = "";
    private int lastPosition = -1;
    private ColorGenerator mColorGenerator = ColorGenerator.MATERIAL;
    private TextDrawable.IBuilder mDrawableBuilder = TextDrawable.builder().round();
    private GetDataFromDB getData = GetDataFromDB.getInstance();

    public CustomerListAdapter(Context context, List<CustomListDisplayModel> list, int i, int i2, int i3, int i4, int i5, int i6) {
        this.context = context;
        this.activityType = i;
        this.listFarmerNames = list;
        this.segmentId = i2;
        this.isFromAssignment = i3;
        this.isFromTestimonial = i6;
        this.isFromOrders = i4;
        this.isFromcomplaint = i5;
        this.mInflater = LayoutInflater.from(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<CustomListDisplayModel> list = this.listFarmerNames;
        if (list == null || list.size() == 0) {
            return 0;
        }
        return this.listFarmerNames.size() + 1;
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
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        CustomListDisplayModel customListDisplayModel = this.listFarmerNames.get(i);
        StringBuilder sb = new StringBuilder();
        int i2 = this.segmentId;
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 8) {
            ArrayList arrayList = (ArrayList) customListDisplayModel.getData();
            if (arrayList != null && arrayList.size() > 0) {
                if (arrayList.get(0) != null && ((String) arrayList.get(0)).trim().length() > 0) {
                    viewHolder2.profile_image.setImageDrawable(this.mDrawableBuilder.build(String.valueOf(((String) arrayList.get(0)).charAt(0)).toUpperCase(Locale.getDefault()), this.mColorGenerator.getRandomColor()));
                } else {
                    viewHolder2.profile_image.setImageDrawable(this.context.getResources().getDrawable(R.drawable.ic_user_pic));
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                String str = (String) arrayList.get(i3);
                this.strVal = str;
                if (str != null && str.trim().length() > 0) {
                    sb.append(this.strVal);
                    sb.append("<br>");
                    arrayList2.addAll(StringUtils.getNumbersFromString(this.strVal, 7));
                }
            }
            if (this.listFarmerNames.get(i).getVillageName() != null && !this.listFarmerNames.get(i).getVillageName().equalsIgnoreCase("")) {
                sb.append(this.listFarmerNames.get(i).getVillageName());
            }
            viewHolder2.tvFarmerName.setText(Html.fromHtml(sb.toString()));
        } else {
            if (this.listFarmerNames.get(i).getTypeName() != null && !this.listFarmerNames.get(i).getTypeName().equalsIgnoreCase("")) {
                sb.append(this.listFarmerNames.get(i).getTypeName());
                sb.append("<br>");
            }
            if (this.listFarmerNames.get(i).getField1() != null && !this.listFarmerNames.get(i).getField1().equalsIgnoreCase("")) {
                sb.append(this.listFarmerNames.get(i).getField1());
                sb.append("<br>");
            }
            if (this.listFarmerNames.get(i).getField2() != null && !this.listFarmerNames.get(i).getField2().equalsIgnoreCase("")) {
                sb.append(this.listFarmerNames.get(i).getField2());
                sb.append("<br>");
            }
            if (sb.toString() != null && sb.toString().trim().length() > 0) {
                viewHolder2.profile_image.setImageDrawable(this.mDrawableBuilder.build(String.valueOf(sb.toString().charAt(0)).toUpperCase(Locale.getDefault()), this.mColorGenerator.getRandomColor()));
            } else {
                viewHolder2.profile_image.setImageDrawable(this.context.getResources().getDrawable(R.drawable.ic_user_pic));
            }
            viewHolder2.tvFarmerName.setText(Search.getString(this.searchString, sb.toString()));
        }
        viewHolder2.cardview.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.CustomerListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    CustomerListAdapter customerListAdapter = CustomerListAdapter.this;
                    customerListAdapter.farmerId = ((CustomListDisplayModel) customerListAdapter.listFarmerNames.get(i)).getTypeId();
                } catch (Exception e) {
                    PLog.e(CustomerListAdapter.this.TAG, e);
                }
                if (CustomerListAdapter.this.isFromAssignment != 1) {
                    if (CustomerListAdapter.this.isFromTestimonial == 111) {
                        Intent intent = new Intent(CustomerListAdapter.this.context, (Class<?>) SAAttributeActivityCopy.class);
                        intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), CustomerListAdapter.this.farmerId);
                        intent.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(CustomerListAdapter.this.segmentId));
                        ((Activity) CustomerListAdapter.this.context).startActivity(intent);
                        return;
                    }
                    Intent intent2 = new Intent(CustomerListAdapter.this.context, (Class<?>) ListSelectionActivity.class);
                    intent2.putExtra("FarmerId", CustomerListAdapter.this.farmerId);
                    intent2.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(CustomerListAdapter.this.segmentId));
                    ((Activity) CustomerListAdapter.this.context).startActivityForResult(intent2, 2);
                    return;
                }
                Intent intent3 = new Intent();
                intent3.putExtra("FarmerId", CustomerListAdapter.this.farmerId);
                intent3.putExtra("SegmentId", CustomerListAdapter.this.segmentId);
                intent3.putExtra("FarmerName", ((CustomListDisplayModel) CustomerListAdapter.this.listFarmerNames.get(i)).getTypeName());
                ((Activity) CustomerListAdapter.this.context).setResult(-1, intent3);
                ((Activity) CustomerListAdapter.this.context).finish();
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 2) {
            return new LoaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_footer, viewGroup, false));
        }
        if (i == 1) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.template_farmer_item, viewGroup, false);
            this.lastPosition = i;
            return new ViewHolder(inflate);
        }
        throw new IllegalArgumentException("Invalid ViewType: " + i);
    }

    @Override // com.conceptglobal.ifastscroll.SectionTitleProvider
    public String getSectionTitle(int i) {
        try {
            String typeName = this.listFarmerNames.get(i).getTypeName();
            return (typeName == null || typeName.trim().length() <= 0) ? typeName : String.valueOf(typeName.charAt(0)).toUpperCase(Locale.getDefault());
        } catch (Exception e) {
            PLog.e(this.TAG, e);
            e.printStackTrace();
            return null;
        }
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        protected CardView cardview;
        protected String id;
        protected LinearLayout ll;
        protected ImageView phonedail;
        protected ImageView profile_image;
        protected TextView tvFarmerName;

        public ViewHolder(View view) {
            super(view);
            this.cardview = (CardView) view.findViewById(R.id.cardview);
            this.ll = (LinearLayout) view.findViewById(R.id.addingdynamicdrafts_assign);
            this.profile_image = (ImageView) view.findViewById(R.id.profile_image_assign);
            ImageView imageView = (ImageView) view.findViewById(R.id.phonedail_assign);
            this.phonedail = imageView;
            imageView.setVisibility(8);
            this.tvFarmerName = (TextView) view.findViewById(R.id.tv_textview_display_assign);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ((Integer) view.getTag()).intValue();
        view.getId();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.CustomerListAdapter.2
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                CustomerListAdapter.this.listFarmerNames = (ArrayList) filterResults.values;
                CustomerListAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (CustomerListAdapter.this.mOriginalNames == null) {
                    CustomerListAdapter.this.mOriginalNames = new ArrayList(CustomerListAdapter.this.listFarmerNames);
                }
                if (charSequence == null || charSequence.length() == 0) {
                    filterResults.count = CustomerListAdapter.this.mOriginalNames.size();
                    CustomerListAdapter.this.searchString = "";
                    filterResults.values = CustomerListAdapter.this.mOriginalNames;
                } else {
                    String lowerCase = charSequence.toString().toLowerCase();
                    for (int i = 0; i < CustomerListAdapter.this.mOriginalNames.size(); i++) {
                        CustomerListAdapter.this.searchString = lowerCase.toString().toLowerCase(Locale.getDefault());
                        CustomListDisplayModel customListDisplayModel = (CustomListDisplayModel) CustomerListAdapter.this.mOriginalNames.get(i);
                        if (CustomerListAdapter.this.activityType == 4) {
                            if (customListDisplayModel.getTypeName().toLowerCase(Locale.getDefault()).contains(CustomerListAdapter.this.searchString)) {
                                arrayList.add(customListDisplayModel);
                            }
                            if (customListDisplayModel.getField1() != null && customListDisplayModel.getField1().toLowerCase(Locale.getDefault()).contains(CustomerListAdapter.this.searchString)) {
                                arrayList.add(customListDisplayModel);
                            }
                        } else {
                            List<String> data = customListDisplayModel.getData();
                            boolean z = false;
                            for (int i2 = 0; i2 < data.size(); i2++) {
                                String str = data.get(i2);
                                if (str != null && str.toLowerCase(Locale.getDefault()).contains(CustomerListAdapter.this.searchString)) {
                                    z = true;
                                }
                            }
                            if (z) {
                                arrayList.add(customListDisplayModel);
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

    public void swapItems(List<CustomListDisplayModel> list) {
        this.listFarmerNames = list;
    }

    public class LoaderViewHolder extends RecyclerView.ViewHolder {
        ProgressBar mProgressBar;

        public LoaderViewHolder(View view) {
            super(view);
            this.mProgressBar = (ProgressBar) view.findViewById(R.id.progressbar);
        }
    }
}
