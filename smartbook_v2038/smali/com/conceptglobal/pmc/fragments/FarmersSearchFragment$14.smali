.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$14;
.super Ljava/lang/Object;
.source "FarmersSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->showDetailsDialog(Lcom/conceptglobal/pmc/model/FarmerMobileDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

.field final synthetic val$dialogLand:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1300
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$14;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$14;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1304
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$14;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
