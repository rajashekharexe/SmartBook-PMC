.class Lcom/conceptglobal/pmc/fragments/FragmentDrawer$2;
.super Ljava/lang/Object;
.source "FragmentDrawer.java"

# interfaces
.implements Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 169
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$2;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$2;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->access$100(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)Lcom/conceptglobal/pmc/fragments/FragmentDrawer$FragmentDrawerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$FragmentDrawerListener;->onDrawerItemSelected(Landroid/view/View;I)V

    .line 173
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$2;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$2;->this$0:Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->access$200(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
