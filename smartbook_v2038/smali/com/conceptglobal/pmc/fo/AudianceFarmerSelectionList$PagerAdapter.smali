.class Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "AudianceFarmerSelectionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PagerAdapter"
.end annotation


# instance fields
.field farmertypeNew:Ljava/lang/String;

.field private final instantiatedFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field mFragments:[Landroidx/fragment/app/Fragment;

.field mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 455
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 435
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    .line 436
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->instantiatedFragments:Landroid/util/SparseArray;

    .line 456
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    .line 457
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    .line 458
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->farmertypeNew:Ljava/lang/String;

    return-void
.end method

.method private setFragment(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x0

    .line 478
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    aput-object p2, p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->instantiatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 495
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->instantiatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    .line 512
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DRAFT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "SENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "NOTSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 514
    :pswitch_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->farmertypeNew:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->newInstance(ILjava/lang/String;)Lcom/conceptglobal/pmc/fragments/DraftFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 520
    :pswitch_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->farmertypeNew:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->newInstance(ILjava/lang/String;)Lcom/conceptglobal/pmc/fragments/DraftFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 524
    :pswitch_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->farmertypeNew:Ljava/lang/String;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->newInstance(Ljava/lang/String;)Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 517
    :pswitch_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->farmertypeNew:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->newInstance(ILjava/lang/String;)Lcom/conceptglobal/pmc/fragments/DraftFragment;

    move-result-object v1

    aput-object v1, v0, p1

    .line 537
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56449b35 -> :sswitch_3
        0xfd81 -> :sswitch_2
        0x26c798 -> :sswitch_1
        0x3e48181 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTabName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTabName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 487
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 488
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$PagerAdapter;->instantiatedFragments:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method
