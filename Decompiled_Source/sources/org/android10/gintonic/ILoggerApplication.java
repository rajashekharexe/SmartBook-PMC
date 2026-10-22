package org.android10.gintonic;

import android.app.Application;
import android.content.Context;

/* loaded from: classes2.dex */
public class ILoggerApplication extends Application {
    public static ILoggerApplication iLoggerApplication;

    public ILoggerApplication() {
        iLoggerApplication = this;
    }

    public static Context getContext() {
        return iLoggerApplication;
    }
}
