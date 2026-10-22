.class Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$5;
.super Ljava/lang/Object;
.source "SAAttributeActivityCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$402(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;I)I

    .line 714
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$502(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 715
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->showDialog(I)V

    return-void
.end method
