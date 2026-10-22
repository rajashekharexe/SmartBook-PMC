package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.conceptglobal.pmc.model.FarmerCropAcerages;
import com.conceptglobal.pmc.utils.Search;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.List;

/* loaded from: classes.dex */
public class FarmerWiseCropsAcerages extends BaseAdapter {
    private List<FarmerCropAcerages> listCropAcerages;
    public Context mContext;
    private LayoutInflater mInflate;
    private String searchString = "";
    private int pos = 0;
    FarmerWiseCropsAcerages adapter = this;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public FarmerWiseCropsAcerages(Context context, List<FarmerCropAcerages> list) {
        this.mContext = context;
        this.listCropAcerages = list;
        this.mInflate = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.listCropAcerages.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    private class ViewHolder {
        private LinearLayout cropLL;
        private EditText edittextNewValues;
        private EditText edittextOldValues;
        private int pos;
        private TextView textviewCropName;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        final ViewHolder viewHolder;
        if (view == null) {
            viewHolder = new ViewHolder();
            view2 = this.mInflate.inflate(R.layout.crop_acerages_list_items, viewGroup, false);
            viewHolder.cropLL = (LinearLayout) view2.findViewById(R.id.cropLL);
            viewHolder.textviewCropName = (TextView) view2.findViewById(R.id.textview_crop_name);
            viewHolder.edittextOldValues = (EditText) view2.findViewById(R.id.et_old_values);
            viewHolder.edittextNewValues = (EditText) view2.findViewById(R.id.et_new_values);
            view2.setTag(viewHolder);
        } else {
            view2 = view;
            viewHolder = (ViewHolder) view.getTag();
        }
        viewHolder.pos = i;
        if (this.listCropAcerages.get(i).getOldRecordFlag().equals(this.listCropAcerages.get(i).getNewRecordFlag())) {
            viewHolder.cropLL.setBackgroundColor(this.mContext.getResources().getColor(R.color.gray2));
        } else {
            viewHolder.cropLL.setBackgroundColor(this.mContext.getResources().getColor(R.color.white));
        }
        viewHolder.textviewCropName.setText(Search.getString(this.searchString, this.listCropAcerages.get(i).getCropName()));
        viewHolder.edittextOldValues.setText(Search.getString(this.searchString, this.listCropAcerages.get(i).getAceragesOld()));
        viewHolder.edittextNewValues.setText(this.listCropAcerages.get(i).getAceragesNew());
        if (this.listCropAcerages.get(i).getAceragesNew() == null) {
            viewHolder.edittextNewValues.setVisibility(4);
        }
        viewHolder.edittextNewValues.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.adapter.FarmerWiseCropsAcerages.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ((FarmerCropAcerages) FarmerWiseCropsAcerages.this.listCropAcerages.get(viewHolder.pos)).setAceragesNew(editable.toString());
            }
        });
        return view2;
    }
}
