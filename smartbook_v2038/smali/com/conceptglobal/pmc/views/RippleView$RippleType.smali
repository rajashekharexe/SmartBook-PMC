.class public final enum Lcom/conceptglobal/pmc/views/RippleView$RippleType;
.super Ljava/lang/Enum;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/views/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RippleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/conceptglobal/pmc/views/RippleView$RippleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/conceptglobal/pmc/views/RippleView$RippleType;

.field public static final enum DOUBLE:Lcom/conceptglobal/pmc/views/RippleView$RippleType;

.field public static final enum RECTANGLE:Lcom/conceptglobal/pmc/views/RippleView$RippleType;

.field public static final enum SIMPLE:Lcom/conceptglobal/pmc/views/RippleView$RippleType;


# instance fields
.field type:I


# direct methods
.method private static synthetic $values()[Lcom/conceptglobal/pmc/views/RippleView$RippleType;
    .locals 3

    const/4 v0, 0x3

    .line 397
    new-array v0, v0, [Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    sget-object v1, Lcom/conceptglobal/pmc/views/RippleView$RippleType;->SIMPLE:Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/views/RippleView$RippleType;->DOUBLE:Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/conceptglobal/pmc/views/RippleView$RippleType;->RECTANGLE:Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 398
    new-instance v0, Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    const-string v1, "SIMPLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/conceptglobal/pmc/views/RippleView$RippleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/conceptglobal/pmc/views/RippleView$RippleType;->SIMPLE:Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    .line 399
    new-instance v0, Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/conceptglobal/pmc/views/RippleView$RippleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/conceptglobal/pmc/views/RippleView$RippleType;->DOUBLE:Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    .line 400
    new-instance v0, Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/conceptglobal/pmc/views/RippleView$RippleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/conceptglobal/pmc/views/RippleView$RippleType;->RECTANGLE:Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    .line 397
    invoke-static {}, Lcom/conceptglobal/pmc/views/RippleView$RippleType;->$values()[Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/views/RippleView$RippleType;->$VALUES:[Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 403
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 404
    iput p3, p0, Lcom/conceptglobal/pmc/views/RippleView$RippleType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/conceptglobal/pmc/views/RippleView$RippleType;
    .locals 1

    .line 397
    const-class v0, Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    return-object p0
.end method

.method public static values()[Lcom/conceptglobal/pmc/views/RippleView$RippleType;
    .locals 1

    .line 397
    sget-object v0, Lcom/conceptglobal/pmc/views/RippleView$RippleType;->$VALUES:[Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    invoke-virtual {v0}, [Lcom/conceptglobal/pmc/views/RippleView$RippleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/conceptglobal/pmc/views/RippleView$RippleType;

    return-object v0
.end method
