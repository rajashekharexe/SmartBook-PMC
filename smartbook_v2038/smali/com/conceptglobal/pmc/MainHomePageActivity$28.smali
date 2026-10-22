.class Lcom/conceptglobal/pmc/MainHomePageActivity$28;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->fetchLocationAndStartDay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

.field final synthetic val$mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1416
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->val$mode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 4

    .line 1421
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->val$mode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 1422
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dialogCrops:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dateTime:Ljava/lang/String;

    .line 1426
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$100(Lcom/conceptglobal/pmc/MainHomePageActivity;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1427
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/MainHomePageActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "location"

    const-string v3, "Start day"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1428
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/MainHomePageActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object v2, v2, Lcom/conceptglobal/pmc/MainHomePageActivity;->dateTime:Ljava/lang/String;

    const-string v3, "locationStartTime"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1429
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/MainHomePageActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1430
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$1500(Lcom/conceptglobal/pmc/MainHomePageActivity;)Lcom/conceptglobal/pmc/smartalerts/Basics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->safeCheckLocationBasedTracking()V

    .line 1432
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/MainHomePageActivity;->dateTime:Ljava/lang/String;

    iget-object v2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->val$mode:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fotracker/database/InsertDataIntoDB;->insertFirstDayFOTrackerHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCoordinates(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 1437
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$100(Lcom/conceptglobal/pmc/MainHomePageActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1438
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1440
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Service initiated"

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1441
    new-instance p1, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 1442
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 1447
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->val$mode:Ljava/lang/String;

    const-string v0, "Own Transport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_3

    .line 1450
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const-string v2, "ResignationUserRoleId"

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithActiveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1451
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getRoleIdFromuserRoleMapping()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 1452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1453
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 1454
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 1455
    aget-object v3, p1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    .line 1466
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1467
    const-string v0, "Title"

    const-string v2, "Travel Submission"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1468
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1463
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1472
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/MainHomePageActivity;->endBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1475
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1478
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$100(Lcom/conceptglobal/pmc/MainHomePageActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Service Already Running.."

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1481
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$100(Lcom/conceptglobal/pmc/MainHomePageActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please select Start mode.."

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public onTimerTimeOut()V
    .locals 2

    .line 1493
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$28;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    const-string v1, "Unable get your current location please try again."

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$1100(Lcom/conceptglobal/pmc/MainHomePageActivity;Ljava/lang/String;)V

    return-void
.end method
