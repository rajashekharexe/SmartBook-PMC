.class Lcom/conceptglobal/pmc/AttendanceActivity$11;
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

    .line 1320
    iput-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$11;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1323
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1324
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$11;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->finish()V

    return-void
.end method
