.class public Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AddFarmerDraftListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DraftListViewHolder"
.end annotation


# instance fields
.field protected cardview:Landroidx/cardview/widget/CardView;

.field protected delete:Landroid/widget/ImageView;

.field protected gps:Landroid/widget/ImageView;

.field protected id:Ljava/lang/String;

.field protected ivFavourite:Landroid/widget/ImageView;

.field protected ivHNF:Landroid/widget/ImageView;

.field protected ivRaisingstar:Landroid/widget/ImageView;

.field protected iv_web:Landroid/widget/ImageView;

.field protected ll:Landroid/widget/LinearLayout;

.field protected llFellowFarmerDetails:Landroid/widget/LinearLayout;

.field protected llRstr:Landroid/widget/LinearLayout;

.field protected llbalance:Landroid/widget/LinearLayout;

.field protected lloutstand:Landroid/widget/LinearLayout;

.field protected phonedail:Landroid/widget/ImageView;

.field protected profTextView:Landroid/widget/TextView;

.field protected profTextView2:Landroid/widget/TextView;

.field protected profile_image:Landroid/widget/ImageView;

.field protected rlBorderVoew:Landroid/widget/RelativeLayout;

.field protected sms:Landroid/widget/ImageView;

.field protected tvFellowCount:Landroid/widget/TextView;

.field protected tvRightView:Landroid/widget/TextView;

.field protected tvUnverifiedLabel:Landroid/widget/TextView;

.field protected tvVerify:Landroid/widget/TextView;

.field protected tvblncpnts:Landroid/widget/TextView;

.field protected tvoutstnd:Landroid/widget/TextView;

.field protected verifyWithOTP:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1242
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900e3

    .line 1243
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    const v0, 0x7f090058

    .line 1244
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ll:Landroid/widget/LinearLayout;

    const v0, 0x7f0902ce

    .line 1245
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->lloutstand:Landroid/widget/LinearLayout;

    const v0, 0x7f0902cb

    .line 1246
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llbalance:Landroid/widget/LinearLayout;

    const v0, 0x7f0905f9

    .line 1247
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llRstr:Landroid/widget/LinearLayout;

    const v0, 0x7f090388

    .line 1248
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->rlBorderVoew:Landroid/widget/RelativeLayout;

    const v0, 0x7f090359

    .line 1249
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->profile_image:Landroid/widget/ImageView;

    const v0, 0x7f090350

    .line 1250
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->phonedail:Landroid/widget/ImageView;

    const v0, 0x7f090589

    .line 1251
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->profTextView:Landroid/widget/TextView;

    const v0, 0x7f09058a

    .line 1252
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->profTextView2:Landroid/widget/TextView;

    const v0, 0x7f090121

    .line 1253
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->delete:Landroid/widget/ImageView;

    const v0, 0x7f090282

    .line 1254
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->gps:Landroid/widget/ImageView;

    const v0, 0x7f0903ed

    .line 1255
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->sms:Landroid/widget/ImageView;

    const v0, 0x7f09025d

    .line 1256
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    const v0, 0x7f090262

    .line 1257
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivRaisingstar:Landroid/widget/ImageView;

    const v0, 0x7f09025e

    .line 1258
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivHNF:Landroid/widget/ImageView;

    const v0, 0x7f09027b

    .line 1259
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->iv_web:Landroid/widget/ImageView;

    const v0, 0x7f090385

    .line 1260
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvRightView:Landroid/widget/TextView;

    const v0, 0x7f0904e9

    .line 1261
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvUnverifiedLabel:Landroid/widget/TextView;

    const v0, 0x7f0905e9

    .line 1262
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->verifyWithOTP:Landroid/widget/ImageView;

    const v0, 0x7f09058c

    .line 1263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvVerify:Landroid/widget/TextView;

    const v0, 0x7f0904ea

    .line 1264
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvoutstnd:Landroid/widget/TextView;

    const v0, 0x7f0904eb

    .line 1265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvblncpnts:Landroid/widget/TextView;

    const v0, 0x7f0902ba

    .line 1266
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->llFellowFarmerDetails:Landroid/widget/LinearLayout;

    const v0, 0x7f0904a7

    .line 1267
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->tvFellowCount:Landroid/widget/TextView;

    return-void
.end method
