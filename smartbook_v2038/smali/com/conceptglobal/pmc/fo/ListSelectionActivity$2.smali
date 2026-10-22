.class Lcom/conceptglobal/pmc/fo/ListSelectionActivity$2;
.super Ljava/lang/Object;
.source "ListSelectionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/ListSelectionActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/ListSelectionActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 176
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->access$000(Lcom/conceptglobal/pmc/fo/ListSelectionActivity;)Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/ListSelectionActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;->access$100(Lcom/conceptglobal/pmc/fo/ListSelectionActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mDuplicate:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    const-string p2, "ListSelectionActivity"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
