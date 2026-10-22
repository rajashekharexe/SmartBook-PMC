.class Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TabIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field iconView:Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;

.field padding:I

.field rippleStyle:I

.field singleLine:Z

.field textAppearance:I

.field textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;Landroid/view/View;)V
    .locals 1

    .line 693
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    .line 694
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 688
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->rippleStyle:I

    const/4 v0, 0x1

    .line 689
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->singleLine:Z

    .line 690
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textAppearance:I

    .line 691
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->padding:I

    .line 695
    instance-of p1, p2, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;

    if-eqz p1, :cond_0

    .line 696
    check-cast p2, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;

    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->iconView:Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;

    goto :goto_0

    .line 697
    :cond_0
    instance-of p1, p2, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    if-eqz p1, :cond_1

    .line 698
    check-cast p2, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    :cond_1
    :goto_0
    return-void
.end method
