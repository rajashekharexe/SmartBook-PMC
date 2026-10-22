.class Lcom/conceptglobal/pmc/SyncPMC$2$1;
.super Ljava/lang/Object;
.source "SyncPMC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SyncPMC$2;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

.field final synthetic val$syncResponse:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SyncPMC$2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iput-object p2, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->val$syncResponse:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->val$syncResponse:Ljava/lang/String;

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->val$syncResponse:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 262
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 263
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTblAssighmentActivityDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v2, :cond_0

    .line 266
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteFarmerActDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 268
    :try_start_2
    iget-object v3, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v3, v3, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v3}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    :cond_0
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLCROPMAPPING()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v2, :cond_1

    .line 273
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteFarmerCropMapping()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 275
    :try_start_4
    iget-object v3, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v3, v3, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v3}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    :cond_1
    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLFARMERS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v2, :cond_2

    .line 280
    :try_start_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteFarmerLastvisitDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteFarmerDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 283
    :try_start_6
    iget-object v3, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v3, v3, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v3}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    :cond_2
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLASSIGNMENTVISITDETAILS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v2, :cond_3

    .line 288
    :try_start_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteAssignmentVisitDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    .line 290
    :try_start_8
    iget-object v3, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v3, v3, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v3}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    new-instance v1, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SyncPMC$2$1$1;-><init>(Lcom/conceptglobal/pmc/SyncPMC$2$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SyncPMC;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 337
    iget-object v1, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v1}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$2$1;->this$1:Lcom/conceptglobal/pmc/SyncPMC$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    new-instance v1, Lcom/conceptglobal/pmc/SyncPMC$2$1$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SyncPMC$2$1$2;-><init>(Lcom/conceptglobal/pmc/SyncPMC$2$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/SyncPMC;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_5
    return-void
.end method
