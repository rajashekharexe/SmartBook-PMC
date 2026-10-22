.class public Lcom/conceptglobal/pmc/model/NotificationResponseModel;
.super Ljava/lang/Object;
.source "NotificationResponseModel.java"


# instance fields
.field private Assignments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private notificationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssignments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/NotificationResponseModel;->Assignments:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/NotificationResponseModel;->notificationId:Ljava/lang/String;

    return-object v0
.end method

.method public setAssignments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/NotificationResponseModel;->Assignments:Ljava/util/List;

    return-void
.end method

.method public setNotificationId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/NotificationResponseModel;->notificationId:Ljava/lang/String;

    return-void
.end method
