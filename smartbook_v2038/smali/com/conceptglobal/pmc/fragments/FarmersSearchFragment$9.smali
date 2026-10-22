.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$9;
.super Ljava/lang/Object;
.source "FarmersSearchFragment.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/targets/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->showOverLayWalkthrough()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$9;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 3

    .line 1172
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getScreenWidth()I

    move-result v0

    .line 1173
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$2200()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0903c3

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1174
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$9;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->getHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method
