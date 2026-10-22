.class public Lcom/conceptglobal/pmc/model/MultiSelectData;
.super Ljava/lang/Object;
.source "MultiSelectData.java"


# instance fields
.field private ids:Ljava/lang/String;

.field private names:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/MultiSelectData;->ids:Ljava/lang/String;

    return-object v0
.end method

.method public getNames()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/MultiSelectData;->names:Ljava/lang/String;

    return-object v0
.end method

.method public setIds(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/MultiSelectData;->ids:Ljava/lang/String;

    return-void
.end method

.method public setNames(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/MultiSelectData;->names:Ljava/lang/String;

    return-void
.end method
