.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$3;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 483
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 484
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 485
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$500(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "No location entered"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$300(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 489
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0, v2, v2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$600(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method
