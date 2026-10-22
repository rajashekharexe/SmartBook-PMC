.class public Lcom/gani/mygpslocation/PlatformSpecificImplementationFactory;
.super Ljava/lang/Object;
.source "PlatformSpecificImplementationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastLocationFinder(Landroid/content/Context;)Lcom/gani/mygpslocation/ILastLocationFinder;
    .locals 1

    .line 36
    sget-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->SUPPORTS_GINGERBREAD:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/LegacyLastLocationFinder;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method

.method public static getLocationUpdateRequester(Landroid/location/LocationManager;)Lcom/gani/mygpslocation/LocationUpdateRequester;
    .locals 1

    .line 58
    sget-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->SUPPORTS_GINGERBREAD:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/gani/mygpslocation/GingerbreadLocationUpdateRequester;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/GingerbreadLocationUpdateRequester;-><init>(Landroid/location/LocationManager;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/gani/mygpslocation/FroyoLocationUpdateRequester;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/FroyoLocationUpdateRequester;-><init>(Landroid/location/LocationManager;)V

    :goto_0
    return-object v0
.end method

.method public static getSharedPreferenceSaver(Landroid/content/Context;)Lcom/gani/mygpslocation/SharedPreferenceSaver;
    .locals 1

    .line 67
    sget-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->SUPPORTS_GINGERBREAD:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/gani/mygpslocation/GingerbreadSharedPreferenceSaver;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/GingerbreadSharedPreferenceSaver;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_0
    sget-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->SUPPORTS_FROYO:Z

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Lcom/gani/mygpslocation/FroyoSharedPreferenceSaver;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/FroyoSharedPreferenceSaver;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Lcom/gani/mygpslocation/LegacySharedPreferenceSaver;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/LegacySharedPreferenceSaver;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method

.method public static getStrictMode()Lcom/gani/mygpslocation/IStrictMode;
    .locals 1

    .line 44
    sget-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->SUPPORTS_HONEYCOMB:Z

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/gani/mygpslocation/HoneycombStrictMode;

    invoke-direct {v0}, Lcom/gani/mygpslocation/HoneycombStrictMode;-><init>()V

    return-object v0

    .line 46
    :cond_0
    sget-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->SUPPORTS_GINGERBREAD:Z

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Lcom/gani/mygpslocation/LegacyStrictMode;

    invoke-direct {v0}, Lcom/gani/mygpslocation/LegacyStrictMode;-><init>()V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
