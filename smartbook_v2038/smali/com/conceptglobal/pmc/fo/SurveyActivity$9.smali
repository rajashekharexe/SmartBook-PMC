.class Lcom/conceptglobal/pmc/fo/SurveyActivity$9;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SurveyActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V
    .locals 0

    .line 1702
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1707
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1708
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1502(Lcom/conceptglobal/pmc/fo/SurveyActivity;I)I

    .line 1709
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1500(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showDialog(I)V

    :cond_0
    return-void
.end method
