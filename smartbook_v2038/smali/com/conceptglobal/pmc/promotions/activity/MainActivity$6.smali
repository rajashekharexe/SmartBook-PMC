.class Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->showSortingOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$302(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;Ljava/util/List;)Ljava/util/List;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 258
    :cond_3
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    :goto_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$6;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$500(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V

    .line 292
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
