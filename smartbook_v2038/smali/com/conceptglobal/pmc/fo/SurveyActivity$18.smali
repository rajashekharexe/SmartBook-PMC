.class Lcom/conceptglobal/pmc/fo/SurveyActivity$18;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SurveyActivity;
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

    .line 2367
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$18;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2371
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$18;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2402(Lcom/conceptglobal/pmc/fo/SurveyActivity;I)I

    .line 2372
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$18;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->showDialog(I)V

    return-void
.end method
