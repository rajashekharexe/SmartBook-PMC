.class Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$5;
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
.field canEnterSpace:Z

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 586
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$5;->canEnterSpace:Z

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 591
    iget-object p4, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;

    invoke-static {p4}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->access$000(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)Landroid/widget/EditText;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$5;->this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;

    invoke-static {p4}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->access$000(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)Landroid/widget/EditText;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    .line 593
    iput-boolean p4, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$5;->canEnterSpace:Z

    .line 596
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_4

    .line 599
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    .line 601
    invoke-static {p5}, Ljava/lang/Character;->isLetter(C)Z

    move-result p6

    if-nez p6, :cond_1

    const/16 p6, 0x2e

    if-ne p5, p6, :cond_2

    .line 602
    :cond_1
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p6, 0x1

    .line 603
    iput-boolean p6, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$5;->canEnterSpace:Z

    .line 606
    :cond_2
    invoke-static {p5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p6

    if-eqz p6, :cond_3

    iget-boolean p6, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$5;->canEnterSpace:Z

    if-eqz p6, :cond_3

    .line 607
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 612
    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
