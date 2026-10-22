.class Lcom/conceptglobal/pmc/MainHomePageActivity$24;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->showPopupForLocationTrackerEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

.field final synthetic val$dialogCrops:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1233
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$24;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$24;->val$dialogCrops:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1236
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$24;->val$dialogCrops:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1237
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$24;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$1300(Lcom/conceptglobal/pmc/MainHomePageActivity;)V

    return-void
.end method
