.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$22;
.super Ljava/lang/Object;
.source "AttributesActivity_Expenses.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->findCurrentLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V
    .locals 0

    .line 2971
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$22;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

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

    .line 2974
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$22;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->onLocFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
