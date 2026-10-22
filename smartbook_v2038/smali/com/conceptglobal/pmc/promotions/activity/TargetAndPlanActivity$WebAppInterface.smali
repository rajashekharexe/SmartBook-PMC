.class public Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "TargetAndPlanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$WebAppInterface;->mContext:Landroid/content/Context;

    .line 145
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$WebAppInterface;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public moveToHomePage(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;

    iput-boolean p1, v0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->isPlanDataEntered:Z

    return-void
.end method
