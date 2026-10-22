.class public Lcom/conceptglobal/pmc/registration/ImagePager;
.super Landroid/app/Activity;
.source "ImagePager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field adapter:Landroidx/viewpager/widget/PagerAdapter;

.field currentPosition:I

.field private imagDelete:Landroid/widget/ImageView;

.field imgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09026f

    if-ne p1, v0, :cond_0

    .line 58
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->imgList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->imgList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/registration/ImagePager;->sendBroadcast(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->imgList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/ImagePager;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0168

    .line 38
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/registration/ImagePager;->setContentView(I)V

    const p1, 0x7f09026f

    .line 39
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/registration/ImagePager;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->imagDelete:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->imgList:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/ImagePager;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "imageList"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->imgList:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/registration/ImagePager;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->currentPosition:I

    const p1, 0x7f090341

    .line 44
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/registration/ImagePager;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 46
    new-instance p1, Lcom/conceptglobal/pmc/adapter/ViewPagerAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->imgList:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/adapter/ViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 48
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 49
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/conceptglobal/pmc/registration/ImagePager;->currentPosition:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;)V
    .locals 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    const-string v1, "deletedImage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
