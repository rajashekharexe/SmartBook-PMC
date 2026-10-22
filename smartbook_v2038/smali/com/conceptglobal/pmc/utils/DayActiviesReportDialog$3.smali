.class Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$3;
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

    .line 99
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$3;->this$0:Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$3;->this$0:Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->access$000(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
