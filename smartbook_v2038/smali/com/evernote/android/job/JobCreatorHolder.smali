.class Lcom/evernote/android/job/JobCreatorHolder;
.super Ljava/lang/Object;
.source "JobCreatorHolder.java"


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;


# instance fields
.field private final mJobCreators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/android/job/JobCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobCreatorHolder"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobCreatorHolder;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addJobCreator(Lcom/evernote/android/job/JobCreator;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createJob(Ljava/lang/String;)Lcom/evernote/android/job/Job;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/android/job/JobCreator;

    .line 51
    invoke-interface {v1, p1}, Lcom/evernote/android/job/JobCreator;->create(Ljava/lang/String;)Lcom/evernote/android/job/Job;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :cond_1
    if-nez v2, :cond_2

    .line 58
    sget-object p1, Lcom/evernote/android/job/JobCreatorHolder;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v0, "no JobCreator added"

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/util/JobCat;->w(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeJobCreator(Lcom/evernote/android/job/JobCreator;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
