.class Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;
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

    .line 120
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 124
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/ActivityModel;->getIsPlanned()I

    move-result p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ActivityModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ActivityModel;->getActivityId()I

    move-result v1

    iget v2, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;->val$position:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->showActivityDeleteDilag(Ljava/lang/String;II)V

    goto :goto_1

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_assignActCannotDelAlert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_assignActCannotDelAlert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p1, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    :goto_1
    return-void
.end method
