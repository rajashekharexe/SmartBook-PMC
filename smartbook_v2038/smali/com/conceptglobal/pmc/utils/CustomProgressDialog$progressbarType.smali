.class public final enum Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;
.super Ljava/lang/Enum;
.source "CustomProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/utils/CustomProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "progressbarType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

.field public static final enum COUNT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

.field public static final enum NORMAL_DIALOG:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

.field public static final enum PERCENT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;


# direct methods
.method private static synthetic $values()[Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;
    .locals 3

    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    sget-object v1, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->NORMAL_DIALOG:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->PERCENT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->COUNT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const-string v1, "NORMAL_DIALOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->NORMAL_DIALOG:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    new-instance v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const-string v1, "PERCENT_BAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->PERCENT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    new-instance v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const-string v1, "COUNT_BAR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->COUNT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    .line 43
    invoke-static {}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->$values()[Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->$VALUES:[Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;
    .locals 1

    .line 43
    const-class v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    return-object p0
.end method

.method public static values()[Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;
    .locals 1

    .line 43
    sget-object v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->$VALUES:[Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    invoke-virtual {v0}, [Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    return-object v0
.end method
