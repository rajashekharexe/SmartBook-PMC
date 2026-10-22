package com.conceptglobal.pmc.utils;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import com.conceptglobal.pmc.database.GetDataFromDB;

/* loaded from: classes.dex */
public class CustomAppPatchDialog extends Dialog {
    private static final String TAG = "CustomAppPatchDialog";
    Context context;
    String filePath;

    private void updatePatchStatusTable(String str) {
    }

    public CustomAppPatchDialog(Context context, String str) {
        super(context);
        this.context = context;
        this.filePath = str;
    }

    public void showDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setCancelable(false);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_latestAppAvailAlert()));
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.utils.CustomAppPatchDialog.1
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
}
