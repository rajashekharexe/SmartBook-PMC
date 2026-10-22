.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$1;
.super Ljava/lang/Object;
.source "SAAttributeActivity_FBF_Resolution.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$1;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$1;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;I)I

    .line 711
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$1;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$102(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 712
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$1;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->showDialog(I)V

    return-void
.end method
