.class Lcom/conceptglobal/pmc/fo/UserFormActivity$11;
.super Ljava/lang/Object;
.source "UserFormActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/UserFormActivity;->showAlertCancel(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1013
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    iput p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$11;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1016
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1017
    iget p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$11;->val$event:I

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    const-string v0, "true"

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    const/4 v1, 0x4

    if-eq p1, p2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1033
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$800(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;)V

    .line 1034
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const/4 p2, 0x5

    invoke-static {p1, v0, p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1000(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 1027
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$800(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;)V

    .line 1028
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const-string p2, ""

    invoke-static {p1, v1, p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$900(Lcom/conceptglobal/pmc/fo/UserFormActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 1022
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const/4 p2, 0x1

    invoke-static {p1, v0, p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1000(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 1019
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->finish()V

    :goto_0
    return-void
.end method
