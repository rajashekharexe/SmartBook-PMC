.class Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;
.super Ljava/lang/Object;
.source "HomePageGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

.field final synthetic val$holder:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 644
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->val$holder:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;

    iput p3, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 649
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->val$holder:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->ivSVDataRefresh:Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->refreshView:Landroid/widget/ImageView;

    .line 650
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->val$holder:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->pbSvDataRefresh:Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->progressBar:Landroid/widget/ProgressBar;

    .line 651
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->val$holder:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$ViewHolder;->count2:Landroid/widget/TextView;

    iput-object v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->tvCount:Landroid/widget/TextView;

    .line 652
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->val$position:I

    iput v0, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->selectedposition:I

    .line 653
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->fetchLocation()V

    return-void
.end method
