.class Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$3;
.super Ljava/lang/Object;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;->access$200(Lcom/conceptglobal/pmc/fragments/NavigationDrawerFragment;)Landroidx/legacy/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/legacy/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method
