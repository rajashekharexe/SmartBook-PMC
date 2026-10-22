.class public final enum Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;
.super Ljava/lang/Enum;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

.field public static final enum HIGH:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

.field public static final enum IMMEDIATE:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

.field public static final enum LOW:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

.field public static final enum NORMAL:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;


# direct methods
.method private static synthetic $values()[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;
    .locals 3

    const/4 v0, 0x4

    .line 16
    new-array v0, v0, [Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    sget-object v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->LOW:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->NORMAL:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->HIGH:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->IMMEDIATE:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->LOW:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    .line 18
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->NORMAL:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    .line 19
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->HIGH:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    .line 20
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->IMMEDIATE:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    .line 16
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->$values()[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->$VALUES:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;
    .locals 1

    .line 16
    const-class v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    return-object p0
.end method

.method public static values()[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;
    .locals 1

    .line 16
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->$VALUES:[Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    invoke-virtual {v0}, [Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    return-object v0
.end method
