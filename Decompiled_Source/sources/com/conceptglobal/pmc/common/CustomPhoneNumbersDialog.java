package com.conceptglobal.pmc.common;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.imaterialdesign.app.Dialog;
import com.conceptglobal.pmc.adapter.PhoneNumbersDialogListAdapter;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.List;

/* loaded from: classes.dex */
public class CustomPhoneNumbersDialog extends Dialog {
    private static final String TAG = "CustomCheckBoxDialog";
    Context context;
    private CustomPhoneNumbersDialog mDialog;

    public CustomPhoneNumbersDialog(Context context) {
        super(context, R.style.SimpleDialogLight);
        this.mDialog = this;
        this.context = context;
        title(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectNumTo())).cancelable(true);
        negativeAction(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()));
        contentView(R.layout.custom_dialog_list_view);
    }

    public void showDialog(List<String> list, int i) {
        negativeActionClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.common.CustomPhoneNumbersDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CustomPhoneNumbersDialog.this.mDialog.dismiss();
            }
        });
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.list);
        TextView textView = (TextView) findViewById(R.id.nonumberstxt);
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context);
        linearLayoutManager.setOrientation(1);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (list != null && list.size() > 0) {
            textView.setVisibility(8);
            recyclerView.setVisibility(0);
            recyclerView.setAdapter(new PhoneNumbersDialogListAdapter(this.context, list, i));
        } else {
            textView.setVisibility(0);
            textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noNumFoundInDailOrSms()));
            recyclerView.setVisibility(8);
        }
        this.mDialog.show();
    }
}
