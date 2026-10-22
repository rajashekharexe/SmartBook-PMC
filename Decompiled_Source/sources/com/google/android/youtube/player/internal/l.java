package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.youtube.player.internal.j;
import com.google.android.youtube.player.internal.k;

/* loaded from: classes2.dex */
public interface l extends IInterface {

    public static abstract class a extends Binder implements l {

        /* renamed from: com.google.android.youtube.player.internal.l$a$a, reason: collision with other inner class name */
        private static class C0039a implements l {
            private IBinder a;

            C0039a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // com.google.android.youtube.player.internal.l
            public final IBinder a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.youtube.player.internal.IYouTubeService");
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.l
            public final k a(j jVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.youtube.player.internal.IYouTubeService");
                    obtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
                    this.a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return k.a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.l
            public final void a(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.youtube.player.internal.IYouTubeService");
                    obtain.writeInt(z ? 1 : 0);
                    this.a.transact(3, obtain, obtain2, 0);
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

        public static l a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.IYouTubeService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof l)) ? new C0039a(iBinder) : (l) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            j c0037a;
            if (i == 1) {
                parcel.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
                IBinder a = a();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(a);
                return true;
            }
            if (i != 2) {
                if (i != 3) {
                    if (i != 1598968902) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    parcel2.writeString("com.google.android.youtube.player.internal.IYouTubeService");
                    return true;
                }
                parcel.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
                a(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            }
            parcel.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c0037a = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.youtube.player.internal.IThumbnailLoaderClient");
                c0037a = (queryLocalInterface == null || !(queryLocalInterface instanceof j)) ? new j.a.C0037a(readStrongBinder) : (j) queryLocalInterface;
            }
            k a2 = a(c0037a);
            parcel2.writeNoException();
            parcel2.writeStrongBinder(a2 != null ? a2.asBinder() : null);
            return true;
        }
    }

    IBinder a() throws RemoteException;

    k a(j jVar) throws RemoteException;

    void a(boolean z) throws RemoteException;
}
