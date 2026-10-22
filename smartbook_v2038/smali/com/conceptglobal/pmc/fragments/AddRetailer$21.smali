.class Lcom/conceptglobal/pmc/fragments/AddRetailer$21;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->showGoBackDialog()V
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

    .line 3122
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$21;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3126
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$21;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    return-void
.end method
