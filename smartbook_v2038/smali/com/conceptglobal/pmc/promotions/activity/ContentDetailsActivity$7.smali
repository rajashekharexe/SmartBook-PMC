.class Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;
.super Ljava/lang/Object;
.source "ContentDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->initViews()V
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

    .line 656
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .line 664
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1200(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;)V

    .line 665
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance p1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v4

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)I

    move-result v8

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v11

    const-string v12, "ContentID"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "SHARED"

    const/4 v10, 0x1

    invoke-virtual/range {v0 .. v12}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method
