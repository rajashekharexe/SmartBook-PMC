.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl$1;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 951
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 952
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1102(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Z)Z

    return-void
.end method
