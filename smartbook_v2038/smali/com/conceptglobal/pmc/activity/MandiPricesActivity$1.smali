.class Lcom/conceptglobal/pmc/activity/MandiPricesActivity$1;
.super Ljava/lang/Object;
.source "MandiPricesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->showNoInternetDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/activity/MandiPricesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/activity/MandiPricesActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$1;->this$0:Lcom/conceptglobal/pmc/activity/MandiPricesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 58
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 59
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$1;->this$0:Lcom/conceptglobal/pmc/activity/MandiPricesActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->finish()V

    return-void
.end method
