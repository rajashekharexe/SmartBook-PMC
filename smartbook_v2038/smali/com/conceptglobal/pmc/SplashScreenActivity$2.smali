.class Lcom/conceptglobal/pmc/SplashScreenActivity$2;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SplashScreenActivity;->showAlert(Ljava/lang/String;I)V
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

    .line 350
    iput-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$2;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    iput p2, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$2;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 353
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 354
    iget p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$2;->val$event:I

    if-eqz p1, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$2;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->finish()V

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$2;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SplashScreenActivity;->access$700(Lcom/conceptglobal/pmc/SplashScreenActivity;)Lcom/conceptglobal/pmc/utils/RuntimePermissions;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/SplashScreenActivity$2;->this$0:Lcom/conceptglobal/pmc/SplashScreenActivity;

    iget-object p2, p2, Lcom/conceptglobal/pmc/SplashScreenActivity;->reqPerms:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/utils/RuntimePermissions;->checkPermissions([Ljava/lang/String;)Z

    :goto_0
    return-void
.end method
