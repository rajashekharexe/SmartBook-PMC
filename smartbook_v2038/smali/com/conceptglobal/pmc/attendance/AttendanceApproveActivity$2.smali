.class Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;
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
.field private farmerCropMapping:Lcom/conceptglobal/pmc/model/FarmerCropMapping;

.field final synthetic this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

.field final synthetic val$attendanceItem:Lcom/conceptglobal/pmc/attendance/AttendanceItem;

.field final synthetic val$dialogAttendance:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;Lcom/conceptglobal/pmc/attendance/AttendanceItem;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->val$attendanceItem:Lcom/conceptglobal/pmc/attendance/AttendanceItem;

    iput-object p3, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->val$dialogAttendance:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 177
    const-string p1, ""

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->access$200(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Please enter Fo Travell Distance."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->access$300(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Please enter Fo Night Halt"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 185
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 186
    const-string v2, "SVApprovedTravel"

    iget-object v3, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->access$200(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->access$400(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "SVApprovedNightHalt"

    if-eqz v2, :cond_2

    .line 188
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    :goto_0
    const-string v2, "IsApproved"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v2, "SVUserId"

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v2, "SVApprovedDate"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "PdaId"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "serverUpdatedStatus"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "UpdatedBy"

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v2, "UpdatedDate"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 199
    const-string v3, "PMCAttendanceDetails"

    const-string v4, "TransId = ?"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->val$attendanceItem:Lcom/conceptglobal/pmc/attendance/AttendanceItem;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->getTransID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 200
    const-string v2, "AttendanceApproveActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->access$500(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;Z)V

    .line 205
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->access$600(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)V

    .line 206
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;->access$700(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;)V

    .line 207
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$2;->val$dialogAttendance:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
