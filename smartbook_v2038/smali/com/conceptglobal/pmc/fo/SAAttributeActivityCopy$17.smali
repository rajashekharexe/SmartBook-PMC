.class Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$17;
.super Ljava/lang/Object;
.source "SAAttributeActivityCopy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->showAlertCancel(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2011
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$17;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    iput p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$17;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2014
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2015
    iget p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$17;->val$event:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2020
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$17;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1700(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;I)V

    goto :goto_0

    .line 2017
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$17;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->finish()V

    :goto_0
    return-void
.end method
