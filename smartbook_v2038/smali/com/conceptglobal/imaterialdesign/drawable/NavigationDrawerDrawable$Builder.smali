.class public Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;
.super Ljava/lang/Object;
.source "NavigationDrawerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

.field private mRippleDrawable:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->NavigationDrawerDrawable:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 119
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->NavigationDrawerDrawable_nd_ripple:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 120
    sget v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->NavigationDrawerDrawable_nd_icon:I

    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-lez p3, :cond_0

    .line 123
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    invoke-direct {v0, p1, p3}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;->ripple(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;)Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;

    :cond_0
    if-lez p4, :cond_1

    .line 126
    new-instance p3, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    invoke-direct {p3, p1, p4}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;-><init>(Landroid/content/Context;I)V

    .line 127
    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;->line(Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;)Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;

    .line 130
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method


# virtual methods
.method public build()Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;
    .locals 3

    .line 135
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;->mRippleDrawable:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;)V

    return-object v0
.end method

.method public line(Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;)Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    return-object p0
.end method

.method public ripple(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;)Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;->mRippleDrawable:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    return-object p0
.end method
