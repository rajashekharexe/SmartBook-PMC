package retrofit2.adapter.rxjava;

import java.lang.reflect.Type;
import retrofit2.Call;
import retrofit2.CallAdapter;
import rx.Observable;
import rx.Single;

/* loaded from: classes2.dex */
final class SingleHelper {
    SingleHelper() {
    }

    static CallAdapter<Single<?>> makeSingle(final CallAdapter<Observable<?>> callAdapter) {
        return new CallAdapter<Single<?>>() { // from class: retrofit2.adapter.rxjava.SingleHelper.1
            @Override // retrofit2.CallAdapter
            public Type responseType() {
                return CallAdapter.this.responseType();
            }

            @Override // retrofit2.CallAdapter
            public <R> Single<?> adapt(Call<R> call) {
                return ((Observable) CallAdapter.this.adapt(call)).toSingle();
            }
        };
    }
}
