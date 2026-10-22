.class public Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;
.super Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;
.source "TimePickerDialog.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mHour:I

.field protected mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 680
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder$1;

    invoke-direct {v0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder$1;-><init>()V

    sput-object v0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 611
    sget v0, Lcom/conceptglobal/imaterialdesign/R$style;->Material_App_Dialog_TimePicker_Light:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;-><init>(I)V

    .line 612
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 613
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mHour:I

    const/16 v1, 0xc

    .line 614
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mMinute:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 618
    sget v0, Lcom/conceptglobal/imaterialdesign/R$style;->Material_App_Dialog_TimePicker_Light:I

    invoke-direct {p0, v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 622
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;-><init>(I)V

    .line 623
    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->hour(I)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;

    .line 624
    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->minute(I)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 665
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public contentView(I)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;
    .locals 0

    return-object p0
.end method

.method public getHour()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mMinute:I

    return v0
.end method

.method public hour(I)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 628
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x18

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mHour:I

    return-object p0
.end method

.method public minute(I)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;
    .locals 0

    .line 633
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mMinute:I

    return-object p0
.end method

.method protected onBuild(Landroid/content/Context;I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 652
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-direct {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;-><init>(Landroid/content/Context;I)V

    .line 653
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mHour:I

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->hour(I)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mMinute:I

    .line 654
    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->minute(I)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    move-result-object p1

    .line 655
    invoke-virtual {p1, p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->onTimeChangedListener(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    return-object v0
.end method

.method protected onReadFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 676
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mHour:I

    .line 677
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mMinute:I

    return-void
.end method

.method public onTimeChanged(IIII)V
    .locals 0

    .line 661
    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->hour(I)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->minute(I)Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;

    return-void
.end method

.method protected onWriteToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 670
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mHour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$Builder;->mMinute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
