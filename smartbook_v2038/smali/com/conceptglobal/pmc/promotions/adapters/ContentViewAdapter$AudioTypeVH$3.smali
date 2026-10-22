.class Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;
.super Ljava/lang/Object;
.source "ContentViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 730
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 733
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/utils/NetworkUtils;->isDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->access$1500(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->access$3900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;)Landroid/widget/SeekBar;

    move-result-object v7

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->access$4000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;)Landroid/widget/ProgressBar;

    move-result-object v8

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$4100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_0

    .line 739
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please enable internet"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 745
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->access$1500(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->access$3900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;)Landroid/widget/SeekBar;

    move-result-object v7

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->access$4000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;)Landroid/widget/ProgressBar;

    move-result-object v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$4100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V

    goto :goto_0

    .line 747
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Audio file not available"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
