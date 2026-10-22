.class Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;
.super Ljava/lang/Object;
.source "HomePageGridAdapter.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->access$302(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;Ljava/lang/Double;)Ljava/lang/Double;

    .line 790
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->access$402(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;Ljava/lang/Double;)Ljava/lang/Double;

    .line 791
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->selectedposition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getModuleid()Ljava/lang/String;

    move-result-object p1

    const-string v0, "27"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 792
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->disPlaySVRadiusData()I

    move-result v0

    iput v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->svActityCount:I

    goto :goto_0

    .line 793
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->selectedposition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getModuleid()Ljava/lang/String;

    move-result-object p1

    const-string v0, "12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 794
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->disPlayToDoRadiusData()I

    move-result v0

    iput v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->svActityCount:I

    .line 795
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->refreshView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 796
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 797
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->tvCount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget v1, v1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->svActityCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->refreshView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
