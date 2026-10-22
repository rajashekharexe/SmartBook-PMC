.class Lcom/conceptglobal/pmc/SplashScreenActivity$5;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/SplashScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SplashScreenActivity;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$5;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isComplete(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 424
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$5;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$300(Lcom/conceptglobal/pmc/SplashScreenActivity;)Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$5;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$400(Lcom/conceptglobal/pmc/SplashScreenActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$800(Lcom/conceptglobal/pmc/SplashScreenActivity;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$5;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    new-instance v0, Lcom/conceptglobal/pmc/SplashScreenActivity$5$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SplashScreenActivity$5$1;-><init>(Lcom/conceptglobal/pmc/SplashScreenActivity$5;)V

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/SplashScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
