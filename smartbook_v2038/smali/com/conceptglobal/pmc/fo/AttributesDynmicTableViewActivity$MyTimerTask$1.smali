.class Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask$1;
.super Ljava/lang/Object;
.source "AttributesDynmicTableViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;)V
    .locals 0

    .line 2521
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask$1;->this$1:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2525
    sget-wide v0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->starttimeMobileMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->starttimeMobileMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 2527
    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 2528
    div-int/lit8 v0, v1, 0x3c

    .line 2529
    div-int/lit8 v2, v0, 0x3c

    .line 2530
    rem-int/lit8 v1, v1, 0x3c

    .line 2532
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask$1;->this$1:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$3100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v0, "%02d:%02d:%02d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
