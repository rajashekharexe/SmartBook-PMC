package io.fabric.sdk.android.services.events;

import java.io.IOException;

/* loaded from: classes2.dex */
public interface FileRollOverManager {
    void cancelTimeBasedFileRollOver();

    boolean rollFileOver() throws IOException;

    void scheduleTimeBasedRollOverIfNeeded();
}
