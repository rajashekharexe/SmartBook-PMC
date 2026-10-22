.class Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$9;
.super Ljava/lang/Object;
.source "SAAttributeActivityCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V
    .locals 0

    .line 1181
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$9;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1184
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$9;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1185
    const-string v0, "isFromAssignment"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1186
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$9;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)I

    move-result v0

    const-string v1, "ACTIVITYID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1187
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$9;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
