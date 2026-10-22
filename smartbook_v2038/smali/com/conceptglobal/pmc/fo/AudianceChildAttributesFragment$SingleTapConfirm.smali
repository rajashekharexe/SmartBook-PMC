.class Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$SingleTapConfirm;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AudianceChildAttributesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTapConfirm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V
    .locals 0

    .line 2310
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$SingleTapConfirm;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;)V
    .locals 0

    .line 2310
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$SingleTapConfirm;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
