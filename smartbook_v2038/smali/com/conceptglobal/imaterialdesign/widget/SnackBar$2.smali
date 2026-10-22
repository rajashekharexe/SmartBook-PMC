.class Lcom/conceptglobal/imaterialdesign/widget/SnackBar$2;
.super Ljava/lang/Object;
.source "SnackBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$2;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 153
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$2;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->access$000(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnActionClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$2;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->access$000(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnActionClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$2;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->access$100(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnActionClickListener;->onActionClick(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;I)V

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$2;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->dismiss()V

    return-void
.end method
