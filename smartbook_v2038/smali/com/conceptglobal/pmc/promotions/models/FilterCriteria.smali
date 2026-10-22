.class public Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;
.super Ljava/lang/Object;
.source "FilterCriteria.java"


# instance fields
.field public contentIds:Ljava/lang/String;

.field public contentTypes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentIds()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->contentIds:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypes()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->contentTypes:Ljava/lang/String;

    return-object v0
.end method

.method public setContentIds(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->contentIds:Ljava/lang/String;

    return-void
.end method

.method public setContentTypes(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->contentTypes:Ljava/lang/String;

    return-void
.end method
