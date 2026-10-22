.class Lcom/conceptglobal/pmc/AttendanceActivity$10;
.super Ljava/lang/Object;
.source "AttendanceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/AttendanceActivity;->showGoBackDialog()V
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

    .line 1313
    iput-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$10;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1315
    iget-object p2, p0, Lcom/conceptglobal/pmc/AttendanceActivity$10;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$2400(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Button;->performClick()Z

    .line 1316
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
