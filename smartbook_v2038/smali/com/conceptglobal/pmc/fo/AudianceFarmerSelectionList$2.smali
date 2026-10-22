.class Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$2;
.super Ljava/lang/Object;
.source "AudianceFarmerSelectionList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 248
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$000(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Farmer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$100(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V

    goto :goto_1

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$000(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Retailer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$000(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Distributor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    const-string v0, "-1"

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$300(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$200(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V

    :goto_1
    return-void
.end method
