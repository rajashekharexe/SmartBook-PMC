.class Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$4;
.super Ljava/lang/Object;
.source "DisplayContentsActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 351
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    iget-object v0, p1, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->filterItem:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method
