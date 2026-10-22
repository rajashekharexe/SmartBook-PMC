.class public Lcom/conceptglobal/pmc/model/SampleModel;
.super Ljava/lang/Object;
.source "SampleModel.java"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SampleModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SampleModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SampleModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SampleModel;->name:Ljava/lang/String;

    return-void
.end method
