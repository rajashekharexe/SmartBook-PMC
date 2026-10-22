.class Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$1;
.super Ljava/lang/Object;
.source "AttendanceApproveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->showAttendanceDialog(Lcom/conceptglobal/pmc/attendance/AttendanceItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$1;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 160
    :try_start_0
    new-instance v6, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$1;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->access$000(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValues(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$1;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->access$100(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)Landroid/widget/TextView;

    move-result-object v5

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 161
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x7f1101b9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 162
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 163
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    const-string v0, "AttendanceApproveActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
