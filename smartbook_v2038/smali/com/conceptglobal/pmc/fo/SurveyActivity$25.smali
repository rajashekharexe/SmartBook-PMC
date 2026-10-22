.class Lcom/conceptglobal/pmc/fo/SurveyActivity$25;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SurveyActivity;->showGoBackDialog()V
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

    .line 2861
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2864
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2865
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->finish()V

    return-void
.end method
