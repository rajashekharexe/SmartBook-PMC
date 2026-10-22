.class synthetic Lcom/conceptglobal/pmc/utils/CustomProgressDialog$2;
.super Ljava/lang/Object;
.source "CustomProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/utils/CustomProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$conceptglobal$pmc$utils$CustomProgressDialog$progressbarType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    invoke-static {}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->values()[Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$2;->$SwitchMap$com$conceptglobal$pmc$utils$CustomProgressDialog$progressbarType:[I

    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->NORMAL_DIALOG:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$2;->$SwitchMap$com$conceptglobal$pmc$utils$CustomProgressDialog$progressbarType:[I

    sget-object v1, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->PERCENT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$2;->$SwitchMap$com$conceptglobal$pmc$utils$CustomProgressDialog$progressbarType:[I

    sget-object v1, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->COUNT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
