.class Lcom/conceptglobal/pmc/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/BaseActivity;->showAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/BaseActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/BaseActivity;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/conceptglobal/pmc/BaseActivity$3;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    iget-object p1, p0, Lcom/conceptglobal/pmc/BaseActivity$3;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/ExitActivity;->exitApplicationAnRemoveFromRecent(Landroid/content/Context;)V

    return-void
.end method
