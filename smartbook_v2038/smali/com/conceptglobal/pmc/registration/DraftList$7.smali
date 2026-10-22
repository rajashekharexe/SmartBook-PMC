.class Lcom/conceptglobal/pmc/registration/DraftList$7;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/registration/DraftList;->showNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/registration/DraftList;

.field final synthetic val$mobile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 801
    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->val$mobile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 804
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2400(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 805
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 806
    const-string v1, "MobileNumber"

    iget-object v2, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->val$mobile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v1, "farmerType"

    const-string v2, "Farmer"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    const-string v2, "isFromTestimonal"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    if-eqz v1, :cond_1

    .line 811
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    const-string v2, "isFromFeedBack"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 812
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz v1, :cond_2

    .line 813
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    const-string v2, "isFromSurvey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 815
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    const-string v2, "FromSelfAssignment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 818
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    const-string v2, "SegmentId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 819
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 820
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v0, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz v0, :cond_3

    .line 821
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    const/16 v1, 0x65

    invoke-virtual {v0, p2, v1}, Lcom/conceptglobal/pmc/registration/DraftList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 824
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2400(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 825
    iget-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$7;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/registration/DraftList;->finish()V

    .line 827
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
