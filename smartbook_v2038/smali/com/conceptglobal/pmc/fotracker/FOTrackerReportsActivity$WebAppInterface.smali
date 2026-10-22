.class public Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "FOTrackerReportsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity$WebAppInterface;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity$WebAppInterface;->mActivity:Landroid/app/Activity;

    return-void
.end method
