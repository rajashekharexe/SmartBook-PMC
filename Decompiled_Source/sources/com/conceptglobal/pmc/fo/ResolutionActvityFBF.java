package com.conceptglobal.pmc.fo;

import android.app.Activity;
import android.os.Bundle;
import com.conceptglobal.imaterialdesign.widget.Button;
import com.conceptglobal.imaterialdesign.widget.EditText;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class ResolutionActvityFBF extends Activity {
    private Button btnResolutionDiscription;
    private EditText etResolutionDiscription;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.fragment_resolution_tab);
    }
}
