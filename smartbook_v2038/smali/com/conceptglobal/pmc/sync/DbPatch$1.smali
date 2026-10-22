.class Lcom/conceptglobal/pmc/sync/DbPatch$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "DbPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/sync/DbPatch;->getPatchUpdate()Ljava/lang/String;
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
.field final synthetic this$0:Lcom/conceptglobal/pmc/sync/DbPatch;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/sync/DbPatch;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch$1;->this$0:Lcom/conceptglobal/pmc/sync/DbPatch;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
