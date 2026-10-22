.class Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl$1;
.super Ljava/lang/Object;
.source "FarmerSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 656
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 657
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl$1;->this$1:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$402(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Z)Z

    return-void
.end method
