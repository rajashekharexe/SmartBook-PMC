.class Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$5;
.super Ljava/lang/Object;
.source "AttributesActivityCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

.field final synthetic val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1055
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$5;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$5;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1058
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 1059
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1060
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1062
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 1063
    check-cast v2, Landroid/widget/EditText;

    .line 1064
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$5;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$5;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$5;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-static {v0, v2, p1, v1, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
