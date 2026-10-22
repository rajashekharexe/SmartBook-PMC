.class public Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "IndividualCropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CropHolder"
.end annotation


# instance fields
.field cardView:Landroidx/cardview/widget/CardView;

.field cropName:Landroid/widget/TextView;

.field cropThumbnail:Lcom/conceptglobal/pmc/utils/CircleImageView;

.field ivDownload:Landroid/widget/ImageView;

.field progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;Landroid/view/View;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->this$0:Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter;

    .line 98
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900df

    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->cardView:Landroidx/cardview/widget/CardView;

    const p1, 0x7f09026d

    .line 101
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/utils/CircleImageView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->cropThumbnail:Lcom/conceptglobal/pmc/utils/CircleImageView;

    const p1, 0x7f090510

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->cropName:Landroid/widget/TextView;

    const p1, 0x7f090113

    .line 103
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->progressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f090259

    .line 104
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropHolder;->ivDownload:Landroid/widget/ImageView;

    return-void
.end method
