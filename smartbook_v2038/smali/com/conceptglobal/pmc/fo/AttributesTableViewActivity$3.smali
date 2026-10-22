.class Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$3;
.super Ljava/lang/Object;
.source "AttributesTableViewActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforetext:Ljava/lang/String;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

.field final synthetic val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 776
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$3;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    const-string p1, ""

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$3;->beforetext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 789
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$3;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 803
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 804
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 805
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_0

    .line 806
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$3;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 782
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$3;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
