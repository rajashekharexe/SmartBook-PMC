.class Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;
.super Ljava/lang/Object;
.source "ContentDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .line 452
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getFavouriteStatus()I

    move-result p1

    const-string v0, "ISFavourite"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 453
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setFavouriteStatus(I)V

    .line 454
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->updatFavouriteStatus(Ljava/lang/String;II)V

    .line 455
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1100(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v4

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)I

    move-result v8

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v11

    const-string v12, "ContentID"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "UNFAVOURITE"

    const/4 v10, 0x1

    invoke-virtual/range {v0 .. v12}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setFavouriteStatus(I)V

    .line 459
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->updatFavouriteStatus(Ljava/lang/String;II)V

    .line 460
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1100(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v4

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)I

    move-result v8

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v11

    const-string v12, "ContentID"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "FAVOURITE"

    const/4 v10, 0x1

    invoke-virtual/range {v0 .. v12}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V

    :goto_0
    return-void
.end method
