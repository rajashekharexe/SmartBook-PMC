package de.keyboardsurfer.android.widget.crouton;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
final class Manager extends Handler {
    private static Manager INSTANCE;
    private final Queue<Crouton> croutonQueue = new LinkedBlockingQueue();

    private static final class Messages {
        public static final int ADD_CROUTON_TO_VIEW = -1040157475;
        public static final int DISPLAY_CROUTON = 794631;
        public static final int REMOVE_CROUTON = -1040155167;

        private Messages() {
        }
    }

    private Manager() {
    }

    static synchronized Manager getInstance() {
        Manager manager;
        synchronized (Manager.class) {
            if (INSTANCE == null) {
                INSTANCE = new Manager();
            }
            manager = INSTANCE;
        }
        return manager;
    }

    void add(Crouton crouton) {
        this.croutonQueue.add(crouton);
        displayCrouton();
    }

    private void displayCrouton() {
        if (this.croutonQueue.isEmpty()) {
            return;
        }
        Crouton peek = this.croutonQueue.peek();
        if (peek.getActivity() == null) {
            this.croutonQueue.poll();
        }
        if (!peek.isShowing()) {
            sendMessage(peek, Messages.ADD_CROUTON_TO_VIEW);
            if (peek.getLifecycleCallback() != null) {
                peek.getLifecycleCallback().onDisplayed();
                return;
            }
            return;
        }
        sendMessageDelayed(peek, Messages.DISPLAY_CROUTON, calculateCroutonDuration(peek));
    }

    private long calculateCroutonDuration(Crouton crouton) {
        return crouton.getConfiguration().durationInMilliseconds + crouton.getInAnimation().getDuration() + crouton.getOutAnimation().getDuration();
    }

    private void sendMessage(Crouton crouton, int i) {
        Message obtainMessage = obtainMessage(i);
        obtainMessage.obj = crouton;
        sendMessage(obtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessageDelayed(Crouton crouton, int i, long j) {
        Message obtainMessage = obtainMessage(i);
        obtainMessage.obj = crouton;
        sendMessageDelayed(obtainMessage, j);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Crouton crouton = (Crouton) message.obj;
        if (crouton == null) {
            return;
        }
        int i = message.what;
        if (i == -1040157475) {
            addCroutonToView(crouton);
            return;
        }
        if (i != -1040155167) {
            if (i == 794631) {
                displayCrouton();
                return;
            } else {
                super.handleMessage(message);
                return;
            }
        }
        removeCrouton(crouton);
        if (crouton.getLifecycleCallback() != null) {
            crouton.getLifecycleCallback().onRemoved();
        }
    }

    private void addCroutonToView(final Crouton crouton) {
        if (crouton.isShowing()) {
            return;
        }
        final View view = crouton.getView();
        if (view.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.MarginLayoutParams(-1, -2);
            }
            if (crouton.getViewGroup() != null) {
                ViewGroup viewGroup = crouton.getViewGroup();
                if (shouldAddViewWithoutPosition(viewGroup)) {
                    viewGroup.addView(view, layoutParams);
                } else {
                    viewGroup.addView(view, 0, layoutParams);
                }
            } else {
                Activity activity = crouton.getActivity();
                if (activity == null || activity.isFinishing()) {
                    return;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                handleTranslucentActionBar(marginLayoutParams, activity);
                handleActionBarOverlay(marginLayoutParams, activity);
                activity.addContentView(view, layoutParams);
            }
        }
        view.requestLayout();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: de.keyboardsurfer.android.widget.crouton.Manager.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    if (crouton.getInAnimation() != null) {
                        view.startAnimation(crouton.getInAnimation());
                        Manager.announceForAccessibilityCompat(crouton.getActivity(), crouton.getText());
                        if (-1 != crouton.getConfiguration().durationInMilliseconds) {
                            Manager.this.sendMessageDelayed(crouton, Messages.REMOVE_CROUTON, r1.getConfiguration().durationInMilliseconds + crouton.getInAnimation().getDuration());
                        }
                    }
                }
            });
        }
    }

    private boolean shouldAddViewWithoutPosition(ViewGroup viewGroup) {
        return (viewGroup instanceof FrameLayout) || (viewGroup instanceof AdapterView) || (viewGroup instanceof RelativeLayout);
    }

    private void handleTranslucentActionBar(ViewGroup.MarginLayoutParams marginLayoutParams, Activity activity) {
        if ((activity.getWindow().getAttributes().flags & 67108864) == 67108864) {
            setActionBarMargin(marginLayoutParams, activity);
        }
    }

    private void handleActionBarOverlay(ViewGroup.MarginLayoutParams marginLayoutParams, Activity activity) {
        if (activity.getWindow().hasFeature(9)) {
            setActionBarMargin(marginLayoutParams, activity);
        }
    }

    private void setActionBarMargin(ViewGroup.MarginLayoutParams marginLayoutParams, Activity activity) {
        View findViewById = activity.findViewById(Resources.getSystem().getIdentifier("action_bar_container", "id", AbstractSpiCall.ANDROID_CLIENT_TYPE));
        if (findViewById != null) {
            marginLayoutParams.topMargin = findViewById.getBottom();
        }
    }

    protected void removeCrouton(Crouton crouton) {
        View view = crouton.getView();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            view.startAnimation(crouton.getOutAnimation());
            Crouton poll = this.croutonQueue.poll();
            viewGroup.removeView(view);
            if (poll != null) {
                poll.detachActivity();
                poll.detachViewGroup();
                if (poll.getLifecycleCallback() != null) {
                    poll.getLifecycleCallback().onRemoved();
                }
                poll.detachLifecycleCallback();
            }
            sendMessageDelayed(crouton, Messages.DISPLAY_CROUTON, crouton.getOutAnimation().getDuration());
        }
    }

    void removeCroutonImmediately(Crouton crouton) {
        if (crouton.getActivity() != null && crouton.getView() != null && crouton.getView().getParent() != null) {
            ((ViewGroup) crouton.getView().getParent()).removeView(crouton.getView());
            removeAllMessagesForCrouton(crouton);
        }
        Iterator<Crouton> it = this.croutonQueue.iterator();
        while (it.hasNext()) {
            Crouton next = it.next();
            if (next.equals(crouton) && next.getActivity() != null) {
                removeCroutonFromViewParent(crouton);
                removeAllMessagesForCrouton(next);
                it.remove();
                return;
            }
        }
    }

    void clearCroutonQueue() {
        removeAllMessages();
        Iterator<Crouton> it = this.croutonQueue.iterator();
        while (it.hasNext()) {
            removeCroutonFromViewParent(it.next());
        }
        this.croutonQueue.clear();
    }

    void clearCroutonsForActivity(Activity activity) {
        Iterator<Crouton> it = this.croutonQueue.iterator();
        while (it.hasNext()) {
            Crouton next = it.next();
            if (next.getActivity() != null && next.getActivity().equals(activity)) {
                removeCroutonFromViewParent(next);
                removeAllMessagesForCrouton(next);
                it.remove();
            }
        }
    }

    private void removeCroutonFromViewParent(Crouton crouton) {
        ViewGroup viewGroup;
        if (!crouton.isShowing() || (viewGroup = (ViewGroup) crouton.getView().getParent()) == null) {
            return;
        }
        viewGroup.removeView(crouton.getView());
    }

    private void removeAllMessages() {
        removeMessages(Messages.ADD_CROUTON_TO_VIEW);
        removeMessages(Messages.DISPLAY_CROUTON);
        removeMessages(Messages.REMOVE_CROUTON);
    }

    private void removeAllMessagesForCrouton(Crouton crouton) {
        removeMessages(Messages.ADD_CROUTON_TO_VIEW, crouton);
        removeMessages(Messages.DISPLAY_CROUTON, crouton);
        removeMessages(Messages.REMOVE_CROUTON, crouton);
    }

    public static void announceForAccessibilityCompat(Context context, CharSequence charSequence) {
        AccessibilityManager accessibilityManager = context != null ? (AccessibilityManager) context.getSystemService("accessibility") : null;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
        obtain.getText().add(charSequence);
        obtain.setClassName(Manager.class.getName());
        obtain.setPackageName(context.getPackageName());
        accessibilityManager.sendAccessibilityEvent(obtain);
    }

    @Override // android.os.Handler
    public String toString() {
        return "Manager{croutonQueue=" + this.croutonQueue + '}';
    }
}
