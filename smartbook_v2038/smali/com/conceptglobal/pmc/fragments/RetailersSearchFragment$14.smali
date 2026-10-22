.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$14;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->showMibileSearchDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

.field final synthetic val$dialogLand:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1206
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$14;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$14;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1209
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$14;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1210
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$14;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
