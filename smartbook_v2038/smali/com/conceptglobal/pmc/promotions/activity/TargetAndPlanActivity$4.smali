.class Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$4;
.super Ljava/lang/Object;
.source "TargetAndPlanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    .line 164
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$4;->this$0:Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 166
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
