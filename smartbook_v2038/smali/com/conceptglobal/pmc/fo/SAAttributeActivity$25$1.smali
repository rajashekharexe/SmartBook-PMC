.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25$1;
.super Ljava/lang/Object;
.source "SAAttributeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;)V
    .locals 0

    .line 2905
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25$1;->this$1:Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2910
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25$1;->this$1:Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25$1;->this$1:Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25$1;->this$1:Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25$1;->this$1:Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result v7

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25$1;->this$1:Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)J

    move-result-wide v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v1 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2912
    const-string v1, "SAAttributeActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
