.class Lcom/conceptglobal/pmc/utils/CustomAppPatchDialog$1;
.super Ljava/lang/Object;
.source "CustomAppPatchDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/utils/CustomAppPatchDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/utils/CustomAppPatchDialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/utils/CustomAppPatchDialog;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomAppPatchDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/CustomAppPatchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 47
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
