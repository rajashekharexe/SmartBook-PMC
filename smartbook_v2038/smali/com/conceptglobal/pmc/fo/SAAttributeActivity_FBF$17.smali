.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$17;
.super Ljava/lang/Object;
.source "SAAttributeActivity_FBF.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showAlertCancel(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2086
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$17;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    iput p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$17;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2089
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2090
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$17;->val$event:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2095
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$17;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;I)V

    goto :goto_0

    .line 2092
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$17;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->finish()V

    :goto_0
    return-void
.end method
