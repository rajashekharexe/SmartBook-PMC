.class Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListPopupOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/common/ListPopupOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

.field viewList:[[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/common/ListPopupOne;[[Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->viewList:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->viewList:[[Ljava/lang/String;

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 6

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 217
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {v3}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$800(Lcom/conceptglobal/pmc/common/ListPopupOne;)[[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$902(Lcom/conceptglobal/pmc/common/ListPopupOne;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    iget-object v3, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {v3}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$800(Lcom/conceptglobal/pmc/common/ListPopupOne;)[[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    aget-object v3, v3, v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {v5}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$900(Lcom/conceptglobal/pmc/common/ListPopupOne;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {v3}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$800(Lcom/conceptglobal/pmc/common/ListPopupOne;)[[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    iget-object v5, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {v5}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$800(Lcom/conceptglobal/pmc/common/ListPopupOne;)[[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    aget-object v4, v5, v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 224
    new-array p1, p1, [I

    aput v1, p1, v4

    aput v1, p1, v1

    const-class v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 180
    iget-object p2, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0116

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const p3, 0x7f0905af

    .line 181
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f090372

    .line 182
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 183
    iget-object v1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->viewList:[[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    .line 185
    invoke-virtual {v0, p3}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 186
    new-instance p3, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;

    invoke-direct {p3, p0, v0, p1}, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter$1;-><init>(Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;Landroid/widget/RadioButton;I)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p2
.end method
