.class Lcom/conceptglobal/pmc/MainHomePageActivity$5;
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

    .line 604
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$5;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 607
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$5;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lcom/conceptglobal/pmc/MainHomePageActivity;->isCustomCamera:Ljava/lang/Boolean;

    .line 609
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$5;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iget-object p2, p1, Lcom/conceptglobal/pmc/MainHomePageActivity;->isCustomCamera:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setPMCCameraType(Landroid/content/Context;Z)V

    return-void
.end method
