.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$20;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->OnDisplayTypeSelectCheckedChangeListener(Landroid/widget/RadioGroup;)V
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

    .line 1754
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$20;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1757
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    .line 1760
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1762
    :pswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$20;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    const-string p2, "Favourites"

    iput-object p2, p1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fromFavourites:Ljava/lang/String;

    goto :goto_0

    .line 1765
    :pswitch_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$20;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    const-string p2, "All"

    iput-object p2, p1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fromFavourites:Ljava/lang/String;

    .line 1768
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$20;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    const-string p2, "-1"

    const-string v0, "50"

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$5000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09036b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
