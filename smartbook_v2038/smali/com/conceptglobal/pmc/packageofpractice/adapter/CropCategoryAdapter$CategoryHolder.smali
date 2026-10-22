.class public Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CropCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryHolder"
.end annotation


# instance fields
.field protected btnExpand:Landroid/widget/ImageView;

.field protected categoryImage:Landroid/widget/ImageView;

.field protected categoryTitle:Landroid/widget/TextView;

.field protected individualCropList:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;Landroid/view/View;)V
    .locals 1

    .line 89
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->this$0:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;

    .line 90
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09055d

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->categoryTitle:Landroid/widget/TextView;

    const v0, 0x7f090234

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->categoryImage:Landroid/widget/ImageView;

    const v0, 0x7f090072

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->btnExpand:Landroid/widget/ImageView;

    const v0, 0x7f09037a

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->individualCropList:Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    iget-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->btnExpand:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder$1;-><init>(Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;->categoryTitle:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder$2;-><init>(Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter$CategoryHolder;Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
