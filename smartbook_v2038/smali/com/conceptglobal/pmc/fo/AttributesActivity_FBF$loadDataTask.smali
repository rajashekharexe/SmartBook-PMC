.class Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$loadDataTask;
.super Landroid/os/AsyncTask;
.source "AttributesActivity_FBF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;
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
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)V
    .locals 0

    .line 2609
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$loadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2609
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$loadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2612
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$loadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$2900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;I)V

    const/4 p1, 0x0

    return-object p1
.end method
