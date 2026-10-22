.class Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$1;
.super Ljava/lang/Object;
.source "PhoneNumbersDialogListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "smsto:"

    const-string v0, "tel:"

    .line 56
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->list:Ljava/util/List;

    iget v2, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$1;->val$i:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 59
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 60
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    const-string v0, "PhoneNumDialogListAdapter"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
