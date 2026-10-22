.class Lcom/conceptglobal/pmc/fragments/AddRetailer$31;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

.field final synthetic val$latitude:Landroid/widget/TextView;

.field final synthetic val$longitude:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5751
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->val$latitude:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->val$longitude:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 3

    .line 5760
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$6200(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/location/Location;)V

    .line 5761
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$6302(Lcom/conceptglobal/pmc/fragments/AddRetailer;Ljava/lang/String;)Ljava/lang/String;

    .line 5763
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->val$latitude:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$6400(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5764
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$6500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/model/DealerMaster;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DealerMaster;->setGPSTimeStamp(Ljava/lang/String;)V

    goto :goto_0

    .line 5765
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->val$latitude:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5766
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2302(Lcom/conceptglobal/pmc/fragments/AddRetailer;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 5

    .line 5754
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->val$latitude:Landroid/widget/TextView;

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

    .line 5755
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$31;->val$longitude:Landroid/widget/TextView;

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
