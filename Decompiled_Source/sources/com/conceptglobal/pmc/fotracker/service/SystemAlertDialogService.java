package com.conceptglobal.pmc.fotracker.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class SystemAlertDialogService extends Service implements View.OnTouchListener {
    private static final String TAG = "SystemAlertDialogService";
    private View floatyView;
    String msg = "";
    private WindowManager windowManager;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.windowManager = (WindowManager) getSystemService("window");
        addOverlayView();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        this.msg = intent.getStringExtra(NotificationCompat.CATEGORY_MESSAGE);
        return 2;
    }

    private void addOverlayView() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -2, 2038, 0, -3);
        layoutParams.gravity = 8388627;
        layoutParams.x = 0;
        layoutParams.y = 0;
        View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.floating_view, new FrameLayout(this) { // from class: com.conceptglobal.pmc.fotracker.service.SystemAlertDialogService.1
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                if (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 4) {
                    Log.v(SystemAlertDialogService.TAG, "BACK Button Pressed");
                    return true;
                }
                return super.dispatchKeyEvent(keyEvent);
            }
        });
        this.floatyView = inflate;
        inflate.setOnTouchListener(this);
        ((TextView) this.floatyView.findViewById(R.id.errmsg)).setText(TextUtils.isEmpty(this.msg) ? "Something went wrong, open app" : this.msg);
        this.windowManager.addView(this.floatyView, layoutParams);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        View view = this.floatyView;
        if (view != null) {
            this.windowManager.removeView(view);
            this.floatyView = null;
            stopSelf();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        Log.v(TAG, "onTouch...");
        stopSelf();
        return true;
    }
}
