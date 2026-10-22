.class public Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;
.super Ljava/lang/Object;
.source "LinkPreview.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field description:Ljava/lang/String;

.field imageFile:Ljava/io/File;

.field link:Ljava/lang/String;

.field siteName:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageFile()Ljava/io/File;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->imageFile:Ljava/io/File;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->siteName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->description:Ljava/lang/String;

    return-void
.end method

.method public setImageFile(Ljava/io/File;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->imageFile:Ljava/io/File;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->link:Ljava/lang/String;

    return-void
.end method

.method public setSiteName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->siteName:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->title:Ljava/lang/String;

    return-void
.end method
