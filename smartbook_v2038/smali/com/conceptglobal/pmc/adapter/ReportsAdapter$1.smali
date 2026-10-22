.class Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;
.super Ljava/lang/Object;
.source "ReportsAdapter.java"

# interfaces
.implements Lcom/conceptglobal/pmc/views/RippleView$OnRippleCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/ReportsAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/conceptglobal/pmc/views/RippleView;)V
    .locals 5

    .line 57
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "activityID"

    const-string v1, "activityName"

    const-string v2, "from"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Reports"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->val$i:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->getActivityID()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->val$i:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Planning"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->val$i:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "HRPolicy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 71
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->val$i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->getActivityID()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->val$i:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ReportsActivityModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/ReportsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ReportsAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/ReportsAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/ReportsAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
