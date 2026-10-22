.class Lcom/conceptglobal/pmc/fragments/AddTestimonial$1;
.super Ljava/lang/Object;
.source "AddTestimonial.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddTestimonial;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

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

    .line 385
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$1;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$000(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$100(Lcom/conceptglobal/pmc/fragments/AddTestimonial;J)V

    return-void
.end method
