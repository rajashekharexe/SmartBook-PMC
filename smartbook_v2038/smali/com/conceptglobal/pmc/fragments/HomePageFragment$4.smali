.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment;->showPopupForLocationTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

.field final synthetic val$dialogCrops:Landroid/app/Dialog;

.field final synthetic val$edtdistance:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;->val$edtdistance:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;->val$dialogCrops:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 507
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, ""

    const-string v1, "location"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Start day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 510
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "End day"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 512
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 513
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$700(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Lcom/conceptglobal/pmc/smartalerts/Basics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/smartalerts/Basics;->stopLocationTrackerService()V

    .line 514
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;->val$edtdistance:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "na"

    invoke-static {p1, v0, v1, v1}, Lcom/conceptglobal/pmc/fotracker/database/InsertDataIntoDB;->updateCloseDayFOTrackerHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$4;->val$dialogCrops:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
