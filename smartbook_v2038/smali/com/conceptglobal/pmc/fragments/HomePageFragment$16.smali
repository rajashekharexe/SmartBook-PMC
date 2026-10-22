.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$16;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/targets/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment;->showOverLayWalkthrough()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V
    .locals 0

    .line 1949
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$16;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 3

    .line 1952
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getScreenWidth()I

    .line 1953
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1700()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0903e4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x2

    .line 1954
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$16;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getHeight()I

    move-result v1

    const/16 v2, 0x1e

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method
