.class Lcom/conceptglobal/pmc/LoginActivity$7$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/LoginActivity$7;->onBuildDone(Lcom/conceptglobal/imaterialdesign/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/LoginActivity$7;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/LoginActivity$7;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$7$1;->this$1:Lcom/conceptglobal/pmc/LoginActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 849
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$7$1;->this$1:Lcom/conceptglobal/pmc/LoginActivity$7;

    iget-object p1, p1, Lcom/conceptglobal/pmc/LoginActivity$7;->val$et_mobile:[Lcom/conceptglobal/imaterialdesign/widget/EditText;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
