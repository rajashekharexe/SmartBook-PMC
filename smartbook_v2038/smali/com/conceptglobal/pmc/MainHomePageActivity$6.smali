.class Lcom/conceptglobal/pmc/MainHomePageActivity$6;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->showDialogCameraSwap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$6;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 618
    iget-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$6;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/conceptglobal/pmc/MainHomePageActivity;->isCustomCamera:Ljava/lang/Boolean;

    .line 620
    iget-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$6;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object v0, p2, Lcom/conceptglobal/pmc/MainHomePageActivity;->isCustomCamera:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setPMCCameraType(Landroid/content/Context;Z)V

    .line 622
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
