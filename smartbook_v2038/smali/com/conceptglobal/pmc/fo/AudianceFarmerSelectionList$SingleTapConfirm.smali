.class Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$SingleTapConfirm;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AudianceFarmerSelectionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTapConfirm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$SingleTapConfirm;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
