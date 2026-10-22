.class public Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;
.super Ljava/lang/Object;
.source "RuntimePermissions.java"


# static fields
.field public static final CAMERA_PERMISSION_REQUEST_CODE:I = 0x3

.field public static final EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE:I = 0x2

.field public static final GEOLOCATION_PERMISSION_REQUEST_CODE:I = 0x4

.field public static final GET_TASKS_REQUEST_CODE:I = 0x6

.field public static final READ_PHONE_STATE_REQUEST_CODE:I = 0x5

.field public static final RECORD_PERMISSION_REQUEST_CODE:I = 0x1

.field public static final REQUEST_ID_MULTIPLE_PERMISSIONS:I = 0x7


# instance fields
.field activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public checkPermissionForCamera()Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermissionForGeoLocation()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermissionForGetTasks()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.GET_TASKS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermissionForPhoneCall()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermissionForPhoneState()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermissionForRecord()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermissions([Ljava/lang/String;)Z
    .locals 7

    .line 113
    const-string v0, "--Runtime permissions checking---"

    const-string v1, "SplshScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 116
    iget-object v6, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    invoke-static {v6, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    .line 125
    :cond_2
    const-string p1, "--Runtime permissions completed---"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public requestPermissionForCamera()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "Camera permission needed. Please click on allow to access camera."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public requestPermissionForGeoLocation()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "Location access is required. Please click on allow to access GeoLocation."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public requestPermissionForGetTasks()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.GET_TASKS"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "Microphone permission needed for recording. Please allow in App Settings for additional functionality."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public requestPermissionForPhoneState()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "Read phone state permission needed. Please click on allow to access phone state."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public requestPermissionForRecord()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "Microphone permission needed for recording. Please allow in App Settings for additional functionality."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/RuntimePermissions;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
