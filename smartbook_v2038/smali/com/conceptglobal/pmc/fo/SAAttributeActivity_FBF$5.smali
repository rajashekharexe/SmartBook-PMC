.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$5;
.super Ljava/lang/Object;
.source "SAAttributeActivity_FBF.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$402(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)I

    .line 719
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$502(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 720
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showDialog(I)V

    return-void
.end method
