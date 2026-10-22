.class Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;
.super Ljava/lang/Object;
.source "AttributesTableFarmatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->isDataValid()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

.field final synthetic val$value:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 669
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;->val$value:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$200(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;->val$value:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRight()I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method
