.class public Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;
.super Ljava/lang/Object;
.source "ContentTypeMaster.java"


# instance fields
.field private contentTypeId:I

.field private contentTypeName:Ljava/lang/String;

.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentTypeId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->contentTypeId:I

    return v0
.end method

.method public getContentTypeName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->contentTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setContentTypeId(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->contentTypeId:I

    return-void
.end method

.method public setContentTypeName(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->contentTypeName:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->description:Ljava/lang/String;

    return-void
.end method
