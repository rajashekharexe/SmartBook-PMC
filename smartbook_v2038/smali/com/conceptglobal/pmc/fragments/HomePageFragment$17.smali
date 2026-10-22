.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$signalTarget:Lcom/github/amlcurran/showcaseview/targets/Target;

.field final synthetic val$weatherTarget:Lcom/github/amlcurran/showcaseview/targets/Target;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Lcom/github/amlcurran/showcaseview/targets/Target;Lcom/github/amlcurran/showcaseview/targets/Target;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1966
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->val$signalTarget:Lcom/github/amlcurran/showcaseview/targets/Target;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->val$weatherTarget:Lcom/github/amlcurran/showcaseview/targets/Target;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1969
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2100(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1992
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hide()V

    goto :goto_0

    .line 1984
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->val$weatherTarget:Lcom/github/amlcurran/showcaseview/targets/Target;

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)V

    .line 1985
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    const-string v0, "Weather Icon"

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 1986
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    const-string v0, "Click here for weather details"

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1979
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->val$signalTarget:Lcom/github/amlcurran/showcaseview/targets/Target;

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)V

    .line 1980
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    const-string v0, "Internet Strength"

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 1981
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    const-string v0, "This shows the strength of your internet"

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentText(Ljava/lang/CharSequence;)V

    .line 2022
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2108(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)I

    return-void
.end method
