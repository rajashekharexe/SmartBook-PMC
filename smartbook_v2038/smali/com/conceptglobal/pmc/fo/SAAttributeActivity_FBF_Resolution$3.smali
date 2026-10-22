.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$3;
.super Landroid/app/DatePickerDialog;
.source "SAAttributeActivity_FBF_Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6

    .line 731
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$3;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 735
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectDayMonthDPTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$3;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
