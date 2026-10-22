.class Lcom/conceptglobal/pmc/AttendanceActivity$13;
.super Ljava/lang/Object;
.source "AttendanceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/AttendanceActivity;->showClearDataAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/AttendanceActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V
    .locals 0

    .line 1351
    iput-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$13;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1354
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/AttendanceActivity$13;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    iget-object p2, p2, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/conceptglobal/pmc/AttendanceActivity$13;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    iget-object p2, p2, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 1355
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$13;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    iget-object v1, v1, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getAttendanceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getAttendanceDeleteQry(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1358
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1360
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1361
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/conceptglobal/pmc/AttendanceActivity$13;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    const-class v0, Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1364
    iget-object p2, p0, Lcom/conceptglobal/pmc/AttendanceActivity$13;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1365
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$13;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->finish()V

    return-void
.end method
