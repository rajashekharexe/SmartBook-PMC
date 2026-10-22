.class public Lcom/conceptglobal/imaterialdesign/app/DialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;
    }
.end annotation


# static fields
.field protected static final ARG_BUILDER:Ljava/lang/String; = "arg_builder"


# instance fields
.field private mActionListener:Landroid/view/View$OnClickListener;

.field protected mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$1;-><init>(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mActionListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static newInstance(Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;)Lcom/conceptglobal/imaterialdesign/app/DialogFragment;
    .locals 1

    .line 74
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;

    invoke-direct {v0}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;-><init>()V

    .line 75
    iput-object p0, v0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 117
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    invoke-interface {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "arg_builder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 2

    .line 82
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    if-nez p1, :cond_0

    new-instance p1, Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;->build(Landroid/content/Context;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mActionListener:Landroid/view/View$OnClickListener;

    .line 84
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionClickListener(Landroid/view/View$OnClickListener;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mActionListener:Landroid/view/View$OnClickListener;

    .line 85
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionClickListener(Landroid/view/View$OnClickListener;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;

    if-eqz v1, :cond_0

    .line 109
    check-cast v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->dismissImmediately()V

    .line 111
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 123
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    invoke-interface {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/DialogFragment;->mBuilder:Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "arg_builder"

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
