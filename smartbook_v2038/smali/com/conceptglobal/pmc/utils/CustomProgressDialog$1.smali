.class Lcom/conceptglobal/pmc/utils/CustomProgressDialog$1;
.super Ljava/lang/Object;
.source "CustomProgressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/utils/CustomProgressDialog;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    .line 86
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->access$100(Lcom/conceptglobal/pmc/utils/CustomProgressDialog;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->access$002(Lcom/conceptglobal/pmc/utils/CustomProgressDialog;Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;)Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;

    .line 87
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->access$000(Lcom/conceptglobal/pmc/utils/CustomProgressDialog;)Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->access$200(Lcom/conceptglobal/pmc/utils/CustomProgressDialog;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;->onCancel(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->printStackTrace()V

    :goto_0
    return-void
.end method
