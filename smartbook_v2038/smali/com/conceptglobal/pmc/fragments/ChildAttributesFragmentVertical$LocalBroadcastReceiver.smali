.class Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChildAttributesFragmentVertical.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V
    .locals 0

    .line 2242
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$1;)V
    .locals 0

    .line 2242
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.GPSTurnedOnResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2247
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;->access$1300(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragmentVertical;)V

    :cond_0
    return-void
.end method
