.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$7;
.super Ljava/lang/Object;
.source "FarmersSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->locationNotFound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 1106
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1108
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1202(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Z)Z

    .line 1109
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;)V

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$2002(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;)Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;

    .line 1110
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$2000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;

    move-result-object p1

    new-array p2, p2, [Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
