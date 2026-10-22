.class Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$4;
.super Ljava/lang/Object;
.source "SAAttributeActivityCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$4;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 331
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$4;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$200(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 332
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$4;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$300(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;J)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$4;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v1, "only one video allowed"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
