.class Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$2;
.super Ljava/lang/Object;
.source "HomeLocationDetailsFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->access$000(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)Landroid/widget/TextView;

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

    .line 159
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;->access$200(Lcom/conceptglobal/pmc/fragments/HomeLocationDetailsFragment;)Landroid/widget/TextView;

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
