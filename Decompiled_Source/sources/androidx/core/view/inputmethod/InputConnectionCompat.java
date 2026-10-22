package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.print.PrintHelper$$ExternalSyntheticApiModelOutline0;

/* loaded from: classes.dex */
public final class InputConnectionCompat {
    private static final String COMMIT_CONTENT_ACTION = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";
    private static final String COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI";
    private static final String COMMIT_CONTENT_CONTENT_URI_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI";
    private static final String COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
    private static final String COMMIT_CONTENT_DESCRIPTION_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
    private static final String COMMIT_CONTENT_FLAGS_INTEROP_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
    private static final String COMMIT_CONTENT_FLAGS_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
    private static final String COMMIT_CONTENT_INTEROP_ACTION = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";
    private static final String COMMIT_CONTENT_LINK_URI_INTEROP_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
    private static final String COMMIT_CONTENT_LINK_URI_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
    private static final String COMMIT_CONTENT_OPTS_INTEROP_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
    private static final String COMMIT_CONTENT_OPTS_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
    private static final String COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";
    private static final String COMMIT_CONTENT_RESULT_RECEIVER_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";
    public static final int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;

    public interface OnCommitContentListener {
        boolean onCommitContent(InputContentInfoCompat inputContentInfo, int flags, Bundle opts);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    static boolean handlePerformPrivateCommand(String str, Bundle bundle, OnCommitContentListener onCommitContentListener) {
        boolean z;
        String str2;
        ResultReceiver resultReceiver;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        ?? r0 = 0;
        r0 = 0;
        if (bundle == null) {
            return false;
        }
        if (TextUtils.equals(COMMIT_CONTENT_ACTION, str)) {
            z = false;
        } else {
            if (!TextUtils.equals(COMMIT_CONTENT_INTEROP_ACTION, str)) {
                return false;
            }
            z = true;
        }
        if (z) {
            str2 = COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY;
        } else {
            str2 = COMMIT_CONTENT_RESULT_RECEIVER_KEY;
        }
        try {
            resultReceiver = (ResultReceiver) bundle.getParcelable(str2);
            if (z) {
                str3 = COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY;
            } else {
                str3 = COMMIT_CONTENT_CONTENT_URI_KEY;
            }
            try {
                Uri uri = (Uri) bundle.getParcelable(str3);
                if (z) {
                    str4 = COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY;
                } else {
                    str4 = COMMIT_CONTENT_DESCRIPTION_KEY;
                }
                ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(str4);
                if (z) {
                    str5 = COMMIT_CONTENT_LINK_URI_INTEROP_KEY;
                } else {
                    str5 = COMMIT_CONTENT_LINK_URI_KEY;
                }
                Uri uri2 = (Uri) bundle.getParcelable(str5);
                if (z) {
                    str6 = COMMIT_CONTENT_FLAGS_INTEROP_KEY;
                } else {
                    str6 = COMMIT_CONTENT_FLAGS_KEY;
                }
                int i = bundle.getInt(str6);
                if (z) {
                    str7 = COMMIT_CONTENT_OPTS_INTEROP_KEY;
                } else {
                    str7 = COMMIT_CONTENT_OPTS_KEY;
                }
                Bundle bundle2 = (Bundle) bundle.getParcelable(str7);
                if (uri != null && clipDescription != null) {
                    r0 = onCommitContentListener.onCommitContent(new InputContentInfoCompat(uri, clipDescription, uri2), i, bundle2);
                }
                if (resultReceiver != 0) {
                    resultReceiver.send(r0, null);
                }
                return r0;
            } catch (Throwable th) {
                th = th;
                if (resultReceiver != 0) {
                    resultReceiver.send(0, null);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            resultReceiver = 0;
        }
    }

    public static boolean commitContent(InputConnection inputConnection, EditorInfo editorInfo, InputContentInfoCompat inputContentInfo, int flags, Bundle opts) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        boolean commitContent;
        ClipDescription description = inputContentInfo.getDescription();
        boolean z = false;
        for (String str7 : EditorInfoCompat.getContentMimeTypes(editorInfo)) {
            if (description.hasMimeType(str7)) {
                if (Build.VERSION.SDK_INT >= 25) {
                    commitContent = inputConnection.commitContent(PrintHelper$$ExternalSyntheticApiModelOutline0.m(inputContentInfo.unwrap()), flags, opts);
                    return commitContent;
                }
                int protocol = EditorInfoCompat.getProtocol(editorInfo);
                if (protocol == 2) {
                    z = true;
                } else if (protocol != 3 && protocol != 4) {
                    return false;
                }
                Bundle bundle = new Bundle();
                if (z) {
                    str = COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY;
                } else {
                    str = COMMIT_CONTENT_CONTENT_URI_KEY;
                }
                bundle.putParcelable(str, inputContentInfo.getContentUri());
                if (z) {
                    str2 = COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY;
                } else {
                    str2 = COMMIT_CONTENT_DESCRIPTION_KEY;
                }
                bundle.putParcelable(str2, inputContentInfo.getDescription());
                if (z) {
                    str3 = COMMIT_CONTENT_LINK_URI_INTEROP_KEY;
                } else {
                    str3 = COMMIT_CONTENT_LINK_URI_KEY;
                }
                bundle.putParcelable(str3, inputContentInfo.getLinkUri());
                if (z) {
                    str4 = COMMIT_CONTENT_FLAGS_INTEROP_KEY;
                } else {
                    str4 = COMMIT_CONTENT_FLAGS_KEY;
                }
                bundle.putInt(str4, flags);
                if (z) {
                    str5 = COMMIT_CONTENT_OPTS_INTEROP_KEY;
                } else {
                    str5 = COMMIT_CONTENT_OPTS_KEY;
                }
                bundle.putParcelable(str5, opts);
                if (z) {
                    str6 = COMMIT_CONTENT_INTEROP_ACTION;
                } else {
                    str6 = COMMIT_CONTENT_ACTION;
                }
                return inputConnection.performPrivateCommand(str6, bundle);
            }
        }
        return false;
    }

    public static InputConnection createWrapper(InputConnection inputConnection, EditorInfo editorInfo, final OnCommitContentListener onCommitContentListener) {
        if (inputConnection == null) {
            throw new IllegalArgumentException("inputConnection must be non-null");
        }
        if (editorInfo == null) {
            throw new IllegalArgumentException("editorInfo must be non-null");
        }
        if (onCommitContentListener == null) {
            throw new IllegalArgumentException("onCommitContentListener must be non-null");
        }
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 25) {
            return new InputConnectionWrapper(inputConnection, z) { // from class: androidx.core.view.inputmethod.InputConnectionCompat.1
                @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
                public boolean commitContent(InputContentInfo inputContentInfo, int flags, Bundle opts) {
                    if (onCommitContentListener.onCommitContent(InputContentInfoCompat.wrap(inputContentInfo), flags, opts)) {
                        return true;
                    }
                    return super.commitContent(inputContentInfo, flags, opts);
                }
            };
        }
        return EditorInfoCompat.getContentMimeTypes(editorInfo).length == 0 ? inputConnection : new InputConnectionWrapper(inputConnection, z) { // from class: androidx.core.view.inputmethod.InputConnectionCompat.2
            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public boolean performPrivateCommand(String action, Bundle data) {
                if (InputConnectionCompat.handlePerformPrivateCommand(action, data, onCommitContentListener)) {
                    return true;
                }
                return super.performPrivateCommand(action, data);
            }
        };
    }

    @Deprecated
    public InputConnectionCompat() {
    }
}
