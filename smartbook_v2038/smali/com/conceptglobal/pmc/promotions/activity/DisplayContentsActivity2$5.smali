.class Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;
.super Ljava/lang/Object;
.source "DisplayContentsActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->showSortingOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$300(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$202(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 488
    :cond_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 471
    :cond_3
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 504
    :goto_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$400(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)V

    .line 505
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
