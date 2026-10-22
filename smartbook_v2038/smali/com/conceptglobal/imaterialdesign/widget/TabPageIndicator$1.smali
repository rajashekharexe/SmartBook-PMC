.class Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;
.super Landroid/database/DataSetObserver;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->access$000(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->access$100(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)V

    return-void
.end method
