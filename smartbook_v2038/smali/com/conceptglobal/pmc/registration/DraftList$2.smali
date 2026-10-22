.class Lcom/conceptglobal/pmc/registration/DraftList$2;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/registration/DraftList;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/registration/DraftList;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$2;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 309
    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Farmer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$2;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$200(Lcom/conceptglobal/pmc/registration/DraftList;)V

    goto :goto_1

    .line 311
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Retailer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/conceptglobal/pmc/registration/DraftList;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Distributor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$2;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    const-string v0, "-1"

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$400(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;)V

    goto :goto_1

    .line 312
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$2;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$300(Lcom/conceptglobal/pmc/registration/DraftList;)V

    :goto_1
    return-void
.end method
