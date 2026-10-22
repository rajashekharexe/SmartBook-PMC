.class Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$9;
.super Ljava/lang/Object;
.source "PictureReporting_Expenses.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V
    .locals 0

    .line 941
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$9;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

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

    .line 944
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$9;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1602(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Ljava/lang/String;)Ljava/lang/String;

    .line 945
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$9;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1702(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
