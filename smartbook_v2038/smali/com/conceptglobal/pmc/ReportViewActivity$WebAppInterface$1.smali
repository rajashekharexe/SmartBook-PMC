.class Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface$1;
.super Ljava/lang/Object;
.source "ReportViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;->IsbackEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;

.field final synthetic val$isDesabled:Z


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface$1;->this$1:Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;

    iput-boolean p2, p0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface$1;->val$isDesabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 301
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface$1;->val$isDesabled:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface$1;->this$1:Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;

    iget-object v0, v0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface$1;->this$1:Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;

    iget-object v0, v0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_0
    return-void
.end method
