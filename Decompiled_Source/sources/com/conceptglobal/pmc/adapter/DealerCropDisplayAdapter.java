package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.AddRetailer;
import com.conceptglobal.pmc.interfaces.OnCropItemClickListener;
import com.conceptglobal.pmc.model.DealerCropMapping;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.List;

/* loaded from: classes.dex */
public class DealerCropDisplayAdapter extends BaseAdapter implements View.OnClickListener {
    private String contactID;
    private Activity context;
    private List<DealerCropMapping> listDealerCrops;
    private LayoutInflater mInflater;
    private OnCropItemClickListener onCropItemClickListener;
    private ViewHolder holder = new ViewHolder();
    private String sales2016 = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_sales2016());
    private String sales2017 = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_sales2017());

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public DealerCropDisplayAdapter(Activity activity, List<DealerCropMapping> list, String str, OnCropItemClickListener onCropItemClickListener) {
        this.listDealerCrops = list;
        this.contactID = str;
        this.context = activity;
        this.mInflater = LayoutInflater.from(activity);
        this.onCropItemClickListener = onCropItemClickListener;
    }

    private class ViewHolder {
        private ImageView ivDelete;
        private LinearLayout llItemBG;
        private TextView tvCropDos;
        private TextView tvCropName;
        private TextView tvCropSales;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.template_company_display, viewGroup, false);
            this.holder = new ViewHolder();
            init(view, i);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        GetDataFromDB.getInstance();
        int latLondMandatory = GetDataFromDB.getLatLondMandatory(Queries.getInstance().getItemValue("isExtraSalesinDCM"));
        this.holder.tvCropName.setText(this.listDealerCrops.get(i).getCropName());
        this.holder.tvCropSales.setText(this.listDealerCrops.get(i).getCropSales() + ConstantDeclarations.getInstance().getEMPTY());
        if (latLondMandatory == 1) {
            this.holder.tvCropDos.setText(this.sales2017 + ":" + this.listDealerCrops.get(i).getCropName());
            this.holder.tvCropSales.setText(this.sales2016 + ":" + this.listDealerCrops.get(i).getCropSales() + ConstantDeclarations.getInstance().getEMPTY());
            try {
                this.holder.tvCropName.setText(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getBrandNameQuery(Integer.toString(this.listDealerCrops.get(i).getCropId()))));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        view.findViewById(R.id.iv_delete_crop_display).setTag(Integer.valueOf(i));
        this.holder.ivDelete.setOnClickListener(this);
        this.holder.llItemBG.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.DealerCropDisplayAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (DealerCropDisplayAdapter.this.onCropItemClickListener != null) {
                    DealerCropDisplayAdapter.this.onCropItemClickListener.onCropListItemClick(i);
                }
            }
        });
        return view;
    }

    private void init(View view, int i) {
        this.holder.tvCropName = (TextView) view.findViewById(R.id.tv_companyName_company_display);
        this.holder.tvCropSales = (TextView) view.findViewById(R.id.tv_company_sales_company_display);
        this.holder.tvCropDos = (TextView) view.findViewById(R.id.tv_crop_dos_crop_display);
        this.holder.ivDelete = (ImageView) view.findViewById(R.id.iv_delete_crop_display);
        this.holder.llItemBG = (LinearLayout) view.findViewById(R.id.llCardBG);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.listDealerCrops.size();
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
        try {
            showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_deleteConfirmationDialogText()) + " " + this.listDealerCrops.get(intValue).getCropName(), intValue);
        } catch (Exception e) {
            e.printStackTrace();
            showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_deleteConfirmationDialogText()) + " " + this.listDealerCrops.get(intValue).getCropName(), intValue);
        }
    }

    private void showAlert(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okDiscardDialog()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.DealerCropDisplayAdapter.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                try {
                    if (((DealerCropMapping) DealerCropDisplayAdapter.this.listDealerCrops.get(i)).getMappingId() != 0) {
                        AddRetailer.deletedCropIds.add(Integer.valueOf(((DealerCropMapping) DealerCropDisplayAdapter.this.listDealerCrops.get(i)).getMappingId()));
                    }
                    DealerCropDisplayAdapter.this.listDealerCrops.remove(i);
                    DealerCropDisplayAdapter.this.notifyDataSetChanged();
                } catch (Exception e) {
                    e.printStackTrace();
                    PLog.e("DealerCropDisplayAdapter", e);
                }
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDiscardButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.DealerCropDisplayAdapter.2
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
}
