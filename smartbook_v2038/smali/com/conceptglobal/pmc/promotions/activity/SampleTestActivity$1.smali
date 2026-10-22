.class Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$1;
.super Ljava/lang/Object;
.source "SampleTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->showNoInternetDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 65
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->finish()V

    return-void
.end method
