.class Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$5;
.super Ljava/lang/Object;
.source "MarketAttributesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->showDiscardAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V
    .locals 0

    .line 1311
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1315
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1316
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2200(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
