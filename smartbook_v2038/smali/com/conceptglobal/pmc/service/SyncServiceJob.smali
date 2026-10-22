.class public Lcom/conceptglobal/pmc/service/SyncServiceJob;
.super Lcom/evernote/android/job/Job;
.source "SyncServiceJob.java"


# static fields
.field public static final ACTION_SYNC:Ljava/lang/String; = "SyncAction"

.field public static final ACTION_SYNC_COUNT_DATA:Ljava/lang/String; = "com.conceptglobal.pmc.SCHEDULE_SYNC_COUNT_DATA"

.field public static final ACTION_SYNC_LOG_DATA:Ljava/lang/String; = "com.conceptglobal.pmc.SCHEDULE_SYNC_LOG_DATA"

.field public static final ACTION_SYNC_MASTER_DATA:Ljava/lang/String; = "com.conceptglobal.pmc.SCHEDULE_SYNC_MASTER_DATA"

.field public static final ACTION_SYNC_TRANSC_DATA:Ljava/lang/String; = "com.conceptglobal.pmc.SCHEDULE_SEND_DATA"

.field public static final TAG:Ljava/lang/String; = "job_sync_tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/evernote/android/job/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRunJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/Job$Result;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/android/job/Job$Params;->getExtras()Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    move-result-object p1

    const-string v1, "SyncAction"

    invoke-virtual {p1, v1}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.conceptglobal.pmc.SCHEDULE_SYNC_MASTER_DATA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "com.conceptglobal.pmc.SCHEDULE_SYNC_LOG_DATA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "com.conceptglobal.pmc.SCHEDULE_SEND_DATA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "com.conceptglobal.pmc.SCHEDULE_SYNC_COUNT_DATA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 31
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncServiceJob;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/MasterSyncService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 34
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncServiceJob;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/LogDataSyncService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 28
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncServiceJob;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 37
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncServiceJob;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/DataUpdateService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    :goto_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/SyncServiceJob;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    sget-object p1, Lcom/evernote/android/job/Job$Result;->SUCCESS:Lcom/evernote/android/job/Job$Result;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x32dbf812 -> :sswitch_3
        0x28b908d1 -> :sswitch_2
        0x5545ffd9 -> :sswitch_1
        0x64d70af3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
