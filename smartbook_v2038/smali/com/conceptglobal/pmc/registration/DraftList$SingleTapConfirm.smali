.class Lcom/conceptglobal/pmc/registration/DraftList$SingleTapConfirm;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DraftList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/registration/DraftList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTapConfirm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/registration/DraftList;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$SingleTapConfirm;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;Lcom/conceptglobal/pmc/registration/DraftList$1;)V
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/registration/DraftList$SingleTapConfirm;-><init>(Lcom/conceptglobal/pmc/registration/DraftList;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
