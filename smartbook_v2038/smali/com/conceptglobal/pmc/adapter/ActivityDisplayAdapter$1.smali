.class Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;
.super Ljava/lang/Object;
.source "ActivityDisplayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 110
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$800(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)I

    move-result v0

    const-string v1, "SEGMENTID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v0, "ISSELFASSIGN"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ActivityModel;->getActivityId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ActivityModel;->getIsPlanned()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/high16 v1, 0x20000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
