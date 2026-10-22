.class Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$1;
.super Ljava/lang/Object;
.source "I2VAttendanceActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->showDatePicker(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;

.field final synthetic val$selectedDate:Ljava/util/Calendar;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;Ljava/util/Calendar;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$1;->this$0:Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$1;->val$selectedDate:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$1;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 268
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$1;->val$selectedDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 269
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$1;->val$selectedDate:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 270
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$1;->val$selectedDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 273
    :try_start_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "dd-MM-yyyy"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object p2, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$1;->val$selectedDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 275
    iget-object p2, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
