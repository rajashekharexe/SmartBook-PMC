.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$23;
.super Ljava/lang/Object;
.source "AttributesActivity_Expenses.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->setOnTouchListener(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3159
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$23;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$23;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 3162
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$23;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$23;->val$editText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$4102(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 3168
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$23;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getRight()I

    move-result p2

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$23;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    .line 3170
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$23;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$4200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
