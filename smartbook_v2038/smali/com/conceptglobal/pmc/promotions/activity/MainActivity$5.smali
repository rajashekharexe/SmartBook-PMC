.class Lcom/conceptglobal/pmc/promotions/activity/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 152
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
