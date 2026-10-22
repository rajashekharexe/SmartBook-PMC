.class Lcom/conceptglobal/pmc/LoginActivity$11;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/LoginActivity;->showWalkthrough()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 1437
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1440
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1700(Lcom/conceptglobal/pmc/LoginActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1454
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$300(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/conceptglobal/imaterialdesign/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setEnabled(Z)V

    .line 1455
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1800(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/conceptglobal/imaterialdesign/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setEnabled(Z)V

    .line 1456
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1900(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hide()V

    .line 1457
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$300(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/conceptglobal/imaterialdesign/widget/EditText;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/LoginActivity;->access$1800(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/conceptglobal/imaterialdesign/widget/Button;

    move-result-object v2

    aput-object v2, v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/LoginActivity;->access$2000(Lcom/conceptglobal/pmc/LoginActivity;F[Landroid/view/View;)V

    goto :goto_0

    .line 1442
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1900(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    new-instance v1, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;

    iget-object v2, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/LoginActivity;->access$1800(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/conceptglobal/imaterialdesign/widget/Button;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcase(Lcom/github/amlcurran/showcaseview/targets/Target;Z)V

    .line 1443
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1900(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    const-string v0, "LOGIN"

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 1444
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1900(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    const-string v0, "Click here to Login into application"

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentText(Ljava/lang/CharSequence;)V

    .line 1445
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1900(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object p1

    const-string v0, "Close"

    invoke-virtual {p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setButtonText(Ljava/lang/CharSequence;)V

    .line 1471
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$11;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1708(Lcom/conceptglobal/pmc/LoginActivity;)I

    return-void
.end method
