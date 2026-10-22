.class public final Lcom/icsssd0328/promotions/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/icsssd0328/promotions/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FlowLayout:[I

.field public static final FlowLayout_flChildSpacing:I = 0x0

.field public static final FlowLayout_flChildSpacingForLastRow:I = 0x1

.field public static final FlowLayout_flFlow:I = 0x2

.field public static final FlowLayout_flMaxRows:I = 0x3

.field public static final FlowLayout_flRowSpacing:I = 0x4

.field public static final FlowLayout_flRtl:I = 0x5

.field public static final FlowLayout_itemSpacing:I = 0x6

.field public static final FlowLayout_lineSpacing:I = 0x7


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/icsssd0328/promotions/R$styleable;->FlowLayout:[I

    return-void

    :array_0
    .array-data 4
        0x7f0401cf
        0x7f0401d0
        0x7f0401d1
        0x7f0401d2
        0x7f0401d3
        0x7f0401d4
        0x7f040219
        0x7f040265
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
