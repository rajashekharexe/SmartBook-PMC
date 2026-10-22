.class Lcom/conceptglobal/pmc/fragments/AddRetailer$34;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->showGeoEditAlert(Ljava/lang/String;)V
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

    .line 5820
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$34;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5823
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$34;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$6700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    .line 5824
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
