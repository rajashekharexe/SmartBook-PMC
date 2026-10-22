package com.conceptglobal.pmc.smartalerts.locationservice;

import android.app.NotificationManager;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class MessageActivity extends AppCompatActivity implements View.OnClickListener {
    private int id = -1;
    AppCompatTextView message;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.message);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) findViewById(R.id.message);
        this.message = appCompatTextView;
        appCompatTextView.setOnClickListener(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        String stringExtra = getIntent().getStringExtra("message");
        this.id = getIntent().getIntExtra(ConstantDeclarations.ID_EXTRA_KEY, -1);
        this.message.setText(stringExtra);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        closeNotificationAndDialog();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        closeNotificationAndDialog();
    }

    private void closeNotificationAndDialog() {
        if (this.id != -1) {
            ((NotificationManager) getSystemService("notification")).cancel(this.id);
        }
        finish();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            closeNotificationAndDialog();
            return true;
        }
        throw new IllegalArgumentException("options menu: unknown item selected");
    }
}
