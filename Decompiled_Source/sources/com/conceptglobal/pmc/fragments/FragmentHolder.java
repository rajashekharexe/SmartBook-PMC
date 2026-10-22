package com.conceptglobal.pmc.fragments;

/* loaded from: classes.dex */
public class FragmentHolder {
    private static FragmentHolder instance;
    private WebViewFragment webViewFragment;

    private FragmentHolder() {
    }

    public static FragmentHolder getInstance() {
        if (instance == null) {
            instance = new FragmentHolder();
        }
        return instance;
    }

    public WebViewFragment getFragment() {
        return this.webViewFragment;
    }

    public void setFragment(WebViewFragment webViewFragment) {
        this.webViewFragment = webViewFragment;
    }
}
