.class public Lcom/conceptglobal/pmc/model/ItemTwoLine;
.super Ljava/lang/Object;
.source "ItemTwoLine.java"


# instance fields
.field private cb1:Z

.field private texte2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ItemTwoLine;->texte2:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/model/ItemTwoLine;->cb1:Z

    return-void
.end method


# virtual methods
.method public getCb1()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/model/ItemTwoLine;->cb1:Z

    return v0
.end method

.method public getTexte2()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ItemTwoLine;->texte2:Ljava/lang/String;

    return-object v0
.end method

.method public setCb1(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/model/ItemTwoLine;->cb1:Z

    return-void
.end method
