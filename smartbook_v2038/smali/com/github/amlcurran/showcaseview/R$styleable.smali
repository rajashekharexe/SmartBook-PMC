.class public final Lcom/github/amlcurran/showcaseview/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CustomTheme:[I

.field public static final CustomTheme_showcaseViewStyle:I = 0x0

.field public static final ShowcaseView:[I

.field public static final ShowcaseView_sv_backgroundColor:I = 0x0

.field public static final ShowcaseView_sv_buttonBackgroundColor:I = 0x1

.field public static final ShowcaseView_sv_buttonForegroundColor:I = 0x2

.field public static final ShowcaseView_sv_buttonText:I = 0x3

.field public static final ShowcaseView_sv_detailTextAppearance:I = 0x4

.field public static final ShowcaseView_sv_detailTextColor:I = 0x5

.field public static final ShowcaseView_sv_showcaseColor:I = 0x6

.field public static final ShowcaseView_sv_tintButtonColor:I = 0x7

.field public static final ShowcaseView_sv_titleTextAppearance:I = 0x8

.field public static final ShowcaseView_sv_titleTextColor:I = 0x9


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x7f04033f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/github/amlcurran/showcaseview/R$styleable;->CustomTheme:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04038f
        0x7f040390
        0x7f040391
        0x7f040392
        0x7f040393
        0x7f040394
        0x7f040395
        0x7f040396
        0x7f040397
        0x7f040398
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
