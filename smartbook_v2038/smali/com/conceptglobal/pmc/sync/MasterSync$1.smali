.class Lcom/conceptglobal/pmc/sync/MasterSync$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "MasterSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/sync/MasterSync;->getRetailersFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/conceptglobal/pmc/model/PmcRetailersModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/sync/MasterSync;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/sync/MasterSync;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/MasterSync$1;->this$0:Lcom/conceptglobal/pmc/sync/MasterSync;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
