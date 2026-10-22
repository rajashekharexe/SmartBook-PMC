.class Lcom/conceptglobal/pmc/registration/DraftList$3;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/registration/DraftList;->addFView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/registration/DraftList;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 451
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$500(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 452
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    const-string p2, "-1"

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/registration/DraftList;->access$400(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;)V

    return v1

    .line 455
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    goto/16 :goto_1

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$602(Lcom/conceptglobal/pmc/registration/DraftList;Z)Z

    .line 458
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/registration/DraftList;->access$702(Lcom/conceptglobal/pmc/registration/DraftList;I)I

    .line 459
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/registration/DraftList;->access$802(Lcom/conceptglobal/pmc/registration/DraftList;I)I

    .line 460
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/registration/DraftList;->access$902(Lcom/conceptglobal/pmc/registration/DraftList;I)I

    .line 461
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1002(Lcom/conceptglobal/pmc/registration/DraftList;I)I

    .line 463
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1, v2}, Lcom/conceptglobal/pmc/registration/DraftList;->access$602(Lcom/conceptglobal/pmc/registration/DraftList;Z)Z

    .line 465
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$600(Lcom/conceptglobal/pmc/registration/DraftList;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 466
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$700(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {v3}, Lcom/conceptglobal/pmc/registration/DraftList;->access$900(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1102(Lcom/conceptglobal/pmc/registration/DraftList;I)I

    .line 467
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$800(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    sub-int/2addr v0, p2

    iget-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p2}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1000(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result p2

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1202(Lcom/conceptglobal/pmc/registration/DraftList;I)I

    .line 468
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1100(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1100(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p2}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1300(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result p2

    if-ge p1, p2, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1200(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1200(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p2}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1400(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result p2

    if-lt p1, p2, :cond_4

    goto :goto_0

    .line 471
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p2}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1100(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 472
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p2}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1200(Lcom/conceptglobal/pmc/registration/DraftList;)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 473
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1600(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p2}, Lcom/conceptglobal/pmc/registration/DraftList;->access$1500(Lcom/conceptglobal/pmc/registration/DraftList;)Lcom/conceptglobal/pmc/utils/CircleImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 469
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$3;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1, v2}, Lcom/conceptglobal/pmc/registration/DraftList;->access$602(Lcom/conceptglobal/pmc/registration/DraftList;Z)Z

    :cond_6
    :goto_1
    return v1
.end method
