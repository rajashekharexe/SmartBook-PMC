.class Lcom/conceptglobal/pmc/fragments/AddTestimonial$13;
.super Ljava/lang/Object;
.source "AddTestimonial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddTestimonial;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

.field final synthetic val$editText:Landroid/widget/TextView;

.field final synthetic val$errMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3724
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$13;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$13;->val$editText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$13;->val$errMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3728
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$13;->val$editText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$13;->val$errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
