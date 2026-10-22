.class public Lcom/conceptglobal/pmc/activity/MandiPricesActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "MandiPricesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/activity/MandiPricesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/activity/MandiPricesActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/activity/MandiPricesActivity;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/activity/MandiPricesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$WebAppInterface;->mContext:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$WebAppInterface;->mActivity:Landroid/app/Activity;

    return-void
.end method
