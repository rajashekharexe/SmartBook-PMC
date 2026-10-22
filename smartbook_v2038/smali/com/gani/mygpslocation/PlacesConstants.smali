.class public Lcom/gani/mygpslocation/PlacesConstants;
.super Ljava/lang/Object;
.source "PlacesConstants.java"


# static fields
.field public static ACTIVE_LOCATION_UPDATE_PROVIDER_DISABLED:Ljava/lang/String; = null

.field public static ARGUMENTS_KEY_ID:Ljava/lang/String; = null

.field public static ARGUMENTS_KEY_REFERENCE:Ljava/lang/String; = null

.field public static CHECKIN_NOTIFICATION:I = 0x0

.field public static CHECKIN_RETRY_INTERVAL:J = 0x0L

.field public static CONSTRUCTED_LOCATION_PROVIDER:Ljava/lang/String; = null

.field public static DEFAULT_RADIUS:I = 0x96

.field public static DEVELOPER_MODE:Z = true

.field public static DISABLE_PASSIVE_LOCATION_WHEN_USER_EXIT:Z = false

.field public static DISABLE_PREFETCH_ON_LOW_BATTERY:Z = false

.field public static EXTRA_KEY_FORCEREFRESH:Ljava/lang/String; = null

.field public static EXTRA_KEY_ID:Ljava/lang/String; = null

.field public static EXTRA_KEY_IN_BACKGROUND:Ljava/lang/String; = null

.field public static EXTRA_KEY_LOCATION:Ljava/lang/String; = null

.field public static EXTRA_KEY_RADIUS:Ljava/lang/String; = null

.field public static EXTRA_KEY_REFERENCE:Ljava/lang/String; = null

.field public static EXTRA_KEY_TIME_STAMP:Ljava/lang/String; = null

.field public static MAX_DETAILS_UPDATE_LATENCY:J = 0x0L

.field public static MAX_DISTANCE:I = 0x0

.field public static MAX_TIME:J = 0x0L

.field public static NEW_CHECKIN_ACTION:Ljava/lang/String; = null

.field public static PASSIVE_MAX_DISTANCE:I = 0x0

.field public static PASSIVE_MAX_TIME:J = 0x0L

.field public static PLACES_CHECKIN_OK_STATUS:Ljava/lang/String; = "OK"

.field public static PLACES_CHECKIN_URI:Ljava/lang/String; = "https://maps.googleapis.com/maps/api/place/check-in/xml?sensor=true"

.field public static PLACES_DETAIL_BASE_URI:Ljava/lang/String; = "https://maps.googleapis.com/maps/api/place/details/xml?sensor=true&reference="

.field public static PLACES_LIST_BASE_URI:Ljava/lang/String; = "https://maps.googleapis.com/maps/api/place/search/xml?sensor=true"

.field public static PREFETCH_LIMIT:I

.field public static PREFETCH_ON_WIFI_ONLY:Z

.field public static RETRY_QUEUED_CHECKINS_ACTION:Ljava/lang/String;

.field public static SHARED_PREFERENCE_FILE:Ljava/lang/String;

.field public static SP_KEY_FOLLOW_LOCATION_CHANGES:Ljava/lang/String;

.field public static SP_KEY_LAST_CHECKIN_ID:Ljava/lang/String;

.field public static SP_KEY_LAST_CHECKIN_TIMESTAMP:Ljava/lang/String;

.field public static SP_KEY_LAST_LIST_UPDATE_LAT:Ljava/lang/String;

.field public static SP_KEY_LAST_LIST_UPDATE_LNG:Ljava/lang/String;

.field public static SP_KEY_LAST_LIST_UPDATE_TIME:Ljava/lang/String;

.field public static SP_KEY_RUN_ONCE:Ljava/lang/String;

.field public static SUPPORTS_ECLAIR:Z

.field public static SUPPORTS_FROYO:Z

.field public static SUPPORTS_GINGERBREAD:Z

.field public static SUPPORTS_HONEYCOMB:Z

.field public static USE_GPS_WHEN_ACTIVITY_VISIBLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x96

    .line 53
    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/gani/mygpslocation/PlacesConstants;->MAX_DISTANCE:I

    const-wide/16 v1, 0x2710

    .line 55
    sput-wide v1, Lcom/gani/mygpslocation/PlacesConstants;->MAX_TIME:J

    .line 60
    sput v0, Lcom/gani/mygpslocation/PlacesConstants;->PASSIVE_MAX_DISTANCE:I

    .line 62
    sput-wide v1, Lcom/gani/mygpslocation/PlacesConstants;->PASSIVE_MAX_TIME:J

    const/4 v0, 0x1

    .line 64
    sput-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->USE_GPS_WHEN_ACTIVITY_VISIBLE:Z

    const/4 v1, 0x0

    .line 67
    sput-boolean v1, Lcom/gani/mygpslocation/PlacesConstants;->DISABLE_PASSIVE_LOCATION_WHEN_USER_EXIT:Z

    const-wide/32 v2, 0x5265c00

    .line 70
    sput-wide v2, Lcom/gani/mygpslocation/PlacesConstants;->MAX_DETAILS_UPDATE_LATENCY:J

    .line 75
    sput-boolean v1, Lcom/gani/mygpslocation/PlacesConstants;->PREFETCH_ON_WIFI_ONLY:Z

    .line 77
    sput-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->DISABLE_PREFETCH_ON_LOW_BATTERY:Z

    const-wide/32 v2, 0xdbba0

    .line 80
    sput-wide v2, Lcom/gani/mygpslocation/PlacesConstants;->CHECKIN_RETRY_INTERVAL:J

    const/4 v2, 0x5

    .line 83
    sput v2, Lcom/gani/mygpslocation/PlacesConstants;->PREFETCH_LIMIT:I

    .line 90
    const-string v2, "SHARED_PREFERENCE_FILE"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    .line 91
    const-string v2, "SP_KEY_FOLLOW_LOCATION_CHANGES"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->SP_KEY_FOLLOW_LOCATION_CHANGES:Ljava/lang/String;

    .line 92
    const-string v2, "SP_KEY_LAST_LIST_UPDATE_TIME"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->SP_KEY_LAST_LIST_UPDATE_TIME:Ljava/lang/String;

    .line 93
    const-string v2, "SP_KEY_LAST_LIST_UPDATE_LAT"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->SP_KEY_LAST_LIST_UPDATE_LAT:Ljava/lang/String;

    .line 94
    const-string v2, "SP_KEY_LAST_LIST_UPDATE_LNG"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->SP_KEY_LAST_LIST_UPDATE_LNG:Ljava/lang/String;

    .line 95
    const-string v2, "SP_KEY_LAST_CHECKIN_ID"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->SP_KEY_LAST_CHECKIN_ID:Ljava/lang/String;

    .line 96
    const-string v2, "SP_KEY_LAST_CHECKIN_TIMESTAMP"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->SP_KEY_LAST_CHECKIN_TIMESTAMP:Ljava/lang/String;

    .line 97
    const-string v2, "SP_KEY_RUN_ONCE"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->SP_KEY_RUN_ONCE:Ljava/lang/String;

    .line 99
    const-string v2, "reference"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->EXTRA_KEY_REFERENCE:Ljava/lang/String;

    .line 100
    const-string v3, "id"

    sput-object v3, Lcom/gani/mygpslocation/PlacesConstants;->EXTRA_KEY_ID:Ljava/lang/String;

    .line 101
    const-string v4, "location"

    sput-object v4, Lcom/gani/mygpslocation/PlacesConstants;->EXTRA_KEY_LOCATION:Ljava/lang/String;

    .line 102
    const-string v4, "radius"

    sput-object v4, Lcom/gani/mygpslocation/PlacesConstants;->EXTRA_KEY_RADIUS:Ljava/lang/String;

    .line 103
    const-string v4, "time_stamp"

    sput-object v4, Lcom/gani/mygpslocation/PlacesConstants;->EXTRA_KEY_TIME_STAMP:Ljava/lang/String;

    .line 104
    const-string v4, "force_refresh"

    sput-object v4, Lcom/gani/mygpslocation/PlacesConstants;->EXTRA_KEY_FORCEREFRESH:Ljava/lang/String;

    .line 105
    const-string v4, "EXTRA_KEY_IN_BACKGROUND"

    sput-object v4, Lcom/gani/mygpslocation/PlacesConstants;->EXTRA_KEY_IN_BACKGROUND:Ljava/lang/String;

    .line 107
    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->ARGUMENTS_KEY_REFERENCE:Ljava/lang/String;

    .line 108
    sput-object v3, Lcom/gani/mygpslocation/PlacesConstants;->ARGUMENTS_KEY_ID:Ljava/lang/String;

    .line 110
    const-string v2, "com.radioactiveyak.places.NEW_CHECKIN_ACTION"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->NEW_CHECKIN_ACTION:Ljava/lang/String;

    .line 111
    const-string v2, "com.radioactiveyak.places.retry_queued_checkins"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->RETRY_QUEUED_CHECKINS_ACTION:Ljava/lang/String;

    .line 112
    const-string v2, "com.radioactiveyak.places.active_location_update_provider_disabled"

    sput-object v2, Lcom/gani/mygpslocation/PlacesConstants;->ACTIVE_LOCATION_UPDATE_PROVIDER_DISABLED:Ljava/lang/String;

    .line 114
    sput-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->SUPPORTS_GINGERBREAD:Z

    .line 115
    sput-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->SUPPORTS_HONEYCOMB:Z

    .line 116
    sput-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->SUPPORTS_FROYO:Z

    .line 117
    sput-boolean v0, Lcom/gani/mygpslocation/PlacesConstants;->SUPPORTS_ECLAIR:Z

    .line 119
    const-string v0, "CONSTRUCTED_LOCATION_PROVIDER"

    sput-object v0, Lcom/gani/mygpslocation/PlacesConstants;->CONSTRUCTED_LOCATION_PROVIDER:Ljava/lang/String;

    .line 121
    sput v1, Lcom/gani/mygpslocation/PlacesConstants;->CHECKIN_NOTIFICATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
