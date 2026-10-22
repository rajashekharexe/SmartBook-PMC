.class Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter$1;
.super Ljava/lang/Object;
.source "BannersPagerApapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;

    iput p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->list:Ljava/util/ArrayList;

    const-string v1, "ContentList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    const-string v0, "Position"

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter$1;->val$position:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/BannersPagerApapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
