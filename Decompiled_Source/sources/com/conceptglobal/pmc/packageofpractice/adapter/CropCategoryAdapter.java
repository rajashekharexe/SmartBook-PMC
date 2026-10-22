package com.conceptglobal.pmc.packageofpractice.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.conceptglobal.pmc.packageofpractice.adapter.IndividualCropAdapter;
import com.conceptglobal.pmc.packageofpractice.models.CropCategoryModal;
import com.conceptglobal.pmc.packageofpractice.models.IndividualCropItemModal;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CropCategoryAdapter extends RecyclerView.Adapter<CategoryHolder> {
    private ArrayList<CropCategoryModal> categoryModalArrayList;
    private IndividualCropAdapter.CropEventListener cropEventListener;
    IndividualCropAdapter individualCropAdapter;
    private Context mContext;

    public void updateProgress(int i) {
    }

    public CropCategoryAdapter(ArrayList<CropCategoryModal> arrayList, Context context, IndividualCropAdapter.CropEventListener cropEventListener) {
        this.categoryModalArrayList = arrayList;
        this.mContext = context;
        this.cropEventListener = cropEventListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public CategoryHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new CategoryHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_crop_category, (ViewGroup) null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(CategoryHolder categoryHolder, int i) {
        CropCategoryModal cropCategoryModal = this.categoryModalArrayList.get(i);
        categoryHolder.categoryTitle.setText(cropCategoryModal.getCropCategory());
        Glide.with(this.mContext).load(cropCategoryModal.getThumbnailURL()).into(categoryHolder.categoryImage);
        this.individualCropAdapter = new IndividualCropAdapter(cropCategoryModal.getIndividualCropItemModalArrayList(), this.mContext, this.cropEventListener);
        categoryHolder.individualCropList.setHasFixedSize(false);
        categoryHolder.individualCropList.setLayoutManager(new LinearLayoutManager(this.mContext, 0, false));
        categoryHolder.individualCropList.setAdapter(this.individualCropAdapter);
        boolean isExpanded = cropCategoryModal.isExpanded();
        if (isExpanded) {
            categoryHolder.btnExpand.setImageDrawable(ContextCompat.getDrawable(this.mContext, R.drawable.ic_up_arrow));
        } else {
            categoryHolder.btnExpand.setImageDrawable(ContextCompat.getDrawable(this.mContext, 2131231033));
        }
        categoryHolder.individualCropList.setVisibility(isExpanded ? 0 : 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        ArrayList<CropCategoryModal> arrayList = this.categoryModalArrayList;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public class CategoryHolder extends RecyclerView.ViewHolder {
        protected ImageView btnExpand;
        protected ImageView categoryImage;
        protected TextView categoryTitle;
        protected RecyclerView individualCropList;

        public CategoryHolder(View view) {
            super(view);
            this.categoryTitle = (TextView) view.findViewById(R.id.tv_nav_items);
            this.categoryImage = (ImageView) view.findViewById(R.id.im_nav_item);
            this.btnExpand = (ImageView) view.findViewById(R.id.bt_expand);
            this.individualCropList = (RecyclerView) view.findViewById(R.id.recycler_view_individual);
            this.btnExpand.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.packageofpractice.adapter.CropCategoryAdapter.CategoryHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ((CropCategoryModal) CropCategoryAdapter.this.categoryModalArrayList.get(CategoryHolder.this.getAdapterPosition())).setExpanded(!r2.isExpanded());
                    CropCategoryAdapter.this.notifyItemChanged(CategoryHolder.this.getAdapterPosition());
                }
            });
            this.categoryTitle.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.packageofpractice.adapter.CropCategoryAdapter.CategoryHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ((CropCategoryModal) CropCategoryAdapter.this.categoryModalArrayList.get(CategoryHolder.this.getAdapterPosition())).setExpanded(!r2.isExpanded());
                    CropCategoryAdapter.this.notifyItemChanged(CategoryHolder.this.getAdapterPosition());
                }
            });
        }
    }

    public void updateAdapter(IndividualCropItemModal individualCropItemModal, int i) {
        this.individualCropAdapter.updateIndividualAdapter(individualCropItemModal, i);
        notifyDataSetChanged();
    }
}
