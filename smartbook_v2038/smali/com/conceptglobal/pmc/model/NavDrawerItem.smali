.class public Lcom/conceptglobal/pmc/model/NavDrawerItem;
.super Ljava/lang/Object;
.source "NavDrawerItem.java"


# instance fields
.field private drawable:I

.field private showNotify:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/model/NavDrawerItem;->showNotify:Z

    .line 17
    iput-object p2, p0, Lcom/conceptglobal/pmc/model/NavDrawerItem;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDrawable()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/conceptglobal/pmc/model/NavDrawerItem;->drawable:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/NavDrawerItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isShowNotify()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/model/NavDrawerItem;->showNotify:Z

    return v0
.end method

.method public setDrawable(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/conceptglobal/pmc/model/NavDrawerItem;->drawable:I

    return-void
.end method

.method public setShowNotify(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/model/NavDrawerItem;->showNotify:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/NavDrawerItem;->title:Ljava/lang/String;

    return-void
.end method
