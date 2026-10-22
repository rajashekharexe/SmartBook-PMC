.class Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$2;
.super Ljava/lang/Object;
.source "TargetAndPlanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->showNoInternetDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 82
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->finish()V

    return-void
.end method
