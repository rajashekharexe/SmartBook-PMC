.class Lcom/conceptglobal/pmc/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/LoginActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$1;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$1;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/LoginActivity;->access$000(Lcom/conceptglobal/pmc/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getLowInternetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/conceptglobal/pmc/LoginActivity$1;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Your internet connection is low please do mastersyc later, once you have proper internet "

    :goto_0
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/LoginActivity;->access$100(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
