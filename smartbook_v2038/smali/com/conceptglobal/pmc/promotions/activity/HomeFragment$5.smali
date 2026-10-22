.class Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$5;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->setBannersAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    iget v0, v0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->currentPage:I

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->viewPagerAdapter:Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    const/4 v1, -0x1

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->currentPage:I

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    iget v1, v0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->currentPage:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->currentPage:I

    .line 553
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$1200(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->currentPage:I

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
