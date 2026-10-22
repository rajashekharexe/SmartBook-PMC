.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$5$1;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;

.field final synthetic val$wea:Lcom/conceptglobal/pmc/model/Weather;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;Lcom/conceptglobal/pmc/model/Weather;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 602
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5$1;->this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5$1;->val$wea:Lcom/conceptglobal/pmc/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5$1;->this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5$1;->val$wea:Lcom/conceptglobal/pmc/model/Weather;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Lcom/conceptglobal/pmc/model/Weather;Z)V

    .line 606
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5$1;->this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1300(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Z)V

    return-void
.end method
