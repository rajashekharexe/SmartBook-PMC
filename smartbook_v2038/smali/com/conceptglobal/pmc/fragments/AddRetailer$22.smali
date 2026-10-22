.class Lcom/conceptglobal/pmc/fragments/AddRetailer$22;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->showOTPVerifyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 4086
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$22;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4088
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4089
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$22;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$5100(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    return-void
.end method
