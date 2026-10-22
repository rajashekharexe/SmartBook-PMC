.class Lcom/conceptglobal/pmc/fragments/AddTestimonial$16;
.super Ljava/lang/Object;
.source "AddTestimonial.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddTestimonial;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

.field final synthetic val$latitude:Landroid/widget/TextView;

.field final synthetic val$longitude:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4144
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$16;->val$latitude:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$16;->val$longitude:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 3

    .line 4153
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$16;->val$latitude:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2500(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4154
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2600(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Lcom/conceptglobal/pmc/model/FarmerMaster;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/FarmerMaster;->setGPSTimeStamp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 5

    .line 4147
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$16;->val$latitude:Landroid/widget/TextView;

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

    .line 4148
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$16;->val$longitude:Landroid/widget/TextView;

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
