.class Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$10;
.super Ljava/lang/Object;
.source "SurveyAttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V
    .locals 0

    .line 2313
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2317
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$2302(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)I

    .line 2318
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->showDialog(I)V

    return-void
.end method
