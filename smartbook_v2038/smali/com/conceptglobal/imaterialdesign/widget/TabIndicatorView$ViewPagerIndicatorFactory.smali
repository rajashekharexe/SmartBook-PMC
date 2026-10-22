.class public Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;
.super Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;
.source "TabIndicatorView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerIndicatorFactory"
.end annotation


# instance fields
.field mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 707
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;-><init>()V

    .line 708
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 709
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public getCurrentTabIndicator()I
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTabIndicatorCount()I
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public isIconTabIndicator(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;->notifyTabScrollStateChanged(I)V

    goto :goto_0

    .line 759
    :cond_1
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;->notifyTabScrollStateChanged(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 756
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;->notifyTabScrollStateChanged(I)V

    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 744
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;->notifyTabScrolled(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 749
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;->notifyTabSelected(I)V

    return-void
.end method

.method public onTabIndicatorSelected(I)V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewPagerIndicatorFactory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
