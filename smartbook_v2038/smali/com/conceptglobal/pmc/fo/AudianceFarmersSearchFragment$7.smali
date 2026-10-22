.class Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$7;
.super Ljava/lang/Object;
.source "AudianceFarmersSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->locationNotFound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 965
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1202(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Z)Z

    .line 966
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    new-instance v0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;-><init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$1;)V

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$2002(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;)Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;

    .line 967
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$7;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$2000(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;

    move-result-object p1

    new-array p2, p2, [Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
