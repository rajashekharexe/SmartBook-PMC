.class Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;
.super Ljava/lang/Object;
.source "ContentCategoryViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 754
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 757
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 759
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 760
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 761
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 762
    const-string v1, "MIME Type"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$4100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 781
    :catch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "No Picture Viewer Installed"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 784
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 785
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$4100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$4100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Ljava/lang/String;)V

    .line 806
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->access$3700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "Picture not downloaded"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method
