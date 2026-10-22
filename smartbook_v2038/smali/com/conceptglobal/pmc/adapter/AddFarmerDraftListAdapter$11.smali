.class Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$11;
.super Ljava/lang/Object;
.source "AddFarmerDraftListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showOTPVerifyDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V
    .locals 0

    .line 1399
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$11;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1401
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
