.class Lcom/conceptglobal/pmc/ChangePasswordActivity$5;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/ChangePasswordActivity;->showAlert(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/ChangePasswordActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$5;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iput p2, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$5;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 279
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
