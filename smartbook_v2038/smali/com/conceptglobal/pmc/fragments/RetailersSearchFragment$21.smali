.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->OnSelectCheckedChangeListener(Landroid/widget/RadioGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 0

    .line 1775
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 1778
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 1779
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$5100(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->slideToBottom(Landroid/view/View;)V

    .line 1780
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    const-string p2, "Retailer"

    const-string v0, "Dealer"

    const-string v1, "Distributor"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 1813
    :sswitch_0
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v2, 0x8

    if-nez p1, :cond_1

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1817
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->onSortItemSelected(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 1814
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->onSortItemSelected(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 1782
    :sswitch_1
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x5

    if-nez p1, :cond_3

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 1787
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->onSortItemSelected(ILjava/lang/String;)V

    goto :goto_4

    .line 1784
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->onSortItemSelected(ILjava/lang/String;)V

    goto :goto_4

    .line 1793
    :sswitch_2
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x6

    if-nez p1, :cond_5

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 1797
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->onSortItemSelected(ILjava/lang/String;)V

    goto :goto_4

    .line 1794
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->onSortItemSelected(ILjava/lang/String;)V

    goto :goto_4

    .line 1803
    :sswitch_3
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x7

    if-nez p1, :cond_7

    invoke-static {}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 1807
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->onSortItemSelected(ILjava/lang/String;)V

    goto :goto_4

    .line 1804
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$21;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->onSortItemSelected(ILjava/lang/String;)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090015 -> :sswitch_3
        0x7f0903d3 -> :sswitch_2
        0x7f0903d4 -> :sswitch_1
        0x7f090609 -> :sswitch_0
    .end sparse-switch
.end method
