.class Lcom/conceptglobal/pmc/AttendanceActivity$5;
.super Ljava/lang/Object;
.source "AttendanceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/AttendanceActivity;
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

    .line 524
    iput-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$5;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 528
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090254

    if-ne v0, v1, :cond_0

    .line 529
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$5;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$200(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 530
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity$5;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    iget-wide v3, v0, Lcom/conceptglobal/pmc/AttendanceActivity;->startday:J

    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$5;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$500(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$600(Lcom/conceptglobal/pmc/AttendanceActivity;JJLjava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090255

    if-ne p1, v0, :cond_1

    .line 532
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$5;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$300(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 533
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity$5;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    iget-wide v3, v0, Lcom/conceptglobal/pmc/AttendanceActivity;->endday:J

    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity$5;->this$0:Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$700(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/conceptglobal/pmc/AttendanceActivity;->access$600(Lcom/conceptglobal/pmc/AttendanceActivity;JJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 539
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
