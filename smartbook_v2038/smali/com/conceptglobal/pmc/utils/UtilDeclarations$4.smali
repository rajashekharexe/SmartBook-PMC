.class Lcom/conceptglobal/pmc/utils/UtilDeclarations$4;
.super Ljava/lang/Object;
.source "UtilDeclarations.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/utils/UtilDeclarations;->showDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 949
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 950
    const-string p1, "MasterSync"

    const-string p2, "SyncCompleted"

    const-string v0, "1"

    invoke-static {v0, p1, p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string p1, "AppPatch"

    const-string p2, "NoPatchAvailable"

    const-string v0, "2"

    invoke-static {v0, p1, p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string p1, "DbPatch"

    const-string p2, "DbPatchCompleted"

    const-string v0, "3"

    invoke-static {v0, p1, p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
