.class Lcom/conceptglobal/pmc/MainHomePageActivity$15;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$15;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 898
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$15;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$502(Lcom/conceptglobal/pmc/MainHomePageActivity;Z)Z

    return-void
.end method
