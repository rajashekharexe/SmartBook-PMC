.class public Lcom/conceptglobal/pmc/fotracker/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fotracker/MainActivity$MyReceiver;
    }
.end annotation


# static fields
.field private static final REQUEST_PERMISSIONS_REQUEST_CODE:I = 0x22

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private mBound:Z

.field private mRemoveLocationUpdatesButton:Landroid/widget/Button;

.field private mRequestLocationUpdatesButton:Landroid/widget/Button;

.field private mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private myReceiver:Lcom/conceptglobal/pmc/fotracker/MainActivity$MyReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mBound:Z

    .line 53
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/MainActivity$1;-><init>(Lcom/conceptglobal/pmc/fotracker/MainActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fotracker/MainActivity;)Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/fotracker/MainActivity;Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/fotracker/MainActivity;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fotracker/MainActivity;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->checkPermissions()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fotracker/MainActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->requestPermissions()V

    return-void
.end method

.method private checkPermissions()Z
    .locals 1

    .line 150
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private requestPermissions()V
    .locals 3

    .line 156
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "Displaying permission rationale to provide additional context."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f090053

    .line 164
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100111

    const/4 v2, -0x2

    .line 163
    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/MainActivity$4;-><init>(Lcom/conceptglobal/pmc/fotracker/MainActivity;)V

    const v2, 0x7f100101

    .line 167
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 178
    :cond_0
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "Requesting permission"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private setButtonsState(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mRequestLocationUpdatesButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mRemoveLocationUpdatesButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mRequestLocationUpdatesButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mRemoveLocationUpdatesButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    new-instance p1, Lcom/conceptglobal/pmc/fotracker/MainActivity$MyReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fotracker/MainActivity$MyReceiver;-><init>(Lcom/conceptglobal/pmc/fotracker/MainActivity;Lcom/conceptglobal/pmc/fotracker/MainActivity$1;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->myReceiver:Lcom/conceptglobal/pmc/fotracker/MainActivity$MyReceiver;

    const p1, 0x7f0c002e

    .line 73
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->setContentView(I)V

    .line 76
    invoke-static {p0}, Lcom/conceptglobal/pmc/fotracker/Utils;->requestingLocationUpdates(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->checkPermissions()Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->requestPermissions()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 128
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->myReceiver:Lcom/conceptglobal/pmc/fotracker/MainActivity$MyReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 194
    sget-object p2, Lcom/conceptglobal/pmc/fotracker/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "onRequestPermissionResult"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x22

    if-ne p1, v0, :cond_2

    .line 196
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 199
    const-string p1, "User interaction was cancelled."

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 200
    aget p2, p3, p1

    if-nez p2, :cond_1

    .line 202
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->requestLocationUpdates()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->setButtonsState(Z)V

    const p1, 0x7f090053

    .line 207
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f100110

    const/4 p3, -0x2

    .line 206
    invoke-static {p1, p2, p3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/pmc/fotracker/MainActivity$5;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fotracker/MainActivity$5;-><init>(Lcom/conceptglobal/pmc/fotracker/MainActivity;)V

    const p3, 0x7f1002a5

    .line 210
    invoke-virtual {p1, p3, p2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 121
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 122
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->myReceiver:Lcom/conceptglobal/pmc/fotracker/MainActivity$MyReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.conceptglobal.fieldtrack.broadcast"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 246
    const-string v0, "requesting_locaction_updates"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 247
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->setButtonsState(Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 85
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 86
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const v0, 0x7f09037e

    .line 89
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mRequestLocationUpdatesButton:Landroid/widget/Button;

    const v0, 0x7f09037c

    .line 90
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mRemoveLocationUpdatesButton:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mRequestLocationUpdatesButton:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/MainActivity$2;-><init>(Lcom/conceptglobal/pmc/fotracker/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mRemoveLocationUpdatesButton:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/MainActivity$3;-><init>(Lcom/conceptglobal/pmc/fotracker/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {p0}, Lcom/conceptglobal/pmc/fotracker/Utils;->requestingLocationUpdates(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->setButtonsState(Z)V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mBound:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity;->mBound:Z

    .line 141
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 143
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
