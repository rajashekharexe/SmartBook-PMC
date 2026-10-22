.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;
.super Ljava/lang/Object;
.source "SAAttributeActivity_FBF.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V
    .locals 0

    .line 1260
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .line 1265
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1266
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->methodToGetData(Landroid/content/Context;)V

    goto :goto_0

    .line 1267
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 1268
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->methodToGetData(Landroid/content/Context;)V

    .line 1290
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    .line 1291
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1292
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1294
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1297
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1298
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1300
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return-void
.end method
