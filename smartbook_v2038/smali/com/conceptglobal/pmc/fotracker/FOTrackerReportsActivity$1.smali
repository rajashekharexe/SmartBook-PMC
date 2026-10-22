.class Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity$1;
.super Ljava/lang/Object;
.source "FOTrackerReportsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity;->showNoInternetDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 58
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 59
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerReportsActivity;->finish()V

    return-void
.end method
