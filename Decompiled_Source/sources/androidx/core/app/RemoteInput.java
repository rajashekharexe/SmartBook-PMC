package androidx.core.app;

import android.app.RemoteInput;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class RemoteInput {
    public static final int EDIT_CHOICES_BEFORE_SENDING_AUTO = 0;
    public static final int EDIT_CHOICES_BEFORE_SENDING_DISABLED = 1;
    public static final int EDIT_CHOICES_BEFORE_SENDING_ENABLED = 2;
    private static final String EXTRA_DATA_TYPE_RESULTS_DATA = "android.remoteinput.dataTypeResultsData";
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    private static final String EXTRA_RESULTS_SOURCE = "android.remoteinput.resultsSource";
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";
    public static final int SOURCE_CHOICE = 1;
    public static final int SOURCE_FREE_FORM_INPUT = 0;
    private static final String TAG = "RemoteInput";
    private final boolean mAllowFreeFormTextInput;
    private final Set<String> mAllowedDataTypes;
    private final CharSequence[] mChoices;
    private final int mEditChoicesBeforeSending;
    private final Bundle mExtras;
    private final CharSequence mLabel;
    private final String mResultKey;

    @Retention(RetentionPolicy.SOURCE)
    public @interface EditChoicesBeforeSending {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Source {
    }

    RemoteInput(String resultKey, CharSequence label, CharSequence[] choices, boolean allowFreeFormTextInput, int editChoicesBeforeSending, Bundle extras, Set<String> allowedDataTypes) {
        this.mResultKey = resultKey;
        this.mLabel = label;
        this.mChoices = choices;
        this.mAllowFreeFormTextInput = allowFreeFormTextInput;
        this.mEditChoicesBeforeSending = editChoicesBeforeSending;
        this.mExtras = extras;
        this.mAllowedDataTypes = allowedDataTypes;
        if (getEditChoicesBeforeSending() == 2 && !getAllowFreeFormInput()) {
            throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        }
    }

    public String getResultKey() {
        return this.mResultKey;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    public CharSequence[] getChoices() {
        return this.mChoices;
    }

    public Set<String> getAllowedDataTypes() {
        return this.mAllowedDataTypes;
    }

    public boolean isDataOnly() {
        return (getAllowFreeFormInput() || (getChoices() != null && getChoices().length != 0) || getAllowedDataTypes() == null || getAllowedDataTypes().isEmpty()) ? false : true;
    }

    public boolean getAllowFreeFormInput() {
        return this.mAllowFreeFormTextInput;
    }

    public int getEditChoicesBeforeSending() {
        return this.mEditChoicesBeforeSending;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public static final class Builder {
        private CharSequence[] mChoices;
        private CharSequence mLabel;
        private final String mResultKey;
        private final Set<String> mAllowedDataTypes = new HashSet();
        private final Bundle mExtras = new Bundle();
        private boolean mAllowFreeFormTextInput = true;
        private int mEditChoicesBeforeSending = 0;

        public Builder(String resultKey) {
            if (resultKey == null) {
                throw new IllegalArgumentException("Result key can't be null");
            }
            this.mResultKey = resultKey;
        }

        public Builder setLabel(CharSequence label) {
            this.mLabel = label;
            return this;
        }

        public Builder setChoices(CharSequence[] choices) {
            this.mChoices = choices;
            return this;
        }

        public Builder setAllowDataType(String mimeType, boolean doAllow) {
            if (doAllow) {
                this.mAllowedDataTypes.add(mimeType);
            } else {
                this.mAllowedDataTypes.remove(mimeType);
            }
            return this;
        }

        public Builder setAllowFreeFormInput(boolean allowFreeFormTextInput) {
            this.mAllowFreeFormTextInput = allowFreeFormTextInput;
            return this;
        }

        public Builder setEditChoicesBeforeSending(int editChoicesBeforeSending) {
            this.mEditChoicesBeforeSending = editChoicesBeforeSending;
            return this;
        }

        public Builder addExtras(Bundle extras) {
            if (extras != null) {
                this.mExtras.putAll(extras);
            }
            return this;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public RemoteInput build() {
            return new RemoteInput(this.mResultKey, this.mLabel, this.mChoices, this.mAllowFreeFormTextInput, this.mEditChoicesBeforeSending, this.mExtras, this.mAllowedDataTypes);
        }
    }

    public static Map<String, Uri> getDataResultsFromIntent(Intent intent, String remoteInputResultKey) {
        String string;
        Map<String, Uri> dataResultsFromIntent;
        if (Build.VERSION.SDK_INT >= 26) {
            dataResultsFromIntent = android.app.RemoteInput.getDataResultsFromIntent(intent, remoteInputResultKey);
            return dataResultsFromIntent;
        }
        Intent clipDataIntentFromIntent = getClipDataIntentFromIntent(intent);
        if (clipDataIntentFromIntent == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : clipDataIntentFromIntent.getExtras().keySet()) {
            if (str.startsWith(EXTRA_DATA_TYPE_RESULTS_DATA)) {
                String substring = str.substring(39);
                if (!substring.isEmpty() && (string = clipDataIntentFromIntent.getBundleExtra(str).getString(remoteInputResultKey)) != null && !string.isEmpty()) {
                    hashMap.put(substring, Uri.parse(string));
                }
            }
        }
        if (hashMap.isEmpty()) {
            return null;
        }
        return hashMap;
    }

    public static Bundle getResultsFromIntent(Intent intent) {
        return android.app.RemoteInput.getResultsFromIntent(intent);
    }

    public static void addResultsToIntent(RemoteInput[] remoteInputs, Intent intent, Bundle results) {
        if (Build.VERSION.SDK_INT >= 26) {
            android.app.RemoteInput.addResultsToIntent(fromCompat(remoteInputs), intent, results);
            return;
        }
        Bundle resultsFromIntent = getResultsFromIntent(intent);
        int resultsSource = getResultsSource(intent);
        if (resultsFromIntent != null) {
            resultsFromIntent.putAll(results);
            results = resultsFromIntent;
        }
        for (RemoteInput remoteInput : remoteInputs) {
            Map<String, Uri> dataResultsFromIntent = getDataResultsFromIntent(intent, remoteInput.getResultKey());
            android.app.RemoteInput.addResultsToIntent(fromCompat(new RemoteInput[]{remoteInput}), intent, results);
            if (dataResultsFromIntent != null) {
                addDataResultToIntent(remoteInput, intent, dataResultsFromIntent);
            }
        }
        setResultsSource(intent, resultsSource);
    }

    public static void addDataResultToIntent(RemoteInput remoteInput, Intent intent, Map<String, Uri> results) {
        if (Build.VERSION.SDK_INT >= 26) {
            android.app.RemoteInput.addDataResultToIntent(fromCompat(remoteInput), intent, results);
            return;
        }
        Intent clipDataIntentFromIntent = getClipDataIntentFromIntent(intent);
        if (clipDataIntentFromIntent == null) {
            clipDataIntentFromIntent = new Intent();
        }
        for (Map.Entry<String, Uri> entry : results.entrySet()) {
            String key = entry.getKey();
            Uri value = entry.getValue();
            if (key != null) {
                Bundle bundleExtra = clipDataIntentFromIntent.getBundleExtra(getExtraResultsKeyForData(key));
                if (bundleExtra == null) {
                    bundleExtra = new Bundle();
                }
                bundleExtra.putString(remoteInput.getResultKey(), value.toString());
                clipDataIntentFromIntent.putExtra(getExtraResultsKeyForData(key), bundleExtra);
            }
        }
        intent.setClipData(ClipData.newIntent(RESULTS_CLIP_LABEL, clipDataIntentFromIntent));
    }

    public static void setResultsSource(Intent intent, int source) {
        if (Build.VERSION.SDK_INT >= 28) {
            android.app.RemoteInput.setResultsSource(intent, source);
            return;
        }
        Intent clipDataIntentFromIntent = getClipDataIntentFromIntent(intent);
        if (clipDataIntentFromIntent == null) {
            clipDataIntentFromIntent = new Intent();
        }
        clipDataIntentFromIntent.putExtra(EXTRA_RESULTS_SOURCE, source);
        intent.setClipData(ClipData.newIntent(RESULTS_CLIP_LABEL, clipDataIntentFromIntent));
    }

    public static int getResultsSource(Intent intent) {
        int resultsSource;
        if (Build.VERSION.SDK_INT >= 28) {
            resultsSource = android.app.RemoteInput.getResultsSource(intent);
            return resultsSource;
        }
        Intent clipDataIntentFromIntent = getClipDataIntentFromIntent(intent);
        if (clipDataIntentFromIntent == null) {
            return 0;
        }
        return clipDataIntentFromIntent.getExtras().getInt(EXTRA_RESULTS_SOURCE, 0);
    }

    private static String getExtraResultsKeyForData(String mimeType) {
        return EXTRA_DATA_TYPE_RESULTS_DATA + mimeType;
    }

    static android.app.RemoteInput[] fromCompat(RemoteInput[] srcArray) {
        if (srcArray == null) {
            return null;
        }
        android.app.RemoteInput[] remoteInputArr = new android.app.RemoteInput[srcArray.length];
        for (int i = 0; i < srcArray.length; i++) {
            remoteInputArr[i] = fromCompat(srcArray[i]);
        }
        return remoteInputArr;
    }

    static android.app.RemoteInput fromCompat(RemoteInput src) {
        Set<String> allowedDataTypes;
        RemoteInput.Builder addExtras = new RemoteInput.Builder(src.getResultKey()).setLabel(src.getLabel()).setChoices(src.getChoices()).setAllowFreeFormInput(src.getAllowFreeFormInput()).addExtras(src.getExtras());
        if (Build.VERSION.SDK_INT >= 26 && (allowedDataTypes = src.getAllowedDataTypes()) != null) {
            Iterator<String> it = allowedDataTypes.iterator();
            while (it.hasNext()) {
                addExtras.setAllowDataType(it.next(), true);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            addExtras.setEditChoicesBeforeSending(src.getEditChoicesBeforeSending());
        }
        return addExtras.build();
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x002f, code lost:
    
        r1 = r4.getAllowedDataTypes();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static androidx.core.app.RemoteInput fromPlatform(android.app.RemoteInput r4) {
        /*
            androidx.core.app.RemoteInput$Builder r0 = new androidx.core.app.RemoteInput$Builder
            java.lang.String r1 = r4.getResultKey()
            r0.<init>(r1)
            java.lang.CharSequence r1 = r4.getLabel()
            androidx.core.app.RemoteInput$Builder r0 = r0.setLabel(r1)
            java.lang.CharSequence[] r1 = r4.getChoices()
            androidx.core.app.RemoteInput$Builder r0 = r0.setChoices(r1)
            boolean r1 = r4.getAllowFreeFormInput()
            androidx.core.app.RemoteInput$Builder r0 = r0.setAllowFreeFormInput(r1)
            android.os.Bundle r1 = r4.getExtras()
            androidx.core.app.RemoteInput$Builder r0 = r0.addExtras(r1)
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 26
            if (r1 < r2) goto L4a
            java.util.Set r1 = androidx.core.app.Person$$ExternalSyntheticApiModelOutline0.m(r4)
            if (r1 == 0) goto L4a
            java.util.Iterator r1 = r1.iterator()
        L39:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L4a
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            r3 = 1
            r0.setAllowDataType(r2, r3)
            goto L39
        L4a:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 29
            if (r1 < r2) goto L57
            int r4 = androidx.core.app.NotificationCompat$$ExternalSyntheticApiModelOutline0.m(r4)
            r0.setEditChoicesBeforeSending(r4)
        L57:
            androidx.core.app.RemoteInput r4 = r0.build()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.RemoteInput.fromPlatform(android.app.RemoteInput):androidx.core.app.RemoteInput");
    }

    private static Intent getClipDataIntentFromIntent(Intent intent) {
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return null;
        }
        ClipDescription description = clipData.getDescription();
        if (description.hasMimeType("text/vnd.android.intent") && description.getLabel().toString().contentEquals(RESULTS_CLIP_LABEL)) {
            return clipData.getItemAt(0).getIntent();
        }
        return null;
    }
}
