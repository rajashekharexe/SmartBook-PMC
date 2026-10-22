.class Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$6;
.super Ljava/lang/Object;
.source "SelfAssignDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->locationNotFound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1076
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$1002(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Z)Z

    .line 1077
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    new-instance v0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;-><init>(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$1;)V

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2602(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;)Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;

    .line 1078
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;->access$2600(Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;)Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;

    move-result-object p1

    new-array p2, p2, [Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity$LocationControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
