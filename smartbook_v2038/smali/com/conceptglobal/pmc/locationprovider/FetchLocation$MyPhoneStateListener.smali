.class Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "FetchLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/locationprovider/FetchLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field public signalLevel:I

.field public singalStenths:I

.field final synthetic this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 p1, 0x0

    .line 435
    iput p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;->singalStenths:I

    .line 436
    iput p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;->signalLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;Lcom/conceptglobal/pmc/locationprovider/FetchLocation$1;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;-><init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    .line 440
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 441
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;->singalStenths:I

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mGsmSignalStrength :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {v0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$1500(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Location"

    invoke-static {v2, p1, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$1600(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$1600(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {v0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$1700(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method
