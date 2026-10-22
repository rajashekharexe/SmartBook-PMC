.class Lcom/conceptglobal/pmc/MainHomePageActivity$3;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->showPopupForLocationTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

.field final synthetic val$edtselectmode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$3;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$3;->val$edtselectmode:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 299
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$3;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$100(Lcom/conceptglobal/pmc/MainHomePageActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const-string v1, "android.permission.FOREGROUND_SERVICE_LOCATION"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$3;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    .line 300
    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$100(Lcom/conceptglobal/pmc/MainHomePageActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$3;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 306
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$3;->val$edtselectmode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 307
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$3;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$3;->val$edtselectmode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$200(Lcom/conceptglobal/pmc/MainHomePageActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$3;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$100(Lcom/conceptglobal/pmc/MainHomePageActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please select Start mode.."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
