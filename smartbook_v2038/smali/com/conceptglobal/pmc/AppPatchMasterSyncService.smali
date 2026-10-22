.class public Lcom/conceptglobal/pmc/AppPatchMasterSyncService;
.super Landroid/app/IntentService;
.source "AppPatchMasterSyncService.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "AppPatchMasterSyncService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    const-string v0, "AppPatchMasterSyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .line 22
    sget-object p1, Lcom/conceptglobal/pmc/AppPatchMasterSyncService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "started Sync"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance p1, Lcom/conceptglobal/pmc/sync/ApplicationPatch;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AppPatchMasterSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->startPatchSync(Z)V

    .line 26
    new-instance p1, Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AppPatchMasterSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lcom/conceptglobal/pmc/sync/MasterSync;-><init>(Landroid/content/Context;Z)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/sync/MasterSync;->startMasterSync(Z)V

    .line 29
    new-instance p1, Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AppPatchMasterSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lcom/conceptglobal/pmc/sync/DbPatch;-><init>(Landroid/content/Context;Z)V

    .line 30
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/sync/DbPatch;->startDbPatch()Ljava/lang/String;

    return-void
.end method
