.class Lcom/conceptglobal/pmc/fragments/AddFarmer$20;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 2570
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$20;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    .line 2574
    const-string p1, "-"

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$20;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0, p2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3102(Lcom/conceptglobal/pmc/fragments/AddFarmer;I)I

    .line 2575
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$20;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0, p3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3202(Lcom/conceptglobal/pmc/fragments/AddFarmer;I)I

    .line 2576
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$20;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0, p4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3302(Lcom/conceptglobal/pmc/fragments/AddFarmer;I)I

    .line 2579
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 2580
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 2582
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$20;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2587
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$20;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
