package com.crashlytics.android.core;

import com.crashlytics.android.core.Report;

/* loaded from: classes.dex */
class CompositeCreateReportSpiCall implements CreateReportSpiCall {
    private final DefaultCreateReportSpiCall javaReportSpiCall;
    private final NativeCreateReportSpiCall nativeReportSpiCall;

    public CompositeCreateReportSpiCall(DefaultCreateReportSpiCall defaultCreateReportSpiCall, NativeCreateReportSpiCall nativeCreateReportSpiCall) {
        this.javaReportSpiCall = defaultCreateReportSpiCall;
        this.nativeReportSpiCall = nativeCreateReportSpiCall;
    }

    /* renamed from: com.crashlytics.android.core.CompositeCreateReportSpiCall$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$crashlytics$android$core$Report$Type;

        static {
            int[] iArr = new int[Report.Type.values().length];
            $SwitchMap$com$crashlytics$android$core$Report$Type = iArr;
            try {
                iArr[Report.Type.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$crashlytics$android$core$Report$Type[Report.Type.NATIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.crashlytics.android.core.CreateReportSpiCall
    public boolean invoke(CreateReportRequest createReportRequest) {
        int i = AnonymousClass1.$SwitchMap$com$crashlytics$android$core$Report$Type[createReportRequest.report.getType().ordinal()];
        if (i == 1) {
            this.javaReportSpiCall.invoke(createReportRequest);
            return true;
        }
        if (i != 2) {
            return false;
        }
        this.nativeReportSpiCall.invoke(createReportRequest);
        return true;
    }
}
