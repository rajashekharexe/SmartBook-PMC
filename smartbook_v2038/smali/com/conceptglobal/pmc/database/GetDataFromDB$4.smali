.class Lcom/conceptglobal/pmc/database/GetDataFromDB$4;
.super Ljava/lang/Object;
.source "GetDataFromDB.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindDataDynamic1(Ljava/lang/String;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/conceptglobal/pmc/model/DashboardListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/database/GetDataFromDB;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/database/GetDataFromDB;)V
    .locals 0

    .line 4950
    iput-object p1, p0, Lcom/conceptglobal/pmc/database/GetDataFromDB$4;->this$0:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/conceptglobal/pmc/model/DashboardListModel;Lcom/conceptglobal/pmc/model/DashboardListModel;)I
    .locals 1

    .line 4953
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 4950
    check-cast p1, Lcom/conceptglobal/pmc/model/DashboardListModel;

    check-cast p2, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB$4;->compare(Lcom/conceptglobal/pmc/model/DashboardListModel;Lcom/conceptglobal/pmc/model/DashboardListModel;)I

    move-result p1

    return p1
.end method
