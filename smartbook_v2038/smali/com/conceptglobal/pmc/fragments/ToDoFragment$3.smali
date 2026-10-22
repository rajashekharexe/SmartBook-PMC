.class Lcom/conceptglobal/pmc/fragments/ToDoFragment$3;
.super Ljava/lang/Object;
.source "ToDoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ToDoFragment;->enableGPS()V
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

    .line 745
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 747
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SECURITY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->startActivity(Landroid/content/Intent;)V

    .line 749
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
