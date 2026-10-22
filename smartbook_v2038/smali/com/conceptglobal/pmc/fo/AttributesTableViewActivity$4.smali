.class Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;
.super Ljava/lang/Object;
.source "AttributesTableViewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

.field final synthetic val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 831
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 834
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 844
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/AutoCompleteTextView;->setCursorVisible(Z)V

    .line 855
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$402(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 856
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 857
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 858
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$4;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {p2, v0, p1, v1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/util/ArrayList;Landroid/widget/EditText;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 863
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
