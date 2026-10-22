.class Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;
.super Ljava/lang/Object;
.source "ChildAttributesFragmentVertical.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 340
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->access$200(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)I

    move-result v1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->access$300(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->access$400(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;ILandroid/widget/LinearLayout;Ljava/util/Map;ZZ)V

    return-void
.end method
