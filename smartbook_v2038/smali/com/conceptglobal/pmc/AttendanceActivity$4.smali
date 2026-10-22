.class Lcom/conceptglobal/pmc/AttendanceActivity$4;
.super Ljava/lang/Object;
.source "AttendanceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/AttendanceActivity;->initialization()V
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

    .line 403
    iput-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$4;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 406
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$4;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$200(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity$4;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$300(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity$4;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$400(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$4;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_maxImagesToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
