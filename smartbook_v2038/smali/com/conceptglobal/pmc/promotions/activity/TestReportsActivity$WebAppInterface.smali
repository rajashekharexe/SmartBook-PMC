.class public Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "TestReportsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$WebAppInterface;->mContext:Landroid/content/Context;

    .line 117
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$WebAppInterface;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public method(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method
