.class Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$4;
.super Ljava/lang/Object;
.source "ActivityDisplayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->showActivityDeleteDilag(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

.field final synthetic val$activityid:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$4;->val$activityid:I

    iput p3, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 190
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$4;->val$activityid:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$4;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    const-string p2, "ACTIVTY_DISPLAY_ADAPTER"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
