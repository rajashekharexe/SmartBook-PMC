.class public Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "AttendamceReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity$WebAppInterface;->mContext:Landroid/content/Context;

    .line 121
    iput-object p3, p0, Lcom/conceptglobal/pmc/attendance/AttendamceReportActivity$WebAppInterface;->mActivity:Landroid/app/Activity;

    return-void
.end method
