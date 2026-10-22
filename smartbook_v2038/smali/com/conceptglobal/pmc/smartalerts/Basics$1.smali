.class Lcom/conceptglobal/pmc/smartalerts/Basics$1;
.super Ljava/lang/Object;
.source "Basics.java"

# interfaces
.implements Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/smartalerts/Basics;->useCurrentLocationAsWorkplace(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/smartalerts/Basics;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/smartalerts/Basics;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics$1;->this$0:Lcom/conceptglobal/pmc/smartalerts/Basics;

    iput-object p2, p0, Lcom/conceptglobal/pmc/smartalerts/Basics$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(DDI)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 406
    iget-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics$1;->this$0:Lcom/conceptglobal/pmc/smartalerts/Basics;

    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics$1;->val$activity:Landroid/app/Activity;

    const v1, 0x7f100075

    .line 407
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 406
    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/smartalerts/Basics;->createMessageIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    .line 409
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
