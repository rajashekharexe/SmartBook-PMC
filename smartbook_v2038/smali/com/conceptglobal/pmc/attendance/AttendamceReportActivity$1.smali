.class Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity$1;
.super Ljava/lang/Object;
.source "AttendamceReportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity;->showNoInternetDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity$1;->this$0:Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 57
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 58
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity$1;->this$0:Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity;->finish()V

    return-void
.end method
