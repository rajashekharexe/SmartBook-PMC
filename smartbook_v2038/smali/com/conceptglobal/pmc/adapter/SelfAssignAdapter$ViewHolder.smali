.class public Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelfAssignAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field protected profTextView:Landroid/widget/TextView;

.field protected profileimage:Lcom/conceptglobal/pmc/utils/CircleImageView;

.field private rippleView:Lcom/conceptglobal/pmc/views/RippleView;

.field rippleview:Lcom/conceptglobal/pmc/views/RippleView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 158
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090387

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/views/RippleView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;->rippleView:Lcom/conceptglobal/pmc/views/RippleView;

    const v0, 0x7f090359

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/utils/CircleImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;->profileimage:Lcom/conceptglobal/pmc/utils/CircleImageView;

    const v0, 0x7f090589

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;->profTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;)Lcom/conceptglobal/pmc/views/RippleView;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignAdapter$ViewHolder;->rippleView:Lcom/conceptglobal/pmc/views/RippleView;

    return-object p0
.end method
