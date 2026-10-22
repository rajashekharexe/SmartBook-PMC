.class Lcom/conceptglobal/pmc/fo/UserFormActivity$16;
.super Ljava/lang/Object;
.source "UserFormActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/UserFormActivity;->saveDataInLocal(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

.field final synthetic val$action:I

.field final synthetic val$isVisited:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1113
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$16;->val$isVisited:Ljava/lang/String;

    iput p3, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$16;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1117
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$16;->val$isVisited:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$800(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;)V

    .line 1118
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    iget p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$16;->val$action:I

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$900(Lcom/conceptglobal/pmc/fo/UserFormActivity;ILjava/lang/String;)V

    return-void
.end method
