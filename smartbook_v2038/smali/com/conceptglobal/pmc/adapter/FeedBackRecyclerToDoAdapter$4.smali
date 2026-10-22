.class Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;
.super Ljava/lang/Object;
.source "FeedBackRecyclerToDoAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->sendComplaint(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;ILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->val$position:I

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    .line 342
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 347
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v6

    .line 348
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteFBFResolveTrackActDetails(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 349
    const-string v4, ""

    const-string v5, ""

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x2

    invoke-static/range {v0 .. v10}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertResolutionDataIntoDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 352
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 353
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->val$context:Landroid/content/Context;

    const-class p2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->val$context:Landroid/content/Context;

    const-string p2, "Service initiated"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 355
    new-instance p1, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 359
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->val$context:Landroid/content/Context;

    const-class v0, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p2, 0x10008000

    .line 360
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$4;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_0
    return-void
.end method
