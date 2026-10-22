.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->showOverLayWalkthrough()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

.field final synthetic val$signalTarget:Lcom/github/amlcurran/showcaseview/targets/Target;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/github/amlcurran/showcaseview/targets/Target;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1123
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;->val$signalTarget:Lcom/github/amlcurran/showcaseview/targets/Target;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1126
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1142
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hide()V

    goto :goto_0

    .line 1136
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;->val$signalTarget:Lcom/github/amlcurran/showcaseview/targets/Target;

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)V

    .line 1137
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    const-string v0, "Filter"

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    const-string v0, "Click her for filter options"

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentText(Ljava/lang/CharSequence;)V

    .line 1139
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    const-string v0, "Close"

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonText(Ljava/lang/CharSequence;)V

    .line 1146
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$11;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2408(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)I

    return-void
.end method
