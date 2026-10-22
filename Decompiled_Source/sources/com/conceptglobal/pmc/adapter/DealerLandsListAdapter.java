package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.AddRetailer;
import com.conceptglobal.pmc.interfaces.OnItemClickListener;
import com.conceptglobal.pmc.model.DealerLandDetails;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.List;

/* loaded from: classes.dex */
public class DealerLandsListAdapter extends RecyclerView.Adapter<LandDetailsViewHolder> {
    private String TAG = "CropDisplayAdapter";
    private Activity context;
    private int enableCropHybrids;
    private String farmerID;
    private List<DealerLandDetails> listFarmerLands;
    private LayoutInflater mInflater;
    private OnItemClickListener onItemClickListener;

    public DealerLandsListAdapter(Activity activity, List<DealerLandDetails> list, String str, OnItemClickListener onItemClickListener) {
        this.enableCropHybrids = 0;
        this.listFarmerLands = list;
        this.farmerID = str;
        this.context = activity;
        this.onItemClickListener = onItemClickListener;
        try {
            this.enableCropHybrids = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getEnableCropHybrids());
        } catch (Exception e) {
            e.printStackTrace();
            this.enableCropHybrids = 0;
            PLog.e("CropDisplayAdapter", e);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.listFarmerLands.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(LandDetailsViewHolder landDetailsViewHolder, final int i) {
        landDetailsViewHolder.ivDelete.findViewById(R.id.iv_delete_crop_display).setTag(Integer.valueOf(i));
        landDetailsViewHolder.ivDelete.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.DealerLandsListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int intValue = ((Integer) view.getTag()).intValue();
                if (view.getId() != R.id.iv_delete_crop_display) {
                    return;
                }
                DealerLandsListAdapter.this.showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_deleteConfirmationDialogText()) + " " + ((DealerLandDetails) DealerLandsListAdapter.this.listFarmerLands.get(intValue)).getLandname(), intValue);
            }
        });
        landDetailsViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.DealerLandsListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DealerLandsListAdapter.this.onItemClickListener.onLandListItemClick(i);
            }
        });
        landDetailsViewHolder.tvCropName.setText(this.listFarmerLands.get(i).getLandname());
        landDetailsViewHolder.tvCropAcreage.setVisibility(8);
        landDetailsViewHolder.tvDate_sowing.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlert(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.DealerLandsListAdapter.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                try {
                    if (((DealerLandDetails) DealerLandsListAdapter.this.listFarmerLands.get(i)).getMappingId() != 0) {
                        AddRetailer.deletedPlotIds.add(Integer.valueOf(((DealerLandDetails) DealerLandsListAdapter.this.listFarmerLands.get(i)).getMappingId()));
                    }
                    DealerLandsListAdapter.this.listFarmerLands.remove(i);
                    DealerLandsListAdapter.this.notifyDataSetChanged();
                } catch (Exception e) {
                    PLog.e(DealerLandsListAdapter.this.TAG, e);
                    e.printStackTrace();
                }
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.DealerLandsListAdapter.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.DealerLandsListAdapter.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public LandDetailsViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new LandDetailsViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.template_land_display, viewGroup, false));
    }

    public static class LandDetailsViewHolder extends RecyclerView.ViewHolder {
        private ImageView ivDelete;
        private LinearLayout llSecondRow;
        private TextView tvCropAcreage;
        private TextView tvCropDos;
        private TextView tvCropName;
        private TextView tvDate_sowing;

        public LandDetailsViewHolder(View view) {
            super(view);
            this.tvCropName = (TextView) view.findViewById(R.id.tv_cropName_crop_display);
            this.tvCropAcreage = (TextView) view.findViewById(R.id.tv_crop_acreage_crop_display);
            this.tvCropDos = (TextView) view.findViewById(R.id.tv_irrigation);
            this.ivDelete = (ImageView) view.findViewById(R.id.iv_delete_crop_display);
            this.tvDate_sowing = (TextView) view.findViewById(R.id.tv_season);
            this.llSecondRow = (LinearLayout) view.findViewById(R.id.llSecondRow);
        }
    }
}
