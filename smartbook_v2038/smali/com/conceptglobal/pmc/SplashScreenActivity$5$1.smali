.class Lcom/conceptglobal/pmc/SplashScreenActivity$5$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SplashScreenActivity$5;->isComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/SplashScreenActivity$5;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SplashScreenActivity$5;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$5$1;->this$1:Lcom/conceptglobal/pmc/SplashScreenActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$5$1;->this$1:Lcom/conceptglobal/pmc/SplashScreenActivity$5;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SplashScreenActivity$5;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$5$1;->this$1:Lcom/conceptglobal/pmc/SplashScreenActivity$5;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SplashScreenActivity$5;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$000(Lcom/conceptglobal/pmc/SplashScreenActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType10:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    .line 443
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 442
    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$600(Lcom/conceptglobal/pmc/SplashScreenActivity;Ljava/lang/String;I)V

    return-void
.end method
