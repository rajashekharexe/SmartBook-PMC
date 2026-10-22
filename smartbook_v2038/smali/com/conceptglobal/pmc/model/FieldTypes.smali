.class public Lcom/conceptglobal/pmc/model/FieldTypes;
.super Ljava/lang/Object;
.source "FieldTypes.java"


# instance fields
.field private extfiled:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtfiled()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FieldTypes;->extfiled:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/conceptglobal/pmc/model/FieldTypes;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FieldTypes;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setExtfiled(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FieldTypes;->extfiled:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/conceptglobal/pmc/model/FieldTypes;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FieldTypes;->name:Ljava/lang/String;

    return-void
.end method
