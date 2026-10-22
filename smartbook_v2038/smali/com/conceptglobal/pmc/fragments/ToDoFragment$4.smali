.class Lcom/conceptglobal/pmc/fragments/ToDoFragment$4;
.super Ljava/lang/Object;
.source "ToDoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ToDoFragment;->locationNotFound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 827
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$302(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Z)Z

    .line 828
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;-><init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Lcom/conceptglobal/pmc/fragments/ToDoFragment$1;)V

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$1102(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;)Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;

    .line 829
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$1100(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;

    move-result-object p1

    new-array p2, p2, [Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
