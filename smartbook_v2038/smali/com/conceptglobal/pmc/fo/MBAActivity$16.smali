.class Lcom/conceptglobal/pmc/fo/MBAActivity$16;
.super Ljava/lang/Object;
.source "MBAActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/MBAActivity;->showGoBackDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V
    .locals 0

    .line 1296
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1299
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1300
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->finish()V

    return-void
.end method
