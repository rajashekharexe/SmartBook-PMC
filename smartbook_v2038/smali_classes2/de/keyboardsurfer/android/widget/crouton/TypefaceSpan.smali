.class public Lde/keyboardsurfer/android/widget/crouton/TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TypefaceSpan.java"


# static fields
.field private static sTypefaceCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Landroidx/collection/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lde/keyboardsurfer/android/widget/crouton/TypefaceSpan;->sTypefaceCache:Landroidx/collection/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 39
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/TypefaceSpan;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 46
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/TypefaceSpan;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p2, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
