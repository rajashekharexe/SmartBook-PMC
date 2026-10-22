.class Lcom/conceptglobal/pmc/fo/SurveyActivity$6;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SurveyActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .line 1241
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$800(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    if-ne p1, v1, :cond_4

    .line 1267
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1268
    sget-object p1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1269
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1100(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1270
    sget-object p1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1271
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1272
    sget-object p1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->methodToGetData(Landroid/content/Context;)V

    goto :goto_1

    .line 1274
    :cond_3
    sget-object p1, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->methodToGetData(Landroid/content/Context;)V

    :cond_4
    :goto_1
    return-void
.end method
