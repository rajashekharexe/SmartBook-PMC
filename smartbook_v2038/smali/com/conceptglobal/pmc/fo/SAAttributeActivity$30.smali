.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;
.super Ljava/lang/Object;
.source "SAAttributeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showAlertExp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 3183
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 3187
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3189
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3190
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z

    move-result p1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$5000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z

    move-result p1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$5100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z

    move-result p1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$5200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z

    move-result p1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$5300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z

    move-result p1

    if-ne p1, p2, :cond_0

    .line 3191
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$30;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_confirmVisitCompleteDialogText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$5400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
