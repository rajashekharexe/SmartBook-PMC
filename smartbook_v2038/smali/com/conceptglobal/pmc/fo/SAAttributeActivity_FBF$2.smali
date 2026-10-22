.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$2;
.super Ljava/lang/Object;
.source "SAAttributeActivity_FBF.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->onCreate(Landroid/os/Bundle;)V
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

    .line 298
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$2;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

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

    .line 301
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "video"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$2;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Video file"

    const/4 p4, 0x1

    invoke-static {p1, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 304
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$2;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;J)V

    :cond_0
    return-void
.end method
