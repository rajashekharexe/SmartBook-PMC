.class public Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;
.super Landroidx/fragment/app/Fragment;
.source "NavigationDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$NavigationDrawerCallbacks;
    }
.end annotation


# static fields
.field private static final PREF_USER_LEARNED_DRAWER:Ljava/lang/String; = "navigation_drawer_learned"

.field private static final STATE_SELECTED_POSITION:Ljava/lang/String; = "selected_navigation_drawer_position"


# instance fields
.field private mCallbacks:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$NavigationDrawerCallbacks;

.field private mCurrentSelectedPosition:I

.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerListView:Landroid/widget/ListView;

.field private mDrawerToggle:Landroidx/legacy/app/ActionBarDrawerToggle;

.field private mFragmentContainerView:Landroid/view/View;

.field private mFromSavedInstanceState:Z

.field private mUserLearnedDrawer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->selectItem(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    return p0
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    return p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;)Landroidx/legacy/app/ActionBarDrawerToggle;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerToggle:Landroidx/legacy/app/ActionBarDrawerToggle;

    return-object p0
.end method

.method private selectItem(I)V
    .locals 2

    .line 165
    iput p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 167
    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_1

    .line 170
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mCallbacks:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$NavigationDrawerCallbacks;

    if-eqz v0, :cond_2

    .line 173
    invoke-interface {v0, p1}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$NavigationDrawerCallbacks;->onNavigationDrawerItemSelected(I)V

    :cond_2
    return-void
.end method

.method private showGlobalContextActionBar()V
    .locals 0

    return-void
.end method


# virtual methods
.method public isDrawerOpen()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 179
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 181
    :try_start_0
    check-cast p1, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$NavigationDrawerCallbacks;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mCallbacks:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$NavigationDrawerCallbacks;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 183
    const-string v0, "NAvDrawer"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Activity must implement NavigationDrawerCallbacks."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 203
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerToggle:Landroidx/legacy/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/legacy/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    const-string v1, "navigation_drawer_learned"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    if-eqz p1, :cond_0

    .line 64
    const-string v0, "selected_navigation_drawer_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 65
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mFromSavedInstanceState:Z

    .line 67
    :cond_0
    iget p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->selectItem(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0005

    .line 213
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00b9

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 190
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mCallbacks:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$NavigationDrawerCallbacks;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerToggle:Landroidx/legacy/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/legacy/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 224
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0903be

    if-ne v0, v2, :cond_1

    return v1

    .line 227
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 197
    const-string v0, "selected_navigation_drawer_position"

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 85
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 86
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0902e0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    .line 87
    new-instance v1, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    new-instance v0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;-><init>(Landroid/content/Context;)V

    .line 95
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method public setUp(ILandroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/app/ActionBar;)V
    .locals 7

    .line 111
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    .line 112
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const p1, 0x7f0800d5

    const v0, 0x800003

    .line 114
    invoke-virtual {p2, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerShadow(II)V

    const/4 p1, 0x1

    .line 116
    invoke-virtual {p3, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 120
    new-instance p1, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$2;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v5, 0x7f1000f8

    const v6, 0x7f1000f7

    const v4, 0x7f08013c

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;III)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerToggle:Landroidx/legacy/app/ActionBarDrawerToggle;

    .line 149
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mFromSavedInstanceState:Z

    if-nez p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$3;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$3;-><init>(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;)V

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 160
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->mDrawerToggle:Landroidx/legacy/app/ActionBarDrawerToggle;

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method
