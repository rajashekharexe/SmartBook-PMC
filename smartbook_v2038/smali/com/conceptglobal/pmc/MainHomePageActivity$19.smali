.class Lcom/conceptglobal/pmc/MainHomePageActivity$19;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->showOverLayWalkthrough()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 1069
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$19;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1072
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$19;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$800(Lcom/conceptglobal/pmc/MainHomePageActivity;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1078
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$19;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$900(Lcom/conceptglobal/pmc/MainHomePageActivity;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hide()V

    .line 1079
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$19;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "HOME"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    .line 1080
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->fragmentCommunication()V

    .line 1106
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$19;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$808(Lcom/conceptglobal/pmc/MainHomePageActivity;)I

    return-void
.end method
