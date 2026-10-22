.class public Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "ReportViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/ReportViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/ReportViewActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/ReportViewActivity;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;->mContext:Landroid/content/Context;

    .line 290
    iput-object p3, p0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public IsbackEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/ReportViewActivity;

    iput-boolean p1, v0, Lcom/conceptglobal/pmc/ReportViewActivity;->IsbackEnabled:Z

    .line 298
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface$1;-><init>(Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
