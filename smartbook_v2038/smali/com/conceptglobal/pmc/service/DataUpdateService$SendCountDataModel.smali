.class Lcom/conceptglobal/pmc/service/DataUpdateService$SendCountDataModel;
.super Ljava/lang/Object;
.source "DataUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/service/DataUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendCountDataModel"
.end annotation


# instance fields
.field private dataCountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DataCountModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/conceptglobal/pmc/service/DataUpdateService;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/service/DataUpdateService;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService$SendCountDataModel;->this$0:Lcom/conceptglobal/pmc/service/DataUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/service/DataUpdateService;Lcom/conceptglobal/pmc/service/DataUpdateService$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/DataUpdateService$SendCountDataModel;-><init>(Lcom/conceptglobal/pmc/service/DataUpdateService;)V

    return-void
.end method


# virtual methods
.method public getDataCountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DataCountModel;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/service/DataUpdateService$SendCountDataModel;->dataCountList:Ljava/util/List;

    return-object v0
.end method

.method public setDataCountList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DataCountModel;",
            ">;)V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService$SendCountDataModel;->dataCountList:Ljava/util/List;

    return-void
.end method
