.class public interface abstract Lcom/conceptglobal/imaterialdesign/app/DialogFragment$Builder;
.super Ljava/lang/Object;
.source "DialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build(Landroid/content/Context;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
.end method

.method public abstract onCancel(Landroid/content/DialogInterface;)V
.end method

.method public abstract onDismiss(Landroid/content/DialogInterface;)V
.end method

.method public abstract onNegativeActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V
.end method

.method public abstract onNeutralActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V
.end method

.method public abstract onPositiveActionClicked(Lcom/conceptglobal/imaterialdesign/app/DialogFragment;)V
.end method
