.class public Lcom/conceptglobal/pmc/fotracker/database/Queries;
.super Ljava/lang/Object;
.source "Queries.java"


# static fields
.field private static instance:Lcom/conceptglobal/pmc/fotracker/database/Queries;


# instance fields
.field private brandNames:Ljava/lang/String;

.field private companyNames:Ljava/lang/String;

.field private cropNames:Ljava/lang/String;

.field private dealerDetailsSecondTab:Ljava/lang/String;

.field private deleteAssignmentVisitDetails:Ljava/lang/String;

.field private deleteFarmerActDetails:Ljava/lang/String;

.field private deleteFarmerCropMapping:Ljava/lang/String;

.field private deleteFarmerDetails:Ljava/lang/String;

.field private deleteFarmerLastvisitDetails:Ljava/lang/String;

.field private deleteSyncErrorLog:Ljava/lang/String;

.field private deleteUserDetails:Ljava/lang/String;

.field private deletelog4net:Ljava/lang/String;

.field private enableCropHybrids:Ljava/lang/String;

.field private farmerTypes:Ljava/lang/String;

.field public getActivityCount:Ljava/lang/String;

.field public getActivityCount1:Ljava/lang/String;

.field private getAllVillagesData:Ljava/lang/String;

.field private getConsinment:Ljava/lang/String;

.field public getCountFarmerMaster:Ljava/lang/String;

.field public getCountofActivityAssignments:Ljava/lang/String;

.field public getCountofAssignmentVisit:Ljava/lang/String;

.field public getCountofDealerCompanies:Ljava/lang/String;

.field public getCountofDealerCrops:Ljava/lang/String;

.field public getCountofDealerMaster:Ljava/lang/String;

.field private getCountofFarmerActivityDetails:Ljava/lang/String;

.field private getCountofPMCDataQuery:Ljava/lang/String;

.field public getCountofPMCFarmerCropping:Ljava/lang/String;

.field private getCountofPMCFarmerDetails:Ljava/lang/String;

.field private getCountofPMCImages:Ljava/lang/String;

.field public getDiscardActivityCount:Ljava/lang/String;

.field private getGPSAvailable:Ljava/lang/String;

.field private getMasterversionRecords:Ljava/lang/String;

.field private getPasswordFromUserDetails:Ljava/lang/String;

.field public getPictureCount:Ljava/lang/String;

.field private getQueryOfvillageDisplay:Ljava/lang/String;

.field private getShowVillagesCount:Ljava/lang/String;

.field private getUSerDetailsCount:Ljava/lang/String;

.field private getVillageDataDetails:Ljava/lang/String;

.field private getVillageDisplayData:Ljava/lang/String;

.field private getcountofSyncErrorLog:Ljava/lang/String;

.field private getcountoflog4net:Ljava/lang/String;

.field private getfarmerApprovalCount:Ljava/lang/String;

.field private hybridNames:Ljava/lang/String;

.field private lengthCultivated:Ljava/lang/String;

.field private lengthLeasedIn:Ljava/lang/String;

.field private lengthLeasedOut:Ljava/lang/String;

.field private lengthMobileNumber:Ljava/lang/String;

.field private lengthOwned:Ljava/lang/String;

.field private lengthUserMobile:Ljava/lang/String;

.field private lengthUserName:Ljava/lang/String;

.field private lengthUserPin:Ljava/lang/String;

.field private lengthVisitDesc:Ljava/lang/String;

.field private pdaId:Ljava/lang/String;

.field private pmcRetailers:Ljava/lang/String;

.field private seasonNames:Ljava/lang/String;

.field private selectAssignmentActivityDetails:Ljava/lang/String;

.field private selectAssignmentActivityDetailsByOffSetQry:Ljava/lang/String;

.field private selectAssignmentVisitDetails:Ljava/lang/String;

.field private selectFarmerActDetails:Ljava/lang/String;

.field private selectFarmerCropMapping:Ljava/lang/String;

.field private selectFarmerListDetails:Ljava/lang/String;

.field private selectFarmerRegistration:Ljava/lang/String;

.field private selectImageActDetails:Ljava/lang/String;

.field private selectLog4NetData:Ljava/lang/String;

.field private selectSyncErrorLogData:Ljava/lang/String;

.field private selectdealerCropMapping:Ljava/lang/String;

.field private selectsvFarmerListDetails:Ljava/lang/String;

.field private selectsvFarmerListDetailsForApproval:Ljava/lang/String;

.field private states:Ljava/lang/String;

.field private svfarmercropmapping:Ljava/lang/String;

.field private svfarmercropmappingForApproval:Ljava/lang/String;

.field private updateDealerCompany:Ljava/lang/String;

.field private updateDealerCrop:Ljava/lang/String;

.field private updateDealerrMaster:Ljava/lang/String;

.field private updateFarmerMaster:Ljava/lang/String;

.field private updatefarmerCropmapping:Ljava/lang/String;

.field private userMobileNumber:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private wrongPasswordEntryCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "SELECT coalesce(firstName, middleName,lastName) as name FROM pmcUserDetails limit 1"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->userName:Ljava/lang/String;

    .line 24
    const-string v0, "SELECT pdaID FROM pmcUserDetails limit 1"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->pdaId:Ljava/lang/String;

    .line 26
    const-string v0, "SELECT mobile from pmcUserDetails limit 1"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->userMobileNumber:Ljava/lang/String;

    .line 28
    const-string v0, "SELECT cropId,cropName FROM CropMaster where IsActive=\'true\' COLLATE NOCASE order by cropName"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->cropNames:Ljava/lang/String;

    .line 30
    const-string v0, "select BrandId,BrandName from BrandMaster where IsActive=\'true\' COLLATE NOCASE order by BrandName"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->brandNames:Ljava/lang/String;

    .line 36
    const-string v1, "SELECT CompanyId,CompanyName FROM CompanyMaster where IsActvie=\'1\' order by CompanyName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->companyNames:Ljava/lang/String;

    .line 47
    const-string v1, "SELECT seasonId,seasonName FROM SeasonMaster where IsActive=\'true\' COLLATE NOCASE  order by seasonName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->seasonNames:Ljava/lang/String;

    .line 49
    const-string v1, "SELECT contactId, retailerCode, UPPER(case when retailerShopName is null then \'\' else retailerShopName end)||\'(\'||case when contactName is null then \'\' else contactName end||\')\'||\'(\'||case when MobileNumber is null then \'\' else MobileNumber end ||\')\', mobileNumber FROM pmcRetailers ORDER BY retailerShopName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->pmcRetailers:Ljava/lang/String;

    .line 51
    const-string v1, "select UPPER(location1) as location1,UPPER(location2) as location2, (SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd inner join activitymaster am on am.ActivityMasterId =ppd.ActivityMasterId and (am.isActive = 1 OR am.isActive = \'true\') where isplanned = 1 and istransactiondone in(0,2)  and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2 and ppd.isActive=1  ) AS tbv, 0 as vc,(SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd where isplanned = 1 and istransactiondone = 1 and serverUpdatedStatus = \'false\' and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2  ) as pd FROM pmcassignmentactivitydetails as pad where isplanned = 1 and UPPER(location1) <> \'\' and  pad.isActive=1 and (tbv>0 OR pd>0) GROUP BY  UPPER(location1) ,UPPER(location2)"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getAllVillagesData:Ljava/lang/String;

    .line 54
    const-string v1, "SELECT  pmcVillages.VillageName  ,ActivitiyMaster.ActivityName, COUNT(DISTINCT pmcFarmerActivityDetails.FarmerId)  AS Counts FROM pmcFarmerActivityDetails\tINNER JOIN pmcFarmerDetails ON pmcFarmerActivityDetails.FarmerID = pmcFarmerDetails.FarmerId INNER JOIN pmcVillages ON pmcFarmerDetails.VillageId = pmcVillages.VillageId INNER JOIN ActivitiyMaster ON pmcFarmerActivityDetails.activityId= ActivitiyMaster.ActivityId\tGROUP BY ActivitiyMaster.ActivityName,pmcVillages.VillageName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getVillageDisplayData:Ljava/lang/String;

    .line 56
    const-string v1, "SELECT \"select \"||group_concat(\'\',\"SUM(CASE activityname WHEN \'\"|| activityname||\"\'\"||\" THEN Counts ELSE 0 END) as [\"||activityname||\"],\")||\"villageid,villagename from (SELECT  pmcVillages.villageId,pmcVillages.VillageName  ,ActivitiyMaster.ActivityName, COUNT(DISTINCT pmcFarmerActivityDetails.FarmerId)  AS Counts FROM pmcFarmerActivityDetails\tINNER JOIN pmcFarmerDetails ON pmcFarmerActivityDetails.FarmerID = pmcFarmerDetails.FarmerId INNER JOIN pmcVillages ON pmcFarmerDetails.VillageId = pmcVillages.VillageId INNER JOIN ActivitiyMaster ON pmcFarmerActivityDetails.activityId= ActivitiyMaster.ActivityId\tGROUP BY ActivitiyMaster.ActivityName,pmcVillages.VillageName)   GROUP BY villageid,villagename \"  FROM (select 1 as activityname  UNION select  distinct activityname from ActivitiyMaster) as tb"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getQueryOfvillageDisplay:Ljava/lang/String;

    .line 58
    const-string v1, "delete from pmcUserDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteUserDetails:Ljava/lang/String;

    .line 60
    const-string v1, "select Count(villageId) from (select pmcVillages.villageId, pmcVillages.villageName, pmcVillages.mandalId, (SELECT count(0) FROM pmcFarmerDetails where isVisited =\'false\' and pmcVillages.villageId = pmcFarmerDetails.villageId) as tbv, (SELECT count(0) FROM pmcFarmerDetails where isVisited =\'true\'   and pmcVillages.villageId = pmcFarmerDetails.villageId) as vc, (SELECT count(0) FROM pmcFarmerDetails where isVisited =\'true\' and serverUpdatedStatus =\'false\'  and pmcVillages.villageId = pmcFarmerDetails.villageId) as pd from pmcVillages  inner join pmcFarmerDetails on pmcVillages.villageid = pmcFarmerDetails.villageid group by pmcVillages.villageId order by pmcVillages.villageName)  TBL"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getShowVillagesCount:Ljava/lang/String;

    .line 62
    const-string v1, "select password from pmcUserDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getPasswordFromUserDetails:Ljava/lang/String;

    .line 64
    const-string v1, "Select count(0) from pmcUserDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getUSerDetailsCount:Ljava/lang/String;

    .line 66
    const-string v1, "delete from pmcFarmerCropMapping where serverupdatedstatus=\'false\' and farmerid in(select farmerid from pmcFarmerDetails where serverupdatedstatus=\'false\' and isVisited=\'true\')"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteFarmerCropMapping:Ljava/lang/String;

    .line 68
    const-string v1, "delete from pmcAssignmentActivityDetails where serverupdatedstatus=\'false\' and isTransactionDone = \'1\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteFarmerActDetails:Ljava/lang/String;

    .line 71
    const-string v1, "delete from log4net where serverupdatestatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deletelog4net:Ljava/lang/String;

    .line 72
    const-string v1, "delete from SyncErrorLog where ServerUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteSyncErrorLog:Ljava/lang/String;

    .line 73
    const-string v1, "update FarmerMaster  set  serverupdatedstatus=\'true\' where serverupdatedstatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateFarmerMaster:Ljava/lang/String;

    .line 74
    const-string v1, "update DealerMaster  set  serverupdatedstatus=\'true\' where serverupdatedstatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateDealerrMaster:Ljava/lang/String;

    .line 75
    const-string v1, "update FarmerCropDetails  set  serverUpdatedStatus=\'true\' where serverUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updatefarmerCropmapping:Ljava/lang/String;

    .line 76
    const-string v1, "update DealerCompanyMapping  set  serverupdatedstatus=\'true\' where serverupdatedstatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateDealerCompany:Ljava/lang/String;

    .line 77
    const-string v1, "update DealerCropMapping  set  ServerUpdatedStatus=\'true\' where ServerUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateDealerCrop:Ljava/lang/String;

    .line 80
    const-string v1, "select tabs from fxCustomerRegistrationConfiguration where TableName=\'DealerCropORCompany\'and isActive=1"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->dealerDetailsSecondTab:Ljava/lang/String;

    .line 81
    const-string v1, "select isActive from fxCustomerRegistrationConfiguration where TableName=\'FarmerCropDetails\' and Module=\'Farmer\' and Tabs=\'EnableCropHybrids\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->enableCropHybrids:Ljava/lang/String;

    .line 116
    const-string v1, "select count(0) from log4net where serverupdatestatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getcountoflog4net:Ljava/lang/String;

    .line 118
    const-string v1, "select count(0) from SyncErrorLog where ServerUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getcountofSyncErrorLog:Ljava/lang/String;

    .line 120
    const-string v1, "SELECT count(0) FROM pmcFarmerActivityDetails AS pfad  inner join pmcfarmerDetails on pfad.farmerId = pmcfarmerDetails.farmerid where pmcfarmerDetails.isVisited =\'true\' AND pfad.serverUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofFarmerActivityDetails:Ljava/lang/String;

    .line 123
    const-string v1, "Select count(0) from  pmcFarmerDetails where serverUpdatedStatus=\'false\' and isVisited=\'true\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofPMCFarmerDetails:Ljava/lang/String;

    .line 125
    const-string v1, "select count(0) from ActivityImageDetails where ServerStatus=\'0\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofPMCImages:Ljava/lang/String;

    .line 128
    const-string v1, "select count(0) from FarmerMaster where serverUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountFarmerMaster:Ljava/lang/String;

    .line 129
    const-string v1, "SELECT count(0) from FarmerCropDetails as pfcm  inner join FarmerMaster on pfcm.RespondentNo = FarmerMaster.RespondentNo where  pfcm.serverUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofPMCFarmerCropping:Ljava/lang/String;

    .line 130
    const-string v1, "select count(0) from DealerMaster where serverUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofDealerMaster:Ljava/lang/String;

    .line 131
    const-string v1, "select count(0) from DealerCompanyMapping as dcm inner join DealerMaster on dcm.ContactId = DealerMaster.ContactId where dcm.serverUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofDealerCompanies:Ljava/lang/String;

    .line 133
    const-string v1, "select count(0) from pmcAssignmentActivityDetails as ad  where ad.serverUpdatedStatus=\'false\' and ad.isTransactionDone = 1"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofActivityAssignments:Ljava/lang/String;

    .line 134
    const-string v1, "select count(0) from DealerCropMapping as dcm inner join DealerMaster on dcm.ContactId = DealerMaster.ContactId where dcm.ServerUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofDealerCrops:Ljava/lang/String;

    .line 136
    const-string v1, "select count(0) from pmcAssignmentVisit where serverUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofAssignmentVisit:Ljava/lang/String;

    .line 137
    const-string v1, "select count(0) from ActivityImageDetails where ServerStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getPictureCount:Ljava/lang/String;

    .line 138
    const-string v1, "select count(0) from pmcAssignmentActivityDetails as ad where ad.serverUpdatedStatus=\'false\' and ad.isTransactionDone = 1"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDiscardActivityCount:Ljava/lang/String;

    .line 140
    const-string v1, "Select count(0) from pmcFarmerDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofPMCDataQuery:Ljava/lang/String;

    .line 141
    const-string v1, "select count(distinct(ActivityAssignmentId)) from pmcAssignmentActivityDetails as ad  where ad.serverUpdatedStatus=\'false\' and ad.isTransactionDone = 1"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getActivityCount1:Ljava/lang/String;

    .line 142
    const-string v1, "select count (*) from (select distinct ActivityAssignmentId,transid from pmcAssignmentActivityDetails as ad  where ad.serverUpdatedStatus=\'false\' and ad.isTransactionDone = 1)  "

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getActivityCount:Ljava/lang/String;

    .line 145
    const-string v1, "delete from pmcFarmerDetails where serverupdatedstatus=\'false\' and isVisited=\'true\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteFarmerDetails:Ljava/lang/String;

    .line 149
    const-string v1, "SELECT pfad.detailsID,pfad.farmerId,pfad.activityId,pfad.attributeId,pfad.attributeValue,pfad.createdBy,pfad.createddate,pfad.updatedBy,pfad.updatedDate,pfad.isPlanned,pfad.assignmentID,pfad.pdaId,pfad.isDone,pfad.notdoneRemark FROM pmcFarmerActivityDetails AS pfad  inner join pmcfarmerDetails on pfad.farmerId = pmcfarmerDetails.farmerid where pmcfarmerDetails.isVisited =\'true\' AND pfad.serverUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectFarmerActDetails:Ljava/lang/String;

    .line 151
    const-string v1, "SELECT pfad.ImageId,pfad.AssignmentId,pfad.ActivityId,pfad.AttributeId,pfad.SubJect,pfad.Comments,pfad.Remarks,pfad.PicturePath,pfad.CreatedBy,pfad.CreatedDate,pfad.UpdatedBy,pfad.UpdatedDate,pfad.pdaId,pfad.FarmerId,pfad.ServerStatus FROM ActivityImageDetails AS pfad  where pfad.ServerStatus=0"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectImageActDetails:Ljava/lang/String;

    .line 155
    const-string v1, "SELECT pfcm.DetailsID,pfcm. FarmerID,pfcm.CropID ,pfcm.Acreages,pfcm.CreatedBy,pfcm.CreatedDate,pfcm.UpdatedBy,pfcm.UpdatedDate,pfcm.pdaid,pfcm.dos,pfcm.productId,pfcm.IsMainCrop,pfcm.Spraypattern,pfcm.LandType,pfcm.RespondentNo,pfcm.status  from FarmerCropDetails as pfcm  where pfcm.serverUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectFarmerCropMapping:Ljava/lang/String;

    .line 156
    const-string v1, "select farmerId,mobile,landline,coNumber,acreagesOwned,leasedIn,leasedOut,cultivated,visitDescription,createdBy,createddate,updatedBy,updatedDate,pdaId,retailerId,totalLandHolding, latitude, longitude,landMark,isActive,Field1 from  pmcFarmerDetails where serverUpdatedStatus=\'false\' and isVisited=\'true\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectFarmerListDetails:Ljava/lang/String;

    .line 157
    const-string v1, "select dcm.MappingId,dcm.ContactId,dcm.CropId,dcm.CropName,dcm.CropSales,dcm.CreatedBy,dcm.CreatedDate,dcm.UpdatedBy,dcm.UpdatedDate,dcm.status from DealerCropMapping dcm where dcm.serverupdatedstatus = \'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectdealerCropMapping:Ljava/lang/String;

    .line 160
    const-string v1, "select distinct  ad.detailsID, ad.ActivitySegmentId , ad.ActivityMasterId , ad.attributeValue, ad.isDone, ad.createdBy , ad.createddate, ad.updatedBy , ad.updatedDate ,   ad.isPlanned , ad.pdaId , ad.notdoneRemark, ad.ActivitySegmentValue, ad.ActivityAssignmentId , ad.ActivityAttributeId , ad.ActivitySegmentName, ad.TransId , ad.PairId ,  ad.isTransactionDone , ad.ActivityExecutionSegmentId ,  ad.ActivityExecutionSegmentValue ,  ad.ExecutionDate ,  ad.AttributeId , ad.AssignmentId , ad.ChildLevelId , ad.territoryId  from  pmcAssignmentActivityDetails as ad  where ad.serverUpdatedStatus=\'false\' and ad.isTransactionDone = 1"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectAssignmentActivityDetails:Ljava/lang/String;

    .line 162
    const-string v1, "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId,visitId FROM pmcAssignmentVisit where serverupdatedstatus=\'false\' "

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectAssignmentVisitDetails:Ljava/lang/String;

    .line 164
    const-string v1, "select distinct  ad.detailsID, ad.ActivitySegmentId , ad.ActivityMasterId , ad.attributeValue, ad.isDone, ad.createdBy , ad.createddate, ad.updatedBy , ad.updatedDate ,   ad.isPlanned , ad.pdaId , ad.notdoneRemark, ad.ActivitySegmentValue, ad.ActivityAssignmentId , ad.ActivityAttributeId , ad.ActivitySegmentName, ad.TransId , ad.PairId ,  ad.isTransactionDone , ad.ActivityExecutionSegmentId ,  ad.ActivityExecutionSegmentValue ,  ad.ExecutionDate ,  ad.AttributeId , ad.AssignmentId , ad.ChildLevelId , ad.territoryId  from  pmcAssignmentActivityDetails as ad  where ad.serverUpdatedStatus=\'false\' and ad.isTransactionDone = 1 LIMIT 1000"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectAssignmentActivityDetailsByOffSetQry:Ljava/lang/String;

    .line 166
    const-string v1, "select date,thread,level,logger,message,exception,userId,exceptionAt, id  from log4net where serverUpdateStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectLog4NetData:Ljava/lang/String;

    .line 168
    const-string v1, "select TableName,UpdatedOn from MasterVersionTrackingSystem"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getMasterversionRecords:Ljava/lang/String;

    .line 170
    const-string v1, "select TBL.activityName as activityName, count(TBL.activityid) as activityCount from (Select pfad.activityid,count(pfad.activityid),pfad.farmerid,am.activityName  from PMCfarmerActivityDetails AS pfad INNER JOIN ActivitiyMaster as am on am.activityId= pfad.activityid INNER JOIN pmcFarmerDetails as pfd ON pfd.farmerid=pfad.farmerid GROUP BY pfad.activityid,pfad.farmerid) TBL GROUP BY TBL.activityid"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getVillageDataDetails:Ljava/lang/String;

    .line 173
    const-string v1, "delete from pmcFarmerLastVisitDetails where farmerid in(select farmerid from pmcFarmerDetails where serverUpdatedStatus=\'false\' and isVisited=\'true\')"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteFarmerLastvisitDetails:Ljava/lang/String;

    .line 175
    const-string v1, "delete from pmcAssignmentVisit where serverUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteAssignmentVisitDetails:Ljava/lang/String;

    .line 177
    const-string v1, "SELECT Pdaid, ColumnName, SourceID, TableName, ErrorMessage, ErrorStackTrace, Query, synctype, CreatedDate, CreatedBy, UpdatedDate, UpdatedBy, Remarks, isSolved , id FROM SyncErrorLog where ServerUpdatedStatus=\'false\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectSyncErrorLogData:Ljava/lang/String;

    .line 181
    const-string v1, "SELECT itemValue FROM ConfigurableLookup where itemKey =\'user_mobile_number_length\' and itemType=\'number\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthUserMobile:Ljava/lang/String;

    .line 183
    const-string v1, "SELECT itemValue FROM ConfigurableLookup where itemKey =\'cultivated_length\' and itemType=\'number\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthCultivated:Ljava/lang/String;

    .line 185
    const-string v1, "SELECT itemValue FROM ConfigurableLookup where itemKey =\'leasedin_length\' and itemType=\'number\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthLeasedIn:Ljava/lang/String;

    .line 187
    const-string v1, "SELECT itemValue FROM ConfigurableLookup where itemKey =\'leasedout_length\' and itemType=\'number\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthLeasedOut:Ljava/lang/String;

    .line 189
    const-string v1, "SELECT itemValue FROM ConfigurableLookup where itemKey =\'owned_length\' and itemType=\'number\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthOwned:Ljava/lang/String;

    .line 191
    const-string v1, "SELECT itemValue FROM ConfigurableLookup where itemKey =\'visit_desc_length\' and itemType=\'number\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthVisitDesc:Ljava/lang/String;

    .line 193
    const-string v1, "SELECT itemValue FROM ConfigurableLookup where itemKey =\'userRegName_length\' and itemType=\'number\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthUserName:Ljava/lang/String;

    .line 195
    const-string v1, "SELECT itemValue FROM ConfigurableLookup where itemKey =\'mobile_number_length\' and itemType=\'number\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthMobileNumber:Ljava/lang/String;

    .line 197
    const-string v1, "SELECT itemValue FROM ConfigurableLookup where itemKey =\'user_pin_length\' and itemType=\'number\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthUserPin:Ljava/lang/String;

    .line 199
    const-string v1, "SELECT itemValue FROM ConfigurableLookupMaster where itemKey =\'DBWIPE\' and itemType=\'DBWIPE\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->wrongPasswordEntryCount:Ljava/lang/String;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select GPSAvailable from DeviceMaster where model=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getGPSAvailable:Ljava/lang/String;

    .line 203
    const-string v1, "SELECT count(farmerid )  FROM pmcSVFarmerDetails where ApprovalStatus=0 and recordFlag in (1,2,3)"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getfarmerApprovalCount:Ljava/lang/String;

    .line 205
    const-string v1, "SELECT itemValue FROM ConfigurableLookup where itemKey=\'ConsentText\'"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getConsinment:Ljava/lang/String;

    .line 207
    const-string v1, "select stateid,statename from pmcStates order by statename"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->states:Ljava/lang/String;

    .line 209
    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->hybridNames:Ljava/lang/String;

    .line 211
    const-string v0, "select farmerTypeId,farmerTypeName from FarmerTypeMaster order by farmerTypeName"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->farmerTypes:Ljava/lang/String;

    .line 1364
    const-string v0, "select FarmerId,FarmerName,Mobile,Landline,CONumber,RespondentNo,AcreagesOwned,LeasedIn,LeasedOut,Cultivated,isActive, recordFlag,FOId,AssignmentFlag,AssignmentId,Approvalstatus,FODescription,MarketId,Villageid,SVDescription,fouserid from pmcSVFarmerDetails where ServerUpdatedStatus=\'false\' and  AssignmentFlag=1"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectsvFarmerListDetails:Ljava/lang/String;

    .line 1366
    const-string v0, "select FarmerId,CropId,Acreages,recordFlag  from pmcSVFarmerCropMapping where ServerUpdatedStatus=\'false\'"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->svfarmercropmapping:Ljava/lang/String;

    .line 1389
    const-string v1, "select FarmerId,FarmerName,Mobile,Landline,CONumber,RespondentNo,AcreagesOwned,LeasedIn,LeasedOut,Cultivated,isActive, recordFlag,FOId,AssignmentFlag,AssignmentId,Approvalstatus,FODescription,MarketId,Villageid,SVDescription,fouserid from pmcSVFarmerDetails where ServerUpdatedStatus=\'false\' and  Approvalstatus=1 or Approvalstatus=2"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectsvFarmerListDetailsForApproval:Ljava/lang/String;

    .line 1391
    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->svfarmercropmappingForApproval:Ljava/lang/String;

    .line 1760
    const-string v0, "SELECT FarmerID,RespondentNo,UniqueId, FarmerName,CONumber,SWDName, PINCODE, LandMark,Email,Education,AnnualHouseholdIncome, FamilyMembersCount, StateID, StateName, DistrictID, DistrictName, Surname, FarmerSegmentation,ZoneID,RegionID, TerritoryId, AgeGroupId, Gender, Landline, Mobile, MandalID,MandalName,LeasedInAcreages,LeasedOutAcreages,TotalAcreage,TotalCultivated , VillageId , FarmersInfluencedCount, BrandedCPusage , Segment, TotalAcreageInfluencedByFarmer, PreferredRetailerID,LastVisistedDate,ServerStatus,IsActive,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,VillageName,VisitDescription,TotalLandHolding,Latitude,Longitude,TerritoryName,Address1,Address2,Field1,Field2,Field3,Field4,FatherName,PP,ProgressiveScore,LeasedInLandAreaInLocalUnits,LeasedOutLandAreaInLocalUnits,OwnedLandCultivatedInLocalUnits,LandMeasureUnitLeasedInLand,LandMeasureUnitLeasedOutLand,LandMeasureUnitOwnedLandCultivated,TotalLandCultivatedInLocalUnits,MarketId,SocialStatus,Irrigatedland,Rainfedland,PreferredRetailerID2,isNew, serverupdatedstatus,isCompleted,FarmerType,Status from FarmerMaster where serverupdatedstatus=\'false\'"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectFarmerRegistration:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;
    .locals 1

    .line 17
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->instance:Lcom/conceptglobal/pmc/fotracker/database/Queries;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/database/Queries;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fotracker/database/Queries;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->instance:Lcom/conceptglobal/pmc/fotracker/database/Queries;

    .line 20
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->instance:Lcom/conceptglobal/pmc/fotracker/database/Queries;

    return-object v0
.end method

.method public static getLatestPatchDetailsQry()Ljava/lang/String;
    .locals 1

    .line 1799
    const-string v0, "SELECT aps.Type, aps. Status, aps.PatchPath, UpdatedOn FROM AppSyncStatusDetails AS aps"

    return-object v0
.end method

.method public static getPendingRecordsCountByTableNameQry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT COUNT(0) FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " WHERE "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionNumberQry()Ljava/lang/String;
    .locals 1

    .line 1795
    const-string v0, "SELECT VersionNumber FROM VersionDetails"

    return-object v0
.end method

.method public static updatePatchDetailsQry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT OR REPLACE INTO AppSyncStatusDetails (LineId, Type, Status, PatchPath, UpdatedOn) VALUES ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\', \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\', (SELECT date(\'now\', \'localtime\')))"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public FarmerAceragesNewData(I)Ljava/lang/String;
    .locals 2

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT  FarmerName,CONumber,Mobile,AcreagesOwned,LeasedIn,LeasedOut,Cultivated,fodescription,svdescription ,ServerUpdatedStatus, AssignmentFlag,Landline from pmcSVFarmerDetails where recordFlag =2 and FarmerId  = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public FarmerAceragesOlddata(I)Ljava/lang/String;
    .locals 2

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT  FarmerName,CONumber,Mobile,AcreagesOwned,LeasedIn,LeasedOut,Cultivated,fodescription,svdescription,ServerUpdatedStatus, AssignmentFlag, Landline from pmcSVFarmerDetails where recordFlag =1 and FarmerId = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetUsernameQuery()Ljava/lang/String;
    .locals 1

    .line 2325
    const-string v0, "SELECT username as name FROM pmcUserDetails limit 1"

    return-object v0
.end method

.method public UpdateChildTransdetails(I)Ljava/lang/String;
    .locals 2

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update pmcAssignmentActivityDetails set isTransactionDone = 1,isDone = 1  where detailsID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public UpdateDealerCompanyDataBymappingID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update  DealerCompanyMapping  set ServerUpdatedStatus =\'false\' where ContactId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public UpdateDealerCompanyStatus(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update  DealerCompanyMapping  set status =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' ,ServerUpdatedStatus =\'false\' where ContactId =\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public UpdateDealerCropDataBymappingID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update  DealerCropMapping set ServerUpdatedStatus =\'false\' where ContactId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public UpdateDealerCropStatus(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update  DealerCropMapping set status =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' ,ServerUpdatedStatus =\'false\' where ContactId =\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  set  serverUpdatedStatus=\'true\' where serverUpdatedStatus=\'false\' and "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IN ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public UpdateFarmerCropDataBymappingID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update  FarmerCropDetails set serverUpdatedStatus =\'false\' where RespondentNo =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public UpdateFarmerCropStatus(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update  FarmerCropDetails set status =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' ,serverUpdatedStatus =\'false\' where RespondentNo =\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bindQueryInAddFarmer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 2130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from FarmerMaster where RespondentNo =\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and TypeofFarmer="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bindQueryInAddRetailer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from DealerMaster where ContactId =\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and CustomerTypeID="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public brandNamesBassedOnCropId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2098
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select BrandId,BrandName from BrandMaster where CropId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and Isactive=\'True\' COLLATE NOCASE order by BrandName "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteCropMappingRec(I)Ljava/lang/String;
    .locals 2

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from pmcFarmerCropMapping where mappingId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteDealerCompanyData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from DealerCompanyMapping where  CompanyId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and ContactId =\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteDealerCompanyDataByMappingId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from DealerCompanyMapping where  MappingId    ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and ContactId =\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteDealerCropDataByMappingId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from DealerCropMapping where  MappingId    ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and ContactId =\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteDraftRecords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " where "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteFarmerCropData(I)Ljava/lang/String;
    .locals 2

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from pmcFarmerCropMapping where  RespondentNo ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteFarmerCropData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from FarmerCropDetails where  CropID ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and RespondentNo =\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteFarmerCropDataBymappingID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from FarmerCropDetails where  DetailsID ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and RespondentNo =\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteFarmerDetailsActivity(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from pmcAssignmentActivityDetails  where ChildLevelId == 0 and ActivitySegmentValue=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and ActivityMasterId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  and activityAssignmentId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteFarmerDetailsActivityForBrand(IIII)Ljava/lang/String;
    .locals 2

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM pmcfarmeractivitydetails WHERE detailsID = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' AND activityId = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' and activityAssignmentId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteFarmerDetailsActivitySelfAssign(Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 2

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from pmcAssignmentActivityDetails  where ChildLevelId == 0 and ActivitySegmentValue=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and ActivityMasterId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  and TransId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteFarmerDetailsChildActivity(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from pmcAssignmentActivityDetails  where ChildLevelId != 0 and ActivitySegmentValue=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and ActivityMasterId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  and activityAssignmentId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteImage(J)Ljava/lang/String;
    .locals 2

    .line 2069
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from ActivityImageDetails where ImageId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteLastVisitDetails(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from pmcLastVisitDetails  where  ActivitySegmentvalue=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and ActivityAssignmentId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteSelfDraftActivity(J)Ljava/lang/String;
    .locals 2

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from pmcAssignmentActivityDetails  where TransId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteTableData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public farmerIDIncrement()Ljava/lang/String;
    .locals 1

    .line 2126
    const-string v0, "SELECT max(FarmerID ) from FarmerMaster"

    return-object v0
.end method

.method public geetingPdaid()Ljava/lang/String;
    .locals 1

    .line 1915
    const-string v0, "SELECT pdaID  FROM pmcUserDetails"

    return-object v0
.end method

.method public getActivityAssociatedBrandsQry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT distinct b.brandId, b.brandName,fad.attributeValue FROM BrandMaster b LEFT JOIN ActivityAttributeMappingMaster am ON b.brandId = am.AttributeId INNER JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b.brandId AND fad.ActivitySegmentValue= \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND fad.ActivityMasterId= \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND fad.AttributeId=\'2\') ORDER BY fad.attributeValue DESC"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActivityAssociatedDataQry(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;IJ)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    .line 991
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\' and fad.AttributeId = "

    const-string v7, "\' and fad.TransId=\'"

    const-string v8, "\' AND fad.ActivityAssignmentId=\'"

    const-string v9, "\' AND fad.ActivityMasterId= \'"

    const-string v10, " AND fad.ActivitySegmentValue= \'"

    const-string v11, " b  INNER JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b."

    const-string v12, ",fad.attributeValue FROM "

    const-string v13, ", b."

    const-string v14, "SELECT distinct b."

    if-eqz v5, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v5

    const-string v15, ""

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 992
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v5

    const-string v15, "ConfigurablelookupMaster"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 993
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") where b.ItemType = \'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' ORDER BY fad.attributeValue DESC"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 997
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") where b."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ORDER BY fad.attributeValue DESC"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1004
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") ORDER BY fad.attributeValue DESC"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivityAssociatedDataQry_Pairid(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;IJLjava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    .line 1012
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\' ORDER BY fad.attributeValue DESC"

    const-string v8, ") and fad.PairId = \'"

    const-string v9, "\' and fad.AttributeId = "

    const-string v10, "\' and fad.TransId=\'"

    const-string v11, "\' AND fad.ActivityAssignmentId=\'"

    const-string v12, "\' AND fad.ActivityMasterId= \'"

    const-string v13, " AND fad.ActivitySegmentValue= \'"

    const-string v14, " b  INNER JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b."

    const-string v15, ",fad.attributeValue FROM "

    move-object/from16 v16, v7

    const-string v7, ", b."

    const-string v5, "SELECT distinct b."

    if-eqz v6, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v8

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1013
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' where b.ItemType = \'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v8, p7

    move-object v6, v5

    move-object/from16 v5, v17

    goto :goto_0

    :cond_1
    move-object v6, v5

    move-object v5, v8

    move-object/from16 v8, p7

    .line 1017
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-virtual/range {p3 .. p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p7

    move-object v1, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivityAssociatedDataQry_byIds(Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;IJ)Ljava/lang/String;
    .locals 4

    .line 1025
    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object p1

    const-string p4, " DESC"

    const-string p5, ") ORDER BY b."

    const-string p6, " in ("

    const-string v0, ",COALESCE(SequenceId,\'\')as attributeValue FROM "

    const-string v1, ", b."

    const-string v2, "SELECT distinct b."

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1026
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " b   where b.ItemType = \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'  and b."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1029
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " b WHERE b."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActivitySegments()Ljava/lang/String;
    .locals 1

    .line 1689
    const-string v0, "select ActivitySegmentId,ActivitySegmentName from ActivitySegmentMaster where isActive=1"

    return-object v0
.end method

.method public getActivityidInLookup(I)Ljava/lang/String;
    .locals 2

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select  count(0) from ConfigurableLookup where itemValue=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' and  itemKey=\'NotSelected\'  and itemType=\'yes\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActivitypendingcount(I)Ljava/lang/String;
    .locals 2

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select sum(fopendingcount) from pmcStatusDetails where foid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActivtiesListBySegment(I)Ljava/lang/String;
    .locals 2

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT asm.ActivityMasterId,am.ActivityMasterName||\'-\'||am.ActivityShortCode from ActivitySegmentMappingMaster as asm Inner Join ActivityMaster as am on am.ActivityMasterId = asm.ActivityMasterId AND AM.isIndependent = 1 where am.isActive = 1 and asm.isActive = 1 and asm.ActivitySegmentId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " order by am.ActivityMasterName "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAddCropFormat()Ljava/lang/String;
    .locals 1

    .line 2354
    const-string v0, "select Itemvalue from ConfigurablelookupMaster where ItemKey =\'IsPercentageRequiredForFCM\'"

    return-object v0
.end method

.method public getAddCropMandatory()Ljava/lang/String;
    .locals 1

    .line 2358
    const-string v0, "select Itemvalue from ConfigurablelookupMaster where ItemKey =\'IsFarmerCropMandatory\'"

    return-object v0
.end method

.method public getAgeList()Ljava/lang/String;
    .locals 1

    .line 251
    const-string v0, "select ageId,ageRange from pmcAge order by ageId"

    return-object v0
.end method

.method public getAllDraftData_SelfAssign()Ljava/lang/String;
    .locals 1

    .line 2118
    const-string v0, "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,TransId,startdate,pmcassignmentactivitydetails.createddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName  from pmcassignmentactivitydetails Left Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId where pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(2)  and TransId is not 0 group by TransId order by TransId"

    return-object v0
.end method

.method public getAllFarmersData(II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 508
    const-string v1, "SELECT pf.farmerId, pf.farmerName, pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.ismba FROM pmcFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcFarmerActivityDetails AS acd ON acd.farmerid=pf.farmerid AND acd.isPlanned=1 where pf.isVisited =\'false\' and pf.villageId="

    if-ne p2, v0, :cond_0

    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and    ifnull(length(isActive ), 0) = 0 and  (Field1 !=\'0\'OR ifnull(length(Field1), 0) = 0) GROUP BY  pf.farmerId, pf.farmerName, pf.mobile order by pf.farmerId"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 514
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and    ifnull(length(isActive ), 0) = 0 and  (Field1 !=\'0\'OR ifnull(length(Field1), 0) = 0) GROUP BY  pf.farmerId, pf.farmerName, pf.mobile order by pf.farmerName"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllFarmersData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName  from pmcassignmentactivitydetails Left Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId where lower(location1) = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and lower(location2) = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(0,2) group by activityassignmentid order by assignmentId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllFarmersDataById(I)Ljava/lang/String;
    .locals 2

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT farmerId, farmerName,surName,fatherName,mobile,landline,coNumber,pinCode,landMark,pf  .latitude,pf  .longitude,emailAddress,education,annualHouseholdIncome,noofFamilyMembers,respondentNo,stateName,districtName,mandalName,villageName,respondentName,gender,segment,acreagesOwned,leasedIn,leasedOut,cultivated,isBayerFarmer,pf .retailerId,visitDescription,pf  .createdBy,pf.createddate,pf.updatedBy,pf.updatedDate,pf.isActive,pf.serverUpdatedStatus,pf.isVisited,pf.lastVisitedDate,pf.villageId,UPPER(case when pr.retailerShopName is null then \'\' else  pr.retailerShopName end)||\'(\'||case when pr.contactName is null then \'\' else pr.contactName end||\')\'||\'(\'||case when pr.mobileNumber is null then \'\' else  pr.mobileNumber end ||\')\', totalLandHolding, Address,pf.ismba  from pmcFarmerDetails AS pf  LEFT JOIN pmcRetailers AS pr ON pf.retailerid=pr.contactId where pf.farmerid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllFarmersDataContactBased()Ljava/lang/String;
    .locals 1

    .line 527
    const-string v0, "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId,PackageName,latitude,longitude  from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId inner join ActivitySegmentMaster as asm on paad.ActivitySegmentId = asm.ActivitySegmentId where asm.ActivitySegmentTypeId = 3 and isplanned= 1 and location1 <> \'\' and paad.isActive=1 paad.isTransactionDone = 0  group by paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId"

    return-object v0
.end method

.method public getAllFarmersDataContactBasedByFilters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId,PackageName  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->latlongsForTodoFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId inner join ActivitySegmentMaster as asm on paad.ActivitySegmentId = asm.ActivitySegmentId where asm.ActivitySegmentTypeId = 3 and isplanned= 1 and location1 <> \'\' and paad.isActive=1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " group by paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllFarmersDataFilterWithRadius(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select pmcassignmentactivitydetails.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->latlongsForTodoFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  from pmcassignmentactivitydetails Left Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId  inner join ActivitySegmentMaster as asm on pmcassignmentactivitydetails.ActivitySegmentId = asm.ActivitySegmentId  where lower(location1) = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and lower(location2) = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(0,2) "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  group by activityassignmentid order by assignmentId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllFarmersDataTimeBased(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate ,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId ,PackageName,latitude,longitude  from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId where  isplanned= 1  and location1 <> \'\' and paad.isActive=1 and paad.isTransactionDone in(0,2) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "group by paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId order by assignmentId,startdate ASC"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllFarmersDataTimeBasedByFilters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate ,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId,PackageName   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->latlongsForTodoFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId inner join ActivitySegmentMaster as asm on paad.ActivitySegmentId = asm.ActivitySegmentId where  isplanned= 1  and location1 <> \'\' and paad.isActive=1 paad.isTransactionDone in(0,2) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " group by paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId order by assignmentId,startdate ASC"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllFarmersDataTimeBasedBySegmentID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate ,assignmentId,serverUpdatedStatus,isdone,istransactionDone  from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId where  isplanned= 1  and location1 <> \'\'and paad.ActivitySegmentId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " paad.isTransactionDone = 0  group by paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId order by enddate ASC"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllFarmersDataWithFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName,latitude,longitude  from pmcassignmentactivitydetails Inner Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId where lower(location1) = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and lower(location2) = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(0,2) "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " group by activityassignmentid order by assignmentId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllFarmersDataWithFilterByActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 624
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName,latitude,longitude  from pmcassignmentactivitydetails Inner Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId where pmcassignmentactivitydetails.activitymasterid = \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(0,2) and pmcassignmentactivitydetails.location1<>\'\' "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " group by activityassignmentid order by assignmentId"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllLocation()Ljava/lang/String;
    .locals 1

    .line 2426
    const-string v0, "SELECT * FROM FOLocation"

    return-object v0
.end method

.method public getAllRetailersDashboardData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1612
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",ContactId  FROM  DealerMaster where  isActive=\'True\' COLLATE NOCASE and CustomerTypeID=\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and StatusReason<>0 order by ContactId"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllStatusActivityData()Ljava/lang/String;
    .locals 1

    .line 663
    const-string v0, "select marketname,statename,districtname,talukaname,activityname,SUM(fopendingcount) as PendinfStatus,SUM(approvependingcount ) as ApprStatus,fopendingcount,approvependingcount from pmcStatusDetails group by marketname,statename,districtname,talukaname,activityname"

    return-object v0
.end method

.method public getAllStatusViilagesActivityData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select villagename,statename,districtname,talukaname,activityname,SUM(fopendingcount) as PendinfStatus,SUM(approvependingcount ) as ApprStatus from pmcStatusDetails where marketname like \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' group by villagename,statename,districtname,talukaname,activityname"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppVersionQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " select * from ConfigurablelookupMaster where itemType=\'Min Version Required\' and ItemValue > \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getApprovalFoListCount()Ljava/lang/String;
    .locals 1

    .line 1457
    const-string v0, "SELECT count(0)  FROM  pmcFoList as pmcfolist inner join pmcSVFarmerDetails on pmcFoList .fopdaid=pmcSVFarmerDetails.FOId where recordFlag = 1 or recordFlag = 2 or recordFlag = 3 "

    return-object v0
.end method

.method public getApprovalFolist()Ljava/lang/String;
    .locals 1

    .line 1453
    const-string v0, "SELECT  distinct pmcfolist .fopdaid, pmcfolist .FOName FROM  pmcFoList as pmcfolist inner join pmcSVFarmerDetails on pmcFoList .fopdaid=pmcSVFarmerDetails.FOId where recordFlag = 1 or recordFlag = 2 or recordFlag = 3 union all select pdaID,userName from  pmcUserDetails "

    return-object v0
.end method

.method public getApprovedMarketCount()Ljava/lang/String;
    .locals 1

    .line 1449
    const-string v0, "SELECT count(0) FROM  pmcMarkets as pmcmarkets inner join pmcSVFarmerDetails on pmcmarkets.Marketid=pmcSVFarmerDetails.MarketId where recordFlag=1 or recordFlag=2 or recordFlag = 3"

    return-object v0
.end method

.method public getAssignPendingActivityCount(I)Ljava/lang/String;
    .locals 2

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT SUM(activitypendingcount)  FROM pmcAssignPendingCounts where fopdaid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAssignPendingFarmerCount(I)Ljava/lang/String;
    .locals 2

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT SUM(farmerpendingcount)  FROM pmcAssignPendingCounts where fopdaid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAssignedMarketCount()Ljava/lang/String;
    .locals 1

    .line 1445
    const-string v0, "SELECT count(0) FROM  pmcMarkets as pmcmarkets inner join pmcSVFarmerDetails on pmcmarkets.Marketid=pmcSVFarmerDetails.MarketId where recordFlag=0"

    return-object v0
.end method

.method public getAssignmentActivityDetailsCountQry()Ljava/lang/String;
    .locals 1

    .line 1816
    const-string v0, "SELECT COUNT(0) FROM pmcAssignmentActivityDetails WHERE serverUpdatedStatus=\'false\'"

    return-object v0
.end method

.method public getAssignmentId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select AssignmentId from pmcAssignmentActivityDetails where ActivitySegmentValue=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' GROUP BY AssignmentId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAssignmentStatus(I)Ljava/lang/String;
    .locals 2

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select * FROM pmcAssignmentActivityDetails where (isActive =1 OR isActive =\'True\') and istransactiondone = 1 and activityAssignmentId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAssignmentVisitDetail(I)Ljava/lang/String;
    .locals 2

    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId FROM pmcAssignmentVisit where ActivityAssignmentId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAssignmentVisitDetailSelfAssign(J)Ljava/lang/String;
    .locals 2

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId FROM pmcAssignmentVisit where TransactionId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAssignmentVisitDetailsByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 1903
    const-string v0, "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId,visitId FROM pmcAssignmentVisit where serverupdatedstatus=\'false\' LIMIT 1000"

    return-object v0
.end method

.method public getAssignmentVisitDetailsCountQry()Ljava/lang/String;
    .locals 1

    .line 1837
    const-string v0, "SELECT COUNT(0) FROM pmcAssignmentVisit WHERE serverupdatedstatus=\'false\'"

    return-object v0
.end method

.method public getAssignmentsDatafromFarmersList(II)Ljava/lang/String;
    .locals 1

    .line 653
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SELECT pf.farmerId, pf.farmerName, pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.ismba FROM pmcFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcFarmerActivityDetails AS acd ON acd.farmerid=pf.farmerid AND acd.isPlanned=1 where pf.isVisited =\'false\' and pf.villageId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and pf.ismba=1 and   ifnull(length(isActive ), 0) = 0 and  (Field1 !=\'0\'OR ifnull(length(Field1), 0) = 0) GROUP BY  pf.farmerId, pf.farmerName, pf.mobile order by pf.farmerName"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributesFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1036
    const-string p1, "SELECT  attributeId ,attributeValue FROM pmcFarmerActivityDetails where farmerId =1 and activityId =1"

    return-object p1
.end method

.method public getBrandNameQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select brandName from BrandMaster where brandid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and Isactive=\'true\' COLLATE NOCASE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBrandNames()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->brandNames:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandsLengthInLookup()Ljava/lang/String;
    .locals 1

    .line 1178
    const-string v0, "select  itemValue from ConfigurableLookup where itemKey=\'brands_length\'"

    return-object v0
.end method

.method public getBrandsLengthInLookupFarmers()Ljava/lang/String;
    .locals 1

    .line 1182
    const-string v0, "select  itemValue from ConfigurableLookup where itemKey=\'brandsLengthFarmer\'"

    return-object v0
.end method

.method public getBrandsQry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "f-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "aid--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Queries"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT distinct b.brandId, b.brandName,fad.attributeValue FROM BrandMaster b LEFT JOIN ActivityAttributeMappingMaster  am ON b.brandId   = am.AttributeId LEFT JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b.brandId AND fad.ActivitySegmentValue  = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND fad.ActivityMasterId  = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND fad.AttributeId =\'2\') where (b.isactive=\'1\' or b.isactive=\'true\' or b.isactive=\'True\') COLLATE NOCASE ORDER BY b.brandName,fad.attributeValue DESC"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildAttributeCount(II)Ljava/lang/String;
    .locals 2

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT count() FROM ActivityAttributeMappingMaster where isActive = 1  and ParentAttributeId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and  ActivityMasterId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildValuesAttributeQuery(III)Ljava/lang/String;
    .locals 2

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select fad.attributeid,am.DisplayNameMobile,am.controltype,fad.attributevalue,COALESCE(\"\",fad.attributevalue),fad.detailsID,fad.sequenceId from pmcFarmerActivityDetails  as fad INNER JOIN AttributeMaster as am ON am.attributeid=fad.attributeid and am.parentId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " where fad.farmerId = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and fad.activityid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  ORDER BY fad.detailsID"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildValuesAttributeQueryUpdate(Ljava/lang/String;IIIJ)Ljava/lang/String;
    .locals 2

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select fad.AttributeId,aam.DisplayNameMobile,aam.controltype,fad.attributevalue,COALESCE(\"\",fad.attributevalue),fad.detailsID,fad.PairId,fad.activityAttributeId,aam.MaxLength,aam.MinLength,aam.MinValue,aam.MaxValue,aam.ValidationType,aam.ValidationExpression, aam.AttributeSource, aam.AttributeDisplayField, aam.AttributeValueField,aam.AttributeLookupKey,aam.AttributeDefaultValue,aam.isKeyAttribute,am.FilterAttributeId1 ,am.FilterAttributeId2 ,am.FilterAttributeId3 from pmcAssignmentActivityDetails  as fad INNER JOIN AttributeMaster as aam ON aam.AttributeId = fad.AttributeId INNER JOIN ActivityAttributeMappingMaster as am ON am.AttributeId=fad.AttributeId and am.ActivityMasterId=fad.ActivityMasterId and am.ParentAttributeId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  and (fad.isActive =1 OR fad.isActive =\'True\') where (aam.isActive =1 OR aam.isActive =\'True\') and am.isRequiredMobile=1 and fad.ActivitySegmentValue= \'"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and fad.ActivityMasterId= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and fad.activityAssignmentId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and fad.TransId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ORDER BY am.controlsequence"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClearLogQuery()Ljava/lang/String;
    .locals 1

    .line 2178
    const-string v0, "delete from Logger "

    return-object v0
.end method

.method public getColumnValueWhereConditionBased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " where "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCompaniesAndSales(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT CompanyMaster.CompanyId,CompanyMaster.CompanyName ,DealerCompanyMapping.CompanySales,DealerCompanyMapping.MappingId FROM DealerCompanyMapping inner join CompanyMaster  on DealerCompanyMapping.CompanyId = CompanyMaster.CompanyId where DealerCompanyMapping.ContactId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ORDER BY CompanyMaster.CompanyName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCompanyIdByCompanyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT CompanyId FROM CompanyMaster where CompanyName =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'  limit 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCompanyNames()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->companyNames:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanySalesForCompany(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select CompanySales from DealerCompanyMapping where ContactId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and CompanyId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " limit 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConsentFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT Field2   FROM pmcFarmerDetails  where farmerId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCountForCrops(II)Ljava/lang/String;
    .locals 2

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select  count() from pmcFarmerCropMapping where RespondentNo ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and  cropId =\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCountSyncNeedFarmers(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1315
    const-string p1, "SELECT count(*) FROM pmcSVFarmerDetails where AssignmentFlag=1 and Approvalstatus=0 and ServerUpdatedStatus=\'false\'"

    goto :goto_0

    .line 1317
    :cond_0
    const-string p1, "SELECT count(*) FROM pmcSVFarmerDetails where Approvalstatus=1 or Approvalstatus=2 and ServerUpdatedStatus=\'false\'"

    :goto_0
    return-object p1
.end method

.method public getCropAceragesBasedonFarmerId(II)Ljava/lang/String;
    .locals 2

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT CropMaster.cropName, pmcSVFarmerCropMapping.Acreages,pmcSVFarmerCropMapping.CropId FROM pmcSVFarmerCropMapping inner join CropMaster on CropMaster.cropid=pmcSVFarmerCropMapping .CropId where farmerid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and  recordFlag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " order by CropMaster.cropName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCropAceragesBasedonFarmerId2(I)Ljava/lang/String;
    .locals 2

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT  ocm.cropName,  SUM(oldAcreages) AS oldAcreages, SUM(newAcreages) AS newAcreages, svfcm.CropId,SUM(oldrecordFlag) AS oldRecordFlag, SUM(newrecordFlag) AS newRecordFlag FROM ( SELECT FarmerId, CropId,Acreages AS oldAcreages, 0 AS newAcreages, recordFlag AS oldrecordFlag, 0 AS newrecordFlag FROM pmcSVFarmerCropMapping WHERE recordflag =1 UNION  SELECT FarmerId, CropId, 0 AS oldAcreages, Acreages AS newAcreages, 0 AS oldrecordFlag, recordFlag  AS newrecordFlag FROM  pmcSVFarmerCropMapping WHERE recordflag = 2 ) svfcm LEFT JOIN CropMaster ocm ON svfcm.cropid=ocm.CropId WHERE svfcm.FARMERID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' GROUP BY svfcm.CropId ORDER BY ocm.CropName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCropAcreagesForCrop(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select Acreages   from FarmerCropDetails  where RespondentNo=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and CropID=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'  limit 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCropIdByCropName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT cropId FROM CropMaster where cropName =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCropNameQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select cropName from CropMaster where cropid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCropNames()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->cropNames:Ljava/lang/String;

    return-object v0
.end method

.method public getCropSales(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select CropSales from DealerCropMapping where ContactId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and CropId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " limit 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCropSales1(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select CropName from DealerCropMapping where ContactId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and CropId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " limit 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCropsandAcreages(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT CropMaster.cropId,CropMaster.cropName ,FarmerCropDetails.Acreages, FarmerCropDetails.productid,FarmerCropDetails.DetailsID,FarmerCropDetails.dos  FROM FarmerCropDetails inner join CropMaster  on FarmerCropDetails.cropId = CropMaster.cropId where FarmerCropDetails.RespondentNo =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'  ORDER BY CropMaster.cropName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCustomerNameBySegmentValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 2234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select CASE WHEN (asm .RefrenceTableName = \'FarmerMaster\') THEN (SELECT FarmerName FROM FarmerMaster WHERE RespondentNo = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\') WHEN (asm .RefrenceTableName = \'DealerMaster\') THEN (SELECT ContactName  FROM DealerMaster WHERE ContactId = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')WHEN  (asm .RefrenceTableName=\'VillageMaster\')  THEN (SELECT VillageName  FROM VillageMaster INNER JOIN MandalMaster ON VillageMaster.MandalID = MandalMaster.MandalId WHERE VillageID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') ELSE \'n/a\' END AS \'latitude\' from ActivitySegmentMaster as asm where asm.ActivitySegmentId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDOSQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select dos from FarmerCropDetails where FarmerID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and CropID=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDashboardData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1606
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",RespondentNo  FROM  FarmerMaster where isActive=\'True\' COLLATE NOCASE and TypeofFarmer=\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and Status<>0 order by RespondentNo"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDashboardData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,RespondentNo  FROM  FarmerMaster where isActive=\'True\' COLLATE NOCASE and Status=\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1598
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, " and serverupdatedstatus =\'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "and TypeofFarmer=\'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' order by RespondentNo "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDealerCompanyCountQry()Ljava/lang/String;
    .locals 1

    .line 1829
    const-string v0, "SELECT COUNT(0) FROM DealerCompanyMapping WHERE serverUpdatedStatus=\'false\'"

    return-object v0
.end method

.method public getDealerCompanyDataByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 1940
    const-string v0, "select MappingId, ContactId, CompanyId, CompanyName,CompanySales,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate ,PdaId  from DealerCompanyMapping where ServerUpdatedStatus =\'false\' LIMIT 1000"

    return-object v0
.end method

.method public getDealerCompanyDataQry()Ljava/lang/String;
    .locals 1

    .line 1932
    const-string v0, "select dcm.MappingId, dcm.ContactId, dcm.CompanyId, dcm.CompanyName,dcm.CompanySales,dcm.CreatedBy,dcm.CreatedDate,dcm.UpdatedBy,dcm.UpdatedDate ,dcm.PdaId,dcm.status  from DealerCompanyMapping as dcm  where dcm.serverUpdatedStatus=\'false\'"

    return-object v0
.end method

.method public getDealerCropCountQry()Ljava/lang/String;
    .locals 1

    .line 1825
    const-string v0, "SELECT COUNT(0) FROM DealerCropMapping WHERE serverUpdatedStatus=\'false\'"

    return-object v0
.end method

.method public getDealerCropDataByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 1944
    const-string v0, "select dcm.MappingId,dcm.ContactId,dcm.CropId,dcm.CropName,dcm.CropSales,dcm.CreatedBy,dcm.CreatedDate,dcm.UpdatedBy,dcm.UpdatedDate from DealerCropMapping dcm where dcm.serverupdatedstatus = \'false\' LIMIT 1000"

    return-object v0
.end method

.method public getDealerCrops(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT CropMaster.cropId,CropMaster.cropName ,DealerCropMapping.CropSales,DealerCropMapping.MappingId,DealerCropMapping.ContactID FROM DealerCropMapping inner join CropMaster  on DealerCropMapping.cropId = CropMaster.cropId where DealerCropMapping.contactId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'  ORDER BY CropMaster.cropName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDealerDetailsSecondTab()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->dealerDetailsSecondTab:Ljava/lang/String;

    return-object v0
.end method

.method public getDealerHybrids(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT BrandMaster.BrandID,DealerCropMapping.cropName ,DealerCropMapping.CropSales,DealerCropMapping.MappingId,DealerCropMapping.ContactID FROM DealerCropMapping inner join BrandMaster  on DealerCropMapping.cropId = BrandMaster.BrandID where DealerCropMapping.contactId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'  ORDER BY BrandMaster.BrandName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDealerMasterDataByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 1936
    const-string v0, "select ContactId ,CustomerId ,RetailerCode ,ContactCode ,CustomerTypeID ,RetailerShopName ,ShopLicenceNo ,MarketName ,ContactName ,ProprietorName ,SurName ,MobileNumber ,AlternateContact ,BusinessPhone ,pType ,Longitude ,Latitude , isNew ,CompanyId ,PDAId , ZoneId , RegionId , TerritoryId , StateId , DistrictId , MandalId ,VillageId ,ZoneName ,RegionName ,TerritoryName ,StateName ,DistrictName ,MandalName ,VillageName ,VATNo ,PANNo , BankId ,BankLocation ,BankAddress ,AccountNumber ,MICRNumber ,KYCNumber,IFSCCode ,AnnualTotalTOValue , CompanyTotalTOValue , SeedsTOValue , PesticideTOValue ,FertilizerTOValue ,CashPercent ,CropWiseRetail ,IsOwnedShop , DateofBirth ,NewMarket ,Distributor1Id ,Distributor2Id ,Distributor3Id ,Distributor4Id ,CustomerType ,ContactsCopyLineId ,Email ,FAX ,Address ,Address1 ,Landmark ,Place ,PINCode ,Remarks , IsSMSPinRecieved, URId ,PINNumber , IsActive,  ServerUpdatedStatus ,  ServiceStatus ,  SyncStatus ,  RetailerStatus ,  SourceCreatedby , TransactionDate ,  CreatedBy , CreatedDate ,  UpdatedBy , UpdatedDate ,Column1 ,Column2 ,Column3 ,Column4 ,Column5 ,Column6 ,Column7,Column8 ,Column9 ,Column10,Column11 ,Column12 ,Column13 ,Column14 ,Column15 , StatusReason,Column16,Column17,Column18,Column19,Column39,Column40,Column41,Gender from DealerMaster where ServerUpdatedStatus=\'false\' LIMIT 1000"

    return-object v0
.end method

.method public getDealerMasterDataQry()Ljava/lang/String;
    .locals 1

    .line 1928
    const-string v0, "select ContactId ,CustomerId ,RetailerCode ,ContactCode ,CustomerTypeID ,RetailerShopName ,ShopLicenceNo ,MarketName ,ContactName ,ProprietorName ,SurName ,MobileNumber ,AlternateContact ,BusinessPhone ,pType ,Longitude ,Latitude , isNew ,CompanyId ,PDAId , ZoneId , RegionId , TerritoryId , StateId , DistrictId , MandalId ,VillageId ,ZoneName ,RegionName ,TerritoryName ,StateName ,DistrictName ,MandalName ,VillageName ,VATNo ,PANNo , BankId ,BankLocation ,BankAddress ,AccountNumber ,MICRNumber ,KYCNumber,IFSCCode ,AnnualTotalTOValue , CompanyTotalTOValue , SeedsTOValue , PesticideTOValue ,FertilizerTOValue ,CashPercent ,CropWiseRetail ,IsOwnedShop , DateofBirth ,NewMarket ,Distributor1Id ,Distributor2Id ,Distributor3Id ,Distributor4Id ,CustomerType ,ContactsCopyLineId ,Email ,FAX ,Address ,Address1 ,Landmark ,Place ,PINCode ,Remarks , IsSMSPinRecieved, URId ,PINNumber , IsActive,  ServerUpdatedStatus ,  ServiceStatus ,  SyncStatus ,  RetailerStatus ,  SourceCreatedby , TransactionDate ,  CreatedBy , CreatedDate ,  UpdatedBy , UpdatedDate ,Column1 ,Column2 ,Column3 ,Column4 ,Column5 ,Column6 ,Column7,Column8 ,Column9 ,Column10,Column11 ,Column12 ,Column13 ,Column14 ,Column15 , StatusReason,Column16,Column17,Column18,Column19,Column39,Column40,Column41,Gender from DealerMaster where ServerUpdatedStatus=\'false\'"

    return-object v0
.end method

.method public getDealerMasterDetailsCountQry()Ljava/lang/String;
    .locals 1

    .line 1845
    const-string v0, "SELECT COUNT(0) FROM DealerMaster  WHERE serverupdatedstatus=\'false\'"

    return-object v0
.end method

.method public getDebugLogSyncStatus()Ljava/lang/String;
    .locals 1

    .line 2202
    const-string v0, "select itemValue FROM ConfigurablelookupMaster where ItemType = \'SyncDebugLog\'"

    return-object v0
.end method

.method public getDebugTraceErrorLogsCountQry()Ljava/lang/String;
    .locals 1

    .line 2190
    const-string v0, "SELECT COUNT(0) FROM Logger"

    return-object v0
.end method

.method public getDelForSADraftsImages(J)Ljava/lang/String;
    .locals 2

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete FROM ActivityImageDetails where ReferenceID =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeleteAssignmentVisitDetails()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteAssignmentVisitDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " where "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IN ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeleteDraftQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delete from pmcAssignmentActivityDetails WHERE  (strftime(\'%s\',\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') >strftime(\'%s\', updatedDate)) and isActive=1 and isTransactionDone in(2)  and TransId is not 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeleteDraftQueryCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select count(distinct TransId) from pmcAssignmentActivityDetails WHERE  (strftime(\'%s\',\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') >strftime(\'%s\', updatedDate)) and isActive=1 and isTransactionDone in(2)  and TransId is not 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeleteFarmerActDetails()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteFarmerActDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteFarmerCropMapping()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteFarmerCropMapping:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteFarmerDetails()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteFarmerDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteFarmerLastvisitDetails()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteFarmerLastvisitDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteImageActDetails(J)Ljava/lang/String;
    .locals 2

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete from ActivityImageDetails where ImageId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeleteLogQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delete from Logger WHERE  (strftime(\'%s\',\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') >strftime(\'%s\', logtime)) "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeleteLogTime()Ljava/lang/String;
    .locals 1

    .line 2198
    const-string v0, "select itemValue FROM ConfigurablelookupMaster where ItemType = \'DeleteDebugLogDuration\'"

    return-object v0
.end method

.method public getDeleteSyncDetailsRows(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2394
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Delete from FoTrackerDetails where DetailsId= ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") and IsProcessed=\'1\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeleteSyncErrorLog()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteSyncErrorLog:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteUserDetails()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deleteUserDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getDeletelog4net()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->deletelog4net:Ljava/lang/String;

    return-object v0
.end method

.method public getDeletionQueryForSelfAssignmentDrafts1(J)Ljava/lang/String;
    .locals 2

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete FROM pmcAssignmentVisit where TransactionId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeletionQueryForSelfAssignmentDrafts2(J)Ljava/lang/String;
    .locals 2

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete FROM pmcassignmentactivitydetails where TransId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDistrictlist(I)Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select districtid,districtname from districts where stateid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' order by districtname"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDosFromCrop(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select dos from FarmerCropDetails where RespondentNo =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and  CropID =\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'  limit 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDraftActivities()Ljava/lang/String;
    .locals 1

    .line 2021
    const-string v0, "select  COUNT(distinct activityassignmentid) FROM  pmcAssignmentActivityDetails where isplanned = 1 and isTransactionDone in(2) and isActive=1"

    return-object v0
.end method

.method public getDraftDealers(I)Ljava/lang/String;
    .locals 2

    .line 2013
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select count(0) from DealerMaster where CustomerTypeID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and StatusReason=\'0\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDraftFarmersToSend(I)Ljava/lang/String;
    .locals 2

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select count(0) from FarmerMaster where TypeofFarmer=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' and Status==\'0\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDraftSelfActivities()Ljava/lang/String;
    .locals 1

    .line 2025
    const-string v0, "select  COUNT(distinct Transid) FROM  pmcAssignmentActivityDetails where isplanned = 0 and isTransactionDone in(2) and isActive=1 and TransId !=0"

    return-object v0
.end method

.method public getDropdownValuesLookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT configid,itemKey FROM ConfigurableLookupMaster where ItemType=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEcexutionSegmentIdDraftQuery(IJ)Ljava/lang/String;
    .locals 2

    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select distinct ActivityExecutionSegmentId from pmcAssignmentActivityDetails where ActivityAssignmentId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and TransId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEcexutionSegmentValueDraftQuery(IJ)Ljava/lang/String;
    .locals 2

    .line 2230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select distinct ActivityExecutionSegmentValue from pmcAssignmentActivityDetails where ActivityAssignmentId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and TransId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEnableCropHybrids()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->enableCropHybrids:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorLoggerDetailsQuery()Ljava/lang/String;
    .locals 1

    .line 2435
    const-string v0, "select * FROM ErrorLogger WHERE ServerStatus = 0"

    return-object v0
.end method

.method public getFONames()Ljava/lang/String;
    .locals 1

    .line 1052
    const-string v0, "select distinct foid,foname from pmcStatusDetails"

    return-object v0
.end method

.method public getFarmerActivityDetailsByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 1885
    const-string v0, "SELECT pfad.detailsID,pfad.farmerId,pfad.activityId,pfad.attributeId,pfad.attributeValue,pfad.createdBy,pfad.createddate,pfad.updatedBy,pfad.updatedDate,pfad.isPlanned,pfad.assignmentID,pfad.pdaId,pfad.isDone,pfad.notdoneRemark FROM pmcFarmerActivityDetails AS pfad  inner join pmcfarmerDetails on pfad.farmerId = pmcfarmerDetails.farmerid WHERE pmcfarmerDetails.isVisited =\'true\' AND pfad.serverUpdatedStatus=\'false\'  LIMIT 1000"

    return-object v0
.end method

.method public getFarmerBasedOnMarketFoId(III)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 1265
    const-string v1, " GROUP BY   pf.farmerId, pf.farmerName  order by pf.farmerName"

    if-ne p3, v0, :cond_0

    .line 1266
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,count(distinct  recordflag) AS recordFlag,MIN(pf.recordFlag) AS recordFlag1  FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where  pf.ApprovalStatus=0 and pf.recordFlag in (1,2,3) and   pf.MarketId="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1272
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,count(distinct  recordflag)  AS recordFlag,MIN(pf.recordFlag) AS recordFlag1  FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where  pf.ApprovalStatus=0 and pf.recordFlag in (1,2,3)  and  pf.foid="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1278
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,count(distinct  recordflag)  AS recordFlag,MIN(pf.recordFlag) AS recordFlag1  FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where pf.ApprovalStatus=0 and pf.recordFlag in (1,2,3)  and (pf.MarketId="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and pf.foid="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") GROUP BY   pf.farmerId, pf.farmerName  order by pf.farmerName"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFarmerCountForFOapproval(III)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 1295
    const-string v1, ""

    if-ne p3, v0, :cond_0

    .line 1296
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SELECT count(distinct farmerid )  FROM pmcSVFarmerDetails where ApprovalStatus=0 and recordFlag in (1,2,3)  and MarketId="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1298
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "SELECT count(distinct farmerid )  FROM pmcSVFarmerDetails where ApprovalStatus=0 and recordFlag in (1,2,3)  and foid="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 1300
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "SELECT count(distinct farmerid )  FROM pmcSVFarmerDetails where ApprovalStatus=0 and recordFlag in (1,2,3) and (MarketId="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and  foid="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1303
    :cond_2
    const-string p1, "SELECT count(distinct farmerid )  FROM pmcSVFarmerDetails where ApprovalStatus=0 and recordFlag in (1,2,3)"

    return-object p1
.end method

.method public getFarmerCropMappingByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 1891
    const-string v0, "SELECT pfcm.DetailsID,pfcm. FarmerID,pfcm.CropID ,pfcm.Acreages,pfcm.CreatedBy,pfcm.CreatedDate,pfcm.UpdatedBy,pfcm.UpdatedDate,pfcm.pdaid,pfcm.dos,pfcm.productId,pfcm.IsMainCrop,pfcm.Spraypattern,pfcm.LandType,pfcm.RespondentNo  from FarmerCropDetails as pfcm where pfcm.serverUpdatedStatus=\'false\' LIMIT 1000"

    return-object v0
.end method

.method public getFarmerCropMappingCountQry()Ljava/lang/String;
    .locals 1

    .line 1821
    const-string v0, "SELECT COUNT(0) FROM FarmerCropDetails WHERE serverUpdatedStatus=\'false\'"

    return-object v0
.end method

.method public getFarmerListDetailsByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 1895
    const-string v0, "select farmerId,mobile,landline,coNumber,acreagesOwned,leasedIn,leasedOut,cultivated,visitDescription,createdBy,createddate,updatedBy,updatedDate,pdaId,retailerId,totalLandHolding, latitude, longitude,landMark,isActive,Field1 FROM  pmcFarmerDetails where serverUpdatedStatus=\'false\' and isVisited=\'true\' LIMIT 1000"

    return-object v0
.end method

.method public getFarmerListDetailsCountQry()Ljava/lang/String;
    .locals 1

    .line 1833
    const-string v0, "SELECT COUNT(0) FROM pmcFarmerDetails WHERE serverUpdatedStatus=\'false\'"

    return-object v0
.end method

.method public getFarmerMasterDataByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 1924
    const-string v0, "select FarmerID ,RespondentNo ,UniqueId, FarmerName ,CONumber ,SWDName ,PINCODE ,LandMark ,Email ,Education ,AnnualHouseholdIncome,FamilyMembersCount,StateID ,StateName ,DistrictID ,DistrictName ,Surname,FarmerSegmentation ,ZoneID  ,RegionID,TerritoryId, AgeGroupId ,Gender,Landline ,Mobile ,MandalID ,MandalName ,LeasedInAcreages,LeasedOutAcreages,TotalAcreage,TotalCultivated,FarmersInfluencedCount ,BrandedCPusage,Segment,TotalAcreageInfluencedByFarmer,PreferredRetailerID,LastVisistedDate,ServerStatus,IsActive,CreatedBy ,CreatedDate ,UpdatedBy ,UpdatedDate,VillageName ,VisitDescription ,TotalLandHolding ,Latitude ,Longitude ,TerritoryName ,Address1 ,Address2 ,Field1 ,Field2,Field3 ,Field4 ,FatherName ,PP ,ProgressiveScore ,LeasedInLandAreaInLocalUnits ,LeasedOutLandAreaInLocalUnits ,OwnedLandCultivatedInLocalUnits ,LandMeasureUnitLeasedInLand ,LandMeasureUnitLeasedOutLand ,LandMeasureUnitOwnedLandCultivated ,TotalLandCultivatedInLocalUnits ,MarketId ,SocialStatus ,Irrigatedland ,Rainfedland ,PreferredRetailerID2 ,isNew  ,isCompleted ,pdaid,Status,FarmerTypeId,TypeofFarmer,VillageId,serverupdatedstatus,age FROM farmermaster WHERE serverupdatedstatus = \'false\'   LIMIT 1000"

    return-object v0
.end method

.method public getFarmerMasterDataQry()Ljava/lang/String;
    .locals 1

    .line 1919
    const-string v0, "select FarmerID ,RespondentNo ,UniqueId, FarmerName ,CONumber ,SWDName ,PINCODE ,LandMark ,Email ,Education ,AnnualHouseholdIncome,FamilyMembersCount,StateID ,StateName ,DistrictID ,DistrictName ,Surname,FarmerSegmentation ,ZoneID  ,RegionID,TerritoryId, AgeGroupId ,Gender,Landline ,Mobile ,MandalID ,MandalName ,LeasedInAcreages,LeasedOutAcreages,TotalAcreage,TotalCultivated,FarmersInfluencedCount ,BrandedCPusage,Segment,TotalAcreageInfluencedByFarmer,PreferredRetailerID,LastVisistedDate,ServerStatus,IsActive,CreatedBy ,CreatedDate ,UpdatedBy ,UpdatedDate,VillageName ,VisitDescription ,TotalLandHolding ,Latitude ,Longitude ,TerritoryName ,Address1 ,Address2 ,Field1 ,Field2,Field3 ,Field4 ,FatherName ,PP ,ProgressiveScore ,LeasedInLandAreaInLocalUnits ,LeasedOutLandAreaInLocalUnits ,OwnedLandCultivatedInLocalUnits ,LandMeasureUnitLeasedInLand ,LandMeasureUnitLeasedOutLand ,LandMeasureUnitOwnedLandCultivated ,TotalLandCultivatedInLocalUnits ,MarketId ,SocialStatus ,Irrigatedland ,Rainfedland ,PreferredRetailerID2 ,isNew  ,isCompleted ,pdaid,Status,FarmerTypeId,TypeofFarmer,VillageId,serverupdatedstatus,age FROM farmermaster WHERE serverupdatedstatus = \'false\'"

    return-object v0
.end method

.method public getFarmerMasterDetailsCountQry()Ljava/lang/String;
    .locals 1

    .line 1841
    const-string v0, "SELECT COUNT(0) FROM FarmerMaster WHERE serverupdatedstatus=\'false\'"

    return-object v0
.end method

.method public getFarmerNamesListQuery(I)Ljava/lang/String;
    .locals 0

    .line 1502
    const-string p1, "select RespondentNo ,FarmerName ,FatherName ,VillageName,Latitude,Longitude  from FarmerMaster where TypeofFarmer = 1"

    return-object p1
.end method

.method public getFarmerTypes()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->farmerTypes:Ljava/lang/String;

    return-object v0
.end method

.method public getFarmernamesListFilterQuery()Ljava/lang/String;
    .locals 1

    .line 1510
    const-string v0, "select RespondentNo ,FarmerName ,FatherName ,VillageName  from FarmerMaster where "

    return-object v0
.end method

.method public getFarmerpendingcount(I)Ljava/lang/String;
    .locals 2

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select sum(farmerpendingcount) from pmcStatusDetails where foid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFarmersDatafromFarmersList(II)Ljava/lang/String;
    .locals 1

    .line 641
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SELECT pf.farmerId, pf.farmerName, pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.ismba FROM pmcFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcFarmerActivityDetails AS acd ON acd.farmerid=pf.farmerid AND acd.isPlanned=1 where pf.isVisited =\'false\' and pf.villageId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and  pf.ismba=0 and  ifnull(length(isActive ), 0) = 0 and  (Field1 !=\'0\'OR ifnull(length(Field1), 0) = 0) GROUP BY  pf.farmerId, pf.farmerName, pf.mobile order by pf.farmerName"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFilterData()Ljava/lang/String;
    .locals 1

    .line 1988
    const-string v0, "select * from FilterData"

    return-object v0
.end method

.method public getFoDetailsCountQry()Ljava/lang/String;
    .locals 1

    .line 2422
    const-string v0, "SELECT COUNT(0) FROM FoTrackerDetails WHERE SyncStatus =0"

    return-object v0
.end method

.method public getFoDetailsQry()Ljava/lang/String;
    .locals 1

    .line 2410
    const-string v0, "select DetailsId,TrackId,Latitude,Longitude,PdaId,SyncStatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,StartDate FROM FoTrackerDetails WHERE SyncStatus=0 "

    return-object v0
.end method

.method public getFoHeaderCountQry()Ljava/lang/String;
    .locals 1

    .line 2418
    const-string v0, "SELECT COUNT(0) FROM FoTrackerHeader WHERE SyncStatus =0"

    return-object v0
.end method

.method public getFoTrackerCountQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select strftime(\'%m/%d/%Y\', CreatedDate) as FormattedDate from FoTrackerDetails where FormattedDate = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFoTrackerDetailsByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 2402
    const-string v0, "select DetailsId,TrackId,Latitude,Longitude,PdaId,SyncStatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate FROM FoTrackerDetails WHERE IsProcessed=\'false\' LIMIT 1000"

    return-object v0
.end method

.method public getFoTrackerHeaderByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 2414
    const-string v0, "select TrackId,UserId,PdaId,StartDate,EndDate,Remarks,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate FROM FoTrackerHeader WHERE IsProcessed=\'false\' LIMIT 1000"

    return-object v0
.end method

.method public getFoTrackerHeaderQry()Ljava/lang/String;
    .locals 1

    .line 2406
    const-string v0, "select TrackId,UserId,PdaId,StartDate,EndDate,Remarks,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,FoDistance,ActualEndDate,ReasonType FROM FoTrackerHeader WHERE SyncStatus=0 "

    return-object v0
.end method

.method public getGeoDetailsCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select DisplayName,isMandatory from fxCustomerRegistrationConfiguration where TableName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and Module=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGetAllActivityTODOData()Ljava/lang/String;
    .locals 1

    .line 314
    const-string v0, "select activitymasterid,ActivityMasterId, (SELECT  COUNT(distinct AssignmentId) FROM pmcassignmentactivitydetails as ppd inner join activitymaster am on am.ActivityMasterId =ppd.ActivityMasterId and (am.isActive = 1 OR am.isActive = \'true\') and ppd.isActive=1  where isplanned = 1 and istransactiondone in(0,2)  and ppd.activitymasterid= pad .activitymasterid   ) AS tbv, 0 as vc,(SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd where isplanned = 1 and istransactiondone = 1 and serverUpdatedStatus = \'false\'  and ppd.activitymasterid= pad .activitymasterid ) as pd FROM pmcassignmentactivitydetails as pad where isplanned = 1 and UPPER(location1) <> \'\' and  pad.isActive=1 and (tbv>0 OR pd>0) GROUP BY activitymasterid"

    return-object v0
.end method

.method public getGetAllVillagesData()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getAllVillagesData:Ljava/lang/String;

    return-object v0
.end method

.method public getGetAllVillagesDataBySegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select UPPER(location1) as location1,UPPER(location2) as location2, (SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd inner join activitymaster am on am.ActivityMasterId =ppd.ActivityMasterId and (am.isActive = 1 OR am.isActive = \'true\') where isplanned = 1 and istransactiondone in(0,2)  and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2 and ppd.isActive=1  ) AS tbv, 0 as vc,(SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd where isplanned = 1 and istransactiondone = 1 and serverUpdatedStatus = \'false\' and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2  ) as pd FROM pmcassignmentactivitydetails as pad where isplanned = 1 and UPPER(location1) <> \'\' and  pad.isActive=1 and (tbv>0 OR pd>0) and ActivitySegmentId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " GROUP BY  UPPER(location1) ,UPPER(location2)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGetConsinment()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getConsinment:Ljava/lang/String;

    return-object v0
.end method

.method public getGetCountofFarmerActivityDetails()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofFarmerActivityDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getGetCountofPMCDataQuery()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofPMCDataQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getGetCountofPMCFarmerCropping()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofPMCFarmerCropping:Ljava/lang/String;

    return-object v0
.end method

.method public getGetCountofPMCFarmerDetails()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofPMCFarmerDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getGetCountofPMCImages()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofPMCImages:Ljava/lang/String;

    return-object v0
.end method

.method public getGetGPSAvailable()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getGPSAvailable:Ljava/lang/String;

    return-object v0
.end method

.method public getGetMasterversionRecords()Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getMasterversionRecords:Ljava/lang/String;

    return-object v0
.end method

.method public getGetPasswordFromUserDetails()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getPasswordFromUserDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getGetQueryOfvillageDisplay()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getQueryOfvillageDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getGetShowVillagesCount()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getShowVillagesCount:Ljava/lang/String;

    return-object v0
.end method

.method public getGetUSerDetailsCount()Ljava/lang/String;
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getUSerDetailsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getGetVillageDataDetails()Ljava/lang/String;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getVillageDataDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getGetVillageDisplayData()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getVillageDisplayData:Ljava/lang/String;

    return-object v0
.end method

.method public getGetcountofSyncErrorLog()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getcountofSyncErrorLog:Ljava/lang/String;

    return-object v0
.end method

.method public getGetcountoflog4net()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getcountoflog4net:Ljava/lang/String;

    return-object v0
.end method

.method public getGetfarmerApprovalCount()Ljava/lang/String;
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getfarmerApprovalCount:Ljava/lang/String;

    return-object v0
.end method

.method public getHybridNames()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->hybridNames:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDetailQuery(III)Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT pfad.ImageId,pfad.AssignmentId,pfad.ActivityId,pfad.AttributeId,pfad.SubJect,pfad.Comments,pfad.Remarks,pfad.PicturePath,pfad.CreatedBy,pfad.CreatedDate,pfad.UpdatedBy,pfad.UpdatedDate,pfad.pdaId,pfad.FarmerId,pfad.ServerStatus,pfad.ReferenceType,pfad.ReferenceID,pfad.EventTypeId FROM ActivityImageDetails AS pfad  where pfad.ServerStatus=0 and pfad.AssignmentId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and pfad.ActivityId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and pfad.AttributeId= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT pfad.ImageId,pfad.AssignmentId,pfad.ActivityId,pfad.AttributeId,pfad.SubJect,pfad.Comments,pfad.Remarks,pfad.PicturePath,pfad.CreatedBy,pfad.CreatedDate,pfad.UpdatedBy,pfad.UpdatedDate,pfad.pdaId,pfad.ReferenceType,pfad.ReferenceID,pfad.EventTypeId FROM ActivityImageDetails AS pfad  where pfad.imageId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImageDetails()Ljava/lang/String;
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectImageActDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDetailsQry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1862
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT  ImageId, AssignmentId, ActivityId, AttributeId, SubJect, Comments, Remarks, PicturePath, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, PDAID, ReferenceType,ReferenceID,EventTypeId FROM ActivityImageDetails   where  ServerStatus=\'false\' AND ImageId = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImageDetailsQryForSync()Ljava/lang/String;
    .locals 1

    .line 1867
    const-string v0, "SELECT  ImageId, AssignmentId, ActivityId, AttributeId, SubJect, Comments, Remarks, PicturePath, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, PDAID, ReferenceType,ReferenceID,EventTypeId FROM ActivityImageDetails   where  ServerStatus=\'false\' "

    return-object v0
.end method

.method public getImageDetailsQry_Assignment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT  ImageId, AssignmentId, ActivityId, AttributeId, SubJect, Comments, Remarks, PicturePath, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, PDAID, ReferenceType,ReferenceID,EventTypeId FROM ActivityImageDetails   where  ServerStatus=\'0\' and ReferenceID = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImageDetailsQry_IDS()Ljava/lang/String;
    .locals 1

    .line 1872
    const-string v0, "SELECT ImageId FROM ActivityImageDetails  where  ServerStatus=\'false\' "

    return-object v0
.end method

.method public getImageIsMandatory(I)Ljava/lang/String;
    .locals 2

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select isPicturesRequired from ActivityMaster where ActivityMasterId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImageReffType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2034
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT ItemValue FROM ConfigurablelookupMaster where ItemKey =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and ItemType =\'ImageReferenceType\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInWhichTab(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT Tabs FROM fxCustomerRegistrationConfiguration where Module=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and DisplayName=\'GeoDetails\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIsAssignmentInDb(I)Ljava/lang/String;
    .locals 2

    .line 2291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM pmcAssignmentActivityDetails where activityassignmentid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIsLatLongMandatory(I)Ljava/lang/String;
    .locals 2

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select isLatLongRequired from ActivityMaster where ActivityMasterId  = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIssecurity()Ljava/lang/String;
    .locals 1

    .line 2370
    const-string v0, "select Itemvalue from ConfigurablelookupMaster where ItemKey =\'IsSecurityRequired\'"

    return-object v0
.end method

.method public getItemValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select itemValue from ConfigurablelookupMaster where itemKey =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLandLineItemValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT itemValue FROM ConfigurableLookup where itemType=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and itemKey=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastData()Ljava/lang/String;
    .locals 1

    .line 2384
    const-string v0, "SELECT * FROM FoTrackerDetails ORDER BY DetailsId DESC LIMIT 1"

    return-object v0
.end method

.method public getLastLatLogTime()Ljava/lang/String;
    .locals 1

    .line 2379
    const-string v0, "SELECT CreatedDate FROM FoTrackerDetails where DetailsId = (select max(DetailsId) from FoTrackerDetails)"

    return-object v0
.end method

.method public getLastVisitDeletQry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delete FROM pmcLastVisitDetails where ActivitySegmentvalue =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastvistFarmerData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT  attributevalue,activityname,activitysegmentid,activitysegmentvalue,attributeid,attributename,lastvisitdate ,location1,location2,person1,person2,visitdescription,previousActivityAssignmentId,ActivityAssignmentId,FOName FROM pmcLastVisitDetails where activitysegmentvalue =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and ActivityAssignmentId = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' order by lastvisitdate"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastvistFarmerInPacData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT  attributevalue,activityname,activitysegmentid,activitysegmentvalue,attributeid,attributename,lastvisitdate ,location1,location2,person1,person2,visitdescription FROM LastVisitActivityAttributes where ActivityAssignmentId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' order by lastvisitdate"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLengthCultivated()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthCultivated:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthLeasedIn()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthLeasedIn:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthLeasedOut()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthLeasedOut:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthMobileNumber()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthOwned()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthOwned:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthUserMobile()Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthUserMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthUserName()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthUserPin()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthUserPin:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthVisitDesc()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->lengthVisitDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getListOfAttributes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select attributeid from attributemapping where activityId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getListOfAttributesUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select AttributeId from ActivityAttributeMappingMaster where ActivityMasterId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and AttributeKeyMappingId is \'\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getListOfAttributesUpdated(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select AttributeId from ActivityAttributeMappingMaster where ActivityMasterId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLog4NetDataByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 1911
    const-string v0, "select date,thread,level,logger,message,exception,userId,exceptionAt  FROM log4net  where serverUpdateStatus=\'false\' LIMIT 1000"

    return-object v0
.end method

.method public getLog4netCountQry()Ljava/lang/String;
    .locals 1

    .line 1857
    const-string v0, "SELECT COUNT(0) FROM log4net  where serverUpdateStatus=\'false\'"

    return-object v0
.end method

.method public getLoginTimeStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM ConfigurableLookup where itemKey = \'loginTime\' and (strftime(\'%s\',\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') <strftime(\'%s\', itemValue)) and itemValue IS NOT NULL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMBAAssignmentsData()Ljava/lang/String;
    .locals 1

    .line 672
    const-string v0, "select assignmentID from pmcFarmerActivityDetails inner join pmcFarmerDetails on pmcFarmerDetails.farmerId=pmcFarmerActivityDetails.farmerId where pmcFarmerDetails.ismba=1"

    return-object v0
.end method

.method public getMarketNamesListQuery(I)Ljava/lang/String;
    .locals 0

    .line 1526
    const-string p1, "select ContactId,ContactName,RetailerShopName,MarketName,Latitude,Longitude from DealerMaster where CustomerTypeID = 3"

    return-object p1
.end method

.method public getMobileQuery()Ljava/lang/String;
    .locals 1

    .line 2333
    const-string v0, "SELECT mobile as name FROM pmcUserDetails limit 1"

    return-object v0
.end method

.method public getNotificationStatus()Ljava/lang/String;
    .locals 1

    .line 2305
    const-string v0, "select NotificationStatus from pmcUserDetails "

    return-object v0
.end method

.method public getNotifyAssignmentInDb(I)Ljava/lang/String;
    .locals 2

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT distinct am.ActivityMasterName,packagename,activityassignmentid,asm.activitysegmentName FROM pmcAssignmentActivityDetails pad\nInner join  Activitysegmentmaster asm on asm.ActivitySegmentId = pad.ActivitySegmentId \nInner Join ActivityMaster am on am.Activitymasterid = pad.activitymasterid where activityassignmentid =  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPMCActivityAttributeQuery(II)Ljava/lang/String;
    .locals 2

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select am.attributeid,am.DisplayNameMobile,am.controltype,fad.attributevalue,aam.isMandatory, fad.detailsID,fad.sequenceId from AttributeMaster as am INNER JOIN AttributeMapping as aam ON am.attributeid=aam.attributeid  AND aam.activityid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " LEFT JOIN pmcFarmerActivityDetails as fad ON aam.activityid=fad.activityid AND am.attributeid=fad.attributeid and   fad.activityid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and fad.farmerid=\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' WHERE (aam.isActive =1 OR aam.isActive =\'True\') and am.parentId=0 GROUP BY am.attributeid ORDER BY am.attributeid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;
    .locals 2

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select am.AttributeId,am.DisplayNameMobile,am.ControlType,fad.attributevalue,aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.FilterAttributeId1 ,aam.FilterAttributeId2 ,aam.FilterAttributeId3  from AttributeMaster as am INNER JOIN ActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId AND aam.ActivityMasterId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " LEFT JOIN pmcAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId and   fad.ActivityMasterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and fad.ActivitySegmentValue= \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and fad.activityAssignmentId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and fad.transId ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " and (fad.isActive =1 OR fad.isActive =\'True\') WHERE (aam.isActive =1 OR aam.isActive =\'True\') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") and aam.AttributeKeyMappingId is \'\'  GROUP BY am.AttributeId ORDER BY aam.controlsequence"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPMCActivityKeyAttributes(III)Ljava/lang/String;
    .locals 2

    .line 2040
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select am.AttributeId,am.DisplayNameMobile,am.ControlType,COALESCE(\'\',fad.attributevalue),aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute from AttributeMaster as am  INNER JOIN ActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId  inner join ActivityKeyAttributesMaster as ak on ak.AttributeKeyMappingId = aam.AttributeKeyMappingId and ak.ActivityMasterId = aam.ActivityMasterId LEFT JOIN pmcAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId     and (fad.isActive =1 OR fad.isActive =\'True\') where ak.ActivityMasterId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and ak.KeyAttributeId ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and ak.KeyAttributeValue ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and (aam.isActive =1 OR aam.isActive =\'True\') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") GROUP BY am.AttributeId ORDER BY aam.controlsequence"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPMCActivityKeyAttributes_All(III)Ljava/lang/String;
    .locals 2

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select am.AttributeId,am.DisplayNameMobile,am.ControlType,COALESCE(\'\',fad.attributevalue),aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute from AttributeMaster as am  INNER JOIN ActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId  inner join ActivityKeyAttributesMaster as ak on  ak.ActivityMasterId = aam.ActivityMasterId LEFT JOIN pmcAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId     and (fad.isActive =1 OR fad.isActive =\'True\') where ak.ActivityMasterId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and ak.KeyAttributeId ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and ak.KeyAttributeValue ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and (aam.isActive =1 OR aam.isActive =\'True\') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") and (ak.AttributeKeyMappingId = aam.AttributeKeyMappingId OR aam.AttributeKeyMappingId is \'\') GROUP BY am.AttributeId ORDER BY aam.controlsequence"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPMCAssignedActivitiesQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select  DISTINCT ActivityMaster.ActivityMasterId,ActivityMaster.ActivityMasterName,pmcAssignmentActivityDetails.isPlanned,pmcAssignmentActivityDetails.isDone from ActivityMaster INNER  JOIN pmcAssignmentActivityDetails ON ActivityMaster.ActivityMasterId=pmcAssignmentActivityDetails.ActivityMasterId AND pmcAssignmentActivityDetails.ActivitySegmentValue=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' order by isPlanned desc,ActivityMaster.ActivityMasterId asc"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPMCNotAssignedActivitiesQuery(II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 816
    const-string v1, "\' ) and ActivitiyMaster.activityid not in (select itemvalue from ConfigurableLookup where itemkey=\'fieldday\') ORDER BY ActivitiyMaster.activityName "

    if-ne p2, v0, :cond_0

    .line 817
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "select  DISTINCT ActivitiyMaster.activityid,ActivitiyMaster.activityName from ActivitiyMaster Inner Join ActivityAssignmentTypeMapping on ActivitiyMaster.activityID= ActivityAssignmentTypeMapping.ActivityId Inner Join ConfigurableLookup on ConfigurableLookup.itemValue = ActivityAssignmentTypeMapping .AssignmentTypeId where ConfigurableLookup.itemKey = \'VBAWithoutFarmer\' and ActivitiyMaster.activityid not in(Select  activityid  from pmcFarmerActivityDetails where farmerid=\'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 824
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "select  DISTINCT ActivitiyMaster.activityid,ActivitiyMaster.activityName from ActivitiyMaster Inner Join ActivityAssignmentTypeMapping on ActivitiyMaster.activityID= ActivityAssignmentTypeMapping.ActivityId Inner Join ConfigurableLookup on ConfigurableLookup.itemValue = ActivityAssignmentTypeMapping .AssignmentTypeId where ConfigurableLookup.itemKey = \'FBAActivities\' and ActivitiyMaster.activityid not in(Select  activityid  from pmcFarmerActivityDetails where farmerid=\'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPasswordQuery()Ljava/lang/String;
    .locals 1

    .line 2329
    const-string v0, "SELECT password as name FROM pmcUserDetails limit 1"

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->pdaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingActivities()Ljava/lang/String;
    .locals 1

    .line 2017
    const-string v0, "select  COUNT(distinct activityassignmentid) FROM  pmcAssignmentActivityDetails where isplanned = 1 and isTransactionDone in(0) and isActive=1"

    return-object v0
.end method

.method public getPendingFarmersToSend(I)Ljava/lang/String;
    .locals 2

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select count(0) from FarmerMaster where TypeofFarmer=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' and serverupdatedstatus=\'false\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPendingPicturesCountQry()Ljava/lang/String;
    .locals 1

    .line 1853
    const-string v0, "SELECT COUNT(0) FROM ActivityImageDetails WHERE ServerStatus = \'false\'"

    return-object v0
.end method

.method public getPendingRetailersToSend(I)Ljava/lang/String;
    .locals 2

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select count(0) from DealerMaster where CustomerTypeID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' and serverupdatedstatus=\'false\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPictureId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select ImageId from ActivityImageDetails   where ReferenceID =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPictureIdCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select count(0) from ActivityImageDetails where ReferenceID  =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPlannedPendingActivities()Ljava/lang/String;
    .locals 1

    .line 2250
    const-string v0, "select  COUNT(distinct activityassignmentid) FROM  pmcAssignmentActivityDetails where isplanned = 1 and isTransactionDone in(0,2) and isActive=1"

    return-object v0
.end method

.method public getPlanterNamesListQuery(I)Ljava/lang/String;
    .locals 0

    .line 1514
    const-string p1, "select RespondentNo ,FarmerName ,FatherName ,VillageName,Latitude,Longitude  from FarmerMaster where TypeofFarmer = 8"

    return-object p1
.end method

.method public getPmcRetailers()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->pmcRetailers:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePicStatus()Ljava/lang/String;
    .locals 1

    .line 2170
    const-string v0, "select itemKey from ConfigurableLookup where isActive=\'false\' and itemKey=\'ProfileImage\'"

    return-object v0
.end method

.method public getQueryActivityType(I)Ljava/lang/String;
    .locals 2

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select GroupId from ActivityGroupMappingMaster where ActivityMasterId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and groupId = 5 and isActive = 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRemarkValues()Ljava/lang/String;
    .locals 1

    .line 2149
    const-string v0, "SELECT itemType,itemValue FROM ConfigurableLookupMaster where itemKey=\'DiscardRemarks\'"

    return-object v0
.end method

.method public getRespondenrNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT  RespondentNo   FROM FarmerMaster where FarmerID =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRetailerDashboardData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1618
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,ContactId  FROM  DealerMaster  where  isActive=\'True\' COLLATE NOCASE and StatusReason=\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1621
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, " and serverupdatedstatus =\'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " and CustomerTypeID=\'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' order by ContactId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRetailerNamesListQuery(I)Ljava/lang/String;
    .locals 0

    .line 1518
    const-string p1, "select ContactId,ContactName,RetailerShopName,MarketName,Latitude,Longitude from DealerMaster where CustomerTypeID = 2"

    return-object p1
.end method

.method public getRetailersInSAFilter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",ContactId,Latitude,Longitude  from DealerMaster where CustomerTypeID = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and  isActive=\'True\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRulesQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select ruleid,atrributeid,validationattributeid from rulesconfiguration where module = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and isActive =1 group by ruleid,validationattributeid,atrributeid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSeasonNames()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->seasonNames:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentData(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select distinct aln.ActivitySegmentId,aln.ActivitySegmentName,asm.RefrenceTableName,asm.PrimaryKeyColumn from ActivitySegmentMaster asm INNER JOIN ActivitySegmentMasterLn aln on aln.ActivitySegmentId = asm.ActivitySegmentId and aln.LanguangeId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  where asm.isActive=1 and asm.ActivitySegmentId!=5"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1661
    :cond_0
    const-string p1, "select distinct ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from ActivitySegmentMaster where isActive=1 and ActivitySegmentId!=5"

    return-object p1
.end method

.method public getSegmentDataByTypeId(I)Ljava/lang/String;
    .locals 0

    .line 1685
    const-string p1, "select ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from ActivitySegmentMaster where "

    return-object p1
.end method

.method public getSegmentDataComplaints()Ljava/lang/String;
    .locals 1

    .line 1672
    const-string v0, "select distinct ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from ActivitySegmentMaster where isActive=1 and ActivitySegmentId IN (1,2,3)"

    return-object v0
.end method

.method public getSegmentDataOrders()Ljava/lang/String;
    .locals 1

    .line 1667
    const-string v0, "select distinct ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from ActivitySegmentMaster where isActive=1 and ActivitySegmentId IN (2,3)"

    return-object v0
.end method

.method public getSegmentDataUserWise(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select asm.ActivitySegmentId,asm.ActivitySegmentName,asm.RefrenceTableName,asm.PrimaryKeyColumn from ActivitySegmentMaster as asm inner join ActivitySegmentMappingMaster as asmm on asmm.ActivitySegmentId =asm.ActivitySegmentId and asmm.ActivityMasterId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and asmm.isActive=1  where asm.isActive=1 and asm.ActivitySegmentId NOT IN (5,10)  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1680
    :cond_0
    const-string p1, "select ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from ActivitySegmentMaster where isActive=1 and ActivitySegmentId NOT IN (5,10)"

    return-object p1
.end method

.method public getSelectAssignmentActivityDetails()Ljava/lang/String;
    .locals 1

    .line 1953
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectAssignmentActivityDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectAssignmentActivityDetailsByOffSetQry()Ljava/lang/String;
    .locals 1

    .line 1969
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectAssignmentActivityDetailsByOffSetQry:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectAssignmentVisitDetails()Ljava/lang/String;
    .locals 1

    .line 1965
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectAssignmentVisitDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectFarmerActDetails()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectFarmerActDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectFarmerCropMapping()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectFarmerCropMapping:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectFarmerListDetails()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectFarmerListDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectFarmerRegistration()Ljava/lang/String;
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectFarmerRegistration:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectImageActDetails()Ljava/lang/String;
    .locals 1

    .line 2182
    const-string v0, "SELECT id,ClassName ,MethodName ,Params ,LogTime ,MethodResult ,ServerUpdatedStatus ,ExecutionTime from logger "

    return-object v0
.end method

.method public getSelectLog4NetData()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectLog4NetData:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectLoggerDetails_By1000()Ljava/lang/String;
    .locals 1

    .line 2186
    const-string v0, "SELECT id,ClassName ,MethodName ,Params ,LogTime ,MethodResult ,ServerUpdatedStatus ,ExecutionTime from logger LIMIT 200 "

    return-object v0
.end method

.method public getSelectSyncErrorLogData()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectSyncErrorLogData:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectdealerCropMapping()Ljava/lang/String;
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectdealerCropMapping:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedAttributeQuery(III)Ljava/lang/String;
    .locals 2

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select am.attributeid,am.DisplayNameMobile,am.controltype,COALESCE(\"\",fad.attributevalue),aam.isMandatory,COALESCE(\"\",fad.detailsID),COALESCE(\"\",fad.sequenceId) from AttributeMaster as am INNER JOIN AttributeMapping as aam ON am.attributeid=aam.attributeid and aam.activityid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " LEFT JOIN pmcFarmerActivityDetails as fad ON aam.attributeid=fad.attributeid and fad.farmerId = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " where parentId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " GROUP BY am.attributeid ORDER BY am.attributeid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedAttributeQueryUpdate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select am.AttributeId ,am.DisplayNameMobile,am.controltype,COALESCE(\"\",fad.attributevalue),aam.isMandatoryMobile,COALESCE(\"\",fad.detailsID),COALESCE(\"\",fad.PairId ),fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.FilterAttributeId1 ,aam.FilterAttributeId2 ,aam.FilterAttributeId3 from AttributeMaster as am INNER JOIN ActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId and aam.ActivityMasterId= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " LEFT JOIN pmcAssignmentActivityDetails  as fad ON aam.attributeid=fad.AttributeId and fad.ActivitySegmentValue= \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'  and (fad.isActive =1 OR fad.isActive =\'True\') where (aam.isActive =1 OR aam.isActive =\'True\') and aam.isRequiredMobile=1 and  ParentAttributeId= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " GROUP BY am.AttributeId ORDER BY aam.controlsequence "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelectsvFarmerListDetails()Ljava/lang/String;
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectsvFarmerListDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectsvFarmerListDetailsForApproval()Ljava/lang/String;
    .locals 1

    .line 1402
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectsvFarmerListDetailsForApproval:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfAssignmentMessage()Ljava/lang/String;
    .locals 1

    .line 2029
    const-string v0, "SELECT ItemDescription FROM ConfigurablelookupMaster where ItemKey =\'TileSelfAssignment\' and ItemType =\'DisplayText\'"

    return-object v0
.end method

.method public getSowingWindowEnable()Ljava/lang/String;
    .locals 1

    .line 2362
    const-string v0, "select Itemvalue from ConfigurablelookupMaster where ItemKey =\'EnableSowingWindowFCM\'"

    return-object v0
.end method

.method public getStates()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->states:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusActivityDataByFOId(I)Ljava/lang/String;
    .locals 2

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select marketname,statename,districtname,talukaname,activityname,SUM(fopendingcount) as PendinfStatus,SUM(approvependingcount ) as ApprStatus,fopendingcount,approvependingcount from pmcStatusDetails where foid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " group by marketname,statename,districtname,talukaname,activityname"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStatusCreatedDate(I)Ljava/lang/String;
    .locals 2

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select createddate from pmcStatusDetails where rowid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStatusMaxId()Ljava/lang/String;
    .locals 1

    .line 680
    const-string v0, "select max(rowid) from pmcStatusDetails"

    return-object v0
.end method

.method public getStatusQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select distinct   UPPER(marketname)|| \'-\' ||UPPER(SUBSTR(talukaname,1,1))||LOWER(SUBSTR(talukaname,2))|| \'-\' ||UPPER(SUBSTR(districtname,1,1))||LOWER(SUBSTR(districtname,2))|| \'-\' ||UPPER(SUBSTR(statename,1,1))||LOWER(SUBSTR(statename,2))as column from pmcStatusDetails where activityname=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and marketname=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and talukaname=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStrings(I)Ljava/lang/String;
    .locals 2

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select ResourceKey ,ResourceValues  from icfResources where LanguageId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'  and ModuleId=\'2\' "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSvfarmercropmapping()Ljava/lang/String;
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->svfarmercropmapping:Ljava/lang/String;

    return-object v0
.end method

.method public getSvfarmercropmappingForApproval()Ljava/lang/String;
    .locals 1

    .line 1394
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->svfarmercropmappingForApproval:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncErrorLogDataByOffsetQry()Ljava/lang/String;
    .locals 1

    .line 1907
    const-string v0, "SELECT Pdaid, ColumnName, SourceID, TableName, ErrorMessage, ErrorStackTrace, Query, synctype, CreatedDate, CreatedBy, UpdatedDate, UpdatedBy, Remarks, isSolved  FROM SyncErrorLog  where serverUpdatedStatus=\'false\' LIMIT 1000"

    return-object v0
.end method

.method public getSyncErrorLogsCountQry()Ljava/lang/String;
    .locals 1

    .line 1849
    const-string v0, "SELECT COUNT(0) FROM SyncErrorLog"

    return-object v0
.end method

.method public getTalukasList(I)Ljava/lang/String;
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select TalukaId,TalukaName from Taluka where DistrictId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' order by TalukaName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTerritoryDraftQuery(IJ)Ljava/lang/String;
    .locals 2

    .line 2218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select distinct territoryId from pmcAssignmentActivityDetails where ActivityAssignmentId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and TransId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTerritoryName(I)Ljava/lang/String;
    .locals 2

    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select  territoryName from TerritoryMaster where territoryId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTerritoryNamesListQuery(I)Ljava/lang/String;
    .locals 0

    .line 1536
    const-string p1, "SELECT territoryId,territoryName,regionId,CRMTerritoryCode FROM TerritoryMaster where (isActive=1 OR isActive = \'True\')"

    return-object p1
.end method

.method public getTotalDealerCompanyDetails()Ljava/lang/String;
    .locals 1

    .line 2274
    const-string v0, "select count(0) from DealerCompanyMapping dcm Inner Join DealerMaster dm on dm.ContactId = dcm.ContactId and dm.StatusReason IN (1,2)"

    return-object v0
.end method

.method public getTotalDealerCropDetails()Ljava/lang/String;
    .locals 1

    .line 2279
    const-string v0, "select count(0) from DealerCropMapping dcm Inner Join DealerMaster dm on dm.ContactId = dcm.ContactId and dm.StatusReason IN (1,2)"

    return-object v0
.end method

.method public getTotalDealers()Ljava/lang/String;
    .locals 1

    .line 2266
    const-string v0, "select count(0) from DealerMaster where StatusReason=\'1\'"

    return-object v0
.end method

.method public getTotalDealers(I)Ljava/lang/String;
    .locals 2

    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select count(0) from DealerMaster where isActive=\'True\' and CustomerTypeID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTotalDraftDealers()Ljava/lang/String;
    .locals 1

    .line 2262
    const-string v0, "select count(0) from DealerMaster where StatusReason=\'0\'"

    return-object v0
.end method

.method public getTotalDraftFarmersToSend()Ljava/lang/String;
    .locals 1

    .line 2254
    const-string v0, "select count(0) from FarmerMaster where   Status==\'0\'"

    return-object v0
.end method

.method public getTotalFarmerCropDetails()Ljava/lang/String;
    .locals 1

    .line 2270
    const-string v0, "select count(0) from FarmerCropDetails fcd Inner Join FarmerMaster fm on fm.RespondentNo = fcd.RespondentNo and fm.Status IN (1,2) where fm.isActive = \'True\'"

    return-object v0
.end method

.method public getTotalFarmers(I)Ljava/lang/String;
    .locals 2

    .line 2005
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select count(0) from FarmerMaster where isActive=\'True\' and TypeofFarmer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTotalFarmersToSend()Ljava/lang/String;
    .locals 1

    .line 2258
    const-string v0, "select count(0) from FarmerMaster where   Status==\'1\'"

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 2375
    const-string v0, "SELECT Max(TrackId) FROM FoTrackerHeader"

    return-object v0
.end method

.method public getUpdateApprovalStatus(III)Ljava/lang/String;
    .locals 1

    .line 1331
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " update pmcSVFarmerDetails set Approvalstatus=\'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\',svdescription=\'\' where FarmerId=\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUpdateDealerCompany()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateDealerCompany:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDealerCrop()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateDealerCrop:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDealerrMaster()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateDealerrMaster:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFarmerMaster()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateFarmerMaster:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFlag(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update  pmcFarmerDetails set Field1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  where farmerId=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUpdateImageActDetails(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update ActivityImageDetails set ServerStatus=\'0\'  where ImageId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUpdateImageQry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1881
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE ActivityImageDetails SET ServerStatus=\'true\' WHERE ImageId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUpdateProfileImageDetails()Ljava/lang/String;
    .locals 1

    .line 2166
    const-string v0, "Update ConfigurableLookup set isActive=\'0\'  where itemKey =\'ProfileImage\'"

    return-object v0
.end method

.method public getUpdateTestFarmerActDetails()Ljava/lang/String;
    .locals 1

    .line 358
    const-string v0, "Update pmcAssignmentActivityDetails set serverupdatedstatus=\'true\' where serverupdatedstatus=\'false\' and isTransactionDone = \'1\'"

    return-object v0
.end method

.method public getUpdatefarmer(III)Ljava/lang/String;
    .locals 2

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update pmcSVFarmerDetails set AssignmentFlag=\'1\',FOId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , fouserid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  where farmerId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUpdatefarmerCropmapping()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updatefarmerCropmapping:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDetailsCount()Ljava/lang/String;
    .locals 1

    .line 1461
    const-string v0, "select count(0) from  pmcUserDetails where roleid=2"

    return-object v0
.end method

.method public getUserMobileNumber()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->userMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUseridFoeUserDetails(I)Ljava/lang/String;
    .locals 2

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT userId  FROM pmcUserDetails where pdaID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUseridforFOList(I)Ljava/lang/String;
    .locals 2

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT FOUserID  FROM pmcFoList where fopdaid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVillageNamesListQuery(I)Ljava/lang/String;
    .locals 0

    .line 1532
    const-string p1, "SELECT villageId,villageName ||\' -\'||MandalName as villageName,VillageShortCode,VillageMaster.ETLCode FROM VillageMaster join MandalMaster on VillageMaster.mandalID=MandalMaster.mandalID where VillageMaster.IsActive=\'true\' Collate NoCase"

    return-object p1
.end method

.method public getVillagesBasedonMarket(I)Ljava/lang/String;
    .locals 2

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select distinct villageid, VillageName  FROM  pmcSVFarmerDetails where MarketId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "   and recordFlag=0 and  villageid>0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVillagesBasedonMarketcount(I)Ljava/lang/String;
    .locals 2

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select count(0)  FROM  pmcSVFarmerDetails where MarketId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and recordFlag=0 and  villageid>0  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVillagesList(I)Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select VillageId,VillageName from Villages where TalukaId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' order by VillageName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWrongPasswordEntryCount()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->wrongPasswordEntryCount:Ljava/lang/String;

    return-object v0
.end method

.method public getappversionRecord(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select * from configurablelookup where itemkey = \'AppVersion\' and itemvalue = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getchildDetailsActivity(Ljava/lang/String;IIJ)Ljava/lang/String;
    .locals 2

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select detailsID from pmcAssignmentActivityDetails  where ChildLevelId != 0 and ActivitySegmentValue=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and ActivityMasterId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  and activityAssignmentId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and TransId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getfarmersInSAFilter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",RespondentNo,Latitude,Longitude  from FarmerMaster where TypeofFarmer = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and isActive=\'True\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getlanguages()Ljava/lang/String;
    .locals 1

    .line 1494
    const-string v0, "SELECT LanguageId,DisplayedLanguageName FROM icfLanguage where IsActive=\'True\' COLLATE NOCASE"

    return-object v0
.end method

.method public getmarketcount(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " select count(0) from \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getqueryForMIDropdown(II)Ljava/lang/String;
    .locals 2

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select SourceQuery from ActivityAttributeMappingMaster where ActivityMasterId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and AttributeId = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getqueryForMIFirstchild(II)Ljava/lang/String;
    .locals 2

    .line 2106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select AttributeId from ActivityAttributeMappingMaster where ActivityMasterId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and ParentAttributeId = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND isFirstChild = 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettinVillages(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT villageId,villageName FROM VillageMaster where mandalId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and IsActive=\'true\' COLLATE NOCASE order by villageName "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingAtaticData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT StateID,StateName,DistrictID,DistrictName, MandalID,MandalName,VillageId,VillageName,Latitude,Longitude  FROM FarmerMaster where RespondentNo =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingCountofMasters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT count(0)  FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  where "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " =\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'  and IsActive=\'true\' Collate NoCase"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingDistricts(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT DistrictId ,DistrictName  FROM DistrictMaster where StateId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and IsActive=\'true\' COLLATE NOCASE order by DistrictName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingDraftColunNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT DBColumnName FROM fxCustomerRegistrationConfiguration where ShowInDraft=1 and isActive=1 and Module=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' order by sequenceid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingDropdownValues(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 897
    const-string p1, "SELECT cropId,cropName FROM CropMaster where IsActive=\'true\' COLLATE NOCASE order by cropName"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 899
    const-string p1, "select BrandId,BrandName from BrandMaster where IsActive=\'true\' COLLATE NOCASE order by BrandName"

    return-object p1

    :cond_1
    const/16 v0, 0xd

    if-eq p1, v0, :cond_8

    const/16 v0, 0x38

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 903
    const-string p1, "SELECT DISTINCT pmcmarkets.Marketid, pmcmarkets.MarketName  FROM  pmcMarkets as pmcmarkets inner join pmcSVFarmerDetails on pmcmarkets.Marketid=pmcSVFarmerDetails.MarketId where recordFlag=0"

    return-object p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 905
    const-string p1, "select fopdaid,FOName from pmcFoList   union all select pdaID,userName from  pmcUserDetails"

    return-object p1

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 907
    const-string p1, "select distinct villageid, VillageName  FROM  pmcSVFarmerDetails where recordFlag=0 and  villageid>0"

    return-object p1

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 909
    const-string p1, "SELECT CompanyId,CompanyName FROM CompanyMaster where IsActvie=\'1\' order by CompanyName"

    return-object p1

    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 911
    const-string p1, "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = \'ImageEventType\'"

    return-object p1

    .line 913
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select lookupcode,lookupvalue from pmcLookup where lookupcode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 901
    :cond_8
    :goto_0
    const-string p1, "select itemType,itemValue from ConfigurableLookup where itemKey = \'Vigor\'"

    return-object p1
.end method

.method public gettingDropdownValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingDynamicFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT DisplayName,ControlType,isMandatory,DBColumnName,SourceQuery,ValidationType,ValidationExpression,MaxLength,MinLength,MaxValue,MinValue,DecimalLength,IsTransactionEditable,ColumnId,CreatedBy    FROM fxCustomerRegistrationConfiguration where isActive=1 and Tabs=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and Module=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' order by SequenceId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingDynamicFieldsForTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT DisplayName,ControlType,isMandatory,DBColumnName,SourceQuery,ValidationType,ValidationExpression,MaxLength,MinLength,MaxValue,MinValue,DecimalLength,IsTransactionEditable,ColumnId  FROM fxCustomerRegistrationConfiguration  where isActive=1 and ShowInTransaction = 1 and module=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' order by SequenceId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingDynamicFieldsForTransaction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT ControlType,isMandatory,DBColumnName,SourceQuery,ValidationType,ValidationExpression,MaxLength,MinLength,MaxValue,MinValue,DecimalLength,IsTransactionEditable  FROM fxCustomerRegistrationConfiguration  where isActive=1 and Tabs=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and ShowInTransaction = 1 and module=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' order by SequenceId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingDynamicFieldsTabs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT Tabs  FROM fxCustomerRegistrationConfiguration where isActive=1 and Module=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' order by SequenceId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingFarmerCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT count(0)  FROM FarmerMaster where RespondentNo=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingFarmercount(III)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 1199
    const-string v1, ""

    if-ne p3, v0, :cond_0

    .line 1200
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SELECT  count(DISTINCT FarmerId)   FROM pmcSVFarmerDetails where AssignmentFlag=0 and recordFlag=0 and MarketId="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1202
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "SELECT count(DISTINCT FarmerId)  FROM pmcSVFarmerDetails where AssignmentFlag=0 and recordFlag=0 and villageid="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 1204
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "SELECT count(DISTINCT FarmerId)  FROM pmcSVFarmerDetails where AssignmentFlag=0 and recordFlag=0 and MarketId="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and villageid="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1206
    :cond_2
    const-string p1, "SELECT count(DISTINCT FarmerId)   FROM pmcSVFarmerDetails where AssignmentFlag=0 and recordFlag=0"

    return-object p1
.end method

.method public gettingFunctionNames()Ljava/lang/String;
    .locals 1

    .line 1540
    const-string v0, "SELECT  distinct FxFunctionsMaster.FunctionId,FunctionName,PdaFunction,NavigateUrl FROM FxFunctionsMaster inner join pmcUserRolemapping on FxFunctionsMaster.FunctionId= pmcUserRolemapping.FunctionId order by OrderByPriority ASC "

    return-object v0
.end method

.method public gettingHybrieds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT BrandID,BrandName  FROM BrandMaster where CropId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and Isactive=\'true\' COLLATE NOCASE Order by brandName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingMandals(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT MandalId ,MandalName  FROM MandalMaster where Districtid =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and IsActive=\'true\' COLLATE NOCASE order by MandalName"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingMarketsDropdownValues()Ljava/lang/String;
    .locals 1

    .line 918
    const-string v0, "SELECT distinct pmcmarkets.Marketid, pmcmarkets.MarketName  FROM  pmcMarkets as pmcmarkets inner join pmcSVFarmerDetails on pmcmarkets.Marketid=pmcSVFarmerDetails.MarketId where recordFlag = 1 or recordFlag = 2 or recordFlag = 3"

    return-object v0
.end method

.method public gettingRetailerAtaticData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT StateID,StateName,DistrictID,DistrictName, MandalID,MandalName,VillageId,VillageName,Latitude,Longitude   FROM DealerMaster where contactId =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingRetailerCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT count(0)  FROM DealerMaster where contactId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingRetailerStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,ContactId  FROM  DealerMaster where StatusReason=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and ServerUpdatedStatus =\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' order by ContactId "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingStateCount()Ljava/lang/String;
    .locals 1

    .line 1747
    const-string v0, "select count(0) from StateMaster where IsActive=\'true\' COLLATE NOCASE"

    return-object v0
.end method

.method public gettingStates()Ljava/lang/String;
    .locals 1

    .line 1572
    const-string v0, "select StateId ,StateName  from StateMaster where IsActive=\'true\' COLLATE NOCASE order by StateName"

    return-object v0
.end method

.method public gettingYesorNoDropdownValues(I)Ljava/lang/String;
    .locals 2

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select lookupcode,lookupvalue from pmcLookup where lookupcode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gettingYesorNoDropdownValuesDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    .line 930
    const-string v9, " COLLATE NOCASE order by b."

    const-string v10, "\' and fad.AttributeId = "

    const-string v11, "\' AND fad.ActivityAssignmentId=\'"

    const-string v12, "\' AND fad.ActivityMasterId= \'"

    const-string v13, " AND fad.ActivitySegmentValue= \'"

    const-string v14, " b  Left JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b."

    const-string v15, ",fad.attributeValue FROM "

    move-object/from16 v16, v9

    const-string v9, ", b."

    const-string v8, "SELECT distinct b."

    if-eqz v2, :cond_2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 931
    const-string v7, "ConfigurablelookupMaster"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 932
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") where b.ItemType = \'"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and (b.isactive=\'1\' or b.isactive=\'true\' or b.isactive=\'True\') "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p9

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v7, v8

    move/from16 v8, p8

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") where b. "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and (b.isactive=\'1\' or b.isactive=\'true\' or b.isactive=\'True\')"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p9

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " COLLATE NOCASE  order by b."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v7, p9

    move-object v2, v8

    move/from16 v8, p8

    goto :goto_0

    :cond_2
    move-object v2, v8

    move v8, v7

    move-object/from16 v7, p9

    .line 944
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") where (b.isactive=\'1\' or b.isactive=\'true\' or b.isactive=\'True\') "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p9

    move-object v2, v7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gettingYesorNoDropdownValuesDynamic_PairId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 954
    const-string v10, " COLLATE NOCASE order by b."

    const-string v11, " and fad.PairId = \'"

    const-string v12, "\' and fad.AttributeId = "

    const-string v13, "\' AND fad.ActivityAssignmentId=\'"

    const-string v14, "\' AND fad.ActivityMasterId= \'"

    const-string v15, " AND fad.ActivitySegmentValue= \'"

    move-object/from16 v16, v10

    const-string v10, " b  Left JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b."

    const-string v8, ",fad.attributeValue FROM "

    const-string v9, ", b."

    move-object/from16 v17, v11

    const-string v11, "SELECT distinct b."

    if-eqz v2, :cond_2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 955
    const-string v7, "ConfigurablelookupMaster"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 956
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v17

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p10

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\') where b.ItemType = \'"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and (b.isactive=\'1\' or b.isactive=\'true\' or b.isactive=\'True\') "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p9

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v2, v8

    move-object v7, v9

    move/from16 v8, p8

    .line 960
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v17

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p10

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\') where b. "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and (b.isactive=\'1\' or b.isactive=\'true\' or b.isactive=\'True\')"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " COLLATE NOCASE  order by b."

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v2, v9

    move-object v9, v8

    move/from16 v8, p8

    goto :goto_0

    :cond_2
    move-object v2, v9

    move-object v9, v8

    move v8, v7

    .line 968
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p10

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\') where (b.isactive=\'1\' or b.isactive=\'true\' or b.isactive=\'True\') "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p9

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gettingfarmerbasedonmarketid(III)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 1186
    const-string v1, " GROUP BY  pf.farmerId, pf.farmerName, pf.mobile order by pf.farmerName"

    if-ne p3, v0, :cond_0

    .line 1187
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.recordFlag FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where pf.AssignmentFlag=0 and recordFlag=0 and pf.MarketId="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1190
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.recordFlag FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where pf.AssignmentFlag=0 and recordFlag=0 and pf.villageid="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1193
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.recordFlag  FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where pf.AssignmentFlag=0 and recordFlag=0  and pf.MarketId="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and pf.villageid="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " GROUP BY  pf.farmerId, pf.farmerName, pf.mobile,pf.recordFlag order by pf.farmerName"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getvillagecount()Ljava/lang/String;
    .locals 1

    .line 1253
    const-string v0, "select count(0)  from pmcSVFarmerDetails where recordFlag=0 and villageid>0"

    return-object v0
.end method

.method public iLoggerEnabledStatus()Ljava/lang/String;
    .locals 1

    .line 2114
    const-string v0, "SELECT itemValue FROM ConfigurableLookupMaster where itemKey =\'iLoggerStatus\' and itemType=\'iLogger\'"

    return-object v0
.end method

.method public insertFilterData(Lcom/conceptglobal/pmc/fotracker/model/FilterData;)Ljava/lang/String;
    .locals 3

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insert or replace  into FilterData (LineId ,CropID ,CropName ,StateID ,StateName ,DistrictId ,DistrictName \n\n,TalukaID ,TalukaName ,LocationID ,LocationName ,Radious ) values (1,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/model/FilterData;->getCropID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/model/FilterData;->getCropName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/model/FilterData;->getStateID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/model/FilterData;->getStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/model/FilterData;->getDistrictId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/model/FilterData;->getDistrictName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/model/FilterData;->getTalukaID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/model/FilterData;->getTalukaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/model/FilterData;->getLocationID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/model/FilterData;->getLocationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/model/FilterData;->getRadious()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insertIntoSyncErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1134
    const-string v0, ""

    if-eqz p4, :cond_0

    .line 1135
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    .line 1136
    const-string v1, "\'"

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO SyncErrorLog (Pdaid, ColumnName, SourceID, TableName, ErrorMessage, ErrorStackTrace, Query, synctype, CreatedDate, CreatedBy, UpdatedDate, UpdatedBy, ServerUpdatedStatus) VALUES (\'"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1139
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'false\')"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isMobileExistsForFarmer(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT Mobile FROM FarmerMaster where RespondentNo NOT IN(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') and Mobile is NOT NULL and TypeofFarmer="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isMobileExistsForRetailer(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 2145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT MobileNumber FROM DealerMaster where ContactId NOT IN(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') and MobileNumber is NOT NULL and CustomerTypeID="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public latlongsForTodoFilter()Ljava/lang/String;
    .locals 1

    .line 569
    const-string v0, ",CASE WHEN (asm .RefrenceTableName = \'FarmerMaster\') THEN (SELECT latitude FROM FarmerMaster WHERE FARMERID = ActivitySegmentValue) WHEN (asm .RefrenceTableName = \'DealerMaster\') THEN (SELECT latitude  FROM DealerMaster WHERE ContactId = ActivitySegmentValue ) WHEN  (asm .RefrenceTableName=\'VillageMaster\') THEN (SELECT latitude  FROM VillageMaster INNER JOIN MandalMaster ON VillageMaster.MandalID = MandalMaster.MandalId WHERE VillageID=ActivitySegmentValue ) ELSE \'n/a\' END AS \'latitude\',CASE WHEN (asm .RefrenceTableName = \'FarmerMaster\') THEN (SELECT longitude FROM FarmerMaster WHERE FARMERID = ActivitySegmentValue) WHEN (asm .RefrenceTableName = \'DealerMaster\') THEN (SELECT longitude FROM DealerMaster WHERE ContactId = ActivitySegmentValue ) WHEN  (asm .RefrenceTableName=\'VillageMaster\') THEN (SELECT longitude FROM VillageMaster INNER JOIN MandalMaster ON VillageMaster.MandalID = MandalMaster.MandalId WHERE VillageID=ActivitySegmentValue ) ELSE \'n/a\' END AS \'longitude \'"

    return-object v0
.end method

.method public mbaFarmerDetails(I)Ljava/lang/String;
    .locals 2

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT  FarmerName,CONumber,Mobile,AcreagesOwned,LeasedIn,LeasedOut,Cultivated,fodescription,svdescription ,ServerUpdatedStatus, AssignmentFlag,Landline from pmcSVFarmerDetails where recordFlag =3 and FarmerId  = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public retailerSearchQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,dm.contactId  FROM  DealerMaster dm  Left join DealerCompanyMapping dcm on dcm.contactId = dm.contactId where dm.contactId != 0 "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  and dm.isActive=\'True\' and CustomerTypeID=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' group by dm.contactId order by  dm.contactId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1803
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,fm.RespondentNo  FROM  FarmerMaster fm Left join FarmerCropDetails  fcm on fcm.RespondentNo = fm.RespondentNo where fm.RespondentNo != 0 "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and  fm.isActive=\'True\' and TypeofFarmer=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' group by fm.RespondentNo order by  fm.RespondentNo "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setCompanyNames(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->companyNames:Ljava/lang/String;

    return-void
.end method

.method public setGetConsinment(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getConsinment:Ljava/lang/String;

    return-void
.end method

.method public setGetCountofPMCImages(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getCountofPMCImages:Ljava/lang/String;

    return-void
.end method

.method public setGetfarmerApprovalCount(Ljava/lang/String;)V
    .locals 0

    .line 1415
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getfarmerApprovalCount:Ljava/lang/String;

    return-void
.end method

.method public setSelectAssignmentActivityDetails(Ljava/lang/String;)V
    .locals 0

    .line 1957
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectAssignmentActivityDetails:Ljava/lang/String;

    return-void
.end method

.method public setSelectAssignmentActivityDetailsByOffSetQry(Ljava/lang/String;)V
    .locals 0

    .line 1973
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectAssignmentActivityDetailsByOffSetQry:Ljava/lang/String;

    return-void
.end method

.method public setSelectAssignmentVisitDetails(Ljava/lang/String;)V
    .locals 0

    .line 1961
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectAssignmentVisitDetails:Ljava/lang/String;

    return-void
.end method

.method public setSelectFarmerRegistration(Ljava/lang/String;)V
    .locals 0

    .line 1774
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectFarmerRegistration:Ljava/lang/String;

    return-void
.end method

.method public setSelectsvFarmerListDetails(Ljava/lang/String;)V
    .locals 0

    .line 1373
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectsvFarmerListDetails:Ljava/lang/String;

    return-void
.end method

.method public setSelectsvFarmerListDetailsForApproval(Ljava/lang/String;)V
    .locals 0

    .line 1406
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->selectsvFarmerListDetailsForApproval:Ljava/lang/String;

    return-void
.end method

.method public setSvfarmercropmapping(Ljava/lang/String;)V
    .locals 0

    .line 1381
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->svfarmercropmapping:Ljava/lang/String;

    return-void
.end method

.method public setSvfarmercropmappingForApproval(Ljava/lang/String;)V
    .locals 0

    .line 1398
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->svfarmercropmappingForApproval:Ljava/lang/String;

    return-void
.end method

.method public setUpdateDealerCompany(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateDealerCompany:Ljava/lang/String;

    return-void
.end method

.method public setUpdateDealerCrop(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateDealerCrop:Ljava/lang/String;

    return-void
.end method

.method public setUpdateDealerrMaster(Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateDealerrMaster:Ljava/lang/String;

    return-void
.end method

.method public setUpdateFarmerMaster(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updateFarmerMaster:Ljava/lang/String;

    return-void
.end method

.method public setUpdatefarmerCropmapping(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/database/Queries;->updatefarmerCropmapping:Ljava/lang/String;

    return-void
.end method

.method public updateCropAceragesDetailsQuery(IILjava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1239
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "UPDATE pmcSVFarmerCropMapping  SET Acreages="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " , ServerUpdatedStatus=\'false\'  WHERE FarmerId="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and CropId="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and recordFlag=2"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateCropAceragesDetailsQueryforOldRecords(IILjava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1244
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "UPDATE pmcSVFarmerCropMapping  SET  ServerUpdatedStatus=\'false\' WHERE FarmerId="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and CropId="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and recordFlag=1"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateDOSinFarmercropMapping(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update pmcfarmercropmapping set dos=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' where farmerid=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' and cropid=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateDiscardForActivities(ILjava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update pmcAssignmentActivityDetails set isDone=4,AssignmentId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\',serverUpdatedStatus=\'false\',isTransactionDone = \'true\' where ActivityMasterId=\'"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' AND ActivitySegmentValue=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateDraftForActivities(ILjava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update pmcAssignmentActivityDetails set isTransactionDone=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "\' where ActivityMasterId=\'"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' AND ActivitySegmentValue=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND ActivityAssignmentId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateDraftForAssignmentvisit(J)Ljava/lang/String;
    .locals 2

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select visitId from pmcAssignmentVisit where activityAssignmentId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " OR TransactionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateDraftForSelfActivities(ILjava/lang/String;JI)Ljava/lang/String;
    .locals 2

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update pmcAssignmentActivityDetails set isTransactionDone=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "\' where ActivityMasterId=\'"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' AND ActivitySegmentValue=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND TransId ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateFarmerCropMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update pmcFarmerCropMapping set serverUpdatedStatus=\'false\' where farmerId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateFieldOne(I)Ljava/lang/String;
    .locals 2

    .line 1473
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update pmcFarmerDetails set Field1  =\'1\' where farmerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateIsactive(I)Ljava/lang/String;
    .locals 2

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update pmcFarmerDetails set isActive=\'false\' where farmerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateLoginTime()Ljava/lang/String;
    .locals 2

    .line 2317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update ConfigurableLookup set itemValue = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' where itemKey = \'loginTime\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLoginTimeClear()Ljava/lang/String;
    .locals 1

    .line 2321
    const-string v0, "update ConfigurableLookup set itemValue = \'\' where itemKey = \'loginTime\'"

    return-object v0
.end method

.method public updateNotDoneForActivities(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update pmcAssignmentActivityDetails set isDone=2,serverUpdatedStatus=\'false\',notdoneRemark =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\',isTransactionDone = \'1\' where ActivityMasterId=\'"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' AND ActivitySegmentValue=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and AssignmentId=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateNotDoneForSelfActivities(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update pmcAssignmentActivityDetails set isDone=2,serverUpdatedStatus=\'false\',notdoneRemark =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\',isTransactionDone = \'1\' where ActivityMasterId=\'"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' AND ActivitySegmentValue=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and TransId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateNotSelectedForActivities(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update pmcFarmerActivityDetails set isDone=3,assignmentID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\',serverUpdatedStatus=\'false\',notdoneRemark =\'"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' where activityId=\'"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' AND farmerId=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateNotificationstatus(I)Ljava/lang/String;
    .locals 2

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update pmcUserDetails set NotificationStatus = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateTrainingOrLiveStatus(I)Ljava/lang/String;
    .locals 2

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE ConfigurableLookup set itemValue=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' where itemKey=\'isTrainingORLive\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateWcfToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update ConfigurableLookup set itemValue = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' where itemKey = \'wcfToken\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateWebToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update ConfigurableLookup set itemValue = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' where itemKey = \'webToken\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public userActiveStatus()Ljava/lang/String;
    .locals 1

    .line 2153
    const-string v0, "select active from pmcUserDetails"

    return-object v0
.end method
