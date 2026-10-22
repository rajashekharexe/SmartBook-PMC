.class Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl$1;
.super Ljava/lang/Object;
.source "AudianceFarmersSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;)V
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 897
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 898
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1202(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Z)Z

    return-void
.end method
