.class Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$1;
.super Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;
.source "SelfAssignDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/common/EndlessRecyclerViewScrollListener;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public onLoadMore(IILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 297
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "50"

    invoke-static {p1, p2, p3}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$000(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
