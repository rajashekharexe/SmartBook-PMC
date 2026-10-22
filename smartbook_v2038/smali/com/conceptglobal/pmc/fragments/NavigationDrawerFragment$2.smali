.class Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$2;
.super Landroidx/legacy/app/ActionBarDrawerToggle;
.source "NavigationDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->setUp(ILandroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/app/ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;III)V
    .locals 6

    .line 120
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/legacy/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;III)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroidx/legacy/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 125
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Landroidx/legacy/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 134
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->access$100(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->access$102(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;Z)Z

    .line 141
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "navigation_drawer_learned"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method
