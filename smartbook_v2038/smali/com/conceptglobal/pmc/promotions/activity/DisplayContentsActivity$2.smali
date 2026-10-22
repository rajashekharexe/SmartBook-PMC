.class Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$2;
.super Ljava/lang/Object;
.source "DisplayContentsActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->setDots()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->access$000(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801bc

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080060

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
