.class public Lcom/conceptglobal/pmc/utils/RuntimePermissions;
.super Ljava/lang/Object;
.source "RuntimePermissions.java"


# static fields
.field public static final CAMERA_PERMISSION_REQUEST_CODE:I = 0x3

.field public static final EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE:I = 0x2

.field public static final GEOLOCATION_PERMISSION_REQUEST_CODE:I = 0x4

.field public static final GET_TASKS_REQUEST_CODE:I = 0x6

.field public static final MISSING_PRIVILEGE_ACCESS_LOCATION_FOR_CURRENT_LOCATION_ID:I = 0x8

.field public static final MISSING_PRIVILEGE_ACCESS_LOCATION_ID:I = 0x4

.field public static final MISSING_PRIVILEGE_ACCESS_LOCATION_IN_BACKGROUND_ID:I = 0x5

.field public static final READ_PHONE_STATE_REQUEST_CODE:I = 0x5

.field public static final RECORD_PERMISSION_REQUEST_CODE:I = 0x1

.field public static final REQUEST_ID_MULTIPLE_PERMISSIONS:I = 0x7


# instance fields
.field activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    return-void
.end method

.method private static addPermissionIfNotGranted(Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 206
    invoke-static {p2, p0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 207
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static askForLocationPermission(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 5

    .line 229
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000c5

    .line 230
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1000c2

    .line 231
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const-string v4, ""

    if-lt v2, v3, :cond_0

    const v2, 0x7f1000c3

    .line 233
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 234
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    const v2, 0x7f1000c4

    .line 236
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 236
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 238
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/conceptglobal/pmc/utils/RuntimePermissions$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/conceptglobal/pmc/utils/RuntimePermissions$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    const/high16 p2, 0x1040000

    .line 239
    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p2, Lcom/conceptglobal/pmc/utils/RuntimePermissions$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/utils/RuntimePermissions$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    const p1, 0x104000a

    .line 244
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static isBackgroundPermissionMissing(Landroid/content/Context;)Z
    .locals 2

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 202
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$askForLocationPermission$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 242
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$askForLocationPermission$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 244
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static missingPermissionsForTracking(Landroid/content/Context;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 181
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 183
    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 191
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_2

    .line 192
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v1, v0, p0}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->addPermissionIfNotGranted(Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;)V

    .line 194
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_3

    .line 195
    const-string v1, "android.permission.FOREGROUND_SERVICE"

    invoke-static {v1, v0, p0}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->addPermissionIfNotGranted(Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;)V

    :cond_3
    return-object v0
.end method

.method public static notGrantedPermissions([Ljava/lang/String;[I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 220
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 221
    aget v2, p1, v1

    if-eqz v2, :cond_1

    .line 222
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public checkPermissionForCamera()Z
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

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

.method public checkPermissionForExternalStorage()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

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

    .line 99
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

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

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

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

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

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

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

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

    .line 48
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

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

    .line 126
    const-string v0, "--Runtime permissions checking---"

    const-string v1, "SplshScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 129
    iget-object v6, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    invoke-static {v6, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 135
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    .line 138
    :cond_2
    const-string p1, "--Runtime permissions completed---"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public requestPermissionForCamera()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "Camera permission needed. Please click on allow to access camera."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public requestPermissionForExternalStorage()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "External Storage permission needed. Please click on allow to access save data."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public requestPermissionForGeoLocation()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "Location access is required. Please click on allow to access GeoLocation."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public requestPermissionForGetTasks()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.GET_TASKS"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "Microphone permission needed for recording. Please allow in App Settings for additional functionality."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public requestPermissionForPhoneState()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "Read phone state permission needed. Please click on allow to access phone state."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public requestPermissionForRecord()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    const-string v1, "Microphone permission needed for recording. Please allow in App Settings for additional functionality."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
