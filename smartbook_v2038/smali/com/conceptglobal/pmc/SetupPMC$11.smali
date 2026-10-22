.class Lcom/conceptglobal/pmc/SetupPMC$11;
.super Ljava/lang/Object;
.source "SetupPMC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SetupPMC;->showAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/SetupPMC;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$11;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 919
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
