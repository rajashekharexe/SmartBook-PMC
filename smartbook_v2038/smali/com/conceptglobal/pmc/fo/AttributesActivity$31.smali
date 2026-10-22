.class Lcom/conceptglobal/pmc/fo/AttributesActivity$31;
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

    .line 4026
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 4029
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->onResume()V

    return-void
.end method
