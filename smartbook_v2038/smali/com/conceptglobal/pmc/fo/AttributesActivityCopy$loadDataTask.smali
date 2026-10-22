.class Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$loadDataTask;
.super Landroid/os/AsyncTask;
.source "AttributesActivityCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)V
    .locals 0

    .line 2572
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$loadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2572
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$loadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2575
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$loadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$2900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)V

    const/4 p1, 0x0

    return-object p1
.end method
