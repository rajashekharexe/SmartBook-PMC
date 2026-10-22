.class Lcom/conceptglobal/pmc/MainHomePageActivity$23;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->showChangePWDAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 1193
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$23;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1197
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1198
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$23;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$23;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    const-class v1, Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/MainHomePageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
