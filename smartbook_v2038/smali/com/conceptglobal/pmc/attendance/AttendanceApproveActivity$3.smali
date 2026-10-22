.class Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$3;
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

.field final synthetic val$dialogAttendance:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$3;->this$0:Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$3;->val$dialogAttendance:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity$3;->val$dialogAttendance:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
