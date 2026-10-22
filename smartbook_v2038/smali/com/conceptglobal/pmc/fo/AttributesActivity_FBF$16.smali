.class Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$16;
.super Ljava/lang/Object;
.source "AttributesActivity_FBF.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->findCurrentLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)V
    .locals 0

    .line 2458
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 1

    .line 2461
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
