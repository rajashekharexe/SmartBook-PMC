.class Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$4;
.super Ljava/lang/Object;
.source "FarmerLandsListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;->showAlert(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 128
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$4;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/FarmerLandDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->getMappingId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->deletedPlotIds:Ljava/util/List;

    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$4;->val$position:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/FarmerLandDetails;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->getMappingId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$4;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$4;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
