.class public abstract Lcom/gani/mygpslocation/LocationUpdateRequester;
.super Ljava/lang/Object;
.source "LocationUpdateRequester.java"


# instance fields
.field protected locationManager:Landroid/location/LocationManager;


# direct methods
.method protected constructor <init>(Landroid/location/LocationManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/gani/mygpslocation/LocationUpdateRequester;->locationManager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public requestLocationUpdates(JJLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public requestPassiveLocationUpdates(JJLandroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method
