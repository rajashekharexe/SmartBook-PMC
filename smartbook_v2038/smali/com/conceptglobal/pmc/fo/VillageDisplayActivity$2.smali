.class Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$2;
.super Ljava/lang/Object;
.source "VillageDisplayActivity.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->slidingDrawerSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$000(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->access$100(Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fo/VillageDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method
