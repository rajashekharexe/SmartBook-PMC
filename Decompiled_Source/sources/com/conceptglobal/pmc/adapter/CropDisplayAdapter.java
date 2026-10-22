package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.AddFarmer;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.List;

/* loaded from: classes.dex */
public class CropDisplayAdapter extends BaseAdapter implements View.OnClickListener {
    private Activity context;
    private int enableCropHybrids;
    private String farmerID;
    private List<FarmerCropMapping> listFarmerCrops;
    private LayoutInflater mInflater;
    private String TAG = "CropDisplayAdapter";
    private ViewHolder holder = new ViewHolder();

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public CropDisplayAdapter(Activity activity, List<FarmerCropMapping> list, String str) {
        this.enableCropHybrids = 0;
        this.listFarmerCrops = list;
        this.farmerID = str;
        this.context = activity;
        this.mInflater = LayoutInflater.from(activity);
        try {
            this.enableCropHybrids = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getEnableCropHybrids());
        } catch (Exception e) {
            e.printStackTrace();
            this.enableCropHybrids = 0;
            PLog.e("CropDisplayAdapter", e);
        }
    }

    private class ViewHolder {
        private ImageView ivDelete;
        private TextView tvCropAcreage;
        private TextView tvCropDos;
        private TextView tvCropName;
        private TextView tvDate_sowing;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.template_crop_display, viewGroup, false);
            this.holder = new ViewHolder();
            init(view, i);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        this.holder.tvCropName.setText(this.listFarmerCrops.get(i).getCropName());
        this.holder.tvCropAcreage.setText(this.listFarmerCrops.get(i).getAcreages() + " (Acres)" + ConstantDeclarations.getInstance().getEMPTY());
        if (this.enableCropHybrids == 0) {
            this.holder.tvCropDos.setVisibility(8);
        } else {
            this.holder.tvCropDos.setVisibility(0);
        }
        if (this.listFarmerCrops.get(i).getHybridId() == 0 || this.listFarmerCrops.get(i).getHybridId() <= 0) {
            this.holder.tvCropDos.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pcodeNotAvailText()));
        } else {
            try {
                TextView textView = this.holder.tvCropDos;
                StringBuilder sb = new StringBuilder();
                sb.append(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pcodeText()));
                sb.append(GetDataFromDB.getInstance().getSingleValue("SELECT BrandName  FROM BrandMaster where BrandID='" + this.listFarmerCrops.get(i).getHybridId() + "'"));
                sb.append(ConstantDeclarations.getInstance().getEMPTY());
                textView.setText(sb.toString());
            } catch (Exception e) {
                PLog.e(this.TAG, e);
                this.holder.tvCropDos.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pcodeNotAvailText()));
            }
        }
        if (TextUtils.isEmpty(this.listFarmerCrops.get(i).getDos()) || this.listFarmerCrops.get(i).getDos().length() <= 0) {
            this.holder.tvDate_sowing.setVisibility(8);
        } else {
            this.holder.tvDate_sowing.setText(this.listFarmerCrops.get(i).getDos());
        }
        view.findViewById(R.id.iv_delete_crop_display).setTag(Integer.valueOf(i));
        this.holder.ivDelete.setOnClickListener(this);
        return view;
    }

    private void init(View view, int i) {
        this.holder.tvCropName = (TextView) view.findViewById(R.id.tv_cropName_crop_display);
        this.holder.tvCropAcreage = (TextView) view.findViewById(R.id.tv_crop_acreage_crop_display);
        this.holder.tvCropDos = (TextView) view.findViewById(R.id.tv_crop_dos_crop_display);
        this.holder.ivDelete = (ImageView) view.findViewById(R.id.iv_delete_crop_display);
        this.holder.tvDate_sowing = (TextView) view.findViewById(R.id.tv_date_sowing_value);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.listFarmerCrops.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (view.getId() != R.id.iv_delete_crop_display) {
            return;
        }
        showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_deleteConfirmationDialogText()) + " " + this.listFarmerCrops.get(intValue).getCropName(), intValue);
    }

    private void showAlert(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.CropDisplayAdapter.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                try {
                    if (((FarmerCropMapping) CropDisplayAdapter.this.listFarmerCrops.get(i)).getMappingId() != 0) {
                        AddFarmer.deletedCropsIds.add(Integer.valueOf(((FarmerCropMapping) CropDisplayAdapter.this.listFarmerCrops.get(i)).getMappingId()));
                    }
                    CropDisplayAdapter.this.listFarmerCrops.remove(i);
                    CropDisplayAdapter.this.notifyDataSetChanged();
                } catch (Exception e) {
                    PLog.e(CropDisplayAdapter.this.TAG, e);
                    e.printStackTrace();
                }
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.CropDisplayAdapter.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }
}
