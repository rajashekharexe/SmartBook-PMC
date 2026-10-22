.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity$21;
.super Ljava/lang/Object;
.source "FarmerFormActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/utils/CompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 3068
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComprssCompleteListener(Ljava/lang/String;)V
    .locals 1

    .line 3071
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$3200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3072
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$3300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    return-void
.end method
