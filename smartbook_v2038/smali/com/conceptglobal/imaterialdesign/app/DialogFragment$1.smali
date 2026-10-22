.class Lcom/conceptglobal/imaterialdesign/app/DialogFragment$1;
.super Ljava/lang/Object;
.source "DialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/DialogFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/DialogFragment;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->ACTION_POSITIVE:I

    if-ne v0, v1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/DialogFragment;

    iget-object p1, p1, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/DialogFragment;

    invoke-interface {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;->onPositiveActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->ACTION_NEGATIVE:I

    if-ne v0, v1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/DialogFragment;

    iget-object p1, p1, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/DialogFragment;

    invoke-interface {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;->onNegativeActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->ACTION_NEUTRAL:I

    if-ne p1, v0, :cond_3

    .line 69
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/DialogFragment;

    iget-object p1, p1, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/DialogFragment;

    invoke-interface {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;->onNeutralActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V

    :cond_3
    :goto_0
    return-void
.end method
