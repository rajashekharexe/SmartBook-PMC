.class Lcom/conceptglobal/pmc/fo/SurveyActivity$33;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SurveyActivity;->fetchLocation()V
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

    .line 3312
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$33;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 3

    .line 3321
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$33;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4702(Lcom/conceptglobal/pmc/fo/SurveyActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 5

    .line 3315
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$33;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3316
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$33;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$500(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
