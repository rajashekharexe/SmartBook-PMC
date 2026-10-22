.class Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;
.super Ljava/lang/Object;
.source "ContentViewAdapterNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 637
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 640
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 642
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 643
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2400(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->getAdapterPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 644
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    const-string v1, "MIME Type"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2800(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 664
    :catch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2400(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "No Picture Viewer Installed"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 666
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 667
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2800(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2800(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/lang/String;)V

    .line 686
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH$2;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2400(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "Picture not downloaded"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method
