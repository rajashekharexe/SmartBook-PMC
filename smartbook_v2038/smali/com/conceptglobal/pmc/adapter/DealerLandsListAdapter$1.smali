.class Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$1;
.super Ljava/lang/Object;
.source "DealerLandsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090271

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_deleteConfirmationDialogText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getLandname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
