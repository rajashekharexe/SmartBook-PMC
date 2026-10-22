.class Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;
.super Ljava/lang/Object;
.source "SelfAssignAdapter.java"

# interfaces
.implements Lcom/conceptglobal/pmc/views/RippleView$OnRippleCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/conceptglobal/pmc/views/RippleView;)V
    .locals 12

    .line 75
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->val$i:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeName()Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "segmentId"

    if-ne v0, v1, :cond_0

    .line 77
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FarmerId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    const-string v1, "isfromfeed"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->val$i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 83
    :cond_0
    const-string v0, "farmer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "isFromAssignment"

    const/4 v3, 0x3

    const-string v4, "isFromComplaints"

    const-string v5, "isFromOrders"

    const/16 v6, 0xde

    const/16 v7, 0x6f

    const/4 v8, 0x1

    if-nez v0, :cond_5

    const-string v0, "retailer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "dealer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "village"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 112
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-class v9, Lcom/conceptglobal/pmc/fo/SelfAssignDetailsActivity;

    invoke-direct {p1, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Ljava/util/List;

    move-result-object v0

    iget v9, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->val$i:I

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$300(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 115
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$300(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    const-string v2, "isFromTestimonial"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 118
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    const-string v2, "isFromFeedBack"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$400(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 121
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$400(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 86
    :cond_5
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-class v9, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Ljava/util/List;

    move-result-object v0

    iget v9, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->val$i:I

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$300(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    const-string v2, "FromFeedBack"

    const-string v9, "FromTestmonial"

    const-string v10, "FromSelfAssignment"

    const/4 v11, 0x0

    if-ne v0, v7, :cond_6

    .line 89
    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 93
    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 97
    :cond_7
    invoke-virtual {p1, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$400(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    if-ne v0, v8, :cond_8

    .line 103
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$400(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    :cond_8
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I

    move-result v0

    const-string v1, "isFromTodo"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "farmerType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void
.end method
