.class Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$12;
.super Ljava/lang/Object;
.source "SAAttributeActivityCopy.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;
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

    .line 1278
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$12;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1286
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 1287
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$12;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 1288
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$12;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$1600(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
