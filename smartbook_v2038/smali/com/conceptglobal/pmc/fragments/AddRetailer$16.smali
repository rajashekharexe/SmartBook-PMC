.class Lcom/conceptglobal/pmc/fragments/AddRetailer$16;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 2880
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2884
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$3102(Lcom/conceptglobal/pmc/fragments/AddRetailer;I)I

    .line 2885
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showDialog(I)V

    return-void
.end method
