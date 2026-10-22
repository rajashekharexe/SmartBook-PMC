.class public Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelfAssignAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final GETCUSTOMER:I = 0x3


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;"
        }
    .end annotation
.end field

.field private isFromAssignment:I

.field private isFromFeedBack:I

.field private isFromOrders:I

.field private isFromTestimonial:I

.field private isFromTodo:I

.field private isFromcomplaint:I

.field private mActivity:Landroid/app/Activity;

.field private mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

.field private mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

.field private onTapListener:Lcom/conceptglobal/pmc/interfaces/OnTapListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;IIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;IIIII)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->mActivity:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->data:Ljava/util/List;

    .line 43
    iput p3, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromAssignment:I

    .line 44
    iput p5, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromcomplaint:I

    .line 45
    iput p4, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromOrders:I

    .line 46
    iput p6, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromTestimonial:I

    .line 47
    iput p7, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromFeedBack:I

    .line 48
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;IIIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/CustomListDisplayModel;",
            ">;IIIIII)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    sget-object v0, Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;->MATERIAL:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->mColorGenerator:Lcom/conceptglobal/pmc/textdrawable/ColorGenerator;

    .line 51
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->mActivity:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->data:Ljava/util/List;

    .line 53
    iput p3, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromAssignment:I

    .line 54
    iput p5, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromcomplaint:I

    .line 55
    iput p4, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromOrders:I

    .line 56
    iput p6, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromTestimonial:I

    .line 57
    iput p7, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromFeedBack:I

    .line 58
    iput p8, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromTodo:I

    .line 59
    invoke-static {}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable;->builder()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;->round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->mDrawableBuilder:Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromFeedBack:I

    return p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromTestimonial:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromAssignment:I

    return p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromOrders:I

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromcomplaint:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->isFromTodo:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 31
    check-cast p1, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;I)V
    .locals 2

    .line 72
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;->access$800(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;)Lcom/conceptglobal/pmc/views/RippleView;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;I)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/RippleView;->setOnRippleCompleteListener(Lcom/conceptglobal/pmc/views/RippleView$OnRippleCompleteListener;)V

    .line 137
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;->profileimage:Lcom/conceptglobal/pmc/utils/CircleImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;->profTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;->profTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 141
    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;->access$800(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;)Lcom/conceptglobal/pmc/views/RippleView;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/RippleView;->setTag(Ljava/lang/Object;)V

    .line 142
    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;
    .locals 1

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0125

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 65
    new-instance p2, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnTapListener(Lcom/conceptglobal/pmc/interfaces/OnTapListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;->onTapListener:Lcom/conceptglobal/pmc/interfaces/OnTapListener;

    return-void
.end method
