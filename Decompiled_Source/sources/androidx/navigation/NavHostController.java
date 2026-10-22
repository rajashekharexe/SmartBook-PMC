package androidx.navigation;

import android.content.Context;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;

/* loaded from: classes.dex */
public final class NavHostController extends NavController {
    public NavHostController(Context context) {
        super(context);
    }

    @Override // androidx.navigation.NavController
    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.navigation.NavController
    public void setOnBackPressedDispatcher(OnBackPressedDispatcher onBackPressedDispatcher) {
        super.setOnBackPressedDispatcher(onBackPressedDispatcher);
    }

    @Override // androidx.navigation.NavController
    public void enableOnBackPressed(boolean z) {
        super.enableOnBackPressed(z);
    }

    @Override // androidx.navigation.NavController
    public void setViewModelStore(ViewModelStore viewModelStore) {
        super.setViewModelStore(viewModelStore);
    }
}
