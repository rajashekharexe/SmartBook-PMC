.class Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$10;
.super Ljava/lang/Object;
.source "MarketAttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;
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

    .line 1566
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2902(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;I)I

    .line 1571
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->showDialog(I)V

    return-void
.end method
