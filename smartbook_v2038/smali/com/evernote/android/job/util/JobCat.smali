.class public Lcom/evernote/android/job/util/JobCat;
.super Ljava/lang/Object;
.source "JobCat.java"

# interfaces
.implements Lcom/evernote/android/job/util/JobLogger;


# static fields
.field private static volatile logcatEnabled:Z = true

.field private static volatile loggers:[Lcom/evernote/android/job/util/JobLogger;


# instance fields
.field protected final mEnabled:Z

.field protected final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    new-array v0, v0, [Lcom/evernote/android/job/util/JobLogger;

    sput-object v0, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    .line 109
    iput-boolean p2, p0, Lcom/evernote/android/job/util/JobCat;->mEnabled:Z

    return-void
.end method

.method public static declared-synchronized addLogger(Lcom/evernote/android/job/util/JobLogger;)Z
    .locals 6

    const-class v0, Lcom/evernote/android/job/util/JobCat;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 43
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 44
    monitor-exit v0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    :try_start_1
    sget-object v1, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v3, v1, :cond_3

    .line 49
    sget-object v1, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    aget-object v1, v1, v3

    if-nez v1, :cond_2

    .line 50
    sget-object v1, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    aput-object p0, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit v0

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    :cond_3
    :try_start_2
    sget-object v1, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    array-length v1, v1

    .line 56
    sget-object v3, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    sget-object v4, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/evernote/android/job/util/JobLogger;

    sput-object v3, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    .line 57
    sget-object v3, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    aput-object p0, v3, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized clearLogger()V
    .locals 3

    const-class v0, Lcom/evernote/android/job/util/JobCat;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isLogcatEnabled()Z
    .locals 1

    .line 93
    sget-boolean v0, Lcom/evernote/android/job/util/JobCat;->logcatEnabled:Z

    return v0
.end method

.method public static declared-synchronized removeLogger(Lcom/evernote/android/job/util/JobLogger;)V
    .locals 4

    const-class v0, Lcom/evernote/android/job/util/JobCat;

    monitor-enter v0

    const/4 v1, 0x0

    .line 68
    :goto_0
    :try_start_0
    sget-object v2, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 69
    sget-object v2, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    sget-object v2, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    const/4 v3, 0x0

    aput-object v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLogcatEnabled(Z)V
    .locals 0

    .line 86
    sput-boolean p0, Lcom/evernote/android/job/util/JobCat;->logcatEnabled:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 3

    .line 145
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "empty message"

    :cond_0
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x6

    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 163
    iget-boolean v0, p0, Lcom/evernote/android/job/util/JobCat;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    sget-boolean v0, Lcom/evernote/android/job/util/JobCat;->logcatEnabled:Z

    if-eqz v0, :cond_2

    if-nez p4, :cond_1

    .line 168
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    sget-object v0, Lcom/evernote/android/job/util/JobCat;->loggers:[Lcom/evernote/android/job/util/JobLogger;

    .line 173
    array-length v1, v0

    if-lez v1, :cond_4

    .line 174
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    if-eqz v3, :cond_3

    .line 176
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/evernote/android/job/util/JobLogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x5

    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/evernote/android/job/util/JobCat;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
