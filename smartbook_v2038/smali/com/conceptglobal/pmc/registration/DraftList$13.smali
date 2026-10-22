.class Lcom/conceptglobal/pmc/registration/DraftList$13;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/registration/DraftList;->showRetailerNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/registration/DraftList;

.field final synthetic val$gst:Ljava/lang/String;

.field final synthetic val$mobile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1070
    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->val$mobile:Ljava/lang/String;

    iput-object p3, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->val$gst:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1073
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2400(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1074
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1075
    const-string v1, "MobileNumber"

    iget-object v2, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->val$mobile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v1, "GstNo"

    iget-object v2, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->val$gst:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v1, "farmerType"

    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1078
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    if-eqz v1, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    const-string v2, "isFromTestimonal"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1080
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    if-eqz v1, :cond_1

    .line 1081
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    const-string v2, "isFromFeedBack"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1083
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    const-string v2, "FromSelfAssignment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1085
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz v1, :cond_2

    .line 1086
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    const-string v2, "isFromSurvey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1088
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    const-string v2, "SegmentId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1089
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1090
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v0, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz v0, :cond_3

    .line 1091
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    const/16 v1, 0x65

    invoke-virtual {v0, p2, v1}, Lcom/conceptglobal/pmc/registration/DraftList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1094
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2400(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1095
    iget-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$13;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/registration/DraftList;->finish()V

    .line 1097
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
