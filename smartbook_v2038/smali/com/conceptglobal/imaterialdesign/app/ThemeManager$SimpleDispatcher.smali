.class public Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleDispatcher"
.end annotation


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public dispatchThemeChanged(I)V
    .locals 3

    .line 246
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;

    invoke-direct {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;-><init>(I)V

    .line 248
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 250
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 251
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 253
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;

    invoke-interface {v1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;->onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V

    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 224
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 225
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 226
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 227
    :cond_0
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 232
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public unregisterListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 238
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 239
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
