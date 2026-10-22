.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity$8;
.super Ljava/lang/Object;
.source "FarmerFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 1462
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1466
    :try_start_0
    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->starttimeMobile:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->starttimeMobile:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->starttimeMobile:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1467
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_StartTimerText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1471
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1473
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1474
    const-string v0, "isFromAssignment"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1475
    const-string v0, "isFromTodo"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1476
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v0

    const-string v1, "ACTIVITYID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1477
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
