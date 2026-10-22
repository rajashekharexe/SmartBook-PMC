package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public interface e extends IInterface {

    public static abstract class a extends Binder implements e {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.youtube.player.internal.e$a$a, reason: collision with other inner class name */
        static class C0032a implements e {
            private IBinder a;

            C0032a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // com.google.android.youtube.player.internal.e
            public final void a(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.youtube.player.internal.IOnFullscreenListener");
                    obtain.writeInt(z ? 1 : 0);
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.a;
            }
        }

        public a() {
            attachInterface(this, "com.google.android.youtube.player.internal.IOnFullscreenListener");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.google.android.youtube.player.internal.IOnFullscreenListener");
                return true;
            }
            parcel.enforceInterface("com.google.android.youtube.player.internal.IOnFullscreenListener");
            a(parcel.readInt() != 0);
            parcel2.writeNoException();
            return true;
        }
    }

    void a(boolean z) throws RemoteException;
}
