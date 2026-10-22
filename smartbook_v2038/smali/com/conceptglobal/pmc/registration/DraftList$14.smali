.class Lcom/conceptglobal/pmc/registration/DraftList$14;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/registration/DraftList;->showRetailerNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/registration/DraftList;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;)V
    .locals 0

    .line 1100
    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$14;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1102
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
