.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$2;
.super Ljava/lang/Object;
.source "SAAttributeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 333
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 336
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 337
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;J)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_maxImagesToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
