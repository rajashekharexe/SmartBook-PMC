.class public Lcom/conceptglobal/pmc/model/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FieldData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FieldData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FieldData;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FieldData;->name:Ljava/lang/String;

    return-void
.end method
