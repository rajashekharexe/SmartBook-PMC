package com.conceptglobal.pmc;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class ExitActivity extends BaseActivity {
    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        finishAndRemoveTask();
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    public static void exitApplicationAnRemoveFromRecent(Context context) {
        Intent intent = new Intent(context, (Class<?>) ExitActivity.class);
        intent.addFlags(276922368);
        context.startActivity(intent);
    }
}
