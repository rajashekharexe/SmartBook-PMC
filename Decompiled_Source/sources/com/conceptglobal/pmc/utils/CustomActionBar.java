package com.conceptglobal.pmc.utils;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class CustomActionBar {
    private static Toolbar mToolbar;
    private static TextView toolbarTitle;

    public static Toolbar initActionBarNoStatus(AppCompatActivity appCompatActivity, String str) {
        Toolbar toolbar = (Toolbar) appCompatActivity.findViewById(R.id.toolbar);
        mToolbar = toolbar;
        appCompatActivity.setSupportActionBar(toolbar);
        appCompatActivity.getSupportActionBar().setTitle(str);
        appCompatActivity.getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        WindowCompat.setDecorFitsSystemWindows(appCompatActivity.getWindow(), false);
        ViewCompat.setOnApplyWindowInsetsListener(mToolbar, new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.utils.CustomActionBar.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                view.setPadding(view.getPaddingLeft(), windowInsetsCompat.getInsets(WindowInsetsCompat.Type.statusBars()).top, view.getPaddingRight(), view.getPaddingBottom());
                return windowInsetsCompat;
            }
        });
        return mToolbar;
    }

    public static Toolbar initActionBar(AppCompatActivity appCompatActivity, String str) {
        Toolbar toolbar = (Toolbar) appCompatActivity.findViewById(R.id.toolbar);
        mToolbar = toolbar;
        appCompatActivity.setSupportActionBar(toolbar);
        try {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                appCompatActivity.getSupportActionBar().setTitle(str.substring(0, str.indexOf(40) + 1) + "T- " + str.substring(str.indexOf(40) + 1));
            } else {
                appCompatActivity.getSupportActionBar().setTitle(str.substring(0, str.indexOf(40) + 1) + "L- " + str.substring(str.indexOf(40) + 1));
            }
        } catch (Exception unused) {
            appCompatActivity.getSupportActionBar().setTitle(str);
        }
        appCompatActivity.getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        WindowCompat.setDecorFitsSystemWindows(appCompatActivity.getWindow(), false);
        ViewCompat.setOnApplyWindowInsetsListener(mToolbar, new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.utils.CustomActionBar.2
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                view.setPadding(view.getPaddingLeft(), windowInsetsCompat.getInsets(WindowInsetsCompat.Type.statusBars()).top, view.getPaddingRight(), view.getPaddingBottom());
                return windowInsetsCompat;
            }
        });
        return mToolbar;
    }

    public static Toolbar initActionBar(AppCompatActivity appCompatActivity, String str, boolean z) {
        Toolbar toolbar = (Toolbar) appCompatActivity.findViewById(R.id.toolbar);
        mToolbar = toolbar;
        appCompatActivity.setSupportActionBar(toolbar);
        appCompatActivity.getSupportActionBar().setTitle(str);
        appCompatActivity.getSupportActionBar().setDisplayHomeAsUpEnabled(z);
        return mToolbar;
    }

    public static Toolbar initActionBarImage(AppCompatActivity appCompatActivity, String str) {
        Toolbar toolbar = (Toolbar) appCompatActivity.findViewById(R.id.toolbar);
        mToolbar = toolbar;
        appCompatActivity.setSupportActionBar(toolbar);
        appCompatActivity.getSupportActionBar().setTitle(str);
        appCompatActivity.getSupportActionBar().setIcon(R.drawable.home_white);
        appCompatActivity.getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        return mToolbar;
    }
}
