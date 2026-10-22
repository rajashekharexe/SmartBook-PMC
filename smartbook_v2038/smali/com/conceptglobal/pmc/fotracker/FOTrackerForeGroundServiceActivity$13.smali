.class Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$13;
.super Ljava/lang/Object;
.source "FOTrackerForeGroundServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V
    .locals 0

    .line 1119
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$13;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1123
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$13;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->showDialog(I)V

    return-void
.end method
