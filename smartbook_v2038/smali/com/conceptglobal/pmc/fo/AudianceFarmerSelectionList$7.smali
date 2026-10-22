.class Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$7;
.super Ljava/lang/Object;
.source "AudianceFarmerSelectionList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$7;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 698
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
