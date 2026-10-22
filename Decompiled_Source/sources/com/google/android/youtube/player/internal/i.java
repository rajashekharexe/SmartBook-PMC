package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.youtube.player.internal.c;

/* loaded from: classes2.dex */
public interface i extends IInterface {

    public static abstract class a extends Binder implements i {

        /* renamed from: com.google.android.youtube.player.internal.i$a$a, reason: collision with other inner class name */
        private static class C0036a implements i {
            private IBinder a;

            C0036a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // com.google.android.youtube.player.internal.i
            public final void a(c cVar, int i, String str, String str2, String str3, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.youtube.player.internal.IServiceBroker");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
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

        public static i a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.IServiceBroker");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof i)) ? new C0036a(iBinder) : (i) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            c c0030a;
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.google.android.youtube.player.internal.IServiceBroker");
                return true;
            }
            parcel.enforceInterface("com.google.android.youtube.player.internal.IServiceBroker");
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c0030a = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.youtube.player.internal.IConnectionCallbacks");
                c0030a = (queryLocalInterface == null || !(queryLocalInterface instanceof c)) ? new c.a.C0030a(readStrongBinder) : (c) queryLocalInterface;
            }
            a(c0030a, parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    void a(c cVar, int i, String str, String str2, String str3, Bundle bundle) throws RemoteException;
}
