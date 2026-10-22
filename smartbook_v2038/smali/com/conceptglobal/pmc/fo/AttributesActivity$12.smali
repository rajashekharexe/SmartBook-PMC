.class Lcom/conceptglobal/pmc/fo/AttributesActivity$12;
.super Ljava/lang/Object;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;->setAutoCompleteAdapter(Ljava/util/ArrayList;Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2009
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$12;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2012
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2013
    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2014
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p3, p1, p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2015
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p2

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 2018
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$12;->val$editText:Landroid/widget/EditText;

    const/4 p3, 0x1

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
