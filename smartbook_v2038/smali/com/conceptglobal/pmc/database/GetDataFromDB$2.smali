.class Lcom/conceptglobal/pmc/database/GetDataFromDB$2;
.super Ljava/lang/Object;
.source "GetDataFromDB.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCustomTypeList(Ljava/lang/String;)Ljava/util/List;
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

    .line 4378
    iput-object p1, p0, Lcom/conceptglobal/pmc/database/GetDataFromDB$2;->this$0:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/conceptglobal/pmc/model/CustomListDisplayModel;Lcom/conceptglobal/pmc/model/CustomListDisplayModel;)I
    .locals 0

    .line 4381
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 4378
    check-cast p1, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    check-cast p2, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB$2;->compare(Lcom/conceptglobal/pmc/model/CustomListDisplayModel;Lcom/conceptglobal/pmc/model/CustomListDisplayModel;)I

    move-result p1

    return p1
.end method
