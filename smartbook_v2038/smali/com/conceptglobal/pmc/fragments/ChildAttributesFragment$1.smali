.class Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;
.super Ljava/lang/Object;
.source "ChildAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 327
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$200(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$300(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;ILandroid/widget/LinearLayout;Ljava/util/Map;Z)V

    return-void
.end method
