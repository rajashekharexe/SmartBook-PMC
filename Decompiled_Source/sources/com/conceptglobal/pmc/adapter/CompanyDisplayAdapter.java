package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.AddRetailer;
import com.conceptglobal.pmc.model.DealerCompanyMapping;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.List;

/* loaded from: classes.dex */
public class CompanyDisplayAdapter extends BaseAdapter implements View.OnClickListener {
    private String contactID;
    private Activity context;
    private ViewHolder holder = new ViewHolder();
    private List<DealerCompanyMapping> listDealerCompanies;
    private LayoutInflater mInflater;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public CompanyDisplayAdapter(Activity activity, List<DealerCompanyMapping> list, String str) {
        this.listDealerCompanies = list;
        this.contactID = str;
        this.context = activity;
        this.mInflater = LayoutInflater.from(activity);
    }

    private class ViewHolder {
        private ImageView ivDelete;
        private TextView tvCompanyName;
        private TextView tvCompanySales;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.template_company_display, viewGroup, false);
            this.holder = new ViewHolder();
            init(view, i);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        this.holder.tvCompanyName.setText(this.listDealerCompanies.get(i).getCompanyName());
        this.holder.tvCompanySales.setText(this.listDealerCompanies.get(i).getCompanySales() + ConstantDeclarations.getInstance().getEMPTY());
        view.findViewById(R.id.iv_delete_crop_display).setTag(Integer.valueOf(i));
        this.holder.ivDelete.setOnClickListener(this);
        return view;
    }

    private void init(View view, int i) {
        this.holder.tvCompanyName = (TextView) view.findViewById(R.id.tv_companyName_company_display);
        this.holder.tvCompanySales = (TextView) view.findViewById(R.id.tv_company_sales_company_display);
        this.holder.ivDelete = (ImageView) view.findViewById(R.id.iv_delete_crop_display);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.listDealerCompanies.size();
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
        showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_deleteConfirmationDialogText()) + " " + this.listDealerCompanies.get(intValue).getCompanyName(), intValue);
    }

    private void showAlert(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.CompanyDisplayAdapter.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                try {
                    if (((DealerCompanyMapping) CompanyDisplayAdapter.this.listDealerCompanies.get(i)).getMappingId() != 0) {
                        AddRetailer.deletedCompanyIds.add(Integer.valueOf(((DealerCompanyMapping) CompanyDisplayAdapter.this.listDealerCompanies.get(i)).getMappingId()));
                    }
                    CompanyDisplayAdapter.this.listDealerCompanies.remove(i);
                    CompanyDisplayAdapter.this.notifyDataSetChanged();
                } catch (Exception e) {
                    PLog.e("Crop Adapter", e);
                    e.printStackTrace();
                }
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDiscardButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.CompanyDisplayAdapter.1
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
