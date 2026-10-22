.class public Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "WebviewLandscapeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$WebAppInterface;->mContext:Landroid/content/Context;

    .line 165
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$WebAppInterface;->mActivity:Landroid/app/Activity;

    return-void
.end method
