.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$2;
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

    .line 470
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 473
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$300(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 475
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$400(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Z)V

    return-void
.end method
