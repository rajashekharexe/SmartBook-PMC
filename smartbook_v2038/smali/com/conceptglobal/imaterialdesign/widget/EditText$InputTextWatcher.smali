.class Lcom/conceptglobal/imaterialdesign/widget/EditText$InputTextWatcher;
.super Ljava/lang/Object;
.source "EditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;)V
    .locals 0

    .line 3653
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InputTextWatcher;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Lcom/conceptglobal/imaterialdesign/widget/EditText$1;)V
    .locals 0

    .line 3653
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InputTextWatcher;-><init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 3656
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 3657
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InputTextWatcher;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->access$100(Lcom/conceptglobal/imaterialdesign/widget/EditText;ZZ)V

    .line 3658
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InputTextWatcher;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3659
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InputTextWatcher;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-static {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->access$200(Lcom/conceptglobal/imaterialdesign/widget/EditText;I)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
