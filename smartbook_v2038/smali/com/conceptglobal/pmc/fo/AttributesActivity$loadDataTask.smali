.class Lcom/conceptglobal/pmc/fo/AttributesActivity$loadDataTask;
.super Landroid/os/AsyncTask;
.source "AttributesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;
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
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 3971
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$loadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3971
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity$loadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 3974
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$loadDataTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$4800(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)V

    const/4 p1, 0x0

    return-object p1
.end method
