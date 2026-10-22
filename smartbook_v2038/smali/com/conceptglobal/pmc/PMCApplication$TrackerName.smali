.class public final enum Lcom/conceptglobal/pmc/PMCApplication$TrackerName;
.super Ljava/lang/Enum;
.source "PMCApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/PMCApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackerName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/conceptglobal/pmc/PMCApplication$TrackerName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

.field public static final enum APP_TRACKER:Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

.field public static final enum ECOMMERCE_TRACKER:Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

.field public static final enum GLOBAL_TRACKER:Lcom/conceptglobal/pmc/PMCApplication$TrackerName;


# direct methods
.method private static synthetic $values()[Lcom/conceptglobal/pmc/PMCApplication$TrackerName;
    .locals 3

    const/4 v0, 0x3

    .line 72
    new-array v0, v0, [Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    sget-object v1, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;->APP_TRACKER:Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;->GLOBAL_TRACKER:Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;->ECOMMERCE_TRACKER:Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    const-string v1, "APP_TRACKER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;->APP_TRACKER:Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    .line 74
    new-instance v0, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    const-string v1, "GLOBAL_TRACKER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;->GLOBAL_TRACKER:Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    .line 75
    new-instance v0, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    const-string v1, "ECOMMERCE_TRACKER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;->ECOMMERCE_TRACKER:Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    .line 72
    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;->$values()[Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;->$VALUES:[Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/conceptglobal/pmc/PMCApplication$TrackerName;
    .locals 1

    .line 72
    const-class v0, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    return-object p0
.end method

.method public static values()[Lcom/conceptglobal/pmc/PMCApplication$TrackerName;
    .locals 1

    .line 72
    sget-object v0, Lcom/conceptglobal/pmc/PMCApplication$TrackerName;->$VALUES:[Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    invoke-virtual {v0}, [Lcom/conceptglobal/pmc/PMCApplication$TrackerName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/conceptglobal/pmc/PMCApplication$TrackerName;

    return-object v0
.end method
