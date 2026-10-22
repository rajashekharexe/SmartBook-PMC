.class Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$2;
.super Ljava/lang/Object;
.source "FOTrackerDetailsActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->settingListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->access$100(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

    const-string v0, "No internet"

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->access$200(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
