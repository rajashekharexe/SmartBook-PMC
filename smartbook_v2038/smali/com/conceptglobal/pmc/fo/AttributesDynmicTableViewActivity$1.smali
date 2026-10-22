.class Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$1;
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

    .line 326
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 329
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$000()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$000()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 330
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 331
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;

    .line 332
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/AttributesDynamicTableFarmatFragment;->AddOperaion()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
