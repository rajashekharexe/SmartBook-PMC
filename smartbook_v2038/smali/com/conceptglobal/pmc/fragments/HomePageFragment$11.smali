.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$11;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V
    .locals 0

    .line 1174
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$11;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1178
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$11;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1800(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1900(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Ljava/lang/String;)V

    return-void
.end method
