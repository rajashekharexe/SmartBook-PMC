.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;
.super Ljava/lang/Object;
.source "CategoryFilterDialogAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

.field final synthetic val$categoryMaster:Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->val$categoryMaster:Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 138
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->val$categoryMaster:Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->val$categoryMaster:Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->val$categoryMaster:Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->val$categoryMaster:Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->val$categoryMaster:Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 147
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$1;->val$categoryMaster:Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
