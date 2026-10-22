.class Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$2;
.super Ljava/lang/Object;
.source "RetailersDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->setSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->access$300(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x0

    return p1
.end method
