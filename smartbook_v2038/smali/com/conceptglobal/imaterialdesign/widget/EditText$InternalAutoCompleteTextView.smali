.class Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalAutoCompleteTextView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;)V
    .locals 0

    .line 3821
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 3822
    invoke-direct {p0, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3825
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 3826
    invoke-direct {p0, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3829
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 3830
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 3906
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .line 3921
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    .line 3856
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    .line 3861
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 3866
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onEditorAction(I)V
    .locals 1

    .line 3871
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onEditorAction(I)V

    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1

    .line 3926
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onFilterComplete(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3876
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3881
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3886
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3891
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3896
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 3901
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->onSelectionChanged(II)V

    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 3911
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->performFiltering(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .line 3845
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->refreshDrawableState()V

    .line 3847
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz v0, :cond_0

    .line 3848
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->refreshDrawableState()V

    .line 3850
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz v0, :cond_1

    .line 3851
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->refreshDrawableState()V

    :cond_1
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3916
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->replaceText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 0

    .line 3835
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 3840
    invoke-static {p0, p2}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method superConvertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 3971
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method superGetFilter()Landroid/widget/Filter;
    .locals 1

    .line 3983
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method superOnCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    .line 3930
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method superOnCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 0

    .line 3935
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method

.method superOnCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 3939
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method superOnEditorAction(I)V
    .locals 0

    .line 3943
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    return-void
.end method

.method superOnFilterComplete(I)V
    .locals 0

    .line 3967
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onFilterComplete(I)V

    return-void
.end method

.method superOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 3947
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 3951
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 3955
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 3959
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 3963
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method superOnSelectionChanged(II)V
    .locals 0

    .line 3987
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onSelectionChanged(II)V

    return-void
.end method

.method superPerformFiltering(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 3975
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method superReplaceText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 3979
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    return-void
.end method
