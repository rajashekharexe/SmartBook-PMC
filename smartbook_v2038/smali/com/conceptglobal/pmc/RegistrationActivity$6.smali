.class Lcom/conceptglobal/pmc/RegistrationActivity$6;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/RegistrationActivity;->showMobileSwapAlert(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

.field final synthetic val$pdaid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 991
    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$6;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/RegistrationActivity$6;->val$pdaid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 994
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 995
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$6;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    iget-object p2, p0, Lcom/conceptglobal/pmc/RegistrationActivity$6;->val$pdaid:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$700(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;)V

    return-void
.end method
