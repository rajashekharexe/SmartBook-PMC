.class Lcom/conceptglobal/pmc/SplashScreenActivity$4;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SplashScreenActivity;->showAlertTryAgain(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SplashScreenActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$4;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    iput p2, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$4;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 388
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 389
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$4;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 390
    iget p2, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$4;->val$event:I

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    .line 396
    iget-object p2, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$4;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->finish()V

    .line 397
    iget-object p2, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$4;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$4;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/SplashScreenActivity;->finish()V

    .line 393
    iget-object p2, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$4;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
