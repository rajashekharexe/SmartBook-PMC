.class Lcom/conceptglobal/pmc/fo/PictureReporting$4;
.super Ljava/lang/Object;
.source "PictureReporting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReporting;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReporting;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 433
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting;->access$1102(Lcom/conceptglobal/pmc/fo/PictureReporting;[B)[B

    .line 434
    const-string p1, "PictureReporting"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Navigation"

    const-string v2, "cancel click "

    invoke-static {v1, v2, p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting;->access$1300(Lcom/conceptglobal/pmc/fo/PictureReporting;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0801d0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting;->access$1000(Lcom/conceptglobal/pmc/fo/PictureReporting;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting;->access$900(Lcom/conceptglobal/pmc/fo/PictureReporting;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting;->onBackPressed()V

    return-void
.end method
