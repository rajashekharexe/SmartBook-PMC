.class Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;
.super Landroid/widget/EditText;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalEditText"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;)V
    .locals 0

    .line 3694
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 3695
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3698
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 3699
    invoke-direct {p0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3702
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 3703
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    .line 3729
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    .line 3734
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 3739
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onEditorAction(I)V
    .locals 1

    .line 3744
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onEditorAction(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3749
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3754
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3759
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3764
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3769
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 3774
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onSelectionChanged(II)V

    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .line 3718
    invoke-super {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    .line 3720
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz v0, :cond_0

    .line 3721
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->refreshDrawableState()V

    .line 3723
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz v0, :cond_1

    .line 3724
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->refreshDrawableState()V

    :cond_1
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 0

    .line 3708
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 3713
    invoke-static {p0, p2}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method superOnCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    .line 3778
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method superOnCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 0

    .line 3783
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method

.method superOnCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 3787
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method superOnEditorAction(I)V
    .locals 0

    .line 3791
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    return-void
.end method

.method superOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 3795
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 3799
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 3803
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 3807
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 3811
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnSelectionChanged(II)V
    .locals 0

    .line 3815
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    return-void
.end method
