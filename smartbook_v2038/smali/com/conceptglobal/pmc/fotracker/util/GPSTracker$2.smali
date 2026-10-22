.class Lcom/conceptglobal/pmc/fotracker/util/GPSTracker$2;
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

    .line 197
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker$2;->this$0:Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
