.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;
.super Ljava/lang/Object;
.source "FarmersSearchFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fetchLocationFilterCustomers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 1795
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 1798
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4800(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FarmersSearchFragment"

    const-string v3, "location found"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1002(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1800
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1102(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1801
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/registration/DraftList;

    iget p1, p1, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1803
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double v0, v0, v2

    .line 1804
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v2, v0

    .line 1805
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v4, v0

    .line 1806
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v6, v0

    .line 1807
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v8, v0

    .line 1808
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " and latitude between cast( "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " as numeric) and cast("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " as numeric) "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and longitude between cast( "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1810
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationFilterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
