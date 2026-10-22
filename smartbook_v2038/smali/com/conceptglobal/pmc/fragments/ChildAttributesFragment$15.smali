.class Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;
.super Ljava/lang/Object;
.source "ChildAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->addFView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2133
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2136
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3000(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2138
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$200(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$300(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v3, v1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    return v2

    .line 2142
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    goto/16 :goto_1

    .line 2144
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3102(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Z)Z

    .line 2145
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3202(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I

    .line 2146
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3302(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I

    .line 2147
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3402(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I

    .line 2148
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3502(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I

    .line 2151
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3102(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Z)Z

    .line 2153
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3100(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2154
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3200(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3602(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I

    .line 2155
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    sub-int/2addr v0, p2

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result p2

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3702(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)I

    .line 2156
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3600(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3600(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3800(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result p2

    if-ge p1, p2, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3900(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result p2

    if-lt p1, p2, :cond_4

    goto :goto_0

    .line 2159
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3600(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2160
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3700(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2161
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$4000(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$4100(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/ImageView;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    .line 2157
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$15;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$3102(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Z)Z

    :cond_6
    :goto_1
    return v2
.end method
