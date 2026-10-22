.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$2;
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


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$2;->this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$2;->this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1300(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Z)V

    return-void
.end method
