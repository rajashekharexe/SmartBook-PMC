.class Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask$1;
.super Ljava/lang/Object;
.source "AttributesTableViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;)V
    .locals 0

    .line 3323
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask$1;->this$1:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3327
    sget-wide v0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->starttimeMobileMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->starttimeMobileMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 3329
    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 3330
    div-int/lit8 v0, v1, 0x3c

    .line 3331
    div-int/lit8 v2, v0, 0x3c

    .line 3332
    rem-int/lit8 v1, v1, 0x3c

    .line 3334
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask$1;->this$1:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;

    iget-object v3, v3, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$4300(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/TextView;

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
