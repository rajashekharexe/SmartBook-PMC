.class Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1$2;
.super Ljava/lang/Object;
.source "AddFarmerDraftListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1$2;->this$1:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 566
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
