.class public Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/Dialog;
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
            "Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContentViewId:I

.field protected mDialog:Lcom/conceptglobal/imaterialdesign/app/Dialog;

.field protected mNegative:Ljava/lang/CharSequence;

.field protected mNeutral:Ljava/lang/CharSequence;

.field protected mPositive:Ljava/lang/CharSequence;

.field protected mStyleId:I

.field protected mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1569
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder$1;

    invoke-direct {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder$1;-><init>()V

    sput-object v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1433
    sget v0, Lcom/conceptglobal/imaterialdesign/R$style;->Material_App_Dialog_Light:I

    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mStyleId:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mStyleId:I

    .line 1532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mContentViewId:I

    const/4 v0, 0x0

    .line 1533
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 1534
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mPositive:Ljava/lang/CharSequence;

    .line 1535
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mNegative:Ljava/lang/CharSequence;

    .line 1536
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mNeutral:Ljava/lang/CharSequence;

    .line 1538
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->onReadFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 1497
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mStyleId:I

    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->onBuild(Landroid/content/Context;I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mDialog:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 1499
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->title(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mPositive:Ljava/lang/CharSequence;

    .line 1500
    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mNegative:Ljava/lang/CharSequence;

    .line 1501
    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mNeutral:Ljava/lang/CharSequence;

    .line 1502
    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 1504
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mContentViewId:I

    if-eqz p1, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mDialog:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->contentView(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 1507
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mDialog:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->onBuildDone(Lcom/conceptglobal/imaterialdesign/app/Dialog;)V

    .line 1509
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mDialog:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-object p1
.end method

.method public contentView(I)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;
    .locals 0

    .line 1446
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mContentViewId:I

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDialog()Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 1471
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mDialog:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-object v0
.end method

.method public negativeAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;
    .locals 0

    .line 1461
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mNegative:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public neutralAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;
    .locals 0

    .line 1466
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mNeutral:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected onBuild(Landroid/content/Context;I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 1521
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-direct {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onBuildDone(Lcom/conceptglobal/imaterialdesign/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onNegativeActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V
    .locals 0

    .line 1481
    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onNeutralActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V
    .locals 0

    .line 1486
    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onPositiveActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V
    .locals 0

    .line 1476
    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->dismiss()V

    return-void
.end method

.method protected onReadFromParcel(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method protected onWriteToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method

.method public positiveAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;
    .locals 0

    .line 1456
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mPositive:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public style(I)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;
    .locals 0

    .line 1441
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mStyleId:I

    return-object p0
.end method

.method public title(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;
    .locals 0

    .line 1451
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1555
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mStyleId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mContentViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1557
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1558
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mPositive:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1559
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mNegative:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1560
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->mNeutral:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1561
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;->onWriteToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
