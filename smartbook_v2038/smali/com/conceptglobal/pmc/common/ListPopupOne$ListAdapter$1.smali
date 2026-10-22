.class Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;
.super Ljava/lang/Object;
.source "ListPopupOne.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

.field final synthetic val$position:I

.field final synthetic val$rbutton:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;Landroid/widget/RadioButton;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->val$rbutton:Landroid/widget/RadioButton;

    iput p3, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 192
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->val$rbutton:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 193
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->viewList:[[Ljava/lang/String;

    iget v1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->val$position:I

    aget-object v0, v0, v1

    aget-object v0, v0, p2

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$602(Lcom/conceptglobal/pmc/common/ListPopupOne;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->viewList:[[Ljava/lang/String;

    iget v1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->val$position:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$702(Lcom/conceptglobal/pmc/common/ListPopupOne;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$100(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object v2, v2, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {v2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$700(Lcom/conceptglobal/pmc/common/ListPopupOne;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$000(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$600(Lcom/conceptglobal/pmc/common/ListPopupOne;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$000(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {v1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$700(Lcom/conceptglobal/pmc/common/ListPopupOne;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 199
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$000(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 206
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 207
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->dismiss()V

    :cond_0
    return p2
.end method
