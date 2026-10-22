.class Lcom/conceptglobal/pmc/registration/DraftList$16;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/registration/DraftList;->showRetailerDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/registration/DraftList;

.field final synthetic val$dialogLand:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1177
    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$16;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$16;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1180
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$16;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
