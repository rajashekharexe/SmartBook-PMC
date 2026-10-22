.class Lcom/conceptglobal/pmc/RegistrationActivity$2$1;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/RegistrationActivity$2;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/RegistrationActivity$2;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/RegistrationActivity$2;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2$1;->this$1:Lcom/conceptglobal/pmc/RegistrationActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2$1;->this$1:Lcom/conceptglobal/pmc/RegistrationActivity$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const/4 v1, 0x1

    const-string v2, "This is not a registered employee id"

    invoke-static {v0, v2, v1}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$400(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;I)V

    .line 619
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2$1;->this$1:Lcom/conceptglobal/pmc/RegistrationActivity$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$000(Lcom/conceptglobal/pmc/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
