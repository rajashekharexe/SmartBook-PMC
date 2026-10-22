.class Lcom/conceptglobal/pmc/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/LoginActivity;->init()V
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

    .line 407
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$2;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 412
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$2;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$300(Lcom/conceptglobal/pmc/LoginActivity;)Lcom/conceptglobal/imaterialdesign/widget/EditText;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
