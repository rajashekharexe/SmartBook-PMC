.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$2;
.super Ljava/lang/Object;
.source "ValueChainPartner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$2;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 371
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$2;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$300(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$400(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;J)V

    return-void
.end method
