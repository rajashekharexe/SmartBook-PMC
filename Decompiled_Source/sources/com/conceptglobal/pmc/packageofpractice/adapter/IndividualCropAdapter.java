package com.conceptglobal.pmc.packageofpractice.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.packageofpractice.models.IndividualCropItemModal;
import com.conceptglobal.pmc.utils.CircleImageView;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class IndividualCropAdapter extends RecyclerView.Adapter<CropHolder> {
    private CropEventListener cropEventListener;
    private ArrayList<IndividualCropItemModal> individualCropItemModalArrayList;
    private Context mContext;

    public interface CropEventListener {
        void individualCropClick(IndividualCropItemModal individualCropItemModal, int i, ProgressBar progressBar, boolean z);
    }

    public IndividualCropAdapter(ArrayList<IndividualCropItemModal> arrayList, Context context, CropEventListener cropEventListener) {
        this.individualCropItemModalArrayList = arrayList;
        this.mContext = context;
        this.cropEventListener = cropEventListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public CropHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new CropHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_individual_crop, (ViewGroup) null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final CropHolder cropHolder, final int i) {
        final IndividualCropItemModal individualCropItemModal = this.individualCropItemModalArrayList.get(i);
        cropHolder.cardView.setCardBackgroundColor(ContextCompat.getColor(this.mContext, R.color.card_bg));
        if (individualCropItemModal.getLocalHTMLZIPURL() == null || individualCropItemModal.getLocalHTMLZIPURL().isEmpty() || individualCropItemModal.getVersionNo() > individualCropItemModal.getDeviceVersionNo()) {
            cropHolder.ivDownload.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_non_download));
        } else {
            cropHolder.ivDownload.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.ic_download));
        }
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue("select DownloadID from DownLoadFileDetails where ContentID =" + individualCropItemModal.getPopID());
            if (singleValue != null && !singleValue.isEmpty()) {
                this.cropEventListener.individualCropClick(individualCropItemModal, i, cropHolder.progressBar, false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        cropHolder.cropName.setText(individualCropItemModal.getCropName());
        Glide.with(this.mContext).load(individualCropItemModal.getThumbnailURL()).into(cropHolder.cropThumbnail);
        cropHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.packageofpractice.adapter.IndividualCropAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IndividualCropAdapter.this.cropEventListener.individualCropClick(individualCropItemModal, i, cropHolder.progressBar, true);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        ArrayList<IndividualCropItemModal> arrayList = this.individualCropItemModalArrayList;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public void updateIndividualAdapter(IndividualCropItemModal individualCropItemModal, int i) {
        for (int i2 = 0; i2 < this.individualCropItemModalArrayList.size(); i2++) {
            if (this.individualCropItemModalArrayList.get(i2).getPopID() == individualCropItemModal.getPopID()) {
                this.individualCropItemModalArrayList.set(i2, individualCropItemModal);
                notifyItemChanged(i2);
            }
        }
    }

    public class CropHolder extends RecyclerView.ViewHolder {
        CardView cardView;
        TextView cropName;
        CircleImageView cropThumbnail;
        ImageView ivDownload;
        ProgressBar progressBar;

        public CropHolder(View view) {
            super(view);
            this.cardView = (CardView) view.findViewById(R.id.cardView);
            this.cropThumbnail = (CircleImageView) view.findViewById(R.id.iv_cropThumbnail);
            this.cropName = (TextView) view.findViewById(R.id.tv_cropName);
            this.progressBar = (ProgressBar) view.findViewById(R.id.crop_progress);
            this.ivDownload = (ImageView) view.findViewById(R.id.ivDownload);
        }
    }

    public void setBookmarkEventListener(CropEventListener cropEventListener) {
        this.cropEventListener = cropEventListener;
    }
}
