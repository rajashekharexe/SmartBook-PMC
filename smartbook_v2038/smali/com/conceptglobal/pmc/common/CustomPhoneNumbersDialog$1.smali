.class Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog$1;
.super Ljava/lang/Object;
.source "CustomPhoneNumbersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->showDialog(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog$1;->this$0:Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog$1;->this$0:Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->access$000(Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;)Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/CustomPhoneNumbersDialog;->dismiss()V

    return-void
.end method
