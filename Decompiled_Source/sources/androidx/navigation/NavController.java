package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.app.TaskStackBuilder;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class NavController {
    private static final String KEY_BACK_STACK = "android-support-nav:controller:backStack";
    static final String KEY_DEEP_LINK_EXTRAS = "android-support-nav:controller:deepLinkExtras";
    static final String KEY_DEEP_LINK_HANDLED = "android-support-nav:controller:deepLinkHandled";
    static final String KEY_DEEP_LINK_IDS = "android-support-nav:controller:deepLinkIds";
    public static final String KEY_DEEP_LINK_INTENT = "android-support-nav:controller:deepLinkIntent";
    private static final String KEY_NAVIGATOR_STATE = "android-support-nav:controller:navigatorState";
    private static final String KEY_NAVIGATOR_STATE_NAMES = "android-support-nav:controller:navigatorState:names";
    private static final String TAG = "NavController";
    private Activity mActivity;
    private Parcelable[] mBackStackToRestore;
    private final Context mContext;
    private boolean mDeepLinkHandled;
    NavGraph mGraph;
    private NavInflater mInflater;
    private LifecycleOwner mLifecycleOwner;
    private Bundle mNavigatorStateToRestore;
    private NavControllerViewModel mViewModel;
    final Deque<NavBackStackEntry> mBackStack = new ArrayDeque();
    private final NavigatorProvider mNavigatorProvider = new NavigatorProvider();
    private final CopyOnWriteArrayList<OnDestinationChangedListener> mOnDestinationChangedListeners = new CopyOnWriteArrayList<>();
    private final LifecycleObserver mLifecycleObserver = new LifecycleEventObserver() { // from class: androidx.navigation.NavController.1
        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            if (NavController.this.mGraph != null) {
                Iterator<NavBackStackEntry> it = NavController.this.mBackStack.iterator();
                while (it.hasNext()) {
                    it.next().handleLifecycleEvent(event);
                }
            }
        }
    };
    private final OnBackPressedCallback mOnBackPressedCallback = new OnBackPressedCallback(false) { // from class: androidx.navigation.NavController.2
        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            NavController.this.popBackStack();
        }
    };
    private boolean mEnableOnBackPressedCallback = true;

    public interface OnDestinationChangedListener {
        void onDestinationChanged(NavController navController, NavDestination navDestination, Bundle bundle);
    }

    public NavController(Context context) {
        this.mContext = context;
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                break;
            }
            if (context instanceof Activity) {
                this.mActivity = (Activity) context;
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        this.mNavigatorProvider.addNavigator(new NavGraphNavigator(this.mNavigatorProvider));
        this.mNavigatorProvider.addNavigator(new ActivityNavigator(this.mContext));
    }

    Context getContext() {
        return this.mContext;
    }

    public NavigatorProvider getNavigatorProvider() {
        return this.mNavigatorProvider;
    }

    public void addOnDestinationChangedListener(OnDestinationChangedListener onDestinationChangedListener) {
        if (!this.mBackStack.isEmpty()) {
            NavBackStackEntry peekLast = this.mBackStack.peekLast();
            onDestinationChangedListener.onDestinationChanged(this, peekLast.getDestination(), peekLast.getArguments());
        }
        this.mOnDestinationChangedListeners.add(onDestinationChangedListener);
    }

    public void removeOnDestinationChangedListener(OnDestinationChangedListener onDestinationChangedListener) {
        this.mOnDestinationChangedListeners.remove(onDestinationChangedListener);
    }

    public boolean popBackStack() {
        if (this.mBackStack.isEmpty()) {
            return false;
        }
        return popBackStack(getCurrentDestination().getId(), true);
    }

    public boolean popBackStack(int i, boolean z) {
        return popBackStackInternal(i, z) && dispatchOnDestinationChanged();
    }

    boolean popBackStackInternal(int i, boolean z) {
        boolean z2 = false;
        if (this.mBackStack.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<NavBackStackEntry> descendingIterator = this.mBackStack.descendingIterator();
        while (descendingIterator.hasNext()) {
            NavDestination destination = descendingIterator.next().getDestination();
            Navigator navigator = this.mNavigatorProvider.getNavigator(destination.getNavigatorName());
            if (z || destination.getId() != i) {
                arrayList.add(navigator);
            }
            if (destination.getId() == i) {
                Iterator it = arrayList.iterator();
                while (it.hasNext() && ((Navigator) it.next()).popBackStack()) {
                    NavBackStackEntry removeLast = this.mBackStack.removeLast();
                    removeLast.setMaxLifecycle(Lifecycle.State.DESTROYED);
                    NavControllerViewModel navControllerViewModel = this.mViewModel;
                    if (navControllerViewModel != null) {
                        navControllerViewModel.clear(removeLast.mId);
                    }
                    z2 = true;
                }
                updateOnBackPressedCallbackEnabled();
                return z2;
            }
        }
        Log.i(TAG, "Ignoring popBackStack to destination " + NavDestination.getDisplayName(this.mContext, i) + " as it was not found on the current back stack");
        return false;
    }

    public boolean navigateUp() {
        if (getDestinationCountOnBackStack() == 1) {
            NavDestination currentDestination = getCurrentDestination();
            int id = currentDestination.getId();
            for (NavGraph parent = currentDestination.getParent(); parent != null; parent = parent.getParent()) {
                if (parent.getStartDestination() != id) {
                    new NavDeepLinkBuilder(this).setDestination(parent.getId()).createTaskStackBuilder().startActivities();
                    Activity activity = this.mActivity;
                    if (activity != null) {
                        activity.finish();
                    }
                    return true;
                }
                id = parent.getId();
            }
            return false;
        }
        return popBackStack();
    }

    private int getDestinationCountOnBackStack() {
        Iterator<NavBackStackEntry> it = this.mBackStack.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (!(it.next().getDestination() instanceof NavGraph)) {
                i++;
            }
        }
        return i;
    }

    private boolean dispatchOnDestinationChanged() {
        NavDestination navDestination;
        while (!this.mBackStack.isEmpty() && (this.mBackStack.peekLast().getDestination() instanceof NavGraph) && popBackStackInternal(this.mBackStack.peekLast().getDestination().getId(), true)) {
        }
        if (this.mBackStack.isEmpty()) {
            return false;
        }
        NavDestination destination = this.mBackStack.peekLast().getDestination();
        if (destination instanceof FloatingWindow) {
            Iterator<NavBackStackEntry> descendingIterator = this.mBackStack.descendingIterator();
            while (descendingIterator.hasNext()) {
                navDestination = descendingIterator.next().getDestination();
                if (!(navDestination instanceof NavGraph) && !(navDestination instanceof FloatingWindow)) {
                    break;
                }
            }
        }
        navDestination = null;
        HashMap hashMap = new HashMap();
        Iterator<NavBackStackEntry> descendingIterator2 = this.mBackStack.descendingIterator();
        while (descendingIterator2.hasNext()) {
            NavBackStackEntry next = descendingIterator2.next();
            Lifecycle.State maxLifecycle = next.getMaxLifecycle();
            NavDestination destination2 = next.getDestination();
            if (destination != null && destination2.getId() == destination.getId()) {
                if (maxLifecycle != Lifecycle.State.RESUMED) {
                    hashMap.put(next, Lifecycle.State.RESUMED);
                }
                destination = destination.getParent();
            } else if (navDestination != null && destination2.getId() == navDestination.getId()) {
                if (maxLifecycle == Lifecycle.State.RESUMED) {
                    next.setMaxLifecycle(Lifecycle.State.STARTED);
                } else if (maxLifecycle != Lifecycle.State.STARTED) {
                    hashMap.put(next, Lifecycle.State.STARTED);
                }
                navDestination = navDestination.getParent();
            } else {
                next.setMaxLifecycle(Lifecycle.State.CREATED);
            }
        }
        for (NavBackStackEntry navBackStackEntry : this.mBackStack) {
            Lifecycle.State state = (Lifecycle.State) hashMap.get(navBackStackEntry);
            if (state != null) {
                navBackStackEntry.setMaxLifecycle(state);
            }
        }
        NavBackStackEntry peekLast = this.mBackStack.peekLast();
        Iterator<OnDestinationChangedListener> it = this.mOnDestinationChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().onDestinationChanged(this, peekLast.getDestination(), peekLast.getArguments());
        }
        return true;
    }

    public NavInflater getNavInflater() {
        if (this.mInflater == null) {
            this.mInflater = new NavInflater(this.mContext, this.mNavigatorProvider);
        }
        return this.mInflater;
    }

    public void setGraph(int i) {
        setGraph(i, (Bundle) null);
    }

    public void setGraph(int i, Bundle bundle) {
        setGraph(getNavInflater().inflate(i), bundle);
    }

    public void setGraph(NavGraph navGraph) {
        setGraph(navGraph, (Bundle) null);
    }

    public void setGraph(NavGraph navGraph, Bundle bundle) {
        NavGraph navGraph2 = this.mGraph;
        if (navGraph2 != null) {
            popBackStackInternal(navGraph2.getId(), true);
        }
        this.mGraph = navGraph;
        onGraphCreated(bundle);
    }

    private void onGraphCreated(Bundle bundle) {
        Activity activity;
        ArrayList<String> stringArrayList;
        Bundle bundle2 = this.mNavigatorStateToRestore;
        if (bundle2 != null && (stringArrayList = bundle2.getStringArrayList(KEY_NAVIGATOR_STATE_NAMES)) != null) {
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                Navigator navigator = this.mNavigatorProvider.getNavigator(next);
                Bundle bundle3 = this.mNavigatorStateToRestore.getBundle(next);
                if (bundle3 != null) {
                    navigator.onRestoreState(bundle3);
                }
            }
        }
        Parcelable[] parcelableArr = this.mBackStackToRestore;
        if (parcelableArr != null) {
            for (Parcelable parcelable : parcelableArr) {
                NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) parcelable;
                NavDestination findDestination = findDestination(navBackStackEntryState.getDestinationId());
                if (findDestination == null) {
                    throw new IllegalStateException("unknown destination during restore: " + this.mContext.getResources().getResourceName(navBackStackEntryState.getDestinationId()));
                }
                Bundle args = navBackStackEntryState.getArgs();
                if (args != null) {
                    args.setClassLoader(this.mContext.getClassLoader());
                }
                this.mBackStack.add(new NavBackStackEntry(this.mContext, findDestination, args, this.mLifecycleOwner, this.mViewModel, navBackStackEntryState.getUUID(), navBackStackEntryState.getSavedState()));
            }
            updateOnBackPressedCallbackEnabled();
            this.mBackStackToRestore = null;
        }
        if (this.mGraph == null || !this.mBackStack.isEmpty()) {
            return;
        }
        if (this.mDeepLinkHandled || (activity = this.mActivity) == null || !handleDeepLink(activity.getIntent())) {
            navigate(this.mGraph, bundle, (NavOptions) null, (Navigator.Extras) null);
        }
    }

    public boolean handleDeepLink(Intent intent) {
        NavDestination.DeepLinkMatch matchDeepLink;
        NavGraph navGraph;
        if (intent == null) {
            return false;
        }
        Bundle extras = intent.getExtras();
        int[] intArray = extras != null ? extras.getIntArray(KEY_DEEP_LINK_IDS) : null;
        Bundle bundle = new Bundle();
        Bundle bundle2 = extras != null ? extras.getBundle(KEY_DEEP_LINK_EXTRAS) : null;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if ((intArray == null || intArray.length == 0) && intent.getData() != null && (matchDeepLink = this.mGraph.matchDeepLink(intent.getData())) != null) {
            intArray = matchDeepLink.getDestination().buildDeepLinkIds();
            bundle.putAll(matchDeepLink.getMatchingArgs());
        }
        if (intArray == null || intArray.length == 0) {
            return false;
        }
        String findInvalidDestinationDisplayNameInDeepLink = findInvalidDestinationDisplayNameInDeepLink(intArray);
        if (findInvalidDestinationDisplayNameInDeepLink != null) {
            Log.i(TAG, "Could not find destination " + findInvalidDestinationDisplayNameInDeepLink + " in the navigation graph, ignoring the deep link from " + intent);
            return false;
        }
        bundle.putParcelable(KEY_DEEP_LINK_INTENT, intent);
        int flags = intent.getFlags();
        int i = 268435456 & flags;
        if (i != 0 && (flags & 32768) == 0) {
            intent.addFlags(32768);
            TaskStackBuilder.create(this.mContext).addNextIntentWithParentStack(intent).startActivities();
            Activity activity = this.mActivity;
            if (activity != null) {
                activity.finish();
                this.mActivity.overridePendingTransition(0, 0);
            }
            return true;
        }
        if (i != 0) {
            if (!this.mBackStack.isEmpty()) {
                popBackStackInternal(this.mGraph.getId(), true);
            }
            int i2 = 0;
            while (i2 < intArray.length) {
                int i3 = i2 + 1;
                int i4 = intArray[i2];
                NavDestination findDestination = findDestination(i4);
                if (findDestination == null) {
                    throw new IllegalStateException("unknown destination during deep link: " + NavDestination.getDisplayName(this.mContext, i4));
                }
                navigate(findDestination, bundle, new NavOptions.Builder().setEnterAnim(0).setExitAnim(0).build(), (Navigator.Extras) null);
                i2 = i3;
            }
            return true;
        }
        NavGraph navGraph2 = this.mGraph;
        int i5 = 0;
        while (i5 < intArray.length) {
            int i6 = intArray[i5];
            NavDestination findNode = i5 == 0 ? this.mGraph : navGraph2.findNode(i6);
            if (findNode == null) {
                throw new IllegalStateException("unknown destination during deep link: " + NavDestination.getDisplayName(this.mContext, i6));
            }
            if (i5 != intArray.length - 1) {
                while (true) {
                    navGraph = (NavGraph) findNode;
                    if (!(navGraph.findNode(navGraph.getStartDestination()) instanceof NavGraph)) {
                        break;
                    }
                    findNode = navGraph.findNode(navGraph.getStartDestination());
                }
                navGraph2 = navGraph;
            } else {
                navigate(findNode, findNode.addInDefaultArgs(bundle), new NavOptions.Builder().setPopUpTo(this.mGraph.getId(), true).setEnterAnim(0).setExitAnim(0).build(), (Navigator.Extras) null);
            }
            i5++;
        }
        this.mDeepLinkHandled = true;
        return true;
    }

    private String findInvalidDestinationDisplayNameInDeepLink(int[] iArr) {
        NavGraph navGraph;
        NavGraph navGraph2 = this.mGraph;
        int i = 0;
        while (true) {
            NavDestination navDestination = null;
            if (i >= iArr.length) {
                return null;
            }
            int i2 = iArr[i];
            if (i == 0) {
                if (this.mGraph.getId() == i2) {
                    navDestination = this.mGraph;
                }
            } else {
                navDestination = navGraph2.findNode(i2, false);
            }
            if (navDestination == null) {
                return NavDestination.getDisplayName(this.mContext, i2);
            }
            if (i != iArr.length - 1) {
                while (true) {
                    navGraph = (NavGraph) navDestination;
                    if (!(navGraph.findNode(navGraph.getStartDestination()) instanceof NavGraph)) {
                        break;
                    }
                    navDestination = navGraph.findNode(navGraph.getStartDestination());
                }
                navGraph2 = navGraph;
            }
            i++;
        }
    }

    public NavGraph getGraph() {
        NavGraph navGraph = this.mGraph;
        if (navGraph != null) {
            return navGraph;
        }
        throw new IllegalStateException("You must call setGraph() before calling getGraph()");
    }

    public NavDestination getCurrentDestination() {
        if (this.mBackStack.isEmpty()) {
            return null;
        }
        return this.mBackStack.getLast().getDestination();
    }

    NavDestination findDestination(int i) {
        NavGraph navGraph = this.mGraph;
        if (navGraph == null) {
            return null;
        }
        if (navGraph.getId() == i) {
            return this.mGraph;
        }
        NavGraph destination = this.mBackStack.isEmpty() ? this.mGraph : this.mBackStack.getLast().getDestination();
        return (destination instanceof NavGraph ? destination : destination.getParent()).findNode(i);
    }

    public void navigate(int i) {
        navigate(i, (Bundle) null);
    }

    public void navigate(int i, Bundle bundle) {
        navigate(i, bundle, (NavOptions) null);
    }

    public void navigate(int i, Bundle bundle, NavOptions navOptions) {
        navigate(i, bundle, navOptions, (Navigator.Extras) null);
    }

    public void navigate(int i, Bundle bundle, NavOptions navOptions, Navigator.Extras extras) {
        int i2;
        String str;
        NavDestination destination = this.mBackStack.isEmpty() ? this.mGraph : this.mBackStack.getLast().getDestination();
        if (destination == null) {
            throw new IllegalStateException("no current navigation node");
        }
        NavAction action = destination.getAction(i);
        Bundle bundle2 = null;
        if (action != null) {
            if (navOptions == null) {
                navOptions = action.getNavOptions();
            }
            i2 = action.getDestinationId();
            Bundle defaultArguments = action.getDefaultArguments();
            if (defaultArguments != null) {
                bundle2 = new Bundle();
                bundle2.putAll(defaultArguments);
            }
        } else {
            i2 = i;
        }
        if (bundle != null) {
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            bundle2.putAll(bundle);
        }
        if (i2 == 0 && navOptions != null && navOptions.getPopUpTo() != -1) {
            popBackStack(navOptions.getPopUpTo(), navOptions.isPopUpToInclusive());
            return;
        }
        if (i2 == 0) {
            throw new IllegalArgumentException("Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo");
        }
        NavDestination findDestination = findDestination(i2);
        if (findDestination == null) {
            String displayName = NavDestination.getDisplayName(this.mContext, i2);
            StringBuilder sb = new StringBuilder("navigation destination ");
            sb.append(displayName);
            if (action != null) {
                str = " referenced from action " + NavDestination.getDisplayName(this.mContext, i);
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(" is unknown to this NavController");
            throw new IllegalArgumentException(sb.toString());
        }
        navigate(findDestination, bundle2, navOptions, extras);
    }

    public void navigate(Uri uri) {
        navigate(uri, (NavOptions) null);
    }

    public void navigate(Uri uri, NavOptions navOptions) {
        navigate(uri, navOptions, (Navigator.Extras) null);
    }

    public void navigate(Uri uri, NavOptions navOptions, Navigator.Extras extras) {
        NavDestination.DeepLinkMatch matchDeepLink = this.mGraph.matchDeepLink(uri);
        if (matchDeepLink != null) {
            navigate(matchDeepLink.getDestination(), matchDeepLink.getMatchingArgs(), navOptions, extras);
        } else {
            throw new IllegalArgumentException("navigation destination with deepLink " + uri + " is unknown to this NavController");
        }
    }

    private void navigate(NavDestination navDestination, Bundle bundle, NavOptions navOptions, Navigator.Extras extras) {
        boolean popBackStackInternal = (navOptions == null || navOptions.getPopUpTo() == -1) ? false : popBackStackInternal(navOptions.getPopUpTo(), navOptions.isPopUpToInclusive());
        Navigator navigator = this.mNavigatorProvider.getNavigator(navDestination.getNavigatorName());
        Bundle addInDefaultArgs = navDestination.addInDefaultArgs(bundle);
        NavDestination navigate = navigator.navigate(navDestination, addInDefaultArgs, navOptions, extras);
        if (navigate != null) {
            if (!(navigate instanceof FloatingWindow)) {
                while (!this.mBackStack.isEmpty() && (this.mBackStack.peekLast().getDestination() instanceof FloatingWindow) && popBackStackInternal(this.mBackStack.peekLast().getDestination().getId(), true)) {
                }
            }
            if (this.mBackStack.isEmpty()) {
                this.mBackStack.add(new NavBackStackEntry(this.mContext, this.mGraph, addInDefaultArgs, this.mLifecycleOwner, this.mViewModel));
            }
            ArrayDeque arrayDeque = new ArrayDeque();
            NavDestination navDestination2 = navigate;
            while (navDestination2 != null && findDestination(navDestination2.getId()) == null) {
                navDestination2 = navDestination2.getParent();
                if (navDestination2 != null) {
                    arrayDeque.addFirst(new NavBackStackEntry(this.mContext, navDestination2, addInDefaultArgs, this.mLifecycleOwner, this.mViewModel));
                }
            }
            this.mBackStack.addAll(arrayDeque);
            this.mBackStack.add(new NavBackStackEntry(this.mContext, navigate, navigate.addInDefaultArgs(addInDefaultArgs), this.mLifecycleOwner, this.mViewModel));
        }
        updateOnBackPressedCallbackEnabled();
        if (popBackStackInternal || navigate != null) {
            dispatchOnDestinationChanged();
        }
    }

    public void navigate(NavDirections navDirections) {
        navigate(navDirections.getActionId(), navDirections.getArguments());
    }

    public void navigate(NavDirections navDirections, NavOptions navOptions) {
        navigate(navDirections.getActionId(), navDirections.getArguments(), navOptions);
    }

    public void navigate(NavDirections navDirections, Navigator.Extras extras) {
        navigate(navDirections.getActionId(), navDirections.getArguments(), (NavOptions) null, extras);
    }

    public NavDeepLinkBuilder createDeepLink() {
        return new NavDeepLinkBuilder(this);
    }

    public Bundle saveState() {
        Bundle bundle;
        ArrayList<String> arrayList = new ArrayList<>();
        Bundle bundle2 = new Bundle();
        for (Map.Entry<String, Navigator<? extends NavDestination>> entry : this.mNavigatorProvider.getNavigators().entrySet()) {
            String key = entry.getKey();
            Bundle onSaveState = entry.getValue().onSaveState();
            if (onSaveState != null) {
                arrayList.add(key);
                bundle2.putBundle(key, onSaveState);
            }
        }
        if (arrayList.isEmpty()) {
            bundle = null;
        } else {
            bundle = new Bundle();
            bundle2.putStringArrayList(KEY_NAVIGATOR_STATE_NAMES, arrayList);
            bundle.putBundle(KEY_NAVIGATOR_STATE, bundle2);
        }
        if (!this.mBackStack.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Parcelable[] parcelableArr = new Parcelable[this.mBackStack.size()];
            Iterator<NavBackStackEntry> it = this.mBackStack.iterator();
            int i = 0;
            while (it.hasNext()) {
                parcelableArr[i] = new NavBackStackEntryState(it.next());
                i++;
            }
            bundle.putParcelableArray(KEY_BACK_STACK, parcelableArr);
        }
        if (this.mDeepLinkHandled) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(KEY_DEEP_LINK_HANDLED, this.mDeepLinkHandled);
        }
        return bundle;
    }

    public void restoreState(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(this.mContext.getClassLoader());
        this.mNavigatorStateToRestore = bundle.getBundle(KEY_NAVIGATOR_STATE);
        this.mBackStackToRestore = bundle.getParcelableArray(KEY_BACK_STACK);
        this.mDeepLinkHandled = bundle.getBoolean(KEY_DEEP_LINK_HANDLED);
    }

    void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        this.mLifecycleOwner = lifecycleOwner;
        lifecycleOwner.getLifecycle().addObserver(this.mLifecycleObserver);
    }

    void setOnBackPressedDispatcher(OnBackPressedDispatcher onBackPressedDispatcher) {
        if (this.mLifecycleOwner == null) {
            throw new IllegalStateException("You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()");
        }
        this.mOnBackPressedCallback.remove();
        onBackPressedDispatcher.addCallback(this.mLifecycleOwner, this.mOnBackPressedCallback);
    }

    void enableOnBackPressed(boolean z) {
        this.mEnableOnBackPressedCallback = z;
        updateOnBackPressedCallbackEnabled();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
    
        if (getDestinationCountOnBackStack() > 1) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateOnBackPressedCallbackEnabled() {
        /*
            r3 = this;
            androidx.activity.OnBackPressedCallback r0 = r3.mOnBackPressedCallback
            boolean r1 = r3.mEnableOnBackPressedCallback
            if (r1 == 0) goto Le
            int r1 = r3.getDestinationCountOnBackStack()
            r2 = 1
            if (r1 <= r2) goto Le
            goto Lf
        Le:
            r2 = 0
        Lf:
            r0.setEnabled(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.updateOnBackPressedCallbackEnabled():void");
    }

    void setViewModelStore(ViewModelStore viewModelStore) {
        if (!this.mBackStack.isEmpty()) {
            throw new IllegalStateException("ViewModelStore should be set before setGraph call");
        }
        this.mViewModel = NavControllerViewModel.getInstance(viewModelStore);
    }

    public ViewModelStoreOwner getViewModelStoreOwner(int i) {
        if (this.mViewModel == null) {
            throw new IllegalStateException("You must call setViewModelStore() before calling getViewModelStoreOwner().");
        }
        NavBackStackEntry backStackEntry = getBackStackEntry(i);
        if (backStackEntry.getDestination() instanceof NavGraph) {
            return backStackEntry;
        }
        throw new IllegalArgumentException("No NavGraph with ID " + i + " is on the NavController's back stack");
    }

    public NavBackStackEntry getBackStackEntry(int i) {
        NavBackStackEntry navBackStackEntry;
        Iterator<NavBackStackEntry> descendingIterator = this.mBackStack.descendingIterator();
        while (true) {
            if (!descendingIterator.hasNext()) {
                navBackStackEntry = null;
                break;
            }
            navBackStackEntry = descendingIterator.next();
            if (navBackStackEntry.getDestination().getId() == i) {
                break;
            }
        }
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        throw new IllegalArgumentException("No destination with ID " + i + " is on the NavController's back stack");
    }
}
