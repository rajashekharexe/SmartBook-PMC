.class Lcom/conceptglobal/pmc/utils/SendDataServiceUtil$1;
.super Ljava/lang/Object;
.source "SendDataServiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil$1;->this$0:Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil$1;->this$0:Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->access$000(Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil$1;->this$0:Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->access$100(Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
