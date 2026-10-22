.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$5;
.super Ljava/lang/Object;
.source "SAAttributeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$402(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)I

    .line 845
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showDialog(I)V

    return-void
.end method
