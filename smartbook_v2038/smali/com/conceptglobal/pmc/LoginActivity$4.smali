.class Lcom/conceptglobal/pmc/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/LoginActivity;->showAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$4;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 695
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
