package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.conceptglobal.pmc.model.FarmerCropAcerages;
import java.util.List;

/* compiled from: FarmerWiseCropsAcerages.java */
/* loaded from: classes.dex */
class MyTextWatcher implements TextWatcher {
    FarmerWiseCropsAcerages adapter;
    EditText editTextnewvalues;
    List<FarmerCropAcerages> listCropAcerages;
    Context mContext;
    int position;
    private View view;

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    MyTextWatcher(View view, List<FarmerCropAcerages> list, int i, Context context, FarmerWiseCropsAcerages farmerWiseCropsAcerages) {
        this.view = view;
        this.listCropAcerages = list;
        this.position = i;
        this.mContext = context;
        this.adapter = farmerWiseCropsAcerages;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.listCropAcerages.get(this.position).setAceragesNew(this.editTextnewvalues.getText().toString());
        this.adapter.notifyDataSetChanged();
        Toast.makeText(this.mContext, "val--" + this.listCropAcerages.get(this.position).getAceragesNew(), 0).show();
    }
}
