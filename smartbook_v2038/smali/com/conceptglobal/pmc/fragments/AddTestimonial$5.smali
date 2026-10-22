.class Lcom/conceptglobal/pmc/fragments/AddTestimonial$5;
.super Ljava/lang/Object;
.source "AddTestimonial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddTestimonial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V
    .locals 0

    .line 1851
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$5;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1855
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$5;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$502(Lcom/conceptglobal/pmc/fragments/AddTestimonial;I)I

    .line 1856
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$5;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$602(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1857
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$5;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->showDialog(I)V

    return-void
.end method
