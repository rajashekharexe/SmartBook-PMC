.class Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudianceChildAttributesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V
    .locals 0

    .line 2318
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$1;)V
    .locals 0

    .line 2318
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.GPSTurnedOnResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2323
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1400(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V

    :cond_0
    return-void
.end method
