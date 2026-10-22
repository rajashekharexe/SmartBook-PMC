.class Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;
.super Ljava/lang/Object;
.source "HomePageGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 228
    const-string v0, "android.intent.action.VIEW"

    const/4 v1, 0x1

    sput-boolean v1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 229
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 230
    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 232
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "segmentId"

    const-string v4, "farmerType"

    const/high16 v5, 0x4000000

    if-eqz v2, :cond_0

    .line 238
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    const-string v0, "Farmer"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 243
    :cond_0
    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x2

    if-eqz v2, :cond_1

    .line 249
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    const-string v0, "Retailer"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 253
    :cond_1
    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    const-string v0, "Distributor"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 267
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 270
    :cond_2
    const-string v2, "4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    const-string v0, "Village"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x4

    .line 278
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 280
    :cond_3
    const-string v2, "11"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 286
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 288
    :cond_4
    const-string v2, "12"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "start click "

    const-string v7, "todo"

    const-string v8, "IsFrom"

    if-eqz v2, :cond_5

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance p1, Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;-><init>()V

    .line 296
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-string v0, "Todo"

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setTodoType(Landroid/content/Context;Ljava/lang/String;)V

    .line 297
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    const-string v0, "ToDo"

    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 300
    :cond_5
    const-string v2, "8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 306
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    const-string v0, "Planter"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 309
    :cond_6
    const-string v2, "13"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 315
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    const-string v0, "isFromOrders"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 318
    :cond_7
    const-string v2, "14"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 324
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fo/SelfAssignActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    const-string v0, "isFromComplaints"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 328
    :cond_8
    const-string v2, "25"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "title"

    const-string v9, "from"

    if-eqz v2, :cond_9

    .line 334
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/ReportsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    const-string v0, "Reports"

    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 344
    :cond_9
    const-string v2, "9"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 350
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 353
    :cond_a
    const-string v2, "15"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v10, "Title"

    if-eqz v2, :cond_d

    .line 360
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getAttendanceStatusToday()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_b

    .line 362
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_attendance_submitted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 366
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    :cond_b
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getTravelModeMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInYYYYMMDD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getTravelModeDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 373
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    const-string v0, "FunctionID"

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v2, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getFunctionID()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 385
    :cond_c
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_not_eligible_for_travel_submit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 388
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 390
    :cond_d
    const-string v2, "192"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v11, "activityName"

    if-eqz v2, :cond_e

    .line 392
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 396
    :cond_e
    const-string v2, "34"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 398
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    const-string v0, "From"

    const-string v1, "Task Assign"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 405
    :cond_f
    const-string v2, "193"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 407
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    const-string v0, "UserCreation"

    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 413
    :cond_10
    const-string v2, "194"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 415
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    const-string v0, "ApproveResignations"

    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 421
    :cond_11
    const-string v2, "195"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 423
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    const-string v0, "AttendanceRegularization"

    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 429
    :cond_12
    const-string v2, "200"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 431
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    const-string v0, "Abscond"

    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 437
    :cond_13
    const-string v2, "196"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 439
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/ReportsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    const-string v0, "HRPolicy"

    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 445
    :cond_14
    const-string v2, "26"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 451
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/ReportsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    const-string v0, "Planning"

    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 455
    :cond_15
    const-string v2, "31"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 461
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    const-string v0, "MDOLocation"

    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 466
    :cond_16
    const-string v2, "27"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 472
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/AttendanceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 480
    :cond_17
    const-string v2, "1119"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v9, "ContextId"

    if-eqz v2, :cond_18

    .line 487
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 493
    :cond_18
    const-string v1, "1120"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 510
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    invoke-virtual {p1, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 516
    :cond_19
    const-string v1, "1125"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 535
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/ToDoActivityCopy;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    const-string v0, "FeedBack"

    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 540
    :cond_1a
    const-string v1, "10"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 546
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/attendance/AttendanceApproveActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 548
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 549
    :cond_1b
    const-string v1, "16"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 555
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 557
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 558
    :cond_1c
    const-string v1, "20"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 564
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 568
    :cond_1d
    const-string v1, "1181"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 575
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 579
    :cond_1e
    const-string v1, "29"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 585
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 589
    :cond_1f
    const-string v1, "30"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 595
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    const-string v0, "Survey"

    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 599
    :cond_20
    const-string v1, "28"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 600
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;)V

    goto :goto_0

    .line 601
    :cond_21
    const-string v1, "420"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 605
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 606
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    const-string v1, "market://details?id=com.microsoft.powerbim"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 608
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 610
    :catch_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://play.google.com/store/apps/details?id=com.microsoft.powerbim"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 613
    :cond_22
    const-string v0, "32"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 619
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    const-string v0, "ExpensesToDo"

    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 622
    :cond_23
    const-string v0, "33"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 623
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;)V

    .line 638
    :cond_24
    :goto_0
    :try_start_3
    const-string v0, "DashBoard"

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->data:Ljava/util/List;

    iget v4, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$1;->val$position:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/StaggeredItemsModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 640
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
