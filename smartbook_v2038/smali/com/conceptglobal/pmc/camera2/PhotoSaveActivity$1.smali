.class Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$1;
.super Ljava/lang/Object;
.source "PhotoSaveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->finish()V

    return-void
.end method
