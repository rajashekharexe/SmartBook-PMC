.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl$1;
.super Ljava/lang/Object;
.source "FarmersSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;)V
    .locals 0

    .line 1038
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1040
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1041
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocationControl;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1202(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Z)Z

    return-void
.end method
