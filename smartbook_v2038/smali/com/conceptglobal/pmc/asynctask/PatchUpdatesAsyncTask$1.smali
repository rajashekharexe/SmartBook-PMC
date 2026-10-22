.class Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "PatchUpdatesAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask$1;->this$0:Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
