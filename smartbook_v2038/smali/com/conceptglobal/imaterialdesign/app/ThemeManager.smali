.class public Lcom/conceptglobal/imaterialdesign/app/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;,
        Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;,
        Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;,
        Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;
    }
.end annotation


# static fields
.field private static final KEY_THEME:Ljava/lang/String; = "theme"

.field private static final PREF:Ljava/lang/String; = "theme.pref"

.field public static final THEME_UNDEFINED:I = -0x80000000

.field private static volatile mInstance:Lcom/conceptglobal/imaterialdesign/app/ThemeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTheme:I

.field private mDispatcher:Lcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;

.field private mStyles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private mThemeCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mStyles:Landroid/util/SparseArray;

    return-void
.end method

.method private dispatchThemeChanged(I)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mDispatcher:Lcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;->dispatchThemeChanged(I)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;
    .locals 2

    .line 69
    sget-object v0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mInstance:Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mInstance:Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    invoke-direct {v1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;-><init>()V

    sput-object v1, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mInstance:Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_1
    :goto_0
    sget-object v0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mInstance:Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    return-object v0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 119
    :cond_0
    const-string v0, "theme.pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static getStyleId(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .locals 1

    .line 46
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->ThemableView:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 47
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->ThemableView_v_styleId:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 48
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private getStyleList(I)[I
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mStyles:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 109
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->loadStyleList(Landroid/content/Context;I)[I

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mStyles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public static init(Landroid/content/Context;IILcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->setup(Landroid/content/Context;IILcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;)V

    return-void
.end method

.method private loadStyleList(Landroid/content/Context;I)[I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p2

    new-array v0, p2, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 99
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentStyle(I)I
    .locals 1

    .line 175
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mCurrentTheme:I

    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyle(II)I

    move-result p1

    return p1
.end method

.method public getCurrentTheme()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mCurrentTheme:I

    return v0
.end method

.method public getStyle(II)I
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyleList(I)[I

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 186
    :cond_0
    aget p1, p1, p2

    :goto_0
    return p1
.end method

.method public getThemeCount()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mThemeCount:I

    return v0
.end method

.method public registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mDispatcher:Lcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;->registerListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_0
    return-void
.end method

.method public setCurrentTheme(I)Z
    .locals 3

    .line 146
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 149
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mCurrentTheme:I

    if-eq v0, p1, :cond_2

    .line 150
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mCurrentTheme:I

    .line 151
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "theme"

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mCurrentTheme:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    :cond_1
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mCurrentTheme:I

    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->dispatchThemeChanged(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method protected setup(Landroid/content/Context;IILcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p4, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;

    invoke-direct {p4}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$SimpleDispatcher;-><init>()V

    :goto_0
    iput-object p4, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mDispatcher:Lcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;

    .line 82
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mThemeCount:I

    .line 83
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    const-string p2, "theme"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mCurrentTheme:I

    goto :goto_1

    .line 87
    :cond_1
    iput p3, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mCurrentTheme:I

    .line 88
    :goto_1
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mCurrentTheme:I

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mThemeCount:I

    if-lt p1, p2, :cond_2

    .line 89
    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->setCurrentTheme(I)Z

    :cond_2
    return-void
.end method

.method public unregisterOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->mDispatcher:Lcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;->unregisterListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_0
    return-void
.end method
