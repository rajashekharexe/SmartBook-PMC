.class Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$14;
.super Ljava/lang/Object;
.source "SurveyAttributesActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)V
    .locals 0

    .line 2436
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$14;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2

    const/16 p1, 0xb

    if-le p2, p1, :cond_0

    .line 2444
    const-string p1, "PM"

    goto :goto_0

    .line 2442
    :cond_0
    const-string p1, "AM"

    :goto_0
    const/16 v0, 0xc

    if-le p2, v0, :cond_1

    add-int/lit8 p2, p2, -0xc

    .line 2454
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-ge p3, v1, :cond_2

    .line 2456
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2459
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$14;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$2400(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 2460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
