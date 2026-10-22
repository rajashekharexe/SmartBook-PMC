.class public final enum Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;
.super Ljava/lang/Enum;
.source "TrackingMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;

.field public static final enum LOCATION:Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;


# instance fields
.field private final preferenceKeyId:I


# direct methods
.method private static synthetic $values()[Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;
    .locals 3

    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;

    sget-object v1, Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;->LOCATION:Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 26
    new-instance v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;

    const/4 v1, 0x0

    const v2, 0x7f1000b3

    const-string v3, "LOCATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;->LOCATION:Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;

    .line 24
    invoke-static {}, Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;->$values()[Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;->$VALUES:[Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;->preferenceKeyId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;
    .locals 1

    .line 24
    const-class v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;

    return-object p0
.end method

.method public static values()[Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;
    .locals 1

    .line 24
    sget-object v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;->$VALUES:[Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;

    invoke-virtual {v0}, [Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;

    return-object v0
.end method


# virtual methods
.method public getPreferenceKeyId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/TrackingMethod;->preferenceKeyId:I

    return v0
.end method
