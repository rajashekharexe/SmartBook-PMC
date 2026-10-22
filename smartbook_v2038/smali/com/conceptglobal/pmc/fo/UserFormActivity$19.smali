.class Lcom/conceptglobal/pmc/fo/UserFormActivity$19;
.super Ljava/lang/Object;
.source "UserFormActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/UserFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V
    .locals 0

    .line 1231
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .line 1235
    const-string p1, "-"

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v0, p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1202(Lcom/conceptglobal/pmc/fo/UserFormActivity;I)I

    .line 1236
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v0, p3}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1302(Lcom/conceptglobal/pmc/fo/UserFormActivity;I)I

    .line 1237
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v0, p4}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1402(Lcom/conceptglobal/pmc/fo/UserFormActivity;I)I

    .line 1239
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

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    .line 1240
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    .line 1241
    invoke-virtual {p3, p4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p3

    if-gez p3, :cond_2

    .line 1242
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p3}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1500(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result p3

    if-nez p3, :cond_3

    .line 1244
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p3}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p3, p2

    const-string p4, ""

    const/16 v0, 0xa

    const-string v1, "0"

    if-ge p3, v0, :cond_0

    .line 1245
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1247
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1300(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1249
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p3}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1400(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result p3

    if-ge p3, v0, :cond_1

    .line 1250
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p4}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1400(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 1252
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1400(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1254
    :goto_1
    iget-object p4, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p4}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1600(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1200(Lcom/conceptglobal/pmc/fo/UserFormActivity;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1257
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$19;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getApplicationContext()Landroid/content/Context;

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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1260
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
