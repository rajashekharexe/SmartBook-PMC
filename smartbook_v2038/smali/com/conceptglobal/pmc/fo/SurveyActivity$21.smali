.class Lcom/conceptglobal/pmc/fo/SurveyActivity$21;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


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

    .line 2701
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 1

    .line 2704
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2705
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2800(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    return-void
.end method
