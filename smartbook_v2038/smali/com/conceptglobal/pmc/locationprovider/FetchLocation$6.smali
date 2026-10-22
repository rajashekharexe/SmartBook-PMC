.class Lcom/conceptglobal/pmc/locationprovider/FetchLocation$6;
.super Ljava/lang/Object;
.source "FetchLocation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->showProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$6;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 390
    iget-object p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$6;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$700(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$6;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$700(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 391
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 393
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$6;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$400(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    .line 394
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$6;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$1500(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Location"

    const-string v1, "Cancel"

    invoke-static {v0, v1, p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
