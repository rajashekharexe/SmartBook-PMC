.class Lcom/conceptglobal/pmc/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/LoginActivity;->showLowNetworkMsgAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$6;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 729
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x1

    .line 730
    sput-boolean p1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 731
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$6;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1000(Lcom/conceptglobal/pmc/LoginActivity;)V

    return-void
.end method
