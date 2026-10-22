.class public Lcom/conceptglobal/pmc/promotions/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/utils/Constants$ContentType;
    }
.end annotation


# static fields
.field public static final COMPRESSEDVIDEONAME:Ljava/lang/String; = "CompressedVedioName"

.field public static final DEVELOPER_KEY:Ljava/lang/String; = "AIzaSyDtjezmhXAqnlVDUTD5Mc-OgAuuoDMlh4c"

.field public static final DOWNLOADS:I = 0x65

.field public static final FAVOURITES:I = 0x66

.field public static final HOME:I = 0x64

.field public static final POP_CONTEXTID:I = 0x3

.field public static final POP_PRIMARY_COLUMN_NAME:Ljava/lang/String; = "POPID"

.field public static TYPE_ATTACHMENTS:I = 0x8

.field public static final TYPE_AUDEO:I = 0x2

.field public static final TYPE_DC:I = 0x1

.field public static final TYPE_HTML:I = 0x5

.field public static final TYPE_IMAGE:I = 0x4

.field public static final TYPE_PDF:I = 0x7

.field public static final TYPE_POP:I = 0x2

.field public static final TYPE_TEXT:I = 0x3

.field public static TYPE_URL:I = 0x6

.field public static final TYPE_VIDEO:I = 0x1

.field public static final USAGE_ACTION_DETAILS:Ljava/lang/String; = "DETAILS"

.field public static final USAGE_ACTION_DOWNLOADE:Ljava/lang/String; = "DOWNLOADED"

.field public static final USAGE_ACTION_DURATION:Ljava/lang/String; = "DURATION"

.field public static final USAGE_ACTION_MARK_AS_FAVOURITE:Ljava/lang/String; = "FAVOURITE"

.field public static final USAGE_ACTION_MARK_AS_UNFAVOURITE:Ljava/lang/String; = "UNFAVOURITE"

.field public static final USAGE_ACTION_PRIMARY_COLUMN_NAME:Ljava/lang/String; = "ContentID"

.field public static final USAGE_ACTION_SHARED:Ljava/lang/String; = "SHARED"

.field public static final USAGE_ACTION_VIEWED:Ljava/lang/String; = "VIEWED"

.field private static instance:Lcom/conceptglobal/pmc/promotions/utils/Constants;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance()Lcom/conceptglobal/pmc/promotions/utils/Constants;
    .locals 1

    .line 18
    sget-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants;->instance:Lcom/conceptglobal/pmc/promotions/utils/Constants;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/Constants;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/utils/Constants;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants;->instance:Lcom/conceptglobal/pmc/promotions/utils/Constants;

    .line 21
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/promotions/utils/Constants;->instance:Lcom/conceptglobal/pmc/promotions/utils/Constants;

    return-object v0
.end method
