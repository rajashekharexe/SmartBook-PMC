.class Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$5;
.super Ljava/lang/Object;
.source "PictureReporting_Expenses.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$5;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 425
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$5;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1202(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;[B)[B

    .line 426
    const-string p1, "PictureReporting"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Navigation"

    const-string v2, "cancel click "

    invoke-static {v1, v2, p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$5;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1300(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0801d0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 428
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$5;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1100(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$5;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1000(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$5;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->onBackPressed()V

    return-void
.end method
