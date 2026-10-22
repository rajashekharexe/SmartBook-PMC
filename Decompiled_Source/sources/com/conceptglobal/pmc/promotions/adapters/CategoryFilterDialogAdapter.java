package com.conceptglobal.pmc.promotions.adapters;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.common.CustomCheckBoxDialog;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnCategoryFilterCheck;
import com.conceptglobal.pmc.promotions.models.CategoryMaster;
import com.conceptglobal.pmc.promotions.utils.ExpandCollapseAnimation;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CategoryFilterDialogAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements OnCategoryFilterCheck {
    private static final int VIEW_TYPE_HEADER = 1;
    private static final int VIEW_TYPE_ITEM = 2;
    private ExpandCollapseAnimation animation;
    private CategoryDAO categoryDAO;
    private Context context;
    private int contextId;
    final ArrayList<Integer> listOfCategoriesFiltered;
    final List<CategoryMaster> masters;
    private OnCategoryFilterCheck onCategoryFilterCheck;
    private HashMap<Integer, String> selectedItemsMap;
    private int vType;

    public CategoryFilterDialogAdapter(Context context, List<CategoryMaster> list, ArrayList<Integer> arrayList) {
        this.vType = 0;
        this.contextId = 1;
        this.selectedItemsMap = new HashMap<>();
        this.context = context;
        this.masters = list;
        this.categoryDAO = new CategoryDAO(context);
        this.listOfCategoriesFiltered = arrayList;
        this.animation = new ExpandCollapseAnimation();
    }

    public CategoryFilterDialogAdapter(Context context, List<CategoryMaster> list, ArrayList<Integer> arrayList, int i) {
        this.vType = 0;
        this.contextId = 1;
        this.selectedItemsMap = new HashMap<>();
        this.context = context;
        this.masters = list;
        this.categoryDAO = new CategoryDAO(context);
        this.listOfCategoriesFiltered = arrayList;
        this.contextId = i;
        this.animation = new ExpandCollapseAnimation();
    }

    public CategoryFilterDialogAdapter(Context context, List<CategoryMaster> list, ArrayList<Integer> arrayList, OnCategoryFilterCheck onCategoryFilterCheck, int i) {
        this.vType = 0;
        this.contextId = 1;
        this.selectedItemsMap = new HashMap<>();
        this.context = context;
        this.masters = list;
        this.categoryDAO = new CategoryDAO(context);
        this.onCategoryFilterCheck = onCategoryFilterCheck;
        this.listOfCategoriesFiltered = arrayList;
        this.contextId = i;
        Log.d("List of IDs", arrayList.toString());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new CategoryVH(LayoutInflater.from(this.context).inflate(R.layout.category_expansion_header, viewGroup, false));
        }
        if (i == 2) {
            return new CategoryItemVH(LayoutInflater.from(this.context).inflate(R.layout.category_expansion_list, viewGroup, false));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final RecyclerView.ViewHolder viewHolder, final int i) {
        if (viewHolder instanceof CategoryVH) {
            final CategoryVH categoryVH = (CategoryVH) viewHolder;
            final CategoryMaster categoryMaster = this.masters.get(i);
            if (categoryMaster.getParentCategoryID() == 2 && categoryMaster.getChildCount() > 0) {
                categoryVH.cbSelectHeader.setVisibility(0);
            } else {
                categoryVH.cbSelectHeader.setVisibility(8);
            }
            if (this.listOfCategoriesFiltered.contains(Integer.valueOf(this.masters.get(i).getCategoryId()))) {
                categoryVH.cbSelectHeader.setChecked(true);
            } else {
                categoryVH.cbSelectHeader.setChecked(false);
            }
            categoryVH.tvinputLayout.setHint(categoryMaster.getCategoryName());
            categoryVH.tvSelectedIds.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter.1
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    if (editable.length() > 0) {
                        if (CategoryFilterDialogAdapter.this.selectedItemsMap.containsKey(Integer.valueOf(categoryMaster.getCategoryId()))) {
                            CategoryFilterDialogAdapter.this.selectedItemsMap.remove(Integer.valueOf(categoryMaster.getCategoryId()));
                            CategoryFilterDialogAdapter.this.selectedItemsMap.put(Integer.valueOf(categoryMaster.getCategoryId()), editable.toString());
                            return;
                        } else {
                            CategoryFilterDialogAdapter.this.selectedItemsMap.put(Integer.valueOf(categoryMaster.getCategoryId()), editable.toString());
                            return;
                        }
                    }
                    if (CategoryFilterDialogAdapter.this.selectedItemsMap.containsKey(Integer.valueOf(categoryMaster.getCategoryId()))) {
                        CategoryFilterDialogAdapter.this.selectedItemsMap.remove(Integer.valueOf(categoryMaster.getCategoryId()));
                    }
                }
            });
            categoryVH.tvCategoryNameHeader.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    categoryVH.rlItem.performClick();
                }
            });
            categoryVH.rlItem.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    List<BrandsModel> list;
                    try {
                        list = GetDataFromDB.getInstance().getFarmerAssociatedBrands(Queries.getInstance().getCategoryDetails(CategoryFilterDialogAdapter.this.masters.get(i).getCategoryId()));
                    } catch (Exception e) {
                        e.printStackTrace();
                        list = null;
                    }
                    List<BrandsModel> list2 = list;
                    if (list2 == null || list2.size() == 0) {
                        Toast.makeText(CategoryFilterDialogAdapter.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noDataFound()), 0).show();
                        return;
                    }
                    CustomCheckBoxDialog customCheckBoxDialog = new CustomCheckBoxDialog(CategoryFilterDialogAdapter.this.context, list2, 0, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + CategoryFilterDialogAdapter.this.masters.get(i).getCategoryName(), ((CategoryVH) viewHolder).tvCategoryNameHeader, ((CategoryVH) viewHolder).tvSelectedIds, 20, 0, 0);
                    customCheckBoxDialog.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    customCheckBoxDialog.show();
                    customCheckBoxDialog.getWindow().setSoftInputMode(3);
                }
            });
            categoryVH.ivExpand.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                }
            });
            return;
        }
        if (viewHolder instanceof CategoryItemVH) {
            CategoryItemVH categoryItemVH = (CategoryItemVH) viewHolder;
            categoryItemVH.tvCategoryListItem.setText(this.masters.get(i).getCategoryName());
            if (this.listOfCategoriesFiltered.contains(Integer.valueOf(this.masters.get(i).getCategoryId()))) {
                categoryItemVH.cbSelect.setChecked(true);
            } else {
                categoryItemVH.cbSelect.setChecked(false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.masters.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.masters.get(i).getChildCount() > 0) {
            this.vType = 1;
        } else {
            this.vType = 2;
        }
        return this.vType;
    }

    @Override // com.conceptglobal.pmc.promotions.interfaces.OnCategoryFilterCheck
    public ArrayList<Integer> onCategoryFilterCheck() {
        this.listOfCategoriesFiltered.clear();
        Iterator<Integer> it = this.selectedItemsMap.keySet().iterator();
        while (it.hasNext()) {
            for (String str : this.selectedItemsMap.get(it.next()).split(",")) {
                this.listOfCategoriesFiltered.add(Integer.valueOf(Integer.parseInt(str)));
            }
        }
        return this.listOfCategoriesFiltered;
    }

    @Override // com.conceptglobal.pmc.promotions.interfaces.OnCategoryFilterCheck
    public HashMap<Integer, String> onCategoryselectedItems() {
        return this.selectedItemsMap;
    }

    public void removeFilres() {
        this.listOfCategoriesFiltered.clear();
        this.selectedItemsMap.clear();
        notifyDataSetChanged();
    }

    public class CategoryItemVH extends RecyclerView.ViewHolder {
        public CheckBox cbSelect;
        public TextView tvCategoryListItem;

        public CategoryItemVH(View view) {
            super(view);
            this.cbSelect = (CheckBox) view.findViewById(R.id.select_category);
            this.tvCategoryListItem = (TextView) view.findViewById(R.id.tv_category_item);
            this.cbSelect.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter.CategoryItemVH.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    int adapterPosition = CategoryItemVH.this.getAdapterPosition();
                    if (z) {
                        if (CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.contains(Integer.valueOf(CategoryFilterDialogAdapter.this.masters.get(adapterPosition).getCategoryId()))) {
                            return;
                        }
                        CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.add(Integer.valueOf(CategoryFilterDialogAdapter.this.masters.get(adapterPosition).getCategoryId()));
                    } else if (CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.contains(Integer.valueOf(CategoryFilterDialogAdapter.this.masters.get(adapterPosition).getCategoryId()))) {
                        CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.remove(CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.indexOf(Integer.valueOf(CategoryFilterDialogAdapter.this.masters.get(adapterPosition).getCategoryId())));
                    }
                }
            });
        }
    }

    public class CategoryVH extends RecyclerView.ViewHolder {
        public CheckBox cbSelectHeader;
        public ImageView ivExpand;
        public LinearLayoutManager llm;
        RelativeLayout rlItem;
        public RecyclerView rvSubCategory;
        public TextInputEditText tvCategoryNameHeader;
        TextView tvSelectedIds;
        public TextInputLayout tvinputLayout;

        public CategoryVH(View view) {
            super(view);
            this.cbSelectHeader = (CheckBox) view.findViewById(R.id.select_category);
            this.tvCategoryNameHeader = (TextInputEditText) view.findViewById(R.id.tv_category);
            this.tvSelectedIds = (TextView) view.findViewById(R.id.tv_selectedIDs);
            this.tvinputLayout = (TextInputLayout) view.findViewById(R.id.layout_category);
            this.ivExpand = (ImageView) view.findViewById(R.id.expand_category);
            this.rvSubCategory = (RecyclerView) view.findViewById(R.id.rv_list_of_categories_items);
            this.rlItem = (RelativeLayout) view.findViewById(R.id.rl_item);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(CategoryFilterDialogAdapter.this.context);
            this.llm = linearLayoutManager;
            linearLayoutManager.setOrientation(1);
            this.rvSubCategory.setLayoutManager(this.llm);
            this.rvSubCategory.setNestedScrollingEnabled(false);
            this.rvSubCategory.setHasFixedSize(true);
            this.cbSelectHeader.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter.CategoryVH.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    int adapterPosition = CategoryVH.this.getAdapterPosition();
                    if (z) {
                        ArrayList<CategoryMaster> categorySelection = CategoryFilterDialogAdapter.this.categoryDAO.getCategorySelection(CategoryFilterDialogAdapter.this.masters.get(adapterPosition).getCategoryId());
                        for (int i = 0; i < categorySelection.size(); i++) {
                            if (CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.contains(Integer.valueOf(categorySelection.get(i).getCategoryId()))) {
                                CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.remove(CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.indexOf(Integer.valueOf(categorySelection.get(i).getCategoryId())));
                            }
                        }
                        CategoryVH.this.ivExpand.setVisibility(8);
                        if (!CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.contains(Integer.valueOf(CategoryFilterDialogAdapter.this.masters.get(adapterPosition).getCategoryId()))) {
                            CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.add(Integer.valueOf(CategoryFilterDialogAdapter.this.masters.get(adapterPosition).getCategoryId()));
                        }
                        CategoryVH.this.rvSubCategory.setVisibility(8);
                        return;
                    }
                    CategoryVH.this.ivExpand.setVisibility(0);
                    CategoryVH.this.ivExpand.setImageResource(com.icsssd0328.promotions.R.drawable.ic_add_black_24px);
                    if (CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.contains(Integer.valueOf(CategoryFilterDialogAdapter.this.masters.get(adapterPosition).getCategoryId()))) {
                        CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.remove(CategoryFilterDialogAdapter.this.listOfCategoriesFiltered.indexOf(Integer.valueOf(CategoryFilterDialogAdapter.this.masters.get(adapterPosition).getCategoryId())));
                    }
                }
            });
        }
    }
}
