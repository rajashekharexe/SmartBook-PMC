.class public Lcom/gani/mygpslocation/LegacyLocationUpdateRequester;
.super Lcom/gani/mygpslocation/LocationUpdateRequester;
.source "LegacyLocationUpdateRequester.java"


# instance fields
.field protected alarmManager:Landroid/app/AlarmManager;


# direct methods
.method protected constructor <init>(Landroid/location/LocationManager;Landroid/app/AlarmManager;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/gani/mygpslocation/LocationUpdateRequester;-><init>(Landroid/location/LocationManager;)V

    .line 36
    iput-object p2, p0, Lcom/gani/mygpslocation/LegacyLocationUpdateRequester;->alarmManager:Landroid/app/AlarmManager;

    return-void
.end method


# virtual methods
.method public requestLocationUpdates(JJLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 8

    .line 46
    iget-object v0, p0, Lcom/gani/mygpslocation/LegacyLocationUpdateRequester;->locationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p5, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 48
    iget-object v2, p0, Lcom/gani/mygpslocation/LegacyLocationUpdateRequester;->locationManager:Landroid/location/LocationManager;

    long-to-float v6, p3

    move-wide v4, p1

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public requestPassiveLocationUpdates(JJLandroid/app/PendingIntent;)V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/gani/mygpslocation/LegacyLocationUpdateRequester;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide p3, Lcom/gani/mygpslocation/PlacesConstants;->MAX_TIME:J

    add-long v2, p1, p3

    sget-wide v4, Lcom/gani/mygpslocation/PlacesConstants;->MAX_TIME:J

    const/4 v1, 0x3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
