.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$2;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforeDistrict:Ljava/lang/String;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$2;->beforeDistrict:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$600(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 491
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$2;->beforeDistrict:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
