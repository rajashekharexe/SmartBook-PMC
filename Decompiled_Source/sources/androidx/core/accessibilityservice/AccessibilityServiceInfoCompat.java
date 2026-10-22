package androidx.core.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.PackageManager;

/* loaded from: classes.dex */
public final class AccessibilityServiceInfoCompat {
    public static final int CAPABILITY_CAN_FILTER_KEY_EVENTS = 8;
    public static final int CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 4;
    public static final int CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION = 2;
    public static final int CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT = 1;
    public static final int FEEDBACK_ALL_MASK = -1;
    public static final int FEEDBACK_BRAILLE = 32;
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 8;
    public static final int FLAG_REQUEST_FILTER_KEY_EVENTS = 32;
    public static final int FLAG_REQUEST_TOUCH_EXPLORATION_MODE = 4;

    private AccessibilityServiceInfoCompat() {
    }

    public static String loadDescription(AccessibilityServiceInfo info, PackageManager packageManager) {
        return info.loadDescription(packageManager);
    }

    public static String feedbackTypeToString(int feedbackType) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        while (feedbackType > 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(feedbackType);
            feedbackType &= ~numberOfTrailingZeros;
            if (sb.length() > 1) {
                sb.append(", ");
            }
            if (numberOfTrailingZeros == 1) {
                sb.append("FEEDBACK_SPOKEN");
            } else if (numberOfTrailingZeros == 2) {
                sb.append("FEEDBACK_HAPTIC");
            } else if (numberOfTrailingZeros == 4) {
                sb.append("FEEDBACK_AUDIBLE");
            } else if (numberOfTrailingZeros == 8) {
                sb.append("FEEDBACK_VISUAL");
            } else if (numberOfTrailingZeros == 16) {
                sb.append("FEEDBACK_GENERIC");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static String flagToString(int flag) {
        if (flag == 1) {
            return "DEFAULT";
        }
        if (flag == 2) {
            return "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS";
        }
        if (flag == 4) {
            return "FLAG_REQUEST_TOUCH_EXPLORATION_MODE";
        }
        if (flag == 8) {
            return "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
        }
        if (flag == 16) {
            return "FLAG_REPORT_VIEW_IDS";
        }
        if (flag != 32) {
            return null;
        }
        return "FLAG_REQUEST_FILTER_KEY_EVENTS";
    }

    public static int getCapabilities(AccessibilityServiceInfo info) {
        return info.getCapabilities();
    }

    public static String capabilityToString(int capability) {
        if (capability == 1) {
            return "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT";
        }
        if (capability == 2) {
            return "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION";
        }
        if (capability == 4) {
            return "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
        }
        if (capability == 8) {
            return "CAPABILITY_CAN_FILTER_KEY_EVENTS";
        }
        return "UNKNOWN";
    }
}
