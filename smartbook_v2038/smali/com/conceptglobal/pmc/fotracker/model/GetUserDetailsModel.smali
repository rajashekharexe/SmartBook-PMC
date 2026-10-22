.class public Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;
.super Ljava/lang/Object;
.source "GetUserDetailsModel.java"


# instance fields
.field private Active:Ljava/lang/String;

.field private FirstName:Ljava/lang/String;

.field private GeoDisplayName:Ljava/lang/String;

.field private NotificationStatus:I

.field private Password:Ljava/lang/String;

.field private PdaUser:Ljava/lang/String;

.field private RoleId:I

.field private TerritoryID:Ljava/lang/String;

.field private UserType:I

.field private deviceid:Ljava/lang/String;

.field private roleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/UserRoleMapping;",
            ">;"
        }
    .end annotation
.end field

.field private territoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;",
            ">;"
        }
    .end annotation
.end field

.field private userid:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActive()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->Active:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->FirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoDisplayName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->GeoDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationStatus()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->NotificationStatus:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaUser()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->PdaUser:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->RoleId:I

    return v0
.end method

.method public getTerritoryID()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->TerritoryID:Ljava/lang/String;

    return-object v0
.end method

.method public getTerritoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->territoryList:Ljava/util/List;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->UserType:I

    return v0
.end method

.method public getUserid()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->userid:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getUserrolemapping()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/UserRoleMapping;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->roleList:Ljava/util/List;

    return-object v0
.end method

.method public setActive(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->Active:Ljava/lang/String;

    return-void
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->deviceid:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->FirstName:Ljava/lang/String;

    return-void
.end method

.method public setGeoDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->GeoDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setNotificationStatus(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->NotificationStatus:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->Password:Ljava/lang/String;

    return-void
.end method

.method public setPdaUser(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->PdaUser:Ljava/lang/String;

    return-void
.end method

.method public setRoleId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->RoleId:I

    return-void
.end method

.method public setTerritoryID(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->TerritoryID:Ljava/lang/String;

    return-void
.end method

.method public setTerritoryList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;",
            ">;)V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->territoryList:Ljava/util/List;

    return-void
.end method

.method public setUserType(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->UserType:I

    return-void
.end method

.method public setUserid(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->userid:I

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->username:Ljava/lang/String;

    return-void
.end method

.method public setUserrolemapping(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/UserRoleMapping;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/GetUserDetailsModel;->roleList:Ljava/util/List;

    return-void
.end method
