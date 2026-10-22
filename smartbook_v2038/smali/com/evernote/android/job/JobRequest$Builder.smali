.class public final Lcom/evernote/android/job/JobRequest$Builder;
.super Ljava/lang/Object;
.source "JobRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final CREATE_ID:I = -0x223d


# instance fields
.field private mBackoffMs:J

.field private mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

.field private mEndMs:J

.field private mExact:Z

.field private mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

.field private mExtrasXml:Ljava/lang/String;

.field private mFlexMs:J

.field private mId:I

.field private mIntervalMs:J

.field private mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

.field private mRequirementsEnforced:Z

.field private mRequiresBatteryNotLow:Z

.field private mRequiresCharging:Z

.field private mRequiresDeviceIdle:Z

.field private mRequiresStorageNotLow:Z

.field private mStartMs:J

.field final mTag:Ljava/lang/String;

.field private mTransient:Z

.field private mTransientExtras:Landroid/os/Bundle;

.field private mUpdateCurrent:Z


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 636
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    .line 637
    const-string v0, "tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    .line 639
    const-string v0, "startMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 640
    const-string v0, "endMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 642
    const-string v0, "backoffMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    .line 644
    :try_start_0
    const-string v0, "backoffPolicy"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 646
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$000()Lcom/evernote/android/job/util/JobCat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    .line 647
    sget-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    .line 650
    :goto_0
    const-string v0, "intervalMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 651
    const-string v0, "flexMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    .line 653
    const-string v0, "requirementsEnforced"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    .line 654
    const-string v0, "requiresCharging"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    .line 655
    const-string v0, "requiresDeviceIdle"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    .line 656
    const-string v0, "requiresBatteryNotLow"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresBatteryNotLow:Z

    .line 657
    const-string v0, "requiresStorageNotLow"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresStorageNotLow:Z

    .line 658
    const-string v0, "exact"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    .line 660
    :try_start_1
    const-string v0, "networkType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$NetworkType;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    .line 662
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$000()Lcom/evernote/android/job/util/JobCat;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    .line 663
    sget-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 666
    :goto_7
    const-string v0, "extras"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    .line 667
    const-string v0, "transient"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-lez p1, :cond_6

    goto :goto_8

    :cond_6
    const/4 v1, 0x0

    :goto_8
    iput-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTransient:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/evernote/android/job/JobRequest$1;)V
    .locals 0

    .line 576
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/JobRequest$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 672
    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Lcom/evernote/android/job/JobRequest$Builder;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobRequest$Builder;Lcom/evernote/android/job/JobRequest$1;)V
    .locals 0

    .line 576
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Lcom/evernote/android/job/JobRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/JobRequest$Builder;Z)V
    .locals 2

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTransientExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    const/16 p2, -0x223d

    goto :goto_0

    .line 676
    :cond_0
    iget p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    :goto_0
    iput p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    .line 677
    iget-object p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    .line 679
    iget-wide v0, p1, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 680
    iget-wide v0, p1, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 682
    iget-wide v0, p1, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    .line 683
    iget-object p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iput-object p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    .line 685
    iget-wide v0, p1, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 686
    iget-wide v0, p1, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    .line 688
    iget-boolean p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    iput-boolean p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    .line 689
    iget-boolean p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    iput-boolean p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    .line 690
    iget-boolean p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    iput-boolean p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    .line 691
    iget-boolean p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresBatteryNotLow:Z

    iput-boolean p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresBatteryNotLow:Z

    .line 692
    iget-boolean p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresStorageNotLow:Z

    iput-boolean p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresStorageNotLow:Z

    .line 693
    iget-boolean p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    iput-boolean p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    .line 694
    iget-object p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    iput-object p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 696
    iget-object p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    iput-object p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .line 697
    iget-object p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    iput-object p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    .line 699
    iget-boolean p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mUpdateCurrent:Z

    iput-boolean p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mUpdateCurrent:Z

    .line 700
    iget-boolean p2, p1, Lcom/evernote/android/job/JobRequest$Builder;->mTransient:Z

    iput-boolean p2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTransient:Z

    .line 701
    iget-object p1, p1, Lcom/evernote/android/job/JobRequest$Builder;->mTransientExtras:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobRequest$Builder;ZLcom/evernote/android/job/JobRequest$1;)V
    .locals 0

    .line 576
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Lcom/evernote/android/job/JobRequest$Builder;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 622
    invoke-static {p1}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    const/16 p1, -0x223d

    .line 623
    iput p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    const-wide/16 v0, -0x1

    .line 625
    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 626
    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    const-wide/16 v0, 0x7530

    .line 628
    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    .line 629
    sget-object p1, Lcom/evernote/android/job/JobRequest;->DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    .line 631
    sget-object p1, Lcom/evernote/android/job/JobRequest;->DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    return-void
.end method

.method static synthetic access$100(Lcom/evernote/android/job/JobRequest$Builder;)I
    .locals 0

    .line 576
    iget p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 0

    .line 576
    iget-boolean p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 0

    .line 576
    iget-boolean p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresBatteryNotLow:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 0

    .line 576
    iget-boolean p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresStorageNotLow:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/JobRequest$NetworkType;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/evernote/android/job/JobRequest$Builder;Lcom/evernote/android/job/util/support/PersistableBundleCompat;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/evernote/android/job/JobRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 0

    .line 576
    iget-boolean p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mUpdateCurrent:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 0

    .line 576
    iget-boolean p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 0

    .line 576
    iget-boolean p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTransient:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/evernote/android/job/JobRequest$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evernote/android/job/JobRequest$Builder;)J
    .locals 2

    .line 576
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/evernote/android/job/JobRequest$Builder;Landroid/content/ContentValues;)V
    .locals 0

    .line 576
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobRequest$Builder;->fillContentValues(Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$300(Lcom/evernote/android/job/JobRequest$Builder;)J
    .locals 2

    .line 576
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/JobRequest$BackoffPolicy;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    return-object p0
.end method

.method static synthetic access$500(Lcom/evernote/android/job/JobRequest$Builder;)J
    .locals 2

    .line 576
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/evernote/android/job/JobRequest$Builder;)J
    .locals 2

    .line 576
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/evernote/android/job/JobRequest$Builder;)J
    .locals 2

    .line 576
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 0

    .line 576
    iget-boolean p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    return p0
.end method

.method static synthetic access$900(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 0

    .line 576
    iget-boolean p0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    return p0
.end method

.method private fillContentValues(Landroid/content/ContentValues;)V
    .locals 2

    .line 705
    iget v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 706
    const-string v0, "tag"

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "startMs"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 709
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "endMs"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 711
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "backoffMs"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 712
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backoffPolicy"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "intervalMs"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 715
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "flexMs"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 717
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "requirementsEnforced"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 718
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "requiresCharging"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 719
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "requiresDeviceIdle"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 720
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresBatteryNotLow:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "requiresBatteryNotLow"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 721
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresStorageNotLow:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "requiresStorageNotLow"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 722
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "exact"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 723
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest$NetworkType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "networkType"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    const-string v1, "extras"

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->saveToXml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTransient:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "transient"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public addExtras(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    if-nez v0, :cond_0

    .line 804
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    goto :goto_0

    .line 806
    :cond_0
    invoke-virtual {v0, p1}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->putAll(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)V

    :goto_0
    const/4 p1, 0x0

    .line 808
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/evernote/android/job/JobRequest;
    .locals 19

    move-object/from16 v0, p0

    .line 1106
    iget-object v1, v0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    invoke-static {v1}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1107
    iget-wide v1, v0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    const-string v3, "backoffMs must be > 0"

    invoke-static {v1, v2, v3}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentPositive(JLjava/lang/String;)J

    .line 1108
    iget-object v1, v0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    invoke-static {v1}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    iget-object v1, v0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-static {v1}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    const/4 v1, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    cmp-long v4, v2, v10

    if-lez v4, :cond_1

    .line 1112
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinInterval()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    const-string v8, "intervalMs"

    invoke-static/range {v2 .. v8}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 1113
    iget-wide v12, v0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinFlex()J

    move-result-wide v14

    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    const-string v18, "flexMs"

    move-wide/from16 v16, v2

    invoke-static/range {v12 .. v18}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 1115
    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    sget-wide v4, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    sget-wide v4, Lcom/evernote/android/job/JobRequest;->MIN_FLEX:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 1117
    :cond_0
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$000()Lcom/evernote/android/job/util/JobCat;

    move-result-object v2

    iget-wide v3, v0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 1118
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-wide v4, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, v0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-wide v6, Lcom/evernote/android/job/JobRequest;->MIN_FLEX:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v9

    aput-object v4, v7, v1

    const/4 v3, 0x2

    aput-object v5, v7, v3

    const/4 v3, 0x3

    aput-object v6, v7, v3

    .line 1117
    const-string v3, "AllowSmallerIntervals enabled, this will crash on Android N and later, interval %d (minimum is %d), flex %d (minimum is %d)"

    invoke-virtual {v2, v3, v7}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1122
    :cond_1
    iget-boolean v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    if-eqz v2, :cond_3

    iget-wide v3, v0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v5, v3, v10

    if-gtz v5, :cond_2

    goto :goto_0

    .line 1123
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t call setExact() on a periodic job."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    .line 1125
    iget-wide v3, v0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    iget-wide v5, v0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    goto :goto_1

    .line 1126
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t call setExecutionWindow() for an exact job."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    if-eqz v2, :cond_7

    .line 1128
    iget-boolean v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    if-nez v2, :cond_6

    iget-boolean v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    if-nez v2, :cond_6

    iget-boolean v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    if-nez v2, :cond_6

    sget-object v2, Lcom/evernote/android/job/JobRequest;->DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

    iget-object v3, v0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-virtual {v2, v3}, Lcom/evernote/android/job/JobRequest$NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresBatteryNotLow:Z

    if-nez v2, :cond_6

    iget-boolean v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresStorageNotLow:Z

    if-nez v2, :cond_6

    goto :goto_2

    .line 1130
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t require any condition for an exact job."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1133
    :cond_7
    :goto_2
    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v10

    if-gtz v6, :cond_9

    iget-wide v6, v0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_8

    iget-wide v6, v0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_8

    goto :goto_3

    .line 1134
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You\'re trying to build a job with no constraints, this is not allowed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_3
    cmp-long v6, v2, v10

    if-lez v6, :cond_b

    .line 1136
    iget-wide v6, v0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_a

    iget-wide v6, v0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_a

    goto :goto_4

    .line 1137
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t call setExecutionWindow() on a periodic job."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_4
    cmp-long v4, v2, v10

    if-lez v4, :cond_d

    .line 1139
    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-nez v6, :cond_c

    sget-object v2, Lcom/evernote/android/job/JobRequest;->DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iget-object v3, v0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    invoke-virtual {v2, v3}, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    .line 1140
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A periodic job will not respect any back-off policy, so calling setBackoffCriteria() with setPeriodic() is an error."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1144
    :cond_d
    :goto_5
    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v4, v2, v10

    if-gtz v4, :cond_f

    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    const-wide v4, 0x2aaaaaaaaaaaaaaaL

    cmp-long v6, v2, v4

    if-gtz v6, :cond_e

    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_f

    .line 1145
    :cond_e
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$000()Lcom/evernote/android/job/util/JobCat;

    move-result-object v2

    const-string v3, "Attention: your execution window is too large. This could result in undesired behavior, see https://github.com/evernote/android-job/wiki/FAQ"

    invoke-virtual {v2, v3}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    .line 1148
    :cond_f
    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v4, v2, v10

    if-gtz v4, :cond_10

    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x16d

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_10

    .line 1149
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$000()Lcom/evernote/android/job/util/JobCat;

    move-result-object v2

    iget-object v3, v0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v9

    const-string v3, "Warning: job with tag %s scheduled over a year in the future"

    invoke-virtual {v2, v3, v1}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1152
    :cond_10
    iget v1, v0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    const-string v2, "id can\'t be negative"

    const/16 v3, -0x223d

    if-eq v1, v3, :cond_11

    .line 1153
    invoke-static {v1, v2}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 1156
    :cond_11
    new-instance v1, Lcom/evernote/android/job/JobRequest$Builder;

    invoke-direct {v1, v0}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Lcom/evernote/android/job/JobRequest$Builder;)V

    .line 1157
    iget v4, v0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    if-ne v4, v3, :cond_12

    .line 1158
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/android/job/JobStorage;->nextJobId()I

    move-result v3

    iput v3, v1, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    .line 1159
    invoke-static {v3, v2}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 1162
    :cond_12
    new-instance v2, Lcom/evernote/android/job/JobRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/evernote/android/job/JobRequest;-><init>(Lcom/evernote/android/job/JobRequest$Builder;Lcom/evernote/android/job/JobRequest$1;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1170
    :cond_1
    check-cast p1, Lcom/evernote/android/job/JobRequest$Builder;

    .line 1172
    iget v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    iget p1, p1, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1177
    iget v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    return v0
.end method

.method public setBackoffCriteria(JLcom/evernote/android/job/JobRequest$BackoffPolicy;)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 1

    .line 1065
    const-string v0, "backoffMs must be > 0"

    invoke-static {p1, p2, v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentPositive(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    .line 1066
    invoke-static {p3}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    return-object p0
.end method

.method public setExact(J)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 6

    const/4 v0, 0x1

    .line 980
    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    const-wide v1, 0x5555555555555554L    # 1.1945305291614953E103

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 982
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$000()Lcom/evernote/android/job/util/JobCat;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v0

    const-string p1, "exactInMs clamped from %d days to %d days"

    invoke-virtual {v3, p1, v4}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide p1, v1

    .line 986
    :cond_0
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/evernote/android/job/JobRequest$Builder;->setExecutionWindow(JJ)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setExecutionWindow(JJ)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 9

    .line 766
    const-string v0, "startInMs must be greater than 0"

    invoke-static {p1, p2, v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentPositive(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    const-wide v6, 0x7fffffffffffffffL

    .line 767
    const-string v8, "endInMs"

    move-wide v2, p3

    move-wide v4, p1

    invoke-static/range {v2 .. v8}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 769
    iget-wide p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x2

    const-wide v1, 0x5555555555555554L    # 1.1945305291614953E103

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 770
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$000()Lcom/evernote/android/job/util/JobCat;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    invoke-virtual {p2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, p4

    aput-object v3, v4, p3

    const-string p2, "startInMs reduced from %d days to %d days"

    invoke-virtual {p1, p2, v4}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    iput-wide v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 773
    :cond_0
    iget-wide p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 774
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$000()Lcom/evernote/android/job/util/JobCat;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    invoke-virtual {p2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p4

    aput-object v3, v0, p3

    const-string p2, "endInMs reduced from %d days to %d days"

    invoke-virtual {p1, p2, v0}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    iput-wide v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    :cond_1
    return-object p0
.end method

.method public setExtras(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 788
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .line 789
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    goto :goto_0

    .line 791
    :cond_0
    new-instance v0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)V

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    :goto_0
    return-object p0
.end method

.method public setPeriodic(J)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0

    .line 1022
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/evernote/android/job/JobRequest$Builder;->setPeriodic(JJ)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPeriodic(JJ)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 7

    .line 1044
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinInterval()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "intervalMs"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 1045
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinFlex()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    const-string v6, "flexMs"

    move-wide v0, p3

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    return-object p0
.end method

.method public setRequiredNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0

    .line 859
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    return-object p0
.end method

.method public setRequirementsEnforced(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0

    .line 839
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    return-object p0
.end method

.method public setRequiresBatteryNotLow(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0

    .line 918
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresBatteryNotLow:Z

    return-object p0
.end method

.method public setRequiresCharging(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0

    .line 878
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0

    .line 899
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    return-object p0
.end method

.method public setRequiresStorageNotLow(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0

    .line 939
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresStorageNotLow:Z

    return-object p0
.end method

.method public setTransientExtras(Landroid/os/Bundle;)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1097
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTransient:Z

    if-eqz v0, :cond_1

    .line 1098
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_1
    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setUpdateCurrent(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0

    .line 1079
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mUpdateCurrent:Z

    return-object p0
.end method

.method public startNow()Lcom/evernote/android/job/JobRequest$Builder;
    .locals 2

    const-wide/16 v0, 0x1

    .line 1005
    invoke-virtual {p0, v0, v1}, Lcom/evernote/android/job/JobRequest$Builder;->setExact(J)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    return-object v0
.end method
