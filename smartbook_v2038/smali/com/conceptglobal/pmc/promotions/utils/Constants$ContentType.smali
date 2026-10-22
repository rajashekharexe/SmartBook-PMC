.class public final enum Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

.field public static final enum ATTACHEMENT_PDF:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

.field public static final enum ATTACHEMENT_PPT:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

.field public static final enum ATTACHEMENT_TEXT:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

.field public static final enum AUDIO:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

.field public static final enum HTML:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

.field public static final enum IMAGE:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

.field public static final enum NA:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

.field public static final enum TEXT:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

.field public static final enum URL:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

.field public static final enum VIDEO:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;


# direct methods
.method private static synthetic $values()[Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;
    .locals 3

    const/16 v0, 0xa

    .line 24
    new-array v0, v0, [Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    sget-object v1, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->ATTACHEMENT_TEXT:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->ATTACHEMENT_PDF:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->ATTACHEMENT_PPT:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->IMAGE:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->VIDEO:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->AUDIO:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->TEXT:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->HTML:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->URL:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->NA:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const-string v1, "ATTACHEMENT_TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->ATTACHEMENT_TEXT:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const-string v1, "ATTACHEMENT_PDF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->ATTACHEMENT_PDF:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const-string v1, "ATTACHEMENT_PPT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->ATTACHEMENT_PPT:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const-string v1, "IMAGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->IMAGE:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const-string v1, "VIDEO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->VIDEO:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const-string v1, "AUDIO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->AUDIO:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const-string v1, "TEXT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->TEXT:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const-string v1, "HTML"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->HTML:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const-string v1, "URL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->URL:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    const-string v1, "NA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->NA:Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->$values()[Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->$VALUES:[Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;
    .locals 1

    .line 24
    const-class v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;
    .locals 1

    .line 24
    sget-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->$VALUES:[Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    invoke-virtual {v0}, [Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;

    return-object v0
.end method
