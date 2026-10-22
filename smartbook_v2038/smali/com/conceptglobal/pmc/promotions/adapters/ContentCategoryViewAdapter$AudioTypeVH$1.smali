.class Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH$1;
.super Ljava/lang/Object;
.source "ContentCategoryViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 835
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH$1;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
