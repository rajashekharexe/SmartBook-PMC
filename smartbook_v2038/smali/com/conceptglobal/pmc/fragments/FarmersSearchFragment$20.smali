.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$20;
.super Ljava/lang/Object;
.source "FarmersSearchFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->OnDisplayTypeSelectCheckedChangeListener(Landroid/widget/RadioGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 1751
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$20;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1754
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const/4 v0, -0x1

    if-gt p2, v0, :cond_0

    return-void

    .line 1759
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1770
    :pswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$20;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const-string p2, "TG"

    iput-object p2, p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    goto :goto_0

    .line 1767
    :pswitch_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$20;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const-string p2, "SARATH"

    iput-object p2, p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    goto :goto_0

    .line 1761
    :pswitch_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$20;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const-string p2, "Fellow Farmer"

    iput-object p2, p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    goto :goto_0

    .line 1764
    :pswitch_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$20;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const-string p2, "All"

    iput-object p2, p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fromFavourites:Ljava/lang/String;

    .line 1773
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$20;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    const-string p2, "-1"

    const-string v0, "50"

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$4700(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09036b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
