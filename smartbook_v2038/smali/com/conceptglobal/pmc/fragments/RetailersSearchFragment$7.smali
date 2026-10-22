.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$7;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->locationNotFound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 0

    .line 1012
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1014
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1102(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Z)Z

    .line 1015
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;)V

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2102(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;)Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;

    .line 1016
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2100(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;

    move-result-object p1

    new-array p2, p2, [Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
