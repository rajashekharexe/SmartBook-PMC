.class public final enum Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;
.super Ljava/lang/Enum;
.source "IdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/IdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceIdentifierType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

.field public static final enum ANDROID_ADVERTISING_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

.field public static final enum ANDROID_DEVICE_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

.field public static final enum ANDROID_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

.field public static final enum ANDROID_SERIAL:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

.field public static final enum BLUETOOTH_MAC_ADDRESS:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

.field public static final enum FONT_TOKEN:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

.field public static final enum WIFI_MAC_ADDRESS:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;


# instance fields
.field public final protobufIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 59
    new-instance v0, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    const-string v1, "WIFI_MAC_ADDRESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->WIFI_MAC_ADDRESS:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    .line 60
    new-instance v1, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    const-string v4, "BLUETOOTH_MAC_ADDRESS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->BLUETOOTH_MAC_ADDRESS:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    .line 63
    new-instance v4, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    const-string v6, "FONT_TOKEN"

    const/16 v7, 0x35

    invoke-direct {v4, v6, v5, v7}, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->FONT_TOKEN:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    .line 64
    new-instance v6, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    const/16 v7, 0x64

    const-string v8, "ANDROID_ID"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v7}, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    .line 65
    new-instance v7, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    const/16 v8, 0x65

    const-string v10, "ANDROID_DEVICE_ID"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v8}, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_DEVICE_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    .line 66
    new-instance v8, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    const/16 v10, 0x66

    const-string v12, "ANDROID_SERIAL"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_SERIAL:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    .line 67
    new-instance v10, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    const/16 v12, 0x67

    const-string v14, "ANDROID_ADVERTISING_ID"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ADVERTISING_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    const/4 v12, 0x7

    .line 57
    new-array v12, v12, [Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v9

    aput-object v7, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    sput-object v12, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->$VALUES:[Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->protobufIndex:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;
    .locals 1

    .line 57
    const-class v0, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    return-object p0
.end method

.method public static values()[Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;
    .locals 1

    .line 57
    sget-object v0, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->$VALUES:[Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    return-object v0
.end method
