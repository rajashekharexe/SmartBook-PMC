.class Lcom/conceptglobal/pmc/fo/AttributesActivity$21;
.super Ljava/lang/Object;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;->showRewardsConformationAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 3500
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 3503
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivity;Z)V

    .line 3504
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    const-string p2, ""

    cmp-long v5, v1, v3

    new-instance v1, Ljava/lang/StringBuilder;

    if-lez v5, :cond_0

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1000(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3505
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v1, v0, p2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setBoolean(Landroid/content/Context;ZLjava/lang/String;)V

    .line 3506
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
