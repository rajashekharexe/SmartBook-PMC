.class Lcom/conceptglobal/pmc/RegistrationActivity$5;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/RegistrationActivity;->showMobileSwapAlert(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/RegistrationActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/RegistrationActivity;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$5;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1001
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
