.class Lcom/conceptglobal/pmc/database/GetDataFromDB$6;
.super Ljava/lang/Object;
.source "GetDataFromDB.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerBindData(Ljava/lang/String;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/database/GetDataFromDB;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/database/GetDataFromDB;)V
    .locals 0

    .line 5210
    iput-object p1, p0, Lcom/conceptglobal/pmc/database/GetDataFromDB$6;->this$0:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/conceptglobal/pmc/model/CustomListDisplayModel;Lcom/conceptglobal/pmc/model/CustomListDisplayModel;)I
    .locals 1

    .line 5213
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getData()Ljava/util/List;

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

    .line 5210
    check-cast p1, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    check-cast p2, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB$6;->compare(Lcom/conceptglobal/pmc/model/CustomListDisplayModel;Lcom/conceptglobal/pmc/model/CustomListDisplayModel;)I

    move-result p1

    return p1
.end method
