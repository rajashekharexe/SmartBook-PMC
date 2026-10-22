.class Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ToDoActivityCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PagerAdapter"
.end annotation


# instance fields
.field private isFrom:Ljava/lang/String;

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

    .line 177
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 160
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    .line 179
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    .line 180
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->isFrom:Ljava/lang/String;

    return-void
.end method

.method private setFragment(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x0

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

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
.method public getCount()I
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "FeedBack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "Complaints"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 212
    sput v0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->fromComplaint:I

    .line 213
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->isFrom:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v2, v2, v1}, Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/FeedBackListFragment;

    move-result-object v1

    aput-object v1, v0, p1

    .line 234
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTabName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$PagerAdapter;->mTabs:Ljava/util/ArrayList;

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
