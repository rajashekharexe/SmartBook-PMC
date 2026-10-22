.class Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$6;
.super Ljava/lang/Object;
.source "FarmerRegistrationActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final maxDigitsAfterDecimalPoint:I

.field final maxDigitsBeforeDecimalPoint:I

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 621
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$6;->maxDigitsBeforeDecimalPoint:I

    .line 622
    iput p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$6;->maxDigitsAfterDecimalPoint:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 629
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 628
    invoke-virtual {v0, p5, p6, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "(([0-9]{1})([0-9]{0,2})?)?(\\.[0-9]{0,3})?"

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 634
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 635
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 636
    :cond_0
    const-string p1, ""

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
