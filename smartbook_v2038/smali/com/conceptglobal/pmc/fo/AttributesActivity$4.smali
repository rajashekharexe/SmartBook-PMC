.class Lcom/conceptglobal/pmc/fo/AttributesActivity$4;
.super Ljava/lang/Object;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforetext:Ljava/lang/String;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1287
    const-string p1, ""

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$4;->beforetext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 1301
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1305
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1306
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoCompleteTextBox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1307
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1308
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1312
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1313
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1315
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1316
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1317
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1318
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$4;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1291
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$4;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
