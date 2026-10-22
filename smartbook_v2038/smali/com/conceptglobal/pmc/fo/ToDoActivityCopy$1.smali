.class Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$1;
.super Ljava/lang/Object;
.source "ToDoActivityCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$1;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 100
    sput p1, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->fromComplaint:I

    .line 101
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$1;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;

    const-class v1, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string v0, "isFromFeedBack"

    const/16 v1, 0xde

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$1;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->access$000(Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy$1;->this$0:Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
