.class Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$22;
.super Ljava/lang/Object;
.source "AttributesTableViewActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V
    .locals 0

    .line 3346
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$22;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 2

    .line 3355
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$22;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->fetchLocationCall:Ljava/lang/String;

    const-string v1, "Stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3356
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->stopTimeGPS:Ljava/lang/String;

    goto :goto_0

    .line 3358
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getLongToDate(J)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->startTimeGPS:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 0

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
