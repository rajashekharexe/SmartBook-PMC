.class Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalMultiAutoCompleteTextView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;)V
    .locals 0

    .line 3993
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 3994
    invoke-direct {p0, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3997
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 3998
    invoke-direct {p0, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4001
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 4002
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 4083
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .line 4098
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    .line 4028
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    .line 4033
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 4038
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onEditorAction(I)V
    .locals 1

    .line 4043
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onEditorAction(I)V

    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1

    .line 4078
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onFilterComplete(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 4048
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 4053
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 4058
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 4063
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 4068
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 4073
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onSelectionChanged(II)V

    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 4088
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->performFiltering(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 4103
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->performFiltering(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .line 4017
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->refreshDrawableState()V

    .line 4019
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz v0, :cond_0

    .line 4020
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->refreshDrawableState()V

    .line 4022
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz v0, :cond_1

    .line 4023
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->refreshDrawableState()V

    :cond_1
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 4093
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->replaceText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 0

    .line 4007
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 4012
    invoke-static {p0, p2}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method superConvertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 4148
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method superGetFilter()Landroid/widget/Filter;
    .locals 1

    .line 4160
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method superOnCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    .line 4107
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method superOnCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 0

    .line 4112
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method

.method superOnCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 4116
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method superOnEditorAction(I)V
    .locals 0

    .line 4120
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onEditorAction(I)V

    return-void
.end method

.method superOnFilterComplete(I)V
    .locals 0

    .line 4144
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onFilterComplete(I)V

    return-void
.end method

.method superOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 4124
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 4128
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 4132
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 4136
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 4140
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnSelectionChanged(II)V
    .locals 0

    .line 4168
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    return-void
.end method

.method superPerformFiltering(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 4152
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method superPerformFiltering(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 4164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method superReplaceText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 4156
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    return-void
.end method
