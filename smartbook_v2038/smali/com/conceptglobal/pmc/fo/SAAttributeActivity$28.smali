.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$28;
.super Ljava/lang/Object;
.source "SAAttributeActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 3132
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 3

    .line 3141
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4302(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3143
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Landroid/location/Location;Landroid/widget/TextView;)V

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 5

    .line 3135
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;

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

    .line 3136
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$28;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;

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
