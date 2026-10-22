.class Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$2;
.super Ljava/lang/Object;
.source "AttributesDynmicTableViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 339
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$000()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;

    .line 340
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->showSuggesions()V

    return-void
.end method
