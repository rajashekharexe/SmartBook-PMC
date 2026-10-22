.class Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$2;
.super Ljava/lang/Object;
.source "FarmerLandsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$LandDetailsViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter;)Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerLandsListAdapter$2;->val$position:I

    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;->onLandListItemClick(I)V

    return-void
.end method
