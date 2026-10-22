.class Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$1;
.super Ljava/lang/Object;
.source "FarmerSelectionRecyclerToDoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$SelectionTODOHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

.field final synthetic val$model:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$1;->val$model:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 259
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$1;->val$model:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLatitude()Ljava/lang/String;

    move-result-object p1

    .line 260
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$1;->val$model:Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLongitude()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://maps.google.com/maps?daddr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&saddr=Current%20Location"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 262
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
