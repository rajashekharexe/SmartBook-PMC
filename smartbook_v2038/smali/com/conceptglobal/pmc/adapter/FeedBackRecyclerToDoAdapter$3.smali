.class Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$3;
.super Ljava/lang/Object;
.source "FeedBackRecyclerToDoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 328
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->access$1200(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$3;->val$position:I

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;->access$1400(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;Landroid/content/Context;I)V

    return-void
.end method
