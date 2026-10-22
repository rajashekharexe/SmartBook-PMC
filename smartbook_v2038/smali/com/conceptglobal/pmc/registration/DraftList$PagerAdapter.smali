.class Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "DraftList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/registration/DraftList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PagerAdapter"
.end annotation


# instance fields
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
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;",
            ">;)V"
        }
    .end annotation

    .line 523
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 504
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    .line 505
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->instantiatedFragments:Landroid/util/SparseArray;

    .line 524
    iput-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    .line 525
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private setFragment(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x0

    .line 545
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

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

    .line 561
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->instantiatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 562
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->instantiatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 569
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

    .line 577
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, p1

    if-nez v0, :cond_9

    .line 579
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

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
    const-string v1, "SENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "Audience/DRAFT"

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

    goto/16 :goto_2

    .line 587
    :pswitch_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->newInstance(ILjava/lang/String;)Lcom/conceptglobal/pmc/fragments/DraftFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_2

    .line 590
    :pswitch_1
    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Farmer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 591
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->newInstance(Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_2

    .line 592
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Planter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 593
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->newInstance(Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_2

    .line 594
    :cond_5
    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Village"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 595
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->newInstance(Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_2

    .line 596
    :cond_6
    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Distributor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dealer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 599
    :cond_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->newInstance(Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_2

    .line 597
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->newInstance(Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_2

    .line 581
    :pswitch_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->newInstance(ILjava/lang/String;)Lcom/conceptglobal/pmc/fragments/DraftFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_2

    .line 584
    :pswitch_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->newInstance(ILjava/lang/String;)Lcom/conceptglobal/pmc/fragments/DraftFragment;

    move-result-object v1

    aput-object v1, v0, p1

    .line 604
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56449b35 -> :sswitch_3
        -0x1c38962a -> :sswitch_2
        0xfd81 -> :sswitch_1
        0x26c798 -> :sswitch_0
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

    .line 609
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTabName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->mTabs:Ljava/util/ArrayList;

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

    .line 554
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 555
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$PagerAdapter;->instantiatedFragments:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method
