.class Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;
.super Ljava/lang/Object;
.source "AudianceChildAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->addFView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2259
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 2262
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2264
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$200(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$300(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$400(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;ILandroid/widget/LinearLayout;Ljava/util/Map;ZLjava/util/HashMap;)V

    return v1

    .line 2268
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    goto/16 :goto_1

    .line 2270
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3202(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Z)Z

    .line 2271
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3302(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I

    .line 2272
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3402(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I

    .line 2273
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3502(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I

    .line 2274
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3602(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I

    .line 2277
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1, v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3202(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Z)Z

    .line 2279
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3200(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2280
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3300(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3702(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I

    .line 2281
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3400(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    sub-int/2addr v0, p2

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result p2

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3802(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;I)I

    .line 2282
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3700(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3700(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result p2

    if-ge p1, p2, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$4000(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result p2

    if-lt p1, p2, :cond_4

    goto :goto_0

    .line 2285
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3700(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2286
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2287
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$4100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$4200(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    .line 2283
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1, v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$3202(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Z)Z

    :cond_6
    :goto_1
    return v1
.end method
