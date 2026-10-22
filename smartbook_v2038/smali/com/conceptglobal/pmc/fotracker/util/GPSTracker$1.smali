.class Lcom/conceptglobal/pmc/fotracker/util/GPSTracker$1;
.super Ljava/lang/Object;
.source "GPSTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->showSettingsAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker$1;->this$0:Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 191
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object p2, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker$1;->this$0:Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->access$000(Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
