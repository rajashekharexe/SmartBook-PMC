.class Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$16;
.super Ljava/lang/Object;
.source "AttributesActivityCopy.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->findCurrentLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V
    .locals 0

    .line 2421
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

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

    .line 2424
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
