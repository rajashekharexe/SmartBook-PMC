.class public Lcom/conceptglobal/pmc/model/CropModel;
.super Ljava/lang/Object;
.source "CropModel.java"


# instance fields
.field private id:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/conceptglobal/pmc/model/CropModel;->id:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/CropModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/conceptglobal/pmc/model/CropModel;->id:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/CropModel;->value:Ljava/lang/String;

    return-void
.end method
