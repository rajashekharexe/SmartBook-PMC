.class public Lcom/conceptglobal/pmc/model/GetUserDetailsModel;
.super Ljava/lang/Object;
.source "GetUserDetailsModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private Active:Ljava/lang/String;

.field private DBURL:Ljava/lang/String;

.field private FirstName:Ljava/lang/String;

.field private GeoDisplayName:Ljava/lang/String;

.field private HomeAddress:Ljava/lang/String;

.field private HomeLatitude:Ljava/lang/String;

.field private HomeLongitude:Ljava/lang/String;

.field private IsDeviceActive:Ljava/lang/String;

.field private NotificationStatus:I

.field private Password:Ljava/lang/String;

.field private PdaUser:Ljava/lang/String;

.field private RoleId:I

.field private TerritoryID:Ljava/lang/String;

.field private UserActive:Ljava/lang/String;

.field private UserType:I

.field private deviceid:Ljava/lang/String;

.field private homelocationupdateddate:Ljava/lang/String;

.field private isCampaignRequired:I

.field private roleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/UserRoleMapping;",
            ">;"
        }
    .end annotation
.end field

.field private territoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/TerritoryMaster;",
            ">;"
        }
    .end annotation
.end field

.field private userid:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActive()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->Active:Ljava/lang/String;

    return-object v0
.end method

.method public getDBURL()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->DBURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->FirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoDisplayName()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->GeoDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeAddress()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->HomeAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeLatitude()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->HomeLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeLongitude()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->HomeLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getHomelocationupdateddate()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->homelocationupdateddate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCampaignRequired()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->isCampaignRequired:I

    return v0
.end method

.method public getIsDeviceActive()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->IsDeviceActive:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationStatus()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->NotificationStatus:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaUser()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->PdaUser:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->RoleId:I

    return v0
.end method

.method public getTerritoryID()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->TerritoryID:Ljava/lang/String;

    return-object v0
.end method

.method public getTerritoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/TerritoryMaster;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->territoryList:Ljava/util/List;

    return-object v0
.end method

.method public getUserActive()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->UserActive:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->UserType:I

    return v0
.end method

.method public getUserid()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->userid:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getUserrolemapping()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/UserRoleMapping;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->roleList:Ljava/util/List;

    return-object v0
.end method

.method public setActive(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->Active:Ljava/lang/String;

    return-void
.end method

.method public setDBURL(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->DBURL:Ljava/lang/String;

    return-void
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->deviceid:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->FirstName:Ljava/lang/String;

    return-void
.end method

.method public setGeoDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->GeoDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setHomeAddress(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->HomeAddress:Ljava/lang/String;

    return-void
.end method

.method public setHomeLatitude(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->HomeLatitude:Ljava/lang/String;

    return-void
.end method

.method public setHomeLongitude(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->HomeLongitude:Ljava/lang/String;

    return-void
.end method

.method public setHomelocationupdateddate(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->homelocationupdateddate:Ljava/lang/String;

    return-void
.end method

.method public setIsCampaignRequired(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->isCampaignRequired:I

    return-void
.end method

.method public setIsDeviceActive(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->IsDeviceActive:Ljava/lang/String;

    return-void
.end method

.method public setNotificationStatus(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->NotificationStatus:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->Password:Ljava/lang/String;

    return-void
.end method

.method public setPdaUser(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->PdaUser:Ljava/lang/String;

    return-void
.end method

.method public setRoleId(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->RoleId:I

    return-void
.end method

.method public setTerritoryID(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->TerritoryID:Ljava/lang/String;

    return-void
.end method

.method public setTerritoryList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/TerritoryMaster;",
            ">;)V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->territoryList:Ljava/util/List;

    return-void
.end method

.method public setUserActive(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->UserActive:Ljava/lang/String;

    return-void
.end method

.method public setUserType(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->UserType:I

    return-void
.end method

.method public setUserid(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->userid:I

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->username:Ljava/lang/String;

    return-void
.end method

.method public setUserrolemapping(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/UserRoleMapping;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->roleList:Ljava/util/List;

    return-void
.end method
