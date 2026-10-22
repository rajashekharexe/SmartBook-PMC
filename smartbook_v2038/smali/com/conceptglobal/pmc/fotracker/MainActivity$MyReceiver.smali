.class Lcom/conceptglobal/pmc/fotracker/MainActivity$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fotracker/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fotracker/MainActivity;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$MyReceiver;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fotracker/MainActivity;Lcom/conceptglobal/pmc/fotracker/MainActivity$1;)V
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/MainActivity$MyReceiver;-><init>(Lcom/conceptglobal/pmc/fotracker/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 235
    const-string p1, "com.conceptglobal.fieldtrack.location"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    if-eqz p1, :cond_0

    .line 237
    iget-object p2, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$MyReceiver;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/Utils;->getLocationText(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
