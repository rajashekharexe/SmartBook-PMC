.class Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$2;
.super Ljava/lang/Object;
.source "DealerLandsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$LandDetailsViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;->access$300(Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter;)Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/DealerLandsListAdapter$2;->val$position:I

    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/interfaces/OnItemClickListener;->onLandListItemClick(I)V

    return-void
.end method
