.class Lcom/conceptglobal/pmc/fo/UserFormActivity$9;
.super Ljava/lang/Object;
.source "UserFormActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/UserFormActivity;->showAlertWithNewtral(Ljava/lang/String;I)V
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

    .line 976
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 979
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 980
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const-string p2, "false"

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$800(Lcom/conceptglobal/pmc/fo/UserFormActivity;Ljava/lang/String;)V

    .line 981
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const/4 p2, 0x3

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$900(Lcom/conceptglobal/pmc/fo/UserFormActivity;ILjava/lang/String;)V

    return-void
.end method
