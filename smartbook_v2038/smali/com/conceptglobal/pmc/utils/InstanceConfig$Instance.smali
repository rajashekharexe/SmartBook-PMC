.class public final enum Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;
.super Ljava/lang/Enum;
.source "InstanceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/utils/InstanceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Instance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

.field public static final enum DEMO:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

.field public static final enum LIVE:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

.field public static final enum PIUAT:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

.field public static final enum PMCDUAT:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

.field public static final enum PMCKSCLLIVE:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

.field public static final enum PMCKSCLQA:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

.field public static final enum PMCKSCLUAT:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

.field public static final enum QA:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

.field public static final enum pmcdlive:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;


# direct methods
.method private static synthetic $values()[Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;
    .locals 3

    const/16 v0, 0x9

    .line 5
    new-array v0, v0, [Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->QA:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PIUAT:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->DEMO:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->LIVE:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PMCKSCLQA:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PMCKSCLUAT:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PMCKSCLLIVE:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PMCDUAT:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->pmcdlive:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const-string v1, "QA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->QA:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    .line 7
    new-instance v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const-string v1, "PIUAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PIUAT:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    .line 8
    new-instance v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const-string v1, "DEMO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->DEMO:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    .line 9
    new-instance v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const-string v1, "LIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->LIVE:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    .line 10
    new-instance v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const-string v1, "PMCKSCLQA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PMCKSCLQA:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    .line 11
    new-instance v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const-string v1, "PMCKSCLUAT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PMCKSCLUAT:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    .line 12
    new-instance v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const-string v1, "PMCKSCLLIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PMCKSCLLIVE:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    .line 13
    new-instance v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const-string v1, "PMCDUAT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PMCDUAT:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    .line 14
    new-instance v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    const-string v1, "pmcdlive"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->pmcdlive:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    .line 5
    invoke-static {}, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->$values()[Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->$VALUES:[Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;
    .locals 1

    .line 5
    const-class v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    return-object p0
.end method

.method public static values()[Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;
    .locals 1

    .line 5
    sget-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->$VALUES:[Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    invoke-virtual {v0}, [Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    return-object v0
.end method
