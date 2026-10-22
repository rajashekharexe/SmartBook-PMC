.class Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask$1;
.super Ljava/lang/Object;
.source "FOTrackerForeGroundServiceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask$1;->this$1:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1089
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1090
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd-MMM-yyyy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1091
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask$1;->this$1:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->timeDifference(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask$1;->this$1:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->access$1400(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1094
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
