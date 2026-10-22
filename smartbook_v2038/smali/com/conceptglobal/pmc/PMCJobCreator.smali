.class public Lcom/conceptglobal/pmc/PMCJobCreator;
.super Ljava/lang/Object;
.source "PMCJobCreator.java"

# interfaces
.implements Lcom/evernote/android/job/JobCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/PMCJobCreator$AddReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/evernote/android/job/Job;
    .locals 1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "job_sync_tag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/service/SyncServiceJob;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/service/SyncServiceJob;-><init>()V

    return-object p1
.end method
