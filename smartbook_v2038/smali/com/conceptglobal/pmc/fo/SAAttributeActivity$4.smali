.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$4;
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

    .line 830
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$402(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)I

    .line 835
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$502(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 836
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showDialog(I)V

    return-void
.end method
