.class Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$10;
.super Ljava/lang/Object;
.source "ContentDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->showImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

.field final synthetic val$nagDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 882
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$10;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$10;->val$nagDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 886
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$10;->val$nagDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
