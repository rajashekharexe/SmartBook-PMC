.class Lcom/conceptglobal/pmc/fo/UserFormActivity$14;
.super Ljava/lang/Object;
.source "UserFormActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/UserFormActivity;->showAlertWithAgreeDisagree(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$14;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1063
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1065
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$14;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const/4 p2, 0x1

    const-string v0, "1"

    const-string v1, "true"

    invoke-static {p1, v1, p2, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1100(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
