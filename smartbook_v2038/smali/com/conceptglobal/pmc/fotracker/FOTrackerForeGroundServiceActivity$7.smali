.class Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$7;
.super Ljava/lang/Object;
.source "FOTrackerForeGroundServiceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->showGPSDisabledAlertToUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$7;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 600
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    iget-object p2, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$7;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
