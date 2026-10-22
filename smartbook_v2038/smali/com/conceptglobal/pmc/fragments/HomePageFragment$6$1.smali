.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$1;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;

.field final synthetic val$weas:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 647
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$1;->this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$1;->val$weas:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$1;->this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$1;->val$weas:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1600(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Ljava/util/List;)V

    return-void
.end method
