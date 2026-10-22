.class Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TabIndicatorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field static final TYPE_ICON:I = 0x1

.field static final TYPE_TEXT:I


# instance fields
.field mFactory:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;

.field mFixedWidth:I

.field mLastFixedWidth:I

.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFactory:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->getTabIndicatorCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFactory:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->isIconTabIndicator(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 543
    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->onBindViewHolder(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;I)V
    .locals 7

    .line 619
    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 621
    iget-object v1, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 622
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFixedWidth:I

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 623
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne p2, v2, :cond_0

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mLastFixedWidth:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFixedWidth:I

    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    const/4 v2, -0x2

    .line 625
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 626
    :goto_1
    iget-object v2, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    iget v1, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->padding:I

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$500(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v2

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 629
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$500(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v1

    iput v1, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->padding:I

    .line 630
    iget-object v1, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$500(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v2

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v5}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$500(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v5

    invoke-virtual {v1, v2, v4, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 633
    :cond_2
    iget v1, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->rippleStyle:I

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$600(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 634
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$600(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v1

    iput v1, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->rippleStyle:I

    .line 635
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$600(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v1

    if-lez v1, :cond_3

    .line 636
    iget-object v1, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v6}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$600(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v6

    invoke-direct {v2, v5, v6}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_4

    goto/16 :goto_5

    .line 659
    :cond_4
    iget-object v0, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->iconView:Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFactory:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;

    invoke-virtual {v1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    iget-object p1, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->iconView:Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$000(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v0

    if-ne p2, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1, v3}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->setChecked(Z)V

    goto :goto_5

    .line 641
    :cond_6
    iget v0, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textAppearance:I

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$700(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 642
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$700(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v0

    iput v0, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textAppearance:I

    .line 643
    iget-object v0, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$700(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 645
    :cond_7
    iget-boolean v0, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->singleLine:Z

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$800(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)Z

    move-result v1

    if-eq v0, v1, :cond_9

    .line 646
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$800(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->singleLine:Z

    .line 647
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$800(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 648
    iget-object v0, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setSingleLine(Z)V

    goto :goto_3

    .line 650
    :cond_8
    iget-object v0, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    invoke-virtual {v0, v4}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setSingleLine(Z)V

    .line 651
    iget-object v0, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setMaxLines(I)V

    .line 655
    :cond_9
    :goto_3
    iget-object v0, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFactory:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;

    invoke-virtual {v1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object p1, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->access$000(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)I

    move-result v0

    if-ne p2, v0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1, v3}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setChecked(Z)V

    :goto_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 677
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;

    .line 678
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFactory:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->onTabIndicatorSelected(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 543
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 591
    :cond_0
    new-instance v2, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 588
    :cond_1
    new-instance v2, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 595
    :goto_0
    new-instance p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-direct {p1, v3, v2}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;-><init>(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;Landroid/view/View;)V

    .line 596
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 597
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    goto :goto_1

    .line 610
    :cond_2
    iget-object p2, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->iconView:Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 602
    :cond_3
    iget-object p2, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    invoke-virtual {p2, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    iget-object p2, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    invoke-virtual {p2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setTextAlignment(I)V

    .line 605
    iget-object p2, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    const/16 v1, 0x11

    invoke-virtual {p2, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setGravity(I)V

    .line 606
    iget-object p2, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 607
    iget-object p2, p1, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$ViewHolder;->textView:Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;

    invoke-virtual {p2, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedTextView;->setSingleLine(Z)V

    :goto_1
    return-object p1
.end method

.method public setFactory(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;)V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFactory:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 555
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->setTabIndicatorView(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)V

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 559
    invoke-virtual {p0, v1, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->notifyItemRangeRemoved(II)V

    .line 561
    :cond_1
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFactory:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;

    if-eqz p1, :cond_2

    .line 563
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->setTabIndicatorView(Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;)V

    .line 564
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 566
    invoke-virtual {p0, v1, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->notifyItemRangeInserted(II)V

    .line 568
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFactory:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;

    if-eqz p1, :cond_4

    .line 569
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$TabIndicatorFactory;->getCurrentTabIndicator()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView;->onTabSelected(I)V

    :cond_4
    return-void
.end method

.method public setFixedWidth(II)V
    .locals 1

    .line 573
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFixedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mLastFixedWidth:I

    if-eq v0, p2, :cond_1

    .line 574
    :cond_0
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mFixedWidth:I

    .line 575
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->mLastFixedWidth:I

    .line 577
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p2, 0x0

    .line 579
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/imaterialdesign/widget/TabIndicatorView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void
.end method
