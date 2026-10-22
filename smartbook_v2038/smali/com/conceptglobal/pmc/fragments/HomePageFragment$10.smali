.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$10;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setRefreshActionButtonState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$refreshing:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1087
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$10;->val$refreshing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1091
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1700()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1092
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1700()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090413

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1094
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$10;->val$refreshing:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0c001d

    .line 1095
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1097
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1101
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getCountForSync()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    const v1, 0x7f08010d

    .line 1106
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_1
    const v1, 0x7f08010e

    .line 1108
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    :goto_2
    return-void
.end method
