.class Lcom/conceptglobal/pmc/ApplyLeave$3;
.super Ljava/lang/Object;
.source "ApplyLeave.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/ApplyLeave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/ApplyLeave;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/ApplyLeave;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .line 443
    const-string p1, "-"

    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {v0, p2}, Lcom/conceptglobal/pmc/ApplyLeave;->access$1002(Lcom/conceptglobal/pmc/ApplyLeave;I)I

    .line 444
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {v0, p3}, Lcom/conceptglobal/pmc/ApplyLeave;->access$1102(Lcom/conceptglobal/pmc/ApplyLeave;I)I

    .line 445
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {v0, p4}, Lcom/conceptglobal/pmc/ApplyLeave;->access$1202(Lcom/conceptglobal/pmc/ApplyLeave;I)I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    .line 448
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 449
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    .line 450
    invoke-virtual {p2, p3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p3

    if-gtz p3, :cond_1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    invoke-static {p3, p4}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {p1}, Lcom/conceptglobal/pmc/ApplyLeave;->access$800(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ApplyLeave;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectProperDate()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 451
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-virtual {p2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/conceptglobal/pmc/ApplyLeave;->access$1302(Lcom/conceptglobal/pmc/ApplyLeave;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    iget-object p2, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {p2}, Lcom/conceptglobal/pmc/ApplyLeave;->access$700(Lcom/conceptglobal/pmc/ApplyLeave;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {p2}, Lcom/conceptglobal/pmc/ApplyLeave;->access$700(Lcom/conceptglobal/pmc/ApplyLeave;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Half Day"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 453
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p3, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {p3}, Lcom/conceptglobal/pmc/ApplyLeave;->access$1200(Lcom/conceptglobal/pmc/ApplyLeave;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    iget-object p3, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {p3}, Lcom/conceptglobal/pmc/ApplyLeave;->access$1100(Lcom/conceptglobal/pmc/ApplyLeave;)I

    move-result p3

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {p2}, Lcom/conceptglobal/pmc/ApplyLeave;->access$1000(Lcom/conceptglobal/pmc/ApplyLeave;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 454
    iget-object p2, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {p2}, Lcom/conceptglobal/pmc/ApplyLeave;->access$900(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 456
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave$3;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {p1}, Lcom/conceptglobal/pmc/ApplyLeave;->access$1400(Lcom/conceptglobal/pmc/ApplyLeave;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 462
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
