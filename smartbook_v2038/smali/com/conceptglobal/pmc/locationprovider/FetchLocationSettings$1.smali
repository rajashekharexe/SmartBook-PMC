.class Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$1;
.super Ljava/lang/Object;
.source "FetchLocationSettings.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->startLocationUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$1;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 241
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 p1, 0x2136

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Location settings are inadequate, and cannot be fixed here. Fix in Settings."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$1;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;

    invoke-static {p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->access$100(Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 260
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$1;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->access$202(Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Location settings are not satisfied. Attempting to upgrade location settings "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 250
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$1;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;

    invoke-static {v0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->access$100(Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    invoke-static {}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PendingIntent unable to execute request."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
