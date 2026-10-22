.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$7;
.super Ljava/lang/Object;
.source "DownloadedContentViewAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->showDiscardAlert(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$7;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 827
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
