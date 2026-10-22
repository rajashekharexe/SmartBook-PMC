.class Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;
.super Landroid/view/animation/Animation;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideAnimation"
.end annotation


# instance fields
.field mEnd:I

.field mStart:I

.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;II)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 521
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;->mStart:I

    .line 522
    iput p3, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;->mEnd:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 527
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;->mEnd:I

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;->mStart:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float p2, p2, p1

    int-to-float p1, v0

    add-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 528
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$1300(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 529
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$1300(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->setChildTop(I)V

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;->cancel()V

    :goto_0
    return-void
.end method
