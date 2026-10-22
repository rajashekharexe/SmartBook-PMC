.class public Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static sEnabled:Z = false

.field private static sTag:Ljava/lang/String; = "ThinDownloadManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    .line 55
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 62
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 76
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 69
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    .line 139
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 146
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 160
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 153
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1

    .line 83
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 90
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 104
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 97
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEnabled()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    return v0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .line 23
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    return v0
.end method

.method public static setEnabled(Z)V
    .locals 0

    .line 19
    sput-boolean p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    return-void
.end method

.method public static varargs t(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    .line 167
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "test"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1

    .line 27
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 34
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 48
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 41
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1

    .line 111
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 118
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 132
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 125
    sget-boolean v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
