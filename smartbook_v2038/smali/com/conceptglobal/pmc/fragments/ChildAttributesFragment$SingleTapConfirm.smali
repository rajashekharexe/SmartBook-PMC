.class Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$SingleTapConfirm;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChildAttributesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTapConfirm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V
    .locals 0

    .line 2184
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$SingleTapConfirm;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;)V
    .locals 0

    .line 2184
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$SingleTapConfirm;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
