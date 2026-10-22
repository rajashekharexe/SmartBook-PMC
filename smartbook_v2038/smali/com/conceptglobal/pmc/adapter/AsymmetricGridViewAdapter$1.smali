.class Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;
.super Ljava/lang/Object;
.source "AsymmetricGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 113
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 114
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 116
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "farmerType"

    const/high16 v2, 0x4000000

    if-eqz v0, :cond_0

    .line 122
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    const-string v0, "Farmer"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 125
    :cond_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v0, "Retailer"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 134
    :cond_1
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    const-string v0, "Distributor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 150
    :cond_2
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    const-string v0, "Village"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 159
    :cond_3
    const-string v0, "11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 167
    :cond_4
    const-string v0, "12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "start click "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "todo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 176
    :cond_5
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    const-string v0, "Planter"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 185
    :cond_6
    const-string v0, "13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 191
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const-string v0, "isFromOrders"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    :cond_7
    const-string v0, "14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 200
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    const-string v0, "isFromComplaints"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    :cond_8
    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 219
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/FOTrackerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AsymmetricGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9
    :goto_0
    return-void
.end method
