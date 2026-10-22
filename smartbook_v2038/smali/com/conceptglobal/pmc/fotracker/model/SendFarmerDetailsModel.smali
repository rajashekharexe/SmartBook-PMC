.class public Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;
.super Ljava/lang/Object;
.source "SendFarmerDetailsModel.java"


# instance fields
.field private Log4Trace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Log4Trace;",
            ">;"
        }
    .end annotation
.end field

.field private errorLogger:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;",
            ">;"
        }
    .end annotation
.end field

.field private favouriteDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;",
            ">;"
        }
    .end annotation
.end field

.field private foTrackerDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;",
            ">;"
        }
    .end annotation
.end field

.field private foTrackerHeader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;",
            ">;"
        }
    .end annotation
.end field

.field private usageDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/UsageDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->foTrackerHeader:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->foTrackerDetails:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->errorLogger:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->usageDetails:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->favouriteDetails:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->Log4Trace:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getErrorLogger()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->errorLogger:Ljava/util/List;

    return-object v0
.end method

.method public getFavouriteDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->favouriteDetails:Ljava/util/List;

    return-object v0
.end method

.method public getFoTrackerDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->foTrackerDetails:Ljava/util/List;

    return-object v0
.end method

.method public getFoTrackerDetailsModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->foTrackerDetails:Ljava/util/List;

    return-object v0
.end method

.method public getFoTrackerHeader()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->foTrackerHeader:Ljava/util/List;

    return-object v0
.end method

.method public getFoTrackerHeaderModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->foTrackerHeader:Ljava/util/List;

    return-object v0
.end method

.method public getLog4Trace()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Log4Trace;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->Log4Trace:Ljava/util/List;

    return-object v0
.end method

.method public getUsageDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/UsageDetails;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->usageDetails:Ljava/util/List;

    return-object v0
.end method

.method public setErrorLogger(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->errorLogger:Ljava/util/List;

    return-void
.end method

.method public setFavouriteDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->favouriteDetails:Ljava/util/List;

    return-void
.end method

.method public setFoTrackerDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->foTrackerDetails:Ljava/util/List;

    return-void
.end method

.method public setFoTrackerDetailsModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->foTrackerDetails:Ljava/util/List;

    return-void
.end method

.method public setFoTrackerHeader(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->foTrackerHeader:Ljava/util/List;

    return-void
.end method

.method public setFoTrackerHeaderModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->foTrackerHeader:Ljava/util/List;

    return-void
.end method

.method public setLog4Trace(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Log4Trace;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->Log4Trace:Ljava/util/List;

    return-void
.end method

.method public setUsageDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/UsageDetails;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->usageDetails:Ljava/util/List;

    return-void
.end method
