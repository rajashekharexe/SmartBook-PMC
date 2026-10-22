.class Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl$1;
.super Ljava/lang/Object;
.source "ToDoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 763
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 764
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/ToDoFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$302(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Z)Z

    return-void
.end method
