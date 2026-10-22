.class Lcom/conceptglobal/pmc/fragments/FragmentDrawer$4;
.super Ljava/lang/Object;
.source "FragmentDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->setUp(ILandroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$4;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$4;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->access$300(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method
