.class Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;
.super Lcom/conceptglobal/imaterialdesign/widget/TextView;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;)V
    .locals 0

    .line 3671
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    .line 3672
    invoke-direct {p0, p2}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 0

    .line 3687
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->this$0:Lcom/conceptglobal/imaterialdesign/widget/EditText;

    iget-object p1, p1, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object p1

    return-object p1
.end method

.method public setTextAppearance(I)V
    .locals 0

    .line 3677
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 3682
    invoke-static {p0, p2}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method
