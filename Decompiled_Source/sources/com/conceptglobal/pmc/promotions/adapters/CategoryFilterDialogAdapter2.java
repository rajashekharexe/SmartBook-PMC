package com.conceptglobal.pmc.promotions.adapters;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnCategoryFilterCheck;
import com.conceptglobal.pmc.promotions.models.CategoryMaster;
import com.conceptglobal.pmc.promotions.utils.ExpandCollapseAnimation;
import com.conceptglobal.pmc.promotions.utils.FlowLayout;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class CategoryFilterDialogAdapter2 extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements OnCategoryFilterCheck {
    private static final int VIEW_TYPE_HEADER = 1;
    private static final int VIEW_TYPE_ITEM = 2;
    private ExpandCollapseAnimation animation;
    private CategoryDAO categoryDAO;
    private Context context;
    private int contextId;
    final ArrayList<Integer> listOfCategoriesFiltered;
    final List<CategoryMaster> masters;
    private OnCategoryFilterCheck onCategoryFilterCheck;
    private HashMap<Integer, ArrayList<Integer>> selectedItemsMap;
    private int vType;

    @Override // com.conceptglobal.pmc.promotions.interfaces.OnCategoryFilterCheck
    public HashMap<Integer, String> onCategoryselectedItems() {
        return null;
    }

    public CategoryFilterDialogAdapter2(Context context, List<CategoryMaster> list, ArrayList<Integer> arrayList, HashMap<Integer, ArrayList<Integer>> hashMap, int i) {
        this.vType = 0;
        this.contextId = 1;
        this.context = context;
        this.masters = list;
        this.categoryDAO = new CategoryDAO(context);
        this.listOfCategoriesFiltered = arrayList;
        this.animation = new ExpandCollapseAnimation();
        this.selectedItemsMap = hashMap;
        this.contextId = i;
    }

    public CategoryFilterDialogAdapter2(Context context, List<CategoryMaster> list, ArrayList<Integer> arrayList, OnCategoryFilterCheck onCategoryFilterCheck) {
        this.vType = 0;
        this.contextId = 1;
        this.context = context;
        this.masters = list;
        this.categoryDAO = new CategoryDAO(context);
        this.onCategoryFilterCheck = onCategoryFilterCheck;
        this.listOfCategoriesFiltered = arrayList;
        Log.d("List of IDs", arrayList.toString());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new CategoryVH(LayoutInflater.from(this.context).inflate(R.layout.category_expansion_header, viewGroup, false));
        }
        if (i == 2) {
            return new CategoryItemVH(LayoutInflater.from(this.context).inflate(R.layout.category_expansion_grid, viewGroup, false));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
        if (viewHolder instanceof CategoryVH) {
            final CategoryVH categoryVH = (CategoryVH) viewHolder;
            CategoryMaster categoryMaster = this.masters.get(i);
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
            categoryVH.tvCategoryNameHeader.setText(categoryMaster.getCategoryName());
            categoryVH.ivExpand.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter2.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (categoryVH.rvSubCategory.getVisibility() == 8) {
                        categoryVH.rvSubCategory.setVisibility(0);
                        categoryVH.rvSubCategory.setFocusable(true);
                        categoryVH.ivExpand.setImageResource(com.icsssd0328.promotions.R.drawable.ic_remove_black_24px);
                        categoryVH.rvSubCategory.setAdapter(new CategoryFilterDialogAdapter2(CategoryFilterDialogAdapter2.this.context, CategoryFilterDialogAdapter2.this.categoryDAO.getCategorySelection(CategoryFilterDialogAdapter2.this.masters.get(i).getCategoryId()), CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered, CategoryFilterDialogAdapter2.this.selectedItemsMap, CategoryFilterDialogAdapter2.this.contextId));
                        categoryVH.filterStatus.setVisibility(8);
                        return;
                    }
                    categoryVH.rvSubCategory.setVisibility(8);
                    categoryVH.ivExpand.setImageResource(com.icsssd0328.promotions.R.drawable.ic_add_black_24px);
                    if (CategoryFilterDialogAdapter2.this.selectedItemsMap.get(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(i).getCategoryId())) != null && ((ArrayList) CategoryFilterDialogAdapter2.this.selectedItemsMap.get(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(i).getCategoryId()))).size() > 0) {
                        categoryVH.filterStatus.setVisibility(0);
                    } else {
                        categoryVH.filterStatus.setVisibility(8);
                    }
                }
            });
            return;
        }
        if (viewHolder instanceof CategoryItemVH) {
            CategoryItemVH categoryItemVH = (CategoryItemVH) viewHolder;
            categoryItemVH.cbSelect.setText(this.masters.get(i).getCategoryName());
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

    public void clearData() {
        this.listOfCategoriesFiltered.clear();
        this.selectedItemsMap.clear();
        notifyDataSetChanged();
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
        return this.listOfCategoriesFiltered;
    }

    public class CategoryItemVH extends RecyclerView.ViewHolder {
        public RadioButton cbSelect;
        public FlowLayout flName;

        public CategoryItemVH(View view) {
            super(view);
            RadioButton radioButton = (RadioButton) view.findViewById(R.id.select_category);
            this.cbSelect = radioButton;
            radioButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter2.CategoryItemVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ArrayList arrayList;
                    int adapterPosition = CategoryItemVH.this.getAdapterPosition();
                    if (CategoryFilterDialogAdapter2.this.selectedItemsMap.containsKey(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getParentCategoryID()))) {
                        arrayList = (ArrayList) CategoryFilterDialogAdapter2.this.selectedItemsMap.get(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getParentCategoryID()));
                    } else {
                        arrayList = new ArrayList();
                        CategoryFilterDialogAdapter2.this.selectedItemsMap.put(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getParentCategoryID()), arrayList);
                    }
                    if (!CategoryItemVH.this.cbSelect.isSelected()) {
                        CategoryItemVH.this.cbSelect.setChecked(true);
                        CategoryItemVH.this.cbSelect.setSelected(true);
                        if (!CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.contains(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId()))) {
                            CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.add(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId()));
                        }
                        if (arrayList.contains(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId()))) {
                            return;
                        }
                        arrayList.add(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId()));
                        return;
                    }
                    CategoryItemVH.this.cbSelect.setChecked(false);
                    CategoryItemVH.this.cbSelect.setSelected(false);
                    if (CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.contains(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId()))) {
                        CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.remove(CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.indexOf(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId())));
                    }
                    if (arrayList.contains(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId()))) {
                        arrayList.remove(arrayList.indexOf(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId())));
                    }
                }
            });
        }
    }

    public class CategoryVH extends RecyclerView.ViewHolder {
        public CheckBox cbSelectHeader;
        public TextView filterStatus;
        public ImageView ivExpand;
        public LinearLayoutManager llm;
        public RecyclerView rvSubCategory;
        public TextView tvCategoryNameHeader;

        public CategoryVH(View view) {
            super(view);
            this.cbSelectHeader = (CheckBox) view.findViewById(R.id.select_category);
            this.tvCategoryNameHeader = (TextView) view.findViewById(R.id.tv_category);
            this.filterStatus = (TextView) view.findViewById(R.id.tv_filter_applied);
            this.ivExpand = (ImageView) view.findViewById(R.id.expand_category);
            this.rvSubCategory = (RecyclerView) view.findViewById(R.id.rv_list_of_categories_items);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(CategoryFilterDialogAdapter2.this.context);
            this.llm = linearLayoutManager;
            linearLayoutManager.setOrientation(1);
            this.rvSubCategory.setLayoutManager(new GridLayoutManager(CategoryFilterDialogAdapter2.this.context, 3));
            this.rvSubCategory.setNestedScrollingEnabled(false);
            this.rvSubCategory.setHasFixedSize(true);
            this.cbSelectHeader.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter2.CategoryVH.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    int adapterPosition = CategoryVH.this.getAdapterPosition();
                    if (z) {
                        ArrayList<CategoryMaster> categorySelection = CategoryFilterDialogAdapter2.this.categoryDAO.getCategorySelection(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId());
                        for (int i = 0; i < categorySelection.size(); i++) {
                            if (CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.contains(Integer.valueOf(categorySelection.get(i).getCategoryId()))) {
                                CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.remove(CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.indexOf(Integer.valueOf(categorySelection.get(i).getCategoryId())));
                            }
                        }
                        CategoryVH.this.ivExpand.setVisibility(8);
                        if (!CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.contains(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId()))) {
                            CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.add(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId()));
                        }
                        CategoryVH.this.rvSubCategory.setVisibility(8);
                        return;
                    }
                    CategoryVH.this.ivExpand.setVisibility(0);
                    CategoryVH.this.ivExpand.setImageResource(com.icsssd0328.promotions.R.drawable.ic_add_black_24px);
                    if (CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.contains(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId()))) {
                        CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.remove(CategoryFilterDialogAdapter2.this.listOfCategoriesFiltered.indexOf(Integer.valueOf(CategoryFilterDialogAdapter2.this.masters.get(adapterPosition).getCategoryId())));
                    }
                }
            });
        }
    }
}
