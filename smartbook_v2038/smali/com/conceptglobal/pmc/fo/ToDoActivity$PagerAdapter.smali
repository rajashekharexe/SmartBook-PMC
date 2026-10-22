.class Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ToDoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/ToDoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapter"
.end annotation


# instance fields
.field private isFrom:Ljava/lang/String;

.field mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fo/ToDoActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/lang/String;)V
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

    .line 201
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;

    .line 202
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 185
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    .line 204
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroidx/fragment/app/Fragment;

    iput-object p2, p1, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    .line 205
    iput-object p4, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->isFrom:Ljava/lang/String;

    return-void
.end method

.method private setFragment(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x0

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

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

    .line 282
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 8

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, p1

    if-nez v0, :cond_8

    .line 234
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->isFrom:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Calendar"

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v0, :cond_2

    const-string v5, "Survey"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->isFrom:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_1

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->isFrom:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lcom/conceptglobal/pmc/fragments/FOHome;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/FOHome;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_1

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->isFrom:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v5, "ExpensesToDo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->isFrom:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_1

    .line 259
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "GEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Activity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    :goto_0
    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->isFrom:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lcom/conceptglobal/pmc/fragments/FOHome;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/FOHome;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->isFrom:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 261
    :pswitch_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTab()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->isFrom:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lcom/conceptglobal/pmc/fragments/FOHome;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/conceptglobal/pmc/fragments/FOHome;

    move-result-object v1

    aput-object v1, v0, p1

    .line 272
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/ToDoActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5ed9a8d1 -> :sswitch_2
        -0x6c6a0a2 -> :sswitch_1
        0x11331 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->getTabName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivity$PagerAdapter;->mTabs:Ljava/util/ArrayList;

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
