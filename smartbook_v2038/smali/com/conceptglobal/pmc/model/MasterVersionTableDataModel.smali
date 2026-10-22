.class public Lcom/conceptglobal/pmc/model/MasterVersionTableDataModel;
.super Ljava/lang/Object;
.source "MasterVersionTableDataModel.java"


# instance fields
.field private tableName:Ljava/lang/String;

.field private updateOn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/MasterVersionTableDataModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateOn()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/MasterVersionTableDataModel;->updateOn:Ljava/lang/String;

    return-object v0
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/MasterVersionTableDataModel;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setUpdateOn(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/MasterVersionTableDataModel;->updateOn:Ljava/lang/String;

    return-void
.end method
