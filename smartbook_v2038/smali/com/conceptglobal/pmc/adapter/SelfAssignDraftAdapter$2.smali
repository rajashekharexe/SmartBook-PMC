.class Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$2;
.super Ljava/lang/Object;
.source "SelfAssignDraftAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 282
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->access$1200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getTransId()J

    move-result-wide p1

    const/4 v0, 0x1

    .line 285
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/conceptglobal/pmc/common/Queries;->getDeletionQueryForSelfAssignmentDrafts1(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 286
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/conceptglobal/pmc/common/Queries;->getDeletionQueryForSelfAssignmentDrafts2(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/conceptglobal/pmc/common/Queries;->getDelForSADraftsImages(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move p2, v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const/4 p2, 0x1

    .line 289
    :goto_1
    const-string v1, "SelfAssignDraftAdapter"

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    move v0, p2

    :goto_2
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 293
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->access$1200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 294
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
