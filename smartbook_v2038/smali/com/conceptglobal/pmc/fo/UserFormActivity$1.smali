.class Lcom/conceptglobal/pmc/fo/UserFormActivity$1;
.super Ljava/lang/Object;
.source "UserFormActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/UserFormActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 195
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 198
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const-class p4, Lcom/conceptglobal/pmc/registration/ImagePager;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$000(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Ljava/util/ArrayList;

    move-result-object p2

    const-string p4, "imageList"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 200
    const-string p2, "position"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
