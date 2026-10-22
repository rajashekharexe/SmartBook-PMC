.class public Lcom/conceptglobal/pmc/model/CustomListDisplayModel;
.super Ljava/lang/Object;
.source "CustomListDisplayModel.java"


# instance fields
.field private Field1:Ljava/lang/String;

.field private Field2:Ljava/lang/String;

.field private Field3:Ljava/lang/String;

.field private VillageName:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private typeId:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->data:Ljava/util/List;

    return-object v0
.end method

.method public getField1()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->Field1:Ljava/lang/String;

    return-object v0
.end method

.method public getField2()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->Field2:Ljava/lang/String;

    return-object v0
.end method

.method public getField3()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->Field3:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getVillageName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->VillageName:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->data:Ljava/util/List;

    return-void
.end method

.method public setField1(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->Field1:Ljava/lang/String;

    return-void
.end method

.method public setField2(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->Field2:Ljava/lang/String;

    return-void
.end method

.method public setField3(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->Field3:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setTypeId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->typeId:Ljava/lang/String;

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->typeName:Ljava/lang/String;

    return-void
.end method

.method public setVillageName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->VillageName:Ljava/lang/String;

    return-void
.end method
