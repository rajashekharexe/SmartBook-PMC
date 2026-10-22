.class Lcom/conceptglobal/pmc/fo/AttributesActivity$32;
.super Landroid/content/BroadcastReceiver;
.source "AttributesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 4032
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 4035
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->fab3:Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setVisibility(I)V

    return-void
.end method
