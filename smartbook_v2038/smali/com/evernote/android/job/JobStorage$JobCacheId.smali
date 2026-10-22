.class Lcom/evernote/android/job/JobStorage$JobCacheId;
.super Landroid/util/LruCache;
.source "JobStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobCacheId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Integer;",
        "Lcom/evernote/android/job/JobRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/android/job/JobStorage;


# direct methods
.method public constructor <init>(Lcom/evernote/android/job/JobStorage;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/evernote/android/job/JobStorage$JobCacheId;->this$0:Lcom/evernote/android/job/JobStorage;

    const/16 p1, 0x1e

    .line 429
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Integer;)Lcom/evernote/android/job/JobRequest;
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage$JobCacheId;->this$0:Lcom/evernote/android/job/JobStorage;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/evernote/android/job/JobStorage;->access$400(Lcom/evernote/android/job/JobStorage;IZ)Lcom/evernote/android/job/JobRequest;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 426
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/JobStorage$JobCacheId;->create(Ljava/lang/Integer;)Lcom/evernote/android/job/JobRequest;

    move-result-object p1

    return-object p1
.end method
