.class Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;
    .locals 1

    .line 682
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;

    invoke-direct {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 680
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;
    .locals 0

    .line 686
    new-array p1, p1, [Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 680
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder$1;->newArray(I)[Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;

    move-result-object p1

    return-object p1
.end method
