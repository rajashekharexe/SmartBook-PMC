.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity$10;
.super Ljava/lang/Object;
.source "FarmerFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 1898
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1903
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1904
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2002(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)I

    .line 1905
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showDialog(I)V

    :cond_0
    return-void
.end method
