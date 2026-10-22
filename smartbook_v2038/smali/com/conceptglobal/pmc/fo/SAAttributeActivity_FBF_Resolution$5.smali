.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;
.super Ljava/lang/Object;
.source "SAAttributeActivity_FBF_Resolution.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V
    .locals 0

    .line 1288
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .line 1293
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1294
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->methodToGetData(Landroid/content/Context;)V

    goto :goto_0

    .line 1295
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 1296
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->methodToGetData(Landroid/content/Context;)V

    .line 1318
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)I

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)I

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    .line 1319
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1320
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1322
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1325
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1326
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1328
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$5;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return-void
.end method
