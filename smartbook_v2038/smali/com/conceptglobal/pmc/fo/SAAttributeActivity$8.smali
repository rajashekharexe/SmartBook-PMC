.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$8;
.super Ljava/lang/Object;
.source "SAAttributeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 1296
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1299
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1300
    const-string v0, "isFromAssignment"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1301
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result v0

    const-string v1, "ACTIVITYID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1302
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
