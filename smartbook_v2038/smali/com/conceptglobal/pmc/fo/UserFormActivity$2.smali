.class Lcom/conceptglobal/pmc/fo/UserFormActivity$2;
.super Ljava/lang/Object;
.source "UserFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 206
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 209
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$000(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 210
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const/16 v0, 0x65

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$100(Lcom/conceptglobal/pmc/fo/UserFormActivity;I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_maxImagesToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
