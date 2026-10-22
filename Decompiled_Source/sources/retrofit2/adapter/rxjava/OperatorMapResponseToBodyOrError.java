package retrofit2.adapter.rxjava;

import retrofit2.Response;
import rx.Observable;
import rx.Subscriber;

/* loaded from: classes2.dex */
final class OperatorMapResponseToBodyOrError<T> implements Observable.Operator<T, Response<T>> {
    private static final OperatorMapResponseToBodyOrError<Object> INSTANCE = new OperatorMapResponseToBodyOrError<>();

    OperatorMapResponseToBodyOrError() {
    }

    static <R> OperatorMapResponseToBodyOrError<R> instance() {
        return (OperatorMapResponseToBodyOrError<R>) INSTANCE;
    }

    @Override // rx.functions.Func1
    public Subscriber<? super Response<T>> call(final Subscriber<? super T> subscriber) {
        return new Subscriber<Response<T>>(subscriber) { // from class: retrofit2.adapter.rxjava.OperatorMapResponseToBodyOrError.1
            @Override // rx.Observer
            public void onNext(Response<T> response) {
                if (response.isSuccessful()) {
                    subscriber.onNext(response.body());
                } else {
                    subscriber.onError(new HttpException(response));
                }
            }

            @Override // rx.Observer
            public void onCompleted() {
                subscriber.onCompleted();
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                subscriber.onError(th);
            }
        };
    }
}
