.class Lcom/conceptglobal/pmc/fo/UserFormActivity$8;
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

    .line 983
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 987
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->finish()V

    return-void
.end method
