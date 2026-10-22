.class Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$1;
.super Ljava/lang/Object;
.source "DayActiviesReportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->access$000(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 80
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->access$100(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)Lcom/conceptglobal/pmc/interfaces/OnEndDayListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/conceptglobal/pmc/interfaces/OnEndDayListener;->onEndDayClick()V

    .line 82
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->access$200(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->access$200(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->access$200(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Service initiated"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 85
    new-instance p1, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->access$200(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    :cond_0
    return-void
.end method
