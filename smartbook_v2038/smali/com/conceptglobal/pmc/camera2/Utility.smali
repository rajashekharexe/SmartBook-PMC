.class public Lcom/conceptglobal/pmc/camera2/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;
    .locals 9

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    :try_start_0
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 117
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    .line 118
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p0, v5

    .line 121
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-gt v7, p3, :cond_1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-gt v7, p4, :cond_1

    .line 122
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int v8, v8, p5

    div-int/2addr v8, v2

    if-ne v7, v8, :cond_1

    .line 123
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v7, p1, :cond_0

    .line 124
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v7, p2, :cond_0

    .line 125
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 134
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 135
    new-instance p0, Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;

    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    .line 136
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 137
    new-instance p0, Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;

    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    .line 139
    :cond_4
    aget-object p0, p0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method static getApproriateVideoSize(Ljava/util/List;II)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;II)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 20
    :try_start_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 22
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 26
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 27
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    .line 35
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method
