.class Lcom/conceptglobal/pmc/RegistrationActivity$4;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/RegistrationActivity;->showAlert(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/RegistrationActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 835
    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$4;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    iput p2, p0, Lcom/conceptglobal/pmc/RegistrationActivity$4;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 838
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 839
    iget p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$4;->val$event:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 841
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$4;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->finish()V

    :goto_0
    return-void
.end method
