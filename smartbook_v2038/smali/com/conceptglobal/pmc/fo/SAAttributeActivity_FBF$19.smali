.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;
.super Ljava/lang/Object;
.source "SAAttributeActivity_FBF.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V
    .locals 0

    .line 2303
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    .line 2307
    const-string p1, "-"

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v0, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1802(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)I

    .line 2308
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v0, p3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1902(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)I

    .line 2309
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v0, p4}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$2002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)I

    .line 2311
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    add-int/2addr p3, p2

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 2312
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    .line 2313
    invoke-virtual {p1, p3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-gez p1, :cond_2

    .line 2314
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$2100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I

    move-result p1

    if-nez p1, :cond_3

    .line 2316
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I

    move-result p1

    add-int/2addr p1, p2

    const/16 p2, 0xa

    if-ge p1, p2, :cond_0

    .line 2317
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I

    goto :goto_0

    .line 2319
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I

    .line 2321
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$2000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I

    move-result p1

    if-ge p1, p2, :cond_1

    .line 2322
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$2000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I

    goto :goto_1

    .line 2324
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$2000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I

    goto :goto_1

    .line 2328
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$19;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p4

    invoke-virtual {p4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectProperDate()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2331
    const-string p2, "SAAttributeActivity_FBF"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
