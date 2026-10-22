.class Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity$1;
.super Ljava/lang/Object;
.source "ImageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/ImageViewActivity;->finish()V

    return-void
.end method
