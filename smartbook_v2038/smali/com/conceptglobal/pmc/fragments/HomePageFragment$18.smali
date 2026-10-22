.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$18;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V
    .locals 0

    .line 2181
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$18;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2186
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$18;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2402(Lcom/conceptglobal/pmc/fragments/HomePageFragment;D)D

    .line 2187
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$18;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2502(Lcom/conceptglobal/pmc/fragments/HomePageFragment;D)D

    .line 2189
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$18;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$500(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2190
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$18;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$18;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2400(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$18;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2500(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v0, v3}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$600(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 2193
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$18;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1300(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
