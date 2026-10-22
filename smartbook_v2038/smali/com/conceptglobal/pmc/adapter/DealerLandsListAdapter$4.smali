.class Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;
.super Ljava/lang/Object;
.source "DealerLandsListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->showAlert(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 128
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 130
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getMappingId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->deletedPlotIds:Ljava/util/List;

    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;->val$position:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getMappingId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
