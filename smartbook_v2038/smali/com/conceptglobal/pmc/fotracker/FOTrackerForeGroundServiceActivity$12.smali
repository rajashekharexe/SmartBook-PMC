.class Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$12;
.super Ljava/lang/Object;
.source "FOTrackerForeGroundServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$12;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1110
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1111
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1113
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$12;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v1

    const-string v2, "RegularizationType"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->gettingDropdownValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$12;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->access$500(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v4, "Select one"

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 1114
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v1, 0x7f1101b9

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1115
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 1116
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
