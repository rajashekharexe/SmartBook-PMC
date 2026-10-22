.class Lcom/conceptglobal/pmc/patch/Patch$1;
.super Ljava/lang/Object;
.source "Patch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/patch/Patch;->applicationPatch()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/patch/Patch;

.field final synthetic val$completed:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/patch/Patch;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch$1;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    iput p2, p0, Lcom/conceptglobal/pmc/patch/Patch$1;->val$completed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch$1;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    invoke-static {v0}, Lcom/conceptglobal/pmc/patch/Patch;->access$100(Lcom/conceptglobal/pmc/patch/Patch;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/patch/Patch$1;->val$completed:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
