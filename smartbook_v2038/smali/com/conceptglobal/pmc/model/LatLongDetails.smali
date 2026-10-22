.class public Lcom/conceptglobal/pmc/model/LatLongDetails;
.super Ljava/lang/Object;
.source "LatLongDetails.java"


# instance fields
.field private Latitude:Ljava/lang/String;

.field private Longitude:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/LatLongDetails;->Latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/LatLongDetails;->Longitude:Ljava/lang/String;

    return-object v0
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/LatLongDetails;->Latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/LatLongDetails;->Longitude:Ljava/lang/String;

    return-void
.end method
