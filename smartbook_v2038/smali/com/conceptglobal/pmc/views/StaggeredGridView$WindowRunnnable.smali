.class Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V
    .locals 0

    .line 2154
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V
    .locals 0

    .line 2154
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .line 2158
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$2100(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .line 2162
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$2200(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v0

    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
