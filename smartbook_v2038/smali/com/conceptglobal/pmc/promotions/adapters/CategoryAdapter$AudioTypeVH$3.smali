.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 667
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 670
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->getAdapterPosition()I

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

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/utils/NetworkUtils;->isDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$600(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$2700(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/SeekBar;

    move-result-object v7

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$2800(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/ProgressBar;

    move-result-object v8

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_0

    .line 676
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please enable internet"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$600(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$2700(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/SeekBar;

    move-result-object v7

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->access$2800(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;)Landroid/widget/ProgressBar;

    move-result-object v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V

    goto :goto_0

    .line 684
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$AudioTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Audio file not available"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
