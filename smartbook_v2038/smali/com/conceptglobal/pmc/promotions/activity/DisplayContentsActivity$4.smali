.class Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$4;
.super Ljava/lang/Object;
.source "DisplayContentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 352
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    iget-object v0, p1, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->filterItem:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method
