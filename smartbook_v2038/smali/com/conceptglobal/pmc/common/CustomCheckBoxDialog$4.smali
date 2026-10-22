.class Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$4;
.super Ljava/lang/Object;
.source "CustomCheckBoxDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$4;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 165
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 166
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$4;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
