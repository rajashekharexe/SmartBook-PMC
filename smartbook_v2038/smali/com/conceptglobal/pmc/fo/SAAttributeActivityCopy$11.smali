.class Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;
.super Ljava/lang/Object;
.source "SAAttributeActivityCopy.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V
    .locals 0

    .line 1200
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .line 1204
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1000(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    .line 1205
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1206
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1200(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->methodToGetData(Landroid/content/Context;)V

    goto :goto_0

    .line 1207
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 1208
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1200(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->methodToGetData(Landroid/content/Context;)V

    .line 1231
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)I

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)I

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    .line 1232
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 1233
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1235
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1238
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1100(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 1239
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1241
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$11;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return-void
.end method
