.class public Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ImageViewActivity.java"


# instance fields
.field btnClose:Landroid/widget/Button;

.field filepath:Ljava/lang/String;

.field ivPreview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->filepath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0113

    .line 31
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "FilePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->filepath:Ljava/lang/String;

    const p1, 0x7f09007d

    .line 34
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->btnClose:Landroid/widget/Button;

    const p1, 0x7f090276

    .line 35
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->ivPreview:Landroid/widget/ImageView;

    .line 36
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->btnClose:Landroid/widget/Button;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v0, 0x7f0801a9

    .line 43
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    const v0, 0x7f0800e7

    .line 44
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 45
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    .line 49
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->ivPreview:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
