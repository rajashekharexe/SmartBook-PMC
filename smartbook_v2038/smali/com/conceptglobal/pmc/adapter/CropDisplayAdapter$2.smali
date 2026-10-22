.class Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;
.super Ljava/lang/Object;
.source "CropDisplayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->showAlert(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 181
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getMappingId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    sget-object p1, Lcom/conceptglobal/pmc/fragments/AddFarmer;->deletedCropsIds:Ljava/util/List;

    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;->val$position:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/FarmerCropMapping;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->getMappingId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 189
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/CropDisplayAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
