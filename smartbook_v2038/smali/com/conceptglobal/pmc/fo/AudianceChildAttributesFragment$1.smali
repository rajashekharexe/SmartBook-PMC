.class Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;
.super Ljava/lang/Object;
.source "AudianceChildAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$200(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$300(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$400(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;ILandroid/widget/LinearLayout;Ljava/util/Map;ZLjava/util/HashMap;)V

    return-void
.end method
