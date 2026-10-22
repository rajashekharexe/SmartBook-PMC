.class Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomCheckBoxDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomItemsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field brandsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandsModel;",
            ">;"
        }
    .end annotation
.end field

.field holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

.field final synthetic this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

.field private tvIdsItems:Landroid/widget/TextView;

.field private tvItems:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Ljava/util/List;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandsModel;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    .line 186
    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->tvItems:Landroid/widget/TextView;

    .line 187
    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->tvIdsItems:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 188
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->tvItems:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->tvIdsItems:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/BrandsModel;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 344
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-static {v2}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$600(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$702(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    iget-object v2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-static {v2}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$600(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-static {v3}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$700(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-static {v2}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$600(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 202
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
    .locals 8

    .line 212
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->setcontext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 213
    new-instance v1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c0080

    .line 216
    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 217
    iget-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    const v0, 0x7f090250

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;->itemid:Landroid/widget/TextView;

    .line 218
    iget-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    const v0, 0x7f090251

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;->itemname:Landroid/widget/TextView;

    .line 219
    iget-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    const v0, 0x7f09024f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;->itemchkbox:Landroid/widget/CheckBox;

    .line 220
    iget-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    .line 225
    :goto_0
    new-instance p3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-direct {p3}, Lcom/conceptglobal/pmc/model/BrandsModel;-><init>()V

    .line 226
    iget-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/BrandsModel;

    .line 227
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;->itemid:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;->itemname:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-static {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$100(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)I

    move-result v0

    const/4 v2, 0x1

    const-string v3, ""

    if-ne v0, v2, :cond_2

    .line 232
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->tvItems:Landroid/widget/TextView;

    const v4, 0x7f100002

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->tvItems:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_1

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->tvItems:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->tvIdsItems:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    const-string v5, "\\s+"

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v4, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 254
    iget-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    iget-object p3, p3, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;->itemchkbox:Landroid/widget/CheckBox;

    invoke-virtual {p3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 255
    sget-object p3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 256
    sget-object p3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object p3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 260
    :cond_3
    iget-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    iget-object p3, p3, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;->itemchkbox:Landroid/widget/CheckBox;

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 261
    :goto_2
    sget-object p3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v1, p3, :cond_5

    .line 262
    sget-object p3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 263
    sget-object p3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 264
    sget-object p3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 271
    :cond_5
    :goto_3
    iget-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->holder:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;

    iget-object p3, p3, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$ViewHolder;->itemchkbox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;-><init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
