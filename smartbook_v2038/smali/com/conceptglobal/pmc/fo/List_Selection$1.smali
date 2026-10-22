.class Lcom/conceptglobal/pmc/fo/List_Selection$1;
.super Ljava/lang/Object;
.source "List_Selection.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/List_Selection;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/List_Selection;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/List_Selection;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/List_Selection$1;->this$0:Lcom/conceptglobal/pmc/fo/List_Selection;

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

    .line 108
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 109
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTION()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/conceptglobal/pmc/fo/List_Selection$1;->this$0:Lcom/conceptglobal/pmc/fo/List_Selection;

    invoke-static {p4}, Lcom/conceptglobal/pmc/fo/List_Selection;->access$000(Lcom/conceptglobal/pmc/fo/List_Selection;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/conceptglobal/pmc/model/FieldTypes;

    invoke-virtual {p4}, Lcom/conceptglobal/pmc/model/FieldTypes;->getId()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/conceptglobal/pmc/fo/List_Selection$1;->this$0:Lcom/conceptglobal/pmc/fo/List_Selection;

    invoke-static {p5}, Lcom/conceptglobal/pmc/fo/List_Selection;->access$000(Lcom/conceptglobal/pmc/fo/List_Selection;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/FieldTypes;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FieldTypes;->getName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p4, p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/List_Selection$1;->this$0:Lcom/conceptglobal/pmc/fo/List_Selection;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lcom/conceptglobal/pmc/fo/List_Selection;->setResult(ILandroid/content/Intent;)V

    .line 111
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/List_Selection$1;->this$0:Lcom/conceptglobal/pmc/fo/List_Selection;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/List_Selection;->finish()V

    return-void
.end method
