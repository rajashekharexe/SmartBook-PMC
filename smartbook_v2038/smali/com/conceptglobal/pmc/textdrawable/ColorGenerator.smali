.class public Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;
.super Ljava/lang/Object;
.source "ColorGenerator.java"


# static fields
.field public static DEFAULT:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field public static GENERAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field public static MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field public static TRANSPARENT:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;


# instance fields
.field private final mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const v0, -0xe9c9c

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, -0xa7aa7

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, -0x65bc2

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x1b39d2

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, -0x98408c

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, -0xa65d42

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, -0xdf6c33

    .line 28
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, -0x529d59

    .line 29
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, -0x7fa87f

    .line 30
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x9

    new-array v10, v9, [Ljava/lang/Integer;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v1, 0x2

    aput-object v2, v10, v1

    const/4 v2, 0x3

    aput-object v3, v10, v2

    const/4 v3, 0x4

    aput-object v4, v10, v3

    const/4 v4, 0x5

    aput-object v5, v10, v4

    const/4 v5, 0x6

    aput-object v6, v10, v5

    const/4 v6, 0x7

    aput-object v7, v10, v6

    const/16 v7, 0x8

    aput-object v8, v10, v7

    .line 21
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->create(Ljava/util/List;)Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    move-result-object v8

    sput-object v8, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->DEFAULT:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    const v8, -0x1a8c8d

    .line 33
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v10, -0xf9d6e

    .line 34
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v12, -0x459738

    .line 35
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, -0x6a8a33

    .line 36
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, -0x867935

    .line 37
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, -0x9b4a0a

    .line 38
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v16, -0xb03c09

    .line 39
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const v17, -0xb22f1f

    .line 40
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const v18, -0xb24954

    .line 41
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const v19, -0x7e387c

    .line 42
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v20, -0x512a7f

    .line 43
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, -0x759b

    .line 44
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const v22, -0x2b1ea9

    .line 45
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, -0x2ab1

    .line 46
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, -0x48b3

    .line 47
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const v25, -0x5e7781

    .line 48
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const v26, -0x6f5b52

    .line 49
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v9, 0x11

    new-array v9, v9, [Ljava/lang/Integer;

    aput-object v8, v9, v11

    aput-object v10, v9, v0

    aput-object v12, v9, v1

    aput-object v13, v9, v2

    aput-object v14, v9, v3

    aput-object v15, v9, v4

    aput-object v16, v9, v5

    aput-object v17, v9, v6

    aput-object v18, v9, v7

    const/16 v8, 0x9

    aput-object v19, v9, v8

    const/16 v8, 0xa

    aput-object v20, v9, v8

    const/16 v8, 0xb

    aput-object v21, v9, v8

    const/16 v8, 0xc

    aput-object v22, v9, v8

    const/16 v8, 0xd

    aput-object v23, v9, v8

    const/16 v8, 0xe

    aput-object v24, v9, v8

    const/16 v8, 0xf

    aput-object v25, v9, v8

    const/16 v8, 0x10

    aput-object v26, v9, v8

    .line 32
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->create(Ljava/util/List;)Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    move-result-object v8

    sput-object v8, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    const v8, -0x260e9c9c

    .line 53
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, -0x260a7aa7

    .line 54
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, -0x26065bc2

    .line 55
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v12, -0x26df6c33

    .line 56
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, -0x2698408c

    .line 57
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, -0x26a65d42

    .line 58
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, -0x26529d59

    .line 59
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v16, -0x267fa87f

    .line 60
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const v17, -0x261b39d2

    .line 61
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Integer;

    aput-object v8, v7, v11

    aput-object v9, v7, v0

    aput-object v10, v7, v1

    aput-object v12, v7, v2

    aput-object v13, v7, v3

    aput-object v14, v7, v4

    aput-object v15, v7, v5

    aput-object v16, v7, v6

    const/16 v0, 0x8

    aput-object v17, v7, v0

    .line 52
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->create(Ljava/util/List;)Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->TRANSPARENT:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->mColors:Ljava/util/List;

    .line 75
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public static create(Ljava/util/List;)Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static getRandomColors()Ljava/lang/String;
    .locals 9

    .line 88
    const-string v7, "ffad62a7"

    const-string v8, "ff805781"

    const-string v0, "fff16364"

    const-string v1, "fff58559"

    const-string v2, "fff9a43e"

    const-string v3, "ffe4c62e"

    const-string v4, "ff67bf74"

    const-string v5, "ff59a2be"

    const-string v6, "ff2093cd"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x9

    .line 101
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getColor(Ljava/lang/Object;)I
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->mColors:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->mColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRandomColor()I
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->mColors:Ljava/util/List;

    iget-object v1, p0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->mRandom:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
