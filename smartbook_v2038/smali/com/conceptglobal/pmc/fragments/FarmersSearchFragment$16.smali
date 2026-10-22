.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$16;
.super Ljava/lang/Object;
.source "FarmersSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->showNoDataAvailableDialog(Ljava/lang/String;)V
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

    .line 1355
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$16;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1358
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
