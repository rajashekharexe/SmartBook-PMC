package com.conceptglobal.pmc.common;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.FilterData;
import com.conceptglobal.pmc.utils.UtilDeclarations;

/* loaded from: classes.dex */
public class Queries {
    private static Queries instance;
    private String userName = "SELECT coalesce(firstName, middleName,lastName) as name FROM pmcUserDetails limit 1";
    private String pdaId = "SELECT pdaID FROM pmcUserDetails limit 1";
    private String employeeID = "SELECT userName FROM pmcUserDetails limit 1";
    private String isCampaignRequired = "SELECT isCampaignRequired FROM pmcUserDetails limit 1";
    private String userMobileNumber = "SELECT mobile from pmcUserDetails limit 1";
    private String cropNames = "SELECT cropId,cropName FROM CropMaster where IsActive='true' COLLATE NOCASE order by cropName";
    private String segmentTypes = "select UPPER(ItemValue) AS itemId ,UPPER(ItemValue) AS itemKey from ConfigurablelookupMaster where ItemKey='FarmerSegment' and (IsActive = 1 OR IsActive = 'True') ";
    private String brandNames = "select BrandId,BrandName from BrandMaster where IsActive='true' COLLATE NOCASE order by BrandName";
    private String irrigationTypes = "select UPPER(itemKey) AS itemId ,UPPER(itemKey) AS itemKey FROM ConfigurablelookupMaster where ItemDescription = 'Source of irrigation'";
    private String cropQry = "delete from FarmerCropDetails where FarmerID NOT in (select FarmerID from FarmerMaster JOIN TerritoryMaster on FarmerMaster.TerritoryId=TerritoryMaster.territoryID)";
    private String landQry = "delete from  DealerLandDetails where FarmerID NOT in (select FarmerID from FarmerMaster JOIN TerritoryMaster on FarmerMaster.TerritoryId=TerritoryMaster.territoryID)";
    private String farmerQry = "delete from FarmerMaster where TerritoryId Not in (select territoryID from TerritoryMaster)";
    private String dealerQry = "delete from DealerMaster where TerritoryId Not in (select territoryID from TerritoryMaster) and ContactId Not in ('0','1') and CustomerTypeID = 2 ";
    private String territoryFarmerQry = "delete from PMCTerritoryFarmerMaster where TerritoryId Not in (select territoryID from TerritoryMaster)";
    private String territoryDealerQry = "delete from PMCTerritoryDealerMaster where TerritoryId Not in (select territoryID from TerritoryMaster)";
    private String deleteUserRolemapping = "delete from pmcUserRolemapping";
    private String deletePricesData = "delete from PricesDisplay";
    private String companyNames = "SELECT CompanyId,CompanyName FROM CompanyMaster where IsActvie='1' order by CompanyName";
    private String seasonNames = "SELECT seasonId,seasonName FROM SeasonMaster where IsActive='true' COLLATE NOCASE  order by seasonName";
    private String pmcRetailers = "SELECT contactId, retailerCode, UPPER(case when retailerShopName is null then '' else retailerShopName end)||'('||case when contactName is null then '' else contactName end||')'||'('||case when MobileNumber is null then '' else MobileNumber end ||')', mobileNumber FROM pmcRetailers ORDER BY retailerShopName";
    private String getAllVillagesData = "select UPPER(location1) as location1,UPPER(location2) as location2, (SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd inner join activitymaster am on am.ActivityMasterId =ppd.ActivityMasterId and (am.isActive = 1 OR am.isActive = 'true') where isplanned = 1 and istransactiondone in(0,2)  and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2 and ppd.isActive=1  ) AS tbv, 0 as vc,(SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd where isplanned = 1 and istransactiondone = 1 and serverUpdatedStatus = 'false' and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2  ) as pd FROM pmcassignmentactivitydetails as pad where isplanned = 1 and UPPER(location1) <> '' and  pad.isActive=1  GROUP BY  UPPER(location1) ,UPPER(location2)";
    private String getAllFBFVillagesData = "select UPPER(location1) as location1,UPPER(location2) as location2, (SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcFBFassignmentactivitydetails as ppd inner join activitymaster am on am.ActivityMasterId =ppd.ActivityMasterId and (am.isActive = 1 OR am.isActive = 'true') where isplanned = 1 and istransactiondone in(0,2)  and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2 and ppd.isActive=1  ) AS tbv, 0 as vc,(SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcFBFassignmentactivitydetails as ppd where isplanned = 1 and istransactiondone = 1 and serverUpdatedStatus = 'false' and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2  ) as pd FROM pmcFBFassignmentactivitydetails as pad where isplanned = 1 and UPPER(location1) <> '' and  pad.isActive=1 and (tbv>0 OR pd>0) GROUP BY  UPPER(location1) ,UPPER(location2)";
    private String getAllSurveyVillagesData = "select UPPER(location1) as location1,UPPER(location2) as location2, (SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcSurveyAssignmentActivityDetails as ppd inner join SurveyActivityMaster am on am.ActivityMasterId =ppd.ActivityMasterId and (am.isActive = 1 OR am.isActive = 'true') where isplanned = 1 and istransactiondone in(0,2)  and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2 and ppd.isActive=1  ) AS tbv, 0 as vc,(SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcSurveyAssignmentActivityDetails as ppd where isplanned = 1 and istransactiondone = 1 and serverUpdatedStatus = 'false' and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2  ) as pd FROM pmcSurveyAssignmentActivityDetails as pad where isplanned = 1 and UPPER(location1) <> '' and  pad.isActive=1 and (tbv>0 OR pd>0) GROUP BY  UPPER(location1) ,UPPER(location2)";
    private String getVillageDisplayData = "SELECT  pmcVillages.VillageName  ,ActivitiyMaster.ActivityName, COUNT(DISTINCT pmcFarmerActivityDetails.FarmerId)  AS Counts FROM pmcFarmerActivityDetails\tINNER JOIN pmcFarmerDetails ON pmcFarmerActivityDetails.FarmerID = pmcFarmerDetails.FarmerId INNER JOIN pmcVillages ON pmcFarmerDetails.VillageId = pmcVillages.VillageId INNER JOIN ActivitiyMaster ON pmcFarmerActivityDetails.activityId= ActivitiyMaster.ActivityId\tGROUP BY ActivitiyMaster.ActivityName,pmcVillages.VillageName";
    private String getQueryOfvillageDisplay = "SELECT \"select \"||group_concat('',\"SUM(CASE activityname WHEN '\"|| activityname||\"'\"||\" THEN Counts ELSE 0 END) as [\"||activityname||\"],\")||\"villageid,villagename from (SELECT  pmcVillages.villageId,pmcVillages.VillageName  ,ActivitiyMaster.ActivityName, COUNT(DISTINCT pmcFarmerActivityDetails.FarmerId)  AS Counts FROM pmcFarmerActivityDetails\tINNER JOIN pmcFarmerDetails ON pmcFarmerActivityDetails.FarmerID = pmcFarmerDetails.FarmerId INNER JOIN pmcVillages ON pmcFarmerDetails.VillageId = pmcVillages.VillageId INNER JOIN ActivitiyMaster ON pmcFarmerActivityDetails.activityId= ActivitiyMaster.ActivityId\tGROUP BY ActivitiyMaster.ActivityName,pmcVillages.VillageName)   GROUP BY villageid,villagename \"  FROM (select 1 as activityname  UNION select  distinct activityname from ActivitiyMaster) as tb";
    private String deleteUserDetails = "delete from pmcUserDetails";
    private String deleteUserRoleMapping = "delete from pmcUserRolemapping";
    private String deleteTerritoryMaster = "delete from TerritoryMaster";
    private String getShowVillagesCount = "select Count(villageId) from (select pmcVillages.villageId, pmcVillages.villageName, pmcVillages.mandalId, (SELECT count(0) FROM pmcFarmerDetails where isVisited ='false' and pmcVillages.villageId = pmcFarmerDetails.villageId) as tbv, (SELECT count(0) FROM pmcFarmerDetails where isVisited ='true'   and pmcVillages.villageId = pmcFarmerDetails.villageId) as vc, (SELECT count(0) FROM pmcFarmerDetails where isVisited ='true' and serverUpdatedStatus ='false'  and pmcVillages.villageId = pmcFarmerDetails.villageId) as pd from pmcVillages  inner join pmcFarmerDetails on pmcVillages.villageid = pmcFarmerDetails.villageid group by pmcVillages.villageId order by pmcVillages.villageName)  TBL";
    private String getPasswordFromUserDetails = "select password from pmcUserDetails";
    private String getIsPasswordChanged = "select IsPasswordChanged from pmcUserDetails";
    private String passwordChangedDate = "select PasswordChangedDate from pmcUserDetails";
    private String getUSerDetailsCount = "Select count(0) from pmcUserDetails";
    private String deleteFarmerCropMapping = "delete from pmcFarmerCropMapping where serverupdatedstatus='false' and farmerid in(select farmerid from pmcFarmerDetails where serverupdatedstatus='false' and isVisited='true')";
    private String deleteFarmerActDetails = "delete from pmcAssignmentActivityDetails where serverupdatedstatus='false' and isTransactionDone = '1'";
    private String deletelog4net = "delete from log4net where serverupdatestatus='false'";
    private String deleteSyncErrorLog = "delete from SyncErrorLog where ServerUpdatedStatus='false'";
    private String updateFarmerMaster = "update FarmerMaster  set  serverupdatedstatus='true' where serverupdatedstatus='false'";
    private String updateDealerrMaster = "update DealerMaster  set  serverupdatedstatus='true' where serverupdatedstatus='false'";
    private String updatefarmerCropmapping = "update FarmerCropDetails  set  serverUpdatedStatus='true' where serverUpdatedStatus='false'";
    private String updateDealerCompany = "update DealerCompanyMapping  set  serverupdatedstatus='true' where serverupdatedstatus='false'";
    private String updateDealerCrop = "update DealerCropMapping  set  ServerUpdatedStatus='true' where ServerUpdatedStatus='false'";
    private String dealerDetailsSecondTab = "select tabs from fxCustomerRegistrationConfiguration where TableName='DealerCropORCompany'and isActive=1";
    private String enableCropHybrids = "select isActive from fxCustomerRegistrationConfiguration where TableName='FarmerCropDetails' and Module='Farmer' and Tabs='EnableCropHybrids'";
    private String enableCropSeasons = "select isActive from fxCustomerRegistrationConfiguration where TableName='FarmerCropDetails' and Module='Farmer' and Tabs='EnableCropSeasons'";
    private String SelectResignationDetailsSync = "select * from ResignedUsers where ServerUpdatedStatus='false'";
    private String SelectResignationDetails = "select * from ResignedUsers ";
    private String getcountoflog4net = "select count(0) from log4net where serverupdatestatus='false'";
    private String getcountofSyncErrorLog = "select count(0) from SyncErrorLog where ServerUpdatedStatus='false'";
    private String getCountofFarmerActivityDetails = "SELECT count(0) FROM pmcFarmerActivityDetails AS pfad  inner join pmcfarmerDetails on pfad.farmerId = pmcfarmerDetails.farmerid where pmcfarmerDetails.isVisited ='true' AND pfad.serverUpdatedStatus='false'";
    private String getCountofPMCFarmerDetails = "Select count(0) from  pmcFarmerDetails where serverUpdatedStatus='false' and isVisited='true'";
    private String getCountofPMCImages = "select count(0) from ActivityImageDetails where ServerStatus='0'";
    public String getCountFarmerMaster = "select count(0) from FarmerMaster where serverUpdatedStatus='false'";
    public String getCountofPMCFarmerCropping = "SELECT count(0) from FarmerCropDetails as pfcm  inner join FarmerMaster on pfcm.RespondentNo = FarmerMaster.RespondentNo where  pfcm.serverUpdatedStatus='false'";
    public String getCountofDealerMaster = "select count(0) from DealerMaster where serverUpdatedStatus='false'";
    public String getCountofDealerCompanies = "select count(0) from DealerCompanyMapping as dcm inner join DealerMaster on dcm.ContactId = DealerMaster.ContactId where dcm.serverUpdatedStatus='false'";
    public String getCountofActivityAssignments = "select count(0) from pmcAssignmentActivityDetails as ad  where ad.serverUpdatedStatus='false' and ad.isTransactionDone = 1";
    public String getCountofDealerCrops = "select count(0) from DealerCropMapping as dcm inner join DealerMaster on dcm.ContactId = DealerMaster.ContactId where dcm.ServerUpdatedStatus='false'";
    public String getCountofAssignmentVisit = "select count(0) from pmcAssignmentVisit where serverUpdatedStatus='false'";
    public String getPictureCount = "select count(0) from ActivityImageDetails where ServerStatus='false' and ContentTypeId ='1'";
    public String getVideosCount = "select count(0) from ActivityImageDetails where ServerStatus='false' and ContentTypeId ='2'";
    public String getFarmerAttributes = "select count(0) from FarmerMultiAttributeDetails where ServerUpdatedStatus='false'";
    public String getDealerAttributes = "select count(0) from DealerMultiAttributeDetails where ServerUpdatedStatus='false'";
    public String getResignationDetailsCount = "SELECT count(0) FROM ResignedUsers where ServerUpdatedStatus='false'";
    public String getFoTrackerHeaderCount = "select count(0) FROM FoTrackerHeader WHERE SyncStatus = 0";
    public String getFoTrackerDetailsCount = "select count(0) FROM FoTrackerDetails WHERE SyncStatus=0";
    public String getUsageDetailsCount = "select count(0) FROM UsageDetails WHERE SyncStatus=0";
    public String getLog4TraceCount = "select count(0) FROM Log4Trace where (serverUpdateStatus = 'false' or serverUpdateStatus= 0)";
    public String getDiscardActivityCount = "select count(0) from pmcAssignmentActivityDetails as ad where ad.serverUpdatedStatus='false' and ad.isTransactionDone = 1";
    private String getCountofPMCDataQuery = "Select count(0) from pmcFarmerDetails";
    public String getActivityCount1 = "select count(distinct(ActivityAssignmentId)) from pmcAssignmentActivityDetails as ad  where ad.serverUpdatedStatus='false' and ad.isTransactionDone = 1";
    public String getActivityCount = "select count (*) from (select distinct ActivityAssignmentId,transid from pmcAssignmentActivityDetails as ad  where ad.serverUpdatedStatus='false' and ad.isTransactionDone = 1)  ";
    public String getExpensesCount = "SELECT count(0) FROM pmcExpenseAssignmentActivityDetails where ServerUpdatedStatus='false'";
    private String deleteFarmerDetails = "delete from pmcFarmerDetails where serverupdatedstatus='false' and isVisited='true'";
    private String selectFarmerActDetails = "SELECT pfad.detailsID,pfad.farmerId,pfad.activityId,pfad.attributeId,pfad.attributeValue,pfad.createdBy,pfad.createddate,pfad.updatedBy,pfad.updatedDate,pfad.isPlanned,pfad.assignmentID,pfad.pdaId,pfad.isDone,pfad.notdoneRemark FROM pmcFarmerActivityDetails AS pfad  inner join pmcfarmerDetails on pfad.farmerId = pmcfarmerDetails.farmerid where pmcfarmerDetails.isVisited ='true' AND pfad.serverUpdatedStatus='false'";
    private String selectImageActDetails = "SELECT pfad.ImageId,pfad.AssignmentId,pfad.ActivityId,pfad.AttributeId,pfad.SubJect,pfad.Comments,pfad.Remarks,pfad.PicturePath,pfad.CreatedBy,pfad.CreatedDate,pfad.UpdatedBy,pfad.UpdatedDate,pfad.pdaId,pfad.FarmerId,pfad.ServerStatus FROM ActivityImageDetails AS pfad  where pfad.ServerStatus=0";
    private String selectFarmerCropMapping = "SELECT pfcm.DetailsID,pfcm. FarmerID,pfcm.CropID ,pfcm.Acreages,pfcm.CreatedBy,pfcm.CreatedDate,pfcm.UpdatedBy,pfcm.UpdatedDate,pfcm.pdaid,pfcm.dos,pfcm.productId,pfcm.IsMainCrop,pfcm.Spraypattern,pfcm.LandType,pfcm.RespondentNo,pfcm.status,pfcm.SeasonID,pfcm.IrrigationType,pfcm.IsActive,pfcm.AcreageType,pfcm.AcreageValue  from FarmerCropDetails as pfcm  where pfcm.serverUpdatedStatus='false'";
    private String selectFarmerListDetails = "select farmerId,mobile,landline,coNumber,acreagesOwned,leasedIn,leasedOut,cultivated,visitDescription,createdBy,createddate,updatedBy,updatedDate,pdaId,retailerId,totalLandHolding, latitude, longitude,landMark,isActive,Field1 from  pmcFarmerDetails where serverUpdatedStatus='false' and isVisited='true'";
    private String selectdealerCropMapping = "select dcm.MappingId,dcm.ContactId,dcm.CropId,dcm.CropName,dcm.CropSales,dcm.CreatedBy,dcm.CreatedDate,dcm.UpdatedBy,dcm.UpdatedDate,dcm.status,dcm.CompanyHybridSaleBrandId1,dcm.CompanyHybridSaleBrandId2,dcm.CompetitonHybridSaleBrandId1,dcm.CompetitonHybridSaleBrandId2,dcm.CompanySale1,dcm.CompanyHybridSale1,dcm.CompanyHybridSale2,dcm.CompetitonHybridSale1,dcm.CompetitonHybridSale2,dcm.CompanyId1,dcm.CompanyId2 from DealerCropMapping dcm where dcm.serverupdatedstatus = 'false'";
    private String selectFarmerLandDetails = "select DetailsID ,FarmerID ,LandName,Acreages,Address,Latitude,Longitude,IsOnField,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaID,RespondentNo,GPSTimeStamp from FarmerLandDetails where serverupdatedstatus = 'false'";
    private String selectDealerLandDetails = "select DetailsID ,ContactId ,LandName,Acreages,Address,Latitude,Longitude,IsOnField,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaID,GPSTimeStamp from DealerLandDetails where serverupdatedstatus = 'false'";
    private String selectAttendanceDetails = "select AttendanceID,Fromdate,ToDate,LeaveType,ReasonType,NoOfDays,Remarks,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,pdaid,TransId,StartLatitude,StartLongitude,EndLatitude,EndLongitude,StartLocationTime,EndLocationTime,StartLocationAddress,EndLocationAddress,StartKM,EndKM,Status from AttendanceDetails where serverupdatedstatus='false'";
    private String selectPMCAttendanceDetails = "select * from PMCAttendanceDetails where serverupdatedstatus='false'";
    private String selectPMCTSTAssignmentActivityDetails = "select distinct  ad.detailsID, ad.ActivitySegmentId , ad.ActivityMasterId , ad.attributeValue, ad.isDone, ad.createdBy , ad.createddate, ad.updatedBy , ad.updatedDate ,   ad.isPlanned , ad.pdaId , ad.notdoneRemark, ad.ActivitySegmentValue, ad.ActivityAssignmentId , ad.ActivityAttributeId , ad.ActivitySegmentName, ad.TransId , ad.PairId ,  ad.isTransactionDone , ad.ActivityExecutionSegmentId ,  ad.ActivityExecutionSegmentValue ,  ad.ExecutionDate ,  ad.AttributeId , ad.AssignmentId , ad.ChildLevelId , ad.territoryId  from  PMCTSTAssignmentActivityDetails as ad  where ad.serverUpdatedStatus='false' and ad.isTransactionDone = 1";
    private String selectPMCFBFAssignmentActivityDetails = "select distinct  ad.detailsID, ad.ActivitySegmentId , ad.ActivityMasterId , ad.attributeValue, ad.isDone, ad.createdBy , ad.createddate, ad.updatedBy , ad.updatedDate ,   ad.isPlanned , ad.pdaId , ad.notdoneRemark, ad.ActivitySegmentValue, ad.ActivityAssignmentId , ad.ActivityAttributeId , ad.ActivitySegmentName, ad.TransId , ad.PairId ,  ad.isTransactionDone , ad.ActivityExecutionSegmentId ,  ad.ActivityExecutionSegmentValue ,  ad.ExecutionDate ,  ad.AttributeId , ad.AssignmentId , ad.ChildLevelId , ad.territoryId  from  PMCFBFAssignmentActivityDetails as ad  where ad.serverUpdatedStatus='false' and ad.isTransactionDone = 1";
    private String selectAssignmentActivityDetails = "select distinct  ad.detailsID, ad.ActivitySegmentId , ad.ActivityMasterId , ad.attributeValue, ad.isDone, ad.createdBy , ad.createddate, ad.updatedBy , ad.updatedDate ,   ad.isPlanned , ad.pdaId , ad.notdoneRemark, ad.ActivitySegmentValue, ad.ActivityAssignmentId , ad.ActivityAttributeId , ad.ActivitySegmentName, ad.TransId , ad.PairId ,  ad.isTransactionDone , ad.ActivityExecutionSegmentId ,  ad.ActivityExecutionSegmentValue ,  ad.ExecutionDate ,  ad.AttributeId , ad.AssignmentId , ad.ChildLevelId , ad.territoryId,ad.isExpensesSubmited   from  pmcAssignmentActivityDetails as ad  where ad.serverUpdatedStatus='false' and ad.isTransactionDone = 1";
    private String surveyAssignmentActivityDetails = "select distinct  ad.detailsID, ad.ActivitySegmentId , ad.ActivityMasterId , ad.attributeValue, ad.isDone, ad.createdBy , ad.createddate, ad.updatedBy , ad.updatedDate ,   ad.isPlanned , ad.pdaId , ad.notdoneRemark, ad.ActivitySegmentValue, ad.ActivityAssignmentId , ad.ActivityAttributeId , ad.ActivitySegmentName, ad.TransId , ad.PairId ,  ad.isTransactionDone , ad.ActivityExecutionSegmentId ,  ad.ActivityExecutionSegmentValue ,  ad.ExecutionDate ,  ad.AttributeId , ad.AssignmentId , ad.ChildLevelId , ad.territoryId  from  pmcSurveyAssignmentActivityDetails as ad  where ad.serverUpdatedStatus='false' and ad.isTransactionDone = 1";
    private String selectAssignmentVisitDetails = "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId,visitId,GPSTimeStamp,StartTimeDevice,StopTimeDevice,StartTimeGPS,StopTimeGPS,CampaignID,Address  FROM pmcAssignmentVisit where serverupdatedstatus='false' ";
    private String surveyAssignmentVisitDetails = "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId,visitId,GPSTimeStamp FROM pmcSurveyAssignmentVisit where serverupdatedstatus='false' ";
    private String FBFResolutionAssignmentVisitDetails = "select ActivityAssignmentId,CreatedBy,createdDate,TransId,ResolvedBy,ResolveName,ResolveRemarks,ResolvedStatus,IsSMSRequired,UpdatedBy,UpdatedDate FROM FBFActivityResolveTrack where serverupdatedstatus='false' ";
    private String selectTSTAssignmentVisitDetails = "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId,visitId,GPSTimeStamp FROM pmcTSTAssignmentVisit where serverupdatedstatus='false' ";
    private String selectFBFAssignmentVisitDetails = "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId,visitId,GPSTimeStamp FROM pmcFBFAssignmentVisit where serverupdatedstatus='false' ";
    private String selectAssignmentActivityDetailsByOffSetQry = "select distinct  ad.detailsID, ad.ActivitySegmentId , ad.ActivityMasterId , ad.attributeValue, ad.isDone, ad.createdBy , ad.createddate, ad.updatedBy , ad.updatedDate ,   ad.isPlanned , ad.pdaId , ad.notdoneRemark, ad.ActivitySegmentValue, ad.ActivityAssignmentId , ad.ActivityAttributeId , ad.ActivitySegmentName, ad.TransId , ad.PairId ,  ad.isTransactionDone , ad.ActivityExecutionSegmentId ,  ad.ActivityExecutionSegmentValue ,  ad.ExecutionDate ,  ad.AttributeId , ad.AssignmentId , ad.ChildLevelId , ad.territoryId,ad.isExpensesSubmited  from  pmcAssignmentActivityDetails as ad  where ad.serverUpdatedStatus='false' and ad.isTransactionDone = 1 LIMIT 1000";
    private String selectLog4NetData = "select date,thread,level,logger,message,exception,userId,exceptionAt, id  from log4net where serverUpdateStatus='false'";
    private String getMasterversionRecords = "select TableName,UpdatedOn from MasterVersionTrackingSystem";
    private String getVillageDataDetails = "select TBL.activityName as activityName, count(TBL.activityid) as activityCount from (Select pfad.activityid,count(pfad.activityid),pfad.farmerid,am.activityName  from PMCfarmerActivityDetails AS pfad INNER JOIN ActivitiyMaster as am on am.activityId= pfad.activityid INNER JOIN pmcFarmerDetails as pfd ON pfd.farmerid=pfad.farmerid GROUP BY pfad.activityid,pfad.farmerid) TBL GROUP BY TBL.activityid";
    private String deleteFarmerLastvisitDetails = "delete from pmcFarmerLastVisitDetails where farmerid in(select farmerid from pmcFarmerDetails where serverUpdatedStatus='false' and isVisited='true')";
    private String deleteAssignmentVisitDetails = "delete from pmcAssignmentVisit where serverUpdatedStatus='false'";
    private String selectSyncErrorLogData = "SELECT Pdaid, ColumnName, SourceID, TableName, ErrorMessage, ErrorStackTrace, Query, synctype, CreatedDate, CreatedBy, UpdatedDate, UpdatedBy, Remarks, isSolved , id FROM SyncErrorLog where ServerUpdatedStatus='false'";
    private String lengthUserMobile = "SELECT itemValue FROM ConfigurableLookup where itemKey ='user_mobile_number_length' and itemType='number'";
    private String lengthCultivated = "SELECT itemValue FROM ConfigurableLookup where itemKey ='cultivated_length' and itemType='number'";
    private String lengthLeasedIn = "SELECT itemValue FROM ConfigurableLookup where itemKey ='leasedin_length' and itemType='number'";
    private String lengthLeasedOut = "SELECT itemValue FROM ConfigurableLookup where itemKey ='leasedout_length' and itemType='number'";
    private String lengthOwned = "SELECT itemValue FROM ConfigurableLookup where itemKey ='owned_length' and itemType='number'";
    private String lengthVisitDesc = "SELECT itemValue FROM ConfigurableLookup where itemKey ='visit_desc_length' and itemType='number'";
    private String lengthUserName = "SELECT itemValue FROM ConfigurableLookup where itemKey ='userRegName_length' and itemType='number'";
    private String lengthMobileNumber = "SELECT itemValue FROM ConfigurableLookup where itemKey ='mobile_number_length' and itemType='number'";
    private String lengthUserPin = "SELECT itemValue FROM ConfigurableLookup where itemKey ='user_pin_length' and itemType='number'";
    private String wrongPasswordEntryCount = "SELECT itemValue FROM ConfigurableLookupMaster where itemKey ='DBWIPE' and itemType='DBWIPE'";
    private String getGPSAvailable = "Select GPSAvailable from DeviceMaster where model='" + UtilDeclarations.getDeviceName() + "'";
    private String getfarmerApprovalCount = "SELECT count(farmerid )  FROM pmcSVFarmerDetails where ApprovalStatus=0 and recordFlag in (1,2,3)";
    private String getConsinment = "SELECT itemValue FROM ConfigurableLookup where itemKey='ConsentText'";
    private String states = "select stateid,statename from pmcStates order by statename";
    private String hybridNames = "select BrandId,BrandName from BrandMaster where IsActive='true' COLLATE NOCASE order by BrandName";
    private String farmerTypes = "select farmerTypeId,farmerTypeName from FarmerTypeMaster  order by farmerTypeName";
    private String getFarmerMultiAttributeDetails = "select * from  FarmerMultiAttributeDetails where ServerUpdatedStatus ='false'";
    private String getDealerMultiAttributeDetails = "select * from  DealerMultiAttributeDetails where ServerUpdatedStatus ='false'";
    private String selectFavouriteFarmerDetails = "select RespondentNo,IsFavourite,PdaId,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate from FavouriteFarmer where ServerUpdatedStatus='false'";
    private String selectApplyLeaveDetails = "select AttendanceID,Fromdate,ToDate,LeaveType,ReasonType,NoOfDays,Remarks,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,pdaid,ReasonType from ApplyLeave where serverupdatedstatus='false'";
    private String expenseAssignmentActivityDetails = "select distinct  ad.detailsID, ad.ActivitySegmentId , ad.ActivityMasterId , ad.attributeValue, ad.isDone, ad.createdBy , ad.createddate, ad.updatedBy , ad.updatedDate ,   ad.isPlanned , ad.pdaId , ad.notdoneRemark, ad.ActivitySegmentValue, ad.ActivityAssignmentId , ad.ActivityAttributeId , ad.ActivitySegmentName, ad.TransId , ad.PairId ,  ad.isTransactionDone , ad.ActivityExecutionSegmentId ,  ad.ActivityExecutionSegmentValue ,  ad.ExecutionDate ,  ad.AttributeId , ad.AssignmentId , ad.ChildLevelId , ad.territoryId ,ad.ParentActivityAssignmentID,ad.ParentActivityTransID,ad.isExpensesSubmited from  pmcExpenseAssignmentActivityDetails as ad  where ad.serverUpdatedStatus='false' and ad.isTransactionDone = 1";
    private String expenseAssignmentVisitDetails = "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId,visitId,GPSTimeStamp FROM pmcExpenseAssignmentVisit where serverupdatedstatus='false' ";
    private String selectsvFarmerListDetails = "select FarmerId,FarmerName,Mobile,Landline,CONumber,RespondentNo,AcreagesOwned,LeasedIn,LeasedOut,Cultivated,isActive, recordFlag,FOId,AssignmentFlag,AssignmentId,Approvalstatus,FODescription,MarketId,Villageid,SVDescription,fouserid from pmcSVFarmerDetails where ServerUpdatedStatus='false' and  AssignmentFlag=1";
    private String svfarmercropmapping = "select FarmerId,CropId,Acreages,recordFlag  from pmcSVFarmerCropMapping where ServerUpdatedStatus='false'";
    private String selectsvFarmerListDetailsForApproval = "select FarmerId,FarmerName,Mobile,Landline,CONumber,RespondentNo,AcreagesOwned,LeasedIn,LeasedOut,Cultivated,isActive, recordFlag,FOId,AssignmentFlag,AssignmentId,Approvalstatus,FODescription,MarketId,Villageid,SVDescription,fouserid from pmcSVFarmerDetails where ServerUpdatedStatus='false' and  Approvalstatus=1 or Approvalstatus=2";
    private String svfarmercropmappingForApproval = "select FarmerId,CropId,Acreages,recordFlag  from pmcSVFarmerCropMapping where ServerUpdatedStatus='false'";
    private String selectFarmerRegistration = "SELECT FarmerID,RespondentNo,UniqueId, FarmerName,CONumber,SWDName, PINCODE, LandMark,Email,Education,AnnualHouseholdIncome, FamilyMembersCount, StateID, StateName, DistrictID, DistrictName, Surname, FarmerSegmentation,ZoneID,RegionID, TerritoryId, AgeGroupId, Gender, Landline, Mobile, MandalID,MandalName,LeasedInAcreages,LeasedOutAcreages,TotalAcreage,TotalCultivated , VillageId , FarmersInfluencedCount, BrandedCPusage , Segment, TotalAcreageInfluencedByFarmer, PreferredRetailerID,LastVisistedDate,ServerStatus,IsActive,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,VillageName,VisitDescription,TotalLandHolding,Latitude,Longitude,TerritoryName,Address1,Address2,Field1,Field2,Field3,Field4,FatherName,PP,ProgressiveScore,LeasedInLandAreaInLocalUnits,LeasedOutLandAreaInLocalUnits,OwnedLandCultivatedInLocalUnits,LandMeasureUnitLeasedInLand,LandMeasureUnitLeasedOutLand,LandMeasureUnitOwnedLandCultivated,TotalLandCultivatedInLocalUnits,MarketId,SocialStatus,Irrigatedland,Rainfedland,PreferredRetailerID2,isNew, serverupdatedstatus,isCompleted,FarmerType,Status from FarmerMaster where serverupdatedstatus='false'";
    private String SVRadiusDataQry = "select lv.Latitude,lv.Longitude,radius,pmcAssignmentActivityDetails.ActivityAssignmentId from pmcAssignmentActivityDetails  INNER JOIN  pmcLastVisitDetails lv  on lv.ActivityAssignmentId=pmcAssignmentActivityDetails.ActivityAssignmentId inner join ActivityMaster am on am.activityMasterId=pmcAssignmentActivityDetails.activityMasterId  group by pmcAssignmentActivityDetails.activityAssignmentID";

    public static Queries getInstance() {
        if (instance == null) {
            instance = new Queries();
        }
        return instance;
    }

    public String getIsCampaignRequired() {
        return this.isCampaignRequired;
    }

    public String getEmployeeID() {
        return this.employeeID;
    }

    public String getBrandNames() {
        return this.brandNames;
    }

    public String getCompanyNames() {
        return this.companyNames;
    }

    public void setCompanyNames(String str) {
        this.companyNames = str;
    }

    public String getSelectResignationDetailsSync() {
        return this.SelectResignationDetailsSync;
    }

    public String getSelectResignationDetails() {
        return this.SelectResignationDetails;
    }

    public String getDeleteUserRoleMapping() {
        return this.deleteUserRoleMapping;
    }

    public String getDeleteTerritoryMaster() {
        return this.deleteTerritoryMaster;
    }

    public String getUpdateDealerCrop() {
        return this.updateDealerCrop;
    }

    public void setUpdateDealerCrop(String str) {
        this.updateDealerCrop = str;
    }

    public String getGetAllFBFVillagesData() {
        return this.getAllFBFVillagesData;
    }

    public String getUsageDetailsQry() {
        return "Select UsageId,PdaId,CategoryID,UserId,UsageDateTime,IsAvailableOffline,Duration,Rating,IsUseFull,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,ContentId,ModuleTypeId,Action,ActionValue,PrimaryKeyId,PrimaryKeyCoulmn from UsageDetails where SyncStatus=0 limit 1000";
    }

    public String getLog4NetQry() {
        return "Select * from Log4Trace where (serverUpdateStatus = 'false' or serverUpdateStatus= 0) limit 1000";
    }

    public String getContentFavouriteDetailsQry() {
        return "select FavouriteId,ContentID,ISFavourite from ContentFaourites where serverUpdatedStatus='false'";
    }

    public String getDealerDetailsSecondTab() {
        return this.dealerDetailsSecondTab;
    }

    public String getEnableCropHybrids() {
        return this.enableCropHybrids;
    }

    public String getEnableCropSeasons() {
        return this.enableCropSeasons;
    }

    public String getUpdateDealerCompany() {
        return this.updateDealerCompany;
    }

    public void setUpdateDealerCompany(String str) {
        this.updateDealerCompany = str;
    }

    public String getUpdatefarmerCropmapping() {
        return this.updatefarmerCropmapping;
    }

    public void setUpdatefarmerCropmapping(String str) {
        this.updatefarmerCropmapping = str;
    }

    public String getGetCountofPMCImages() {
        return this.getCountofPMCImages;
    }

    public void setGetCountofPMCImages(String str) {
        this.getCountofPMCImages = str;
    }

    public String getStates() {
        return this.states;
    }

    public String getImageDetailQuery(int i, int i2, int i3) {
        return "SELECT pfad.ImageId,pfad.AssignmentId,pfad.ActivityId,pfad.AttributeId,pfad.SubJect,pfad.Comments,pfad.Remarks,pfad.PicturePath,pfad.CreatedBy,pfad.CreatedDate,pfad.UpdatedBy,pfad.UpdatedDate,pfad.pdaId,pfad.FarmerId,pfad.ServerStatus,pfad.ReferenceType,pfad.ReferenceID,pfad.EventTypeId FROM ActivityImageDetails AS pfad  where pfad.ServerStatus=0 and pfad.AssignmentId =" + i + " and pfad.ActivityId=" + i2 + " and pfad.AttributeId= " + i3;
    }

    public String getImageDetailQueryBYImageId(String str) {
        return "SELECT pfad.ImageId,pfad.AssignmentId,pfad.ActivityId,pfad.AttributeId,pfad.SubJect,pfad.Comments,pfad.Remarks,pfad.PicturePath,pfad.CreatedBy,pfad.CreatedDate,pfad.UpdatedBy,pfad.UpdatedDate,pfad.pdaId,pfad.ReferenceType,pfad.ReferenceID,pfad.EventTypeId FROM ActivityImageDetails AS pfad  where pfad.imageId=" + str;
    }

    public String getImagesPathList(int i, String str) {
        return "select PicturePath from ActivityImageDetails   where attributeid='" + i + "' and ReferenceID='" + str + "'";
    }

    public String getAudianceFarmerMappingID(String str, String str2) {
        return "select fxCustomerRegistrationConfigurationColumnID from FxCustomerAttibuteMappingMaster where AttributeID='" + str + "' and ActivityID='" + str2 + "' and IsActive=1";
    }

    public String getFarmerTableColName(String str) {
        return "select DBColumnName from fxCustomerRegistrationConfiguration  where ColumnId='" + str + "' and IsActive=1";
    }

    public String getDistrictlist(int i) {
        return "select districtid,districtname from districts where stateid='" + i + "' order by districtname";
    }

    public String getTalukasList(int i) {
        return "select TalukaId,TalukaName from Taluka where DistrictId='" + i + "' order by TalukaName";
    }

    public String getVillagesList(int i) {
        return "select VillageId,VillageName from Villages where TalukaId='" + i + "' order by VillageName";
    }

    public String getItemKeyByConfigId(int i) {
        return "select ItemKey FROM ConfigurablelookupMaster where configId = " + i + "";
    }

    public String getAgeList() {
        return "select ageId,ageRange from pmcAge order by ageId";
    }

    public String getSeasonNames() {
        return this.seasonNames;
    }

    public String getHybridNames() {
        return this.hybridNames;
    }

    public String getFarmerTypes() {
        return this.farmerTypes;
    }

    public String getGetConsinment() {
        return this.getConsinment;
    }

    public void setGetConsinment(String str) {
        this.getConsinment = str;
    }

    public String getUserMobileNumber() {
        return this.userMobileNumber;
    }

    public String getUserName() {
        return this.userName;
    }

    public String getPdaId() {
        return this.pdaId;
    }

    public String getCropNames() {
        return this.cropNames;
    }

    public String getSegmentTypes() {
        return this.segmentTypes;
    }

    public String getIrrigationTypes() {
        return this.irrigationTypes;
    }

    public String getPmcRetailers() {
        return this.pmcRetailers;
    }

    public String getGetAllVillagesData() {
        return this.getAllVillagesData;
    }

    public String getGetAllSurveyVillagesData() {
        return this.getAllSurveyVillagesData;
    }

    public String getGetAllActivityTODOData() {
        return "select activitymasterid,ActivityMasterId,PackageName, 0 AS tbv, 0 as vc, 0 as pd FROM pmcassignmentactivitydetails as pad where isplanned = 1 and istransactiondone in(0,2) and UPPER(location1) <> '' and  pad.isActive=1  GROUP BY activitymasterid";
    }

    public String getGetAllActivityTODODataTBV(String str, String str2) {
        return "SELECT  COUNT(distinct AssignmentId) FROM pmcassignmentactivitydetails as ppd inner join activitymaster am on am.ActivityMasterId =ppd.ActivityMasterId and (am.isActive = 1 OR am.isActive = 'true') and ppd.isActive=1  where isplanned = 1 and istransactiondone in(0,2)  and ppd.activitymasterid=  " + str;
    }

    public String getGetAllActivityTODODataPAD(String str, String str2) {
        return "SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd where isplanned = 1 and istransactiondone = 1 and serverUpdatedStatus = 'false'  and ppd.activitymasterid=" + str;
    }

    public String getGetAllSurveyTODOData() {
        return "select activitymasterid,ActivityMasterId,PackageName, 0 AS tbv, 0 as vc,0 as pd FROM pmcSurveyAssignmentActivityDetails as pad where isplanned = 1 and istransactiondone in(0,2) and  pad.isActive=1 GROUP BY activitymasterid";
    }

    public String getGetAllSurveyTODODataTBV(String str) {
        return "SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcSurveyAssignmentActivityDetails as ppd inner join SurveyActivityMaster am on am.ActivityMasterId =ppd.ActivityMasterId and (am.isActive = 1 OR am.isActive = 'true') and ppd.isActive=1  where isplanned = 1 and istransactiondone in(0,2)  and ppd.activitymasterid= " + str;
    }

    public String getGetAllSurveyTODODataPD(String str) {
        return "SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcSurveyAssignmentActivityDetails as ppd where isplanned = 1 and istransactiondone = 1 and serverUpdatedStatus = 'false'  and ppd.activitymasterid= " + str;
    }

    public String getGetAllVillagesData(String str) {
        return "select UPPER(location1) as location1,UPPER(location2) as location2, 0 AS tbv, 0 as vc,0 as pd FROM pmcassignmentactivitydetails as pad where isplanned = 1 and UPPER(location1) <> '' and  pad.isActive=1   GROUP BY  UPPER(location1) ,UPPER(location2)";
    }

    public String getGetAllVillagesDataTBV(String str, String str2, String str3) {
        return "SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd inner join activitymaster am on am.ActivityMasterId =ppd.ActivityMasterId and (am.isActive = 1 OR am.isActive = 'true') where isplanned = 1 and istransactiondone in(0,2)  and ppd.location1 = '" + str + "' and  ppd.location2 = '" + str2 + "' and ppd.isActive=1";
    }

    public String getGetAllVillagesDataPD(String str, String str2, String str3) {
        return "SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd where isplanned = 1 and istransactiondone = 1 and serverUpdatedStatus = 'false' and ppd.location1 = '" + str + "' and  ppd.location2 ='" + str2 + "'";
    }

    public String getGetAllActivityTODOData(String str) {
        return "select activitymasterid,ActivityMasterId,PackageName, 0 AS tbv, 0 as vc,0 as pd FROM pmcassignmentactivitydetails as pad where isplanned = 1 and UPPER(location1) <> '' and  pad.isActive=1  GROUP BY activitymasterid";
    }

    public String getGetAllFeedBackData() {
        return "select activitymasterid,ActivityMasterId,PackageName, (SELECT  COUNT(distinct TransId) FROM pmcFBFassignmentactivitydetails as ppd \ninner join FBFactivitymaster am on am.ActivityMasterId =ppd.ActivityMasterId and (am.isActive = 1 OR am.isActive = 'true') and \nppd.isActive=1  where (isplanned =1 OR isPlanned=0) and ppd.activitymasterid= pad .activitymasterid ) AS tbv, 0 as vc,\n(SELECT  COUNT(distinct TransId) FROM pmcFBFassignmentactivitydetails as ppd where \nisDone=1 and ppd.activitymasterid= pad .activitymasterid) as pd FROM pmcFBFassignmentactivitydetails as pad \nwhere pad.isActive=1 and (tbv>0 OR pd>0) GROUP BY activitymasterid";
    }

    public String getGetAllActivitySummaryTODOData() {
        return "select  am.activitymasterid,am.ActivityMasterName, PackageName,Target,Plan,Actual  from activitymaster am left join ActivitySummaryDetails asm on asm.ActivityMasterId =am.ActivityMasterId left join pmcassignmentactivitydetails pad on pad.ActivityMasterId =am.ActivityMasterId and (am.isActive = 1 OR am.isActive = 'true') where (am.isActive = 1 OR am.isActive = 'true') GROUP BY am.activitymasterid,am.ActivityMasterName, PackageName,Target,Plan,Actual order by am.ActivityMasterName";
    }

    public String getGetAllVillagesDataBySegment(String str) {
        return "select UPPER(location1) as location1,UPPER(location2) as location2, (SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd inner join activitymaster am on am.ActivityMasterId =ppd.ActivityMasterId and (am.isActive = 1 OR am.isActive = 'true') where isplanned = 1 and istransactiondone in(0,2)  and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2 and ppd.isActive=1  ) AS tbv, 0 as vc,(SELECT  COUNT(distinct ActivityAssignmentId) FROM pmcassignmentactivitydetails as ppd where isplanned = 1 and istransactiondone = 1 and serverUpdatedStatus = 'false' and ppd.location1 = pad .location1 and  ppd.location2 = pad .location2  ) as pd FROM pmcassignmentactivitydetails as pad where isplanned = 1 and UPPER(location1) <> '' and  pad.isActive=1 and (tbv>0 OR pd>0) and ActivitySegmentId =" + str + " GROUP BY  UPPER(location1) ,UPPER(location2)";
    }

    public String getGetVillageDisplayData() {
        return this.getVillageDisplayData;
    }

    public String getGetQueryOfvillageDisplay() {
        return this.getQueryOfvillageDisplay;
    }

    public String getDeleteUserDetails() {
        return this.deleteUserDetails;
    }

    public String getGetShowVillagesCount() {
        return this.getShowVillagesCount;
    }

    public String getGetPasswordFromUserDetails() {
        return this.getPasswordFromUserDetails;
    }

    public String getDeleteFarmerCropMapping() {
        return this.deleteFarmerCropMapping;
    }

    public String getDeleteFarmerActDetails() {
        return this.deleteFarmerActDetails;
    }

    public String getDeleteFBFResolveTrackActDetails(long j) {
        return "delete from FBFActivityResolveTrack where TransId='" + j + "'";
    }

    public String getDeleteDetailsbyID(String str, String str2, String str3) {
        return "delete from " + str2 + " where " + str3 + " IN (" + str + ")";
    }

    public String UpdateDetailsbyID(String str, String str2, String str3) {
        return "update " + str2 + "  set  serverUpdatedStatus='true' where serverUpdatedStatus='false' and " + str3 + " IN (" + str + ")";
    }

    public String getUpdateTestFarmerActDetails() {
        return "Update pmcAssignmentActivityDetails set serverupdatedstatus='true' where serverupdatedstatus='false' and isTransactionDone = '1'";
    }

    public String getDeleteImageActDetails(long j) {
        return "delete from ActivityImageDetails where ImageId =" + j;
    }

    public String getUpdateImageActDetails(String str) {
        return "Update ActivityImageDetails set ServerStatus='0'  where ImageId =" + str;
    }

    public String setUpdateVideoActDetails(String str) {
        return "Update ActivityImageDetails set ServerStatus='true' where ImageId=" + str;
    }

    public String getDeletelog4net() {
        return this.deletelog4net;
    }

    public String getDeleteSyncErrorLog() {
        return this.deleteSyncErrorLog;
    }

    public String getUpdateFarmerMaster() {
        return this.updateFarmerMaster;
    }

    public void setUpdateFarmerMaster(String str) {
        this.updateFarmerMaster = str;
    }

    public String getUpdateDealerrMaster() {
        return this.updateDealerrMaster;
    }

    public void setUpdateDealerrMaster(String str) {
        this.updateDealerrMaster = str;
    }

    public String getGetcountoflog4net() {
        return this.getcountoflog4net;
    }

    public String getGetcountofSyncErrorLog() {
        return this.getcountofSyncErrorLog;
    }

    public String getGetCountofFarmerActivityDetails() {
        return this.getCountofFarmerActivityDetails;
    }

    public String getGetCountofPMCFarmerCropping() {
        return this.getCountofPMCFarmerCropping;
    }

    public String getGetCountofPMCFarmerDetails() {
        return this.getCountofPMCFarmerDetails;
    }

    public String getGetCountofPMCDataQuery() {
        return this.getCountofPMCDataQuery;
    }

    public String getDeleteFarmerDetails() {
        return this.deleteFarmerDetails;
    }

    public String getSelectFarmerActDetails() {
        return this.selectFarmerActDetails;
    }

    public String getSelectFarmerCropMapping() {
        return this.selectFarmerCropMapping;
    }

    public String getSelectFarmerLandDetails() {
        return this.selectFarmerLandDetails;
    }

    public String getselectDealerLandDetails() {
        return this.selectDealerLandDetails;
    }

    public String getSelectAttendanceDetails() {
        return this.selectAttendanceDetails;
    }

    public String getSelectPMCAttendanceDetails() {
        return this.selectPMCAttendanceDetails;
    }

    public void setSelectFarmerLandDetails(String str) {
        this.selectFarmerLandDetails = str;
    }

    public String getSelectFarmerListDetails() {
        return this.selectFarmerListDetails;
    }

    public String getWrongPasswordEntryCount() {
        return this.wrongPasswordEntryCount;
    }

    public String getSelectLog4NetData() {
        return this.selectLog4NetData;
    }

    public String getGetMasterversionRecords() {
        return this.getMasterversionRecords;
    }

    public String getGetVillageDataDetails() {
        return this.getVillageDataDetails;
    }

    public String getDeleteFarmerLastvisitDetails() {
        return this.deleteFarmerLastvisitDetails;
    }

    public String getDeleteAssignmentVisitDetails() {
        return this.deleteAssignmentVisitDetails;
    }

    public String getSelectSyncErrorLogData() {
        return this.selectSyncErrorLogData;
    }

    public String getLengthUserMobile() {
        return this.lengthUserMobile;
    }

    public String getLengthCultivated() {
        return this.lengthCultivated;
    }

    public String getLengthLeasedIn() {
        return this.lengthLeasedIn;
    }

    public String getLengthLeasedOut() {
        return this.lengthLeasedOut;
    }

    public String getLengthOwned() {
        return this.lengthOwned;
    }

    public String getLengthVisitDesc() {
        return this.lengthVisitDesc;
    }

    public String getLengthUserName() {
        return this.lengthUserName;
    }

    public String getLengthMobileNumber() {
        return this.lengthMobileNumber;
    }

    public String getLengthUserPin() {
        return this.lengthUserPin;
    }

    public String getGetGPSAvailable() {
        return this.getGPSAvailable;
    }

    public String getAllFarmersData(int i, int i2) {
        if (i2 == 1) {
            return "SELECT pf.farmerId, pf.farmerName, pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.ismba FROM pmcFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcFarmerActivityDetails AS acd ON acd.farmerid=pf.farmerid AND acd.isPlanned=1 where pf.isVisited ='false' and pf.villageId=" + i + " and    ifnull(length(isActive ), 0) = 0 and  (Field1 !='0'OR ifnull(length(Field1), 0) = 0) GROUP BY  pf.farmerId, pf.farmerName, pf.mobile order by pf.farmerId";
        }
        return "SELECT pf.farmerId, pf.farmerName, pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.ismba FROM pmcFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcFarmerActivityDetails AS acd ON acd.farmerid=pf.farmerid AND acd.isPlanned=1 where pf.isVisited ='false' and pf.villageId=" + i + " and    ifnull(length(isActive ), 0) = 0 and  (Field1 !='0'OR ifnull(length(Field1), 0) = 0) GROUP BY  pf.farmerId, pf.farmerName, pf.mobile order by pf.farmerName";
    }

    public String getAllFarmersDataContactBased() {
        return "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId,PackageName,latitude,longitude,paad.createdBy  from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId and (am.isActive = 1 OR am.isActive = 'true') inner join ActivitySegmentMaster as asm on paad.ActivitySegmentId = asm.ActivitySegmentId where asm.ActivitySegmentTypeId = 3 and isplanned= 1 and location1 <> '' and paad.isActive=1 paad.isTransactionDone = 0  group by paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId";
    }

    public String getAllFarmersDataContactBasedByFilters(String str, String str2) {
        return "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId,PackageName  " + latlongsForTodoFilter() + " from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId inner join ActivitySegmentMaster as asm on paad.ActivitySegmentId = asm.ActivitySegmentId where asm.ActivitySegmentTypeId = 3 and isplanned= 1 and location1 <> '' and paad.isActive=1 " + str + str2 + " group by paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId";
    }

    public String getAllFarmersDataTimeBasedByFilters(String str, String str2) {
        return "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate ,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId,PackageName   " + latlongsForTodoFilter() + ",createdBy from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId inner join ActivitySegmentMaster as asm on paad.ActivitySegmentId = asm.ActivitySegmentId where  isplanned= 1  and location1 <> '' and paad.isActive=1 paad.isTransactionDone in(0,2) " + str + str2 + " group by paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId order by assignmentId,startdate ASC";
    }

    public String latlongsForTodoFilter() {
        return ",CASE WHEN (asm .RefrenceTableName = 'FarmerMaster') THEN (SELECT latitude FROM FarmerMaster WHERE FARMERID = ActivitySegmentValue) WHEN (asm .RefrenceTableName = 'DealerMaster') THEN (SELECT latitude  FROM DealerMaster WHERE ContactId = ActivitySegmentValue ) WHEN  (asm .RefrenceTableName='VillageMaster') THEN (SELECT latitude  FROM VillageMaster INNER JOIN MandalMaster ON VillageMaster.MandalID = MandalMaster.MandalId WHERE VillageID=ActivitySegmentValue ) ELSE 'n/a' END AS 'latitude',CASE WHEN (asm .RefrenceTableName = 'FarmerMaster') THEN (SELECT longitude FROM FarmerMaster WHERE FARMERID = ActivitySegmentValue) WHEN (asm .RefrenceTableName = 'DealerMaster') THEN (SELECT longitude FROM DealerMaster WHERE ContactId = ActivitySegmentValue ) WHEN  (asm .RefrenceTableName='VillageMaster') THEN (SELECT longitude FROM VillageMaster INNER JOIN MandalMaster ON VillageMaster.MandalID = MandalMaster.MandalId WHERE VillageID=ActivitySegmentValue ) ELSE 'n/a' END AS 'longitude '";
    }

    public String getAllFarmersDataTimeBased(String str, String str2) {
        return "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate ,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId ,PackageName,latitude,longitude,paad.createdBy  from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId and (am.isActive = 1 OR am.isActive = 'true') where  isplanned= 1  and location1 <> '' and paad.isActive=1 and paad.isTransactionDone in(0,2) " + str + str2 + "group by paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId order by startdate ASC";
    }

    public String getAllSurveysDataTimeBased(String str, String str2) {
        return "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate ,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId ,PackageName,latitude,longitude,paad.createdBy  from pmcSurveyAssignmentActivityDetails as paad inner Join SurveyActivityMaster as am on paad.activitymasterid = am.ActivityMasterId where  isplanned= 1  and location1 <> '' and paad.isActive=1 and paad.isTransactionDone in(0,2) " + str + str2 + "group by paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId order by startdate ASC";
    }

    public String getAllFarmersDataTimeBasedBySegmentID(String str) {
        return "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate ,assignmentId,serverUpdatedStatus,isdone,istransactionDone  from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId where  isplanned= 1  and location1 <> ''and paad.ActivitySegmentId =" + str + " paad.isTransactionDone = 0  group by paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate,assignmentId order by enddate ASC";
    }

    public String getAllFarmersData(String str, String str2) {
        return "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName  from pmcassignmentactivitydetails Left Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId where lower(location1) = '" + str + "' and lower(location2) = '" + str2 + "' and pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(0,2) group by activityassignmentid order by assignmentId";
    }

    public String getAllFarmersDataWithFilter(String str, String str2, String str3, String str4) {
        return "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName,latitude,longitude,pmcassignmentactivitydetails.createdBy  from pmcassignmentactivitydetails Inner Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId where lower(location1) = '" + str + "' and lower(location2) = '" + str2 + "' and pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(0,2) " + str3 + " " + str4 + " group by activityassignmentid order by assignmentId";
    }

    public String getAllFarmersDataWithFilter(String str, String str2, String str3, String str4, String str5) {
        return "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName,latitude,longitude,pmcassignmentactivitydetails.createdBy  from pmcassignmentactivitydetails Inner Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId where lower(location1) = '" + str + "' and lower(location2) = '" + str2 + "' and pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(0,2) " + str3 + " " + str4 + " group by activityassignmentid order by assignmentId";
    }

    public String getAllSurveysDataWithFilter(String str, String str2, String str3, String str4) {
        return "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcSurveyAssignmentActivityDetails .activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName,latitude,longitude,pmcSurveyAssignmentActivityDetails.createdBy  from pmcSurveyAssignmentActivityDetails Inner Join SurveyActivityMaster as am on pmcSurveyAssignmentActivityDetails .activitymasterid = am.ActivityMasterId where lower(location1) = '" + str + "' and lower(location2) = '" + str2 + "' and pmcSurveyAssignmentActivityDetails.isActive=1 and isTransactionDone in(0,2) " + str3 + " " + str4 + " group by activityassignmentid order by assignmentId";
    }

    public String getAllFarmersDataWithFilterByActivity(String str, String str2, String str3, String str4) {
        return "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName,latitude,longitude,pmcassignmentactivitydetails.createdBy  from pmcassignmentactivitydetails Inner Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId where pmcassignmentactivitydetails.activitymasterid = '" + str + "' and pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(0,2) and pmcassignmentactivitydetails.location1<>'' " + str3 + " " + str4 + " group by activityassignmentid order by assignmentId";
    }

    public String getAllSurveysDataWithFilterByActivity(String str, String str2, String str3, String str4) {
        return "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcSurveyAssignmentActivityDetails.activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName,latitude,longitude,pmcSurveyAssignmentActivityDetails.createdBy  from pmcSurveyAssignmentActivityDetails Inner Join SurveyActivityMaster as am on pmcSurveyAssignmentActivityDetails .activitymasterid = am.ActivityMasterId where pmcSurveyAssignmentActivityDetails.activitymasterid = '" + str + "' and pmcSurveyAssignmentActivityDetails.isActive=1 and isTransactionDone in(0,2) " + str3 + " " + str4 + " group by activityassignmentid order by assignmentId";
    }

    public String getAllFBFDataWithFilterByActivity(String str, String str2, String str3, String str4) {
        return "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcFBFAssignmentActivityDetails.activitymasterid,TransId,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName,pmcFBFAssignmentActivityDetails.createddate,latitude,longitude,pmcFBFAssignmentActivityDetails.createdBy  from pmcFBFAssignmentActivityDetails Inner Join FBFActivityMaster as am on pmcFBFAssignmentActivityDetails .activitymasterid = am.ActivityMasterId where pmcFBFAssignmentActivityDetails.activitymasterid = '" + str + "' and pmcFBFAssignmentActivityDetails.isActive=1 and (isTransactionDone=0 OR isTransactionDone=1) group by TransId order by assignmentId";
    }

    public String getAllFarmersDataFilterWithRadius(String str, String str2, String str3, String str4) {
        return "select pmcassignmentactivitydetails.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName " + latlongsForTodoFilter() + "  from pmcassignmentactivitydetails Left Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId  inner join ActivitySegmentMaster as asm on pmcassignmentactivitydetails.ActivitySegmentId = asm.ActivitySegmentId  where lower(location1) = '" + str + "' and lower(location2) = '" + str2 + "' and pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(0,2) " + str3 + " " + str4 + "  group by activityassignmentid order by assignmentId";
    }

    public String getFarmersDatafromFarmersList(int i, int i2) {
        return "SELECT pf.farmerId, pf.farmerName, pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.ismba FROM pmcFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcFarmerActivityDetails AS acd ON acd.farmerid=pf.farmerid AND acd.isPlanned=1 where pf.isVisited ='false' and pf.villageId=" + i + " and  pf.ismba=0 and  ifnull(length(isActive ), 0) = 0 and  (Field1 !='0'OR ifnull(length(Field1), 0) = 0) GROUP BY  pf.farmerId, pf.farmerName, pf.mobile order by pf.farmerName";
    }

    public String getAssignmentsDatafromFarmersList(int i, int i2) {
        return "SELECT pf.farmerId, pf.farmerName, pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.ismba FROM pmcFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcFarmerActivityDetails AS acd ON acd.farmerid=pf.farmerid AND acd.isPlanned=1 where pf.isVisited ='false' and pf.villageId=" + i + " and pf.ismba=1 and   ifnull(length(isActive ), 0) = 0 and  (Field1 !='0'OR ifnull(length(Field1), 0) = 0) GROUP BY  pf.farmerId, pf.farmerName, pf.mobile order by pf.farmerName";
    }

    public String getAllStatusActivityData() {
        return "select marketname,statename,districtname,talukaname,activityname,SUM(fopendingcount) as PendinfStatus,SUM(approvependingcount ) as ApprStatus,fopendingcount,approvependingcount from pmcStatusDetails group by marketname,statename,districtname,talukaname,activityname";
    }

    public String getAllStatusViilagesActivityData(String str) {
        return "select villagename,statename,districtname,talukaname,activityname,SUM(fopendingcount) as PendinfStatus,SUM(approvependingcount ) as ApprStatus from pmcStatusDetails where marketname like '%" + str + "' group by villagename,statename,districtname,talukaname,activityname";
    }

    public String getMBAAssignmentsData() {
        return "select assignmentID from pmcFarmerActivityDetails inner join pmcFarmerDetails on pmcFarmerDetails.farmerId=pmcFarmerActivityDetails.farmerId where pmcFarmerDetails.ismba=1";
    }

    public String getStatusCreatedDate(int i) {
        return "select createddate from pmcStatusDetails where rowid=" + i;
    }

    public String getStatusMaxId() {
        return "select max(rowid) from pmcStatusDetails";
    }

    public String getStatusActivityDataByFOId(int i) {
        return "select marketname,statename,districtname,talukaname,activityname,SUM(fopendingcount) as PendinfStatus,SUM(approvependingcount ) as ApprStatus,fopendingcount,approvependingcount from pmcStatusDetails where foid=" + i + " group by marketname,statename,districtname,talukaname,activityname";
    }

    public String getAllFarmersDataById(int i) {
        return "SELECT farmerId, farmerName,surName,fatherName,mobile,landline,coNumber,pinCode,landMark,pf  .latitude,pf  .longitude,emailAddress,education,annualHouseholdIncome,noofFamilyMembers,respondentNo,stateName,districtName,mandalName,villageName,respondentName,gender,segment,acreagesOwned,leasedIn,leasedOut,cultivated,isBayerFarmer,pf .retailerId,visitDescription,pf  .createdBy,pf.createddate,pf.updatedBy,pf.updatedDate,pf.isActive,pf.serverUpdatedStatus,pf.isVisited,pf.lastVisitedDate,pf.villageId,UPPER(case when pr.retailerShopName is null then '' else  pr.retailerShopName end)||'('||case when pr.contactName is null then '' else pr.contactName end||')'||'('||case when pr.mobileNumber is null then '' else  pr.mobileNumber end ||')', totalLandHolding, Address,pf.ismba  from pmcFarmerDetails AS pf  LEFT JOIN pmcRetailers AS pr ON pf.retailerid=pr.contactId where pf.farmerid=" + i;
    }

    public String getLastvistFarmerData(String str, int i) {
        return "SELECT  attributevalue,activityname,activitysegmentid,activitysegmentvalue,attributeid,attributename,lastvisitdate ,location1,location2,person1,person2,visitdescription,previousActivityAssignmentId,ActivityAssignmentId,FOName FROM pmcLastVisitDetails where activitysegmentvalue ='" + str + "' and ActivityAssignmentId = '" + i + "' order by lastvisitdate";
    }

    public String getCropIdByCropName(String str) {
        return "SELECT cropId FROM CropMaster where cropName ='" + str + "'";
    }

    public String getCompanyIdByCompanyName(String str) {
        return "SELECT CompanyId FROM CompanyMaster where CompanyName ='" + str + "'  limit 1";
    }

    public String getCropsandAcreages(String str) {
        return "SELECT CropMaster.cropId,CropMaster.cropName ,FarmerCropDetails.Acreages, FarmerCropDetails.productid,FarmerCropDetails.DetailsID,FarmerCropDetails.dos,FarmerCropDetails.SeasonId,FarmerCropDetails.IrrigationType,FarmerCropDetails.CreatedDate,FarmerCropDetails.AcreageType,FarmerCropDetails.AcreageValue  FROM FarmerCropDetails inner join CropMaster  on FarmerCropDetails.cropId = CropMaster.cropId where FarmerCropDetails.RespondentNo ='" + str + "' and (FarmerCropDetails.IsActive = 'True' or  FarmerCropDetails.IsActive = 1) ORDER BY CropMaster.cropName";
    }

    public String getPlotDetails(String str) {
        return " SELECT DetailsID ,FarmerID ,LandName,Acreages,Address,Latitude,Longitude,IsOnField,RespondentNo from  FarmerLandDetails where RespondentNo =  '" + str + "'";
    }

    public String getDealerPlotDetails(String str) {
        return " SELECT DetailsID ,ContactId ,LandName,Acreages,Address,Latitude,Longitude,IsOnField from  DealerLandDetails where ContactId =  '" + str + "'";
    }

    public String getCompaniesAndSales(String str) {
        return "SELECT CompanyMaster.CompanyId,CompanyMaster.CompanyName ,DealerCompanyMapping.CompanySales,DealerCompanyMapping.MappingId FROM DealerCompanyMapping inner join CompanyMaster  on DealerCompanyMapping.CompanyId = CompanyMaster.CompanyId where DealerCompanyMapping.ContactId ='" + str + "' ORDER BY CompanyMaster.CompanyName";
    }

    public String getDealerCrops(String str) {
        return "SELECT CropMaster.cropId,CropMaster.cropName ,DealerCropMapping.CropSales,DealerCropMapping.MappingId,DealerCropMapping.ContactID,DealerCropMapping.CompanyHybridSaleBrandId1,DealerCropMapping.CompanyHybridSaleBrandId2,DealerCropMapping.CompetitonHybridSaleBrandId1,DealerCropMapping.CompetitonHybridSaleBrandId2,DealerCropMapping.CompanySale1,DealerCropMapping.CompanyHybridSale1,DealerCropMapping.CompanyHybridSale2,DealerCropMapping.CompetitonHybridSale1,DealerCropMapping.CompetitonHybridSale2,DealerCropMapping.CompanyId1,DealerCropMapping.CompanyId2 FROM DealerCropMapping inner join CropMaster  on DealerCropMapping.cropId = CropMaster.cropId where DealerCropMapping.contactId ='" + str + "'  ORDER BY CropMaster.cropName";
    }

    public String getDealerHybrids(String str) {
        return "SELECT BrandMaster.BrandID,DealerCropMapping.cropName ,DealerCropMapping.CropSales,DealerCropMapping.MappingId,DealerCropMapping.ContactID FROM DealerCropMapping inner join BrandMaster  on DealerCropMapping.cropId = BrandMaster.BrandID where DealerCropMapping.contactId ='" + str + "'  ORDER BY BrandMaster.BrandName";
    }

    public String deleteCropMappingRec(int i) {
        return "delete from pmcFarmerCropMapping where mappingId=" + i;
    }

    public String getCropAcreagesForCrop(String str, int i) {
        return "Select AcreageValue   from FarmerCropDetails  where RespondentNo='" + str + "' and CropID='" + i + "' and (IsActive = 'True' or IsActive = 1)  limit 1";
    }

    public String getSeasonForCrop(String str, int i) {
        return "Select SeasonID   from FarmerCropDetails  where RespondentNo='" + str + "' and CropID='" + i + "' and (IsActive = 'True' or IsActive = 1)  limit 1";
    }

    public String getSeasonName(String str) {
        return "Select SeasonName   from SeasonMaster  where seasonID='" + str + "'";
    }

    public String getIrrigationForCrop(String str, int i) {
        return "Select IrrigationType   from FarmerCropDetails  where RespondentNo='" + str + "' and CropID='" + i + "' and (IsActive = 'True' or IsActive = 1) limit 1";
    }

    public String getCompanySalesForCompany(String str, int i) {
        return "Select CompanySales from DealerCompanyMapping where ContactId ='" + str + "' and CompanyId=" + i + " limit 1";
    }

    public String getCropSales(String str, int i) {
        return "Select CropSales from DealerCropMapping where ContactId ='" + str + "' and CropId=" + i + " limit 1";
    }

    public String getCropSales1(String str, int i) {
        return "Select CropName from DealerCropMapping where ContactId ='" + str + "' and CropId=" + i + " limit 1";
    }

    public String getDosFromCrop(String str, int i) {
        return "Select dos from FarmerCropDetails where RespondentNo ='" + str + "' and  CropID ='" + i + "'  limit 1";
    }

    public String getCountForCrops(int i, int i2) {
        return "Select  count() from pmcFarmerCropMapping where RespondentNo =" + i + " and  cropId ='" + i2 + "'";
    }

    public String deleteFarmerCropData(String str, int i) {
        return "delete from FarmerCropDetails where  CropID =" + i + " and RespondentNo ='" + str + "'";
    }

    public String deleteFarmerCropDataBymappingID(String str, int i) {
        return "delete from FarmerCropDetails where  DetailsID =" + i + " and RespondentNo ='" + str + "'";
    }

    public String deleteFarmerLandDataBymappingID(String str, int i) {
        return "delete from DealerLandDetails where  DetailsID =" + i + " and ContactId ='" + str + "'";
    }

    public String UpdateFarmerCropDataBymappingID(String str) {
        return "update  FarmerCropDetails set serverUpdatedStatus ='false' where RespondentNo ='" + str + "'";
    }

    public String UpdateFarmerCropStatus(String str, String str2, int i) {
        return "update  FarmerCropDetails set serverUpdatedStatus ='false',pdaid = " + str2 + ",CreatedBy = " + i + " where RespondentNo ='" + str + "'";
    }

    public String UpdateDealerCropDataBymappingID(String str) {
        return "update  DealerCropMapping set ServerUpdatedStatus ='false' where ContactId ='" + str + "'";
    }

    public String UpdateDealerCropStatus(String str, int i) {
        return "update  DealerCropMapping set status ='" + i + "' ,ServerUpdatedStatus ='false' where ContactId ='" + str + "'";
    }

    public String UpdateDealerCompanyDataBymappingID(String str) {
        return "update  DealerCompanyMapping  set ServerUpdatedStatus ='false' where ContactId ='" + str + "'";
    }

    public String UpdateDealerCompanyStatus(String str, int i) {
        return "update  DealerCompanyMapping  set status ='" + i + "' ,ServerUpdatedStatus ='false' where ContactId ='" + str + "'";
    }

    public String deleteDealerCompanyData(String str, int i) {
        return "delete from DealerCompanyMapping where  CompanyId =" + i + " and ContactId ='" + str + "'";
    }

    public String deleteDealerCompanyDataByMappingId(String str, int i) {
        return "delete from DealerCompanyMapping where  MappingId    =" + i + " and ContactId ='" + str + "'";
    }

    public String deleteDealerCropDataByMappingId(String str, int i) {
        return "delete from DealerCropMapping where  MappingId    =" + i + " and ContactId ='" + str + "'";
    }

    public String deleteFarmerCropData(int i) {
        return "delete from pmcFarmerCropMapping where  RespondentNo =" + i + "";
    }

    public String getPMCAssignedActivitiesQuery(String str) {
        return "select  DISTINCT ActivityMaster.ActivityMasterId,ActivityMaster.ActivityMasterName,pmcAssignmentActivityDetails.isPlanned,pmcAssignmentActivityDetails.isDone from ActivityMaster INNER  JOIN pmcAssignmentActivityDetails ON ActivityMaster.ActivityMasterId=pmcAssignmentActivityDetails.ActivityMasterId AND pmcAssignmentActivityDetails.ActivitySegmentValue='" + str + "' order by isPlanned desc,ActivityMaster.ActivityMasterId asc";
    }

    public String getPMCNotAssignedActivitiesQuery(int i, int i2) {
        if (i2 == 1) {
            return "select  DISTINCT ActivitiyMaster.activityid,ActivitiyMaster.activityName from ActivitiyMaster Inner Join ActivityAssignmentTypeMapping on ActivitiyMaster.activityID= ActivityAssignmentTypeMapping.ActivityId Inner Join ConfigurableLookup on ConfigurableLookup.itemValue = ActivityAssignmentTypeMapping .AssignmentTypeId where ConfigurableLookup.itemKey = 'VBAWithoutFarmer' and ActivitiyMaster.activityid not in(Select  activityid  from pmcFarmerActivityDetails where farmerid='" + i + "' ) and ActivitiyMaster.activityid not in (select itemvalue from ConfigurableLookup where itemkey='fieldday') ORDER BY ActivitiyMaster.activityName ";
        }
        return "select  DISTINCT ActivitiyMaster.activityid,ActivitiyMaster.activityName from ActivitiyMaster Inner Join ActivityAssignmentTypeMapping on ActivitiyMaster.activityID= ActivityAssignmentTypeMapping.ActivityId Inner Join ConfigurableLookup on ConfigurableLookup.itemValue = ActivityAssignmentTypeMapping .AssignmentTypeId where ConfigurableLookup.itemKey = 'FBAActivities' and ActivitiyMaster.activityid not in(Select  activityid  from pmcFarmerActivityDetails where farmerid='" + i + "' ) and ActivitiyMaster.activityid not in (select itemvalue from ConfigurableLookup where itemkey='fieldday') ORDER BY ActivitiyMaster.activityName ";
    }

    public String getPMCActivityAttributeQuery(int i, int i2) {
        return "select am.attributeid,am.DisplayNameMobile,am.controltype,fad.attributevalue,aam.isMandatory, fad.detailsID,fad.sequenceId from AttributeMaster as am INNER JOIN AttributeMapping as aam ON am.attributeid=aam.attributeid  AND aam.activityid=" + i2 + " LEFT JOIN pmcFarmerActivityDetails as fad ON aam.activityid=fad.activityid AND am.attributeid=fad.attributeid and   fad.activityid=" + i2 + " and fad.farmerid='" + i + "' WHERE (aam.isActive =1 OR aam.isActive ='True') and am.parentId=0 GROUP BY am.attributeid ORDER BY am.attributeid";
    }

    public String getSelectedAttributeQuery(int i, int i2, int i3) {
        return "select am.attributeid,am.DisplayNameMobile,am.controltype,COALESCE(\"\",fad.attributevalue),aam.isMandatory,COALESCE(\"\",fad.detailsID),COALESCE(\"\",fad.sequenceId) from AttributeMaster as am INNER JOIN AttributeMapping as aam ON am.attributeid=aam.attributeid and aam.activityid = " + i2 + " LEFT JOIN pmcFarmerActivityDetails as fad ON aam.attributeid=fad.attributeid and fad.farmerId = " + i + " where parentId=" + i3 + " GROUP BY am.attributeid ORDER BY am.attributeid";
    }

    public String getChildValuesAttributeQuery(int i, int i2, int i3) {
        return "select fad.attributeid,am.DisplayNameMobile,am.controltype,fad.attributevalue,COALESCE(\"\",fad.attributevalue),fad.detailsID,fad.sequenceId from pmcFarmerActivityDetails  as fad INNER JOIN AttributeMaster as am ON am.attributeid=fad.attributeid and am.parentId=" + i3 + " where fad.farmerId = " + i + " and fad.activityid = " + i2 + "  ORDER BY fad.detailsID";
    }

    public String gettingDropdownValues(int i) {
        if (i == 1) {
            return "SELECT cropId,cropName FROM CropMaster where IsActive='true' COLLATE NOCASE order by cropName";
        }
        if (i == 2) {
            return "select BrandId,BrandName from BrandMaster where IsActive='true' COLLATE NOCASE order by BrandName";
        }
        if (i == 13 || i == 56) {
            return "select itemType,itemValue from ConfigurableLookup where itemKey = 'Vigor'";
        }
        if (i == 3) {
            return "SELECT DISTINCT pmcmarkets.Marketid, pmcmarkets.MarketName  FROM  pmcMarkets as pmcmarkets inner join pmcSVFarmerDetails on pmcmarkets.Marketid=pmcSVFarmerDetails.MarketId where recordFlag=0";
        }
        if (i == 4) {
            return "select fopdaid,FOName from pmcFoList   union all select pdaID,userName from  pmcUserDetails";
        }
        if (i == 5) {
            return "select distinct villageid, VillageName  FROM  pmcSVFarmerDetails where recordFlag=0 and  villageid>0";
        }
        if (i == 6) {
            return "SELECT CompanyId,CompanyName FROM CompanyMaster where IsActvie='1' order by CompanyName";
        }
        if (i == 7) {
            return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'ImageEventType'";
        }
        if (i == 8) {
            return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'OnFieldLand'";
        }
        if (i == 9) {
            return "select FBAttributeID,FBAttributeName from ConfigurablelookupMaster where ItemType = 'OnFieldLand'";
        }
        if (i == 10) {
            return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'AcreageType'";
        }
        return "Select lookupcode,lookupvalue from pmcLookup where lookupcode=" + i + "";
    }

    public String gettingDropdownValuesForBrand(String str, int i) {
        return "select BrandId,BrandName from BrandMaster where (IsActive='True' or IsActive='true') and CropId= " + str + " and CompanyId = " + i + " COLLATE NOCASE order by BrandName";
    }

    public String gettingDropdownValuesForCompetetorBrand(String str, String str2) {
        return "select BrandId,BrandName from BrandMaster where (IsActive='True' or IsActive='true') and CropId= " + str + " and CompanyId = " + str2 + " COLLATE NOCASE order by BrandName";
    }

    public String gettingDropdownValuesForCompetetorCompany(int i) {
        return "SELECT CompanyId,CompanyName FROM CompanyMaster   where (IsActive='True' or IsActive='true' or IsActive=1 )  and CompanyId != " + i + " COLLATE NOCASE order by CompanyName";
    }

    public String getDisplayTypeQry(String str) {
        return "select DisplayType from ActivityMaster where ActivityMasterId='" + str + "'";
    }

    public String gettingDropdownValuesBasedItemCode(long j) {
        if (j == 1) {
            return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'ImageEventType' and (IsActive='True' or IsActive=1 ) and ItemCode in(1,5)";
        }
        if (j == 2 || j == 5) {
            return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'ImageEventType' and (IsActive='True' or IsActive=1 ) and ItemCode in(1,3)";
        }
        if (j == 6) {
            return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'ImageEventType' and (IsActive='True' or IsActive=1 ) and ItemCode in(6)";
        }
        if (j == 7) {
            return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'ImageEventType' and (IsActive='True' or IsActive=1 ) and ItemCode in(7)";
        }
        if (j == 8) {
            return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'ImageEventType' and (IsActive='True' or IsActive=1 ) and ItemCode in(8)";
        }
        if (j == 11) {
            return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'ImageEventType' and (IsActive='True' or IsActive=1 ) and ItemCode in(11)";
        }
        if (j == 15) {
            return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'ImageEventType' and (IsActive='True' or IsActive=1 ) and ItemCode in(15)";
        }
        return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'ImageEventType' and (IsActive='True' or IsActive=1 ) and ItemCode = 2";
    }

    public String gettingDropdownValuesBasedItemCodeForActivities(long j, int i) {
        return "select ItemValue ,ItemKey  from ConfigurablelookupMaster cm  inner join ActivityImageMappingMaster aim on aim.ConfigId=cm.configId and aim.ActivityMasterId=" + i + " and (aim.IsActive='True' or aim.IsActive=1 ) where ItemType = 'ImageEventType' and (cm.IsActive='True' or cm.IsActive=1 ) and ItemCode = 2";
    }

    public String gettingDropdownValuesBasedItemCodeControlPlot() {
        return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'ImageEventType' and ItemCode in(2,4)";
    }

    public String getDropdownValuesBasedItemType(String str) {
        return "select ItemKey,ItemValue  from ConfigurablelookupMaster where ItemType = '" + str + "' and (IsActive='True' or IsActive=1 )";
    }

    public String gettingMarketsDropdownValues() {
        return "SELECT distinct pmcmarkets.Marketid, pmcmarkets.MarketName  FROM  pmcMarkets as pmcmarkets inner join pmcSVFarmerDetails on pmcmarkets.Marketid=pmcSVFarmerDetails.MarketId where recordFlag = 1 or recordFlag = 2 or recordFlag = 3";
    }

    public String gettingYesorNoDropdownValues(int i) {
        return "Select lookupId,lookupvalue from pmcLookup where lookupcode=" + i + "";
    }

    public String gettingYesorNoDropdownValuesDynamic(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        String str7;
        String str8;
        if (str3 == null) {
            str7 = "SELECT distinct b.";
            str8 = "||";
        } else {
            if (!str3.equalsIgnoreCase("")) {
                if (str4.equalsIgnoreCase("ConfigurablelookupMaster")) {
                    return "SELECT distinct b." + str2 + ", b." + str + ",fad.attributeValue FROM " + str4 + " b  Left JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + str2 + " AND fad.ActivitySegmentValue= '" + str5 + "' AND fad.ActivityMasterId= '" + i + "' AND fad.ActivityAssignmentId='" + i2 + "' and fad.AttributeId = " + i3 + ") where b.ItemType = '" + str3 + "' and (b.isactive='1' or b.isactive='true' or b.isactive='True') " + str6 + " COLLATE NOCASE order by b." + str;
                }
                return "SELECT distinct b." + str2 + ", b." + str + ",fad.attributeValue FROM " + str4 + " b  Left JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + str2 + " AND fad.ActivitySegmentValue= '" + str5 + "' AND fad.ActivityMasterId= '" + i + "' AND fad.ActivityAssignmentId='" + i2 + "' and fad.AttributeId = " + i3 + ") where b. " + str3 + " and (b.isactive='1' or b.isactive='true' or b.isactive='True')" + str6 + " COLLATE NOCASE  order by b." + (str.contains("||") ? str.substring(0, str.indexOf("||")) : str);
            }
            str7 = "SELECT distinct b.";
            str8 = "||";
        }
        return str7 + str2 + ", b." + str + ",fad.attributeValue FROM " + str4 + " b  Left JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + str2 + " AND fad.ActivitySegmentValue= '" + str5 + "' AND fad.ActivityMasterId= '" + i + "' AND fad.ActivityAssignmentId='" + i2 + "' and fad.AttributeId = " + i3 + ") where (b.isactive='1' or b.isactive='true' or b.isactive='True') " + str6 + " COLLATE NOCASE order by b." + (str.contains(str8) ? str.substring(0, str.indexOf(str8)) : str);
    }

    public String gettingYesorNoDropdownValuesDynamicPlots(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        String str7;
        if (str3 == null) {
            str7 = str6;
        } else {
            if (!str3.equalsIgnoreCase("")) {
                return "SELECT distinct b." + str2 + ", b." + str + "|| '('||b.Acreages ||' Acres)'as LandName,fad.attributeValue FROM " + str4 + " b  Left JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + str2 + " AND fad.ActivitySegmentValue= '" + str5 + "' AND fad.ActivityMasterId= '" + i + "' AND fad.ActivityAssignmentId='" + i2 + "' and fad.AttributeId = " + i3 + ") where b. " + str3 + " and (b.isactive='1' or b.isactive='true' or b.isactive='True')" + str6 + " COLLATE NOCASE  order by b." + str;
            }
            str7 = str6;
        }
        return "SELECT distinct b." + str2 + ", b." + str + ",fad.attributeValue FROM " + str4 + " b  Left JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + str2 + " AND fad.ActivitySegmentValue= '" + str5 + "' AND fad.ActivityMasterId= '" + i + "' AND fad.ActivityAssignmentId='" + i2 + "' and fad.AttributeId = " + i3 + ") where (b.isactive='1' or b.isactive='true' or b.isactive='True') " + str7 + " COLLATE NOCASE order by b." + str;
    }

    public String gettingYesorNoDropdownValuesDynamicWithSourceQry(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i, int i2, int i3, String str9, long j) {
        String str10 = "SELECT distinct b." + str3 + ", b." + str2 + ",fad.attributeValue FROM ";
        String replace = str.replace("<AppendQuery>", " Left JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + str3 + " AND fad.ActivitySegmentValue= '" + str8 + "' AND fad.ActivityMasterId= '" + i + "' AND fad.ActivityAssignmentId='" + i2 + "' AND fad.TransId='" + j + "' and fad.AttributeId = " + i3 + ") where ").replace("<FKValue1>", str4).replace("<FKValue2>", str5).replace("<FKValue3>", str6);
        StringBuilder sb = new StringBuilder(" and (b.isactive='1' or b.isactive='true' or b.isactive='True')");
        sb.append(str9);
        sb.append(" COLLATE NOCASE  order by b.");
        sb.append(str2);
        return str10 + replace + sb.toString();
    }

    public String gettingYesorNoDropdownValuesDynamic_PairId(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6, String str7) {
        String str8;
        String str9;
        int i4;
        if (str3 == null) {
            str8 = ", b.";
            str9 = ",fad.attributeValue FROM ";
            i4 = i3;
        } else {
            if (!str3.equalsIgnoreCase("")) {
                if (str4.equalsIgnoreCase("ConfigurablelookupMaster")) {
                    return "SELECT distinct b." + str2 + ", b." + str + ",fad.attributeValue FROM " + str4 + " b  Left JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + str2 + " AND fad.ActivitySegmentValue= '" + str5 + "' AND fad.ActivityMasterId= '" + i + "' AND fad.ActivityAssignmentId='" + i2 + "' and fad.AttributeId = " + i3 + " and fad.PairId = '" + str7 + "') where b.ItemType = '" + str3 + "' and (b.isactive='1' or b.isactive='true' or b.isactive='True') " + str6 + " COLLATE NOCASE order by b." + str;
                }
                return "SELECT distinct b." + str2 + ", b." + str + ",fad.attributeValue FROM " + str4 + " b  Left JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + str2 + " AND fad.ActivitySegmentValue= '" + str5 + "' AND fad.ActivityMasterId= '" + i + "' AND fad.ActivityAssignmentId='" + i2 + "' and fad.AttributeId = " + i3 + " and fad.PairId = '" + str7 + "') where b. " + str3 + " and (b.isactive='1' or b.isactive='true' or b.isactive='True')" + str6 + " COLLATE NOCASE  order by b." + str;
            }
            str8 = ", b.";
            str9 = ",fad.attributeValue FROM ";
            i4 = i3;
        }
        return "SELECT distinct b." + str2 + str8 + str + str9 + str4 + " b  Left JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + str2 + " AND fad.ActivitySegmentValue= '" + str5 + "' AND fad.ActivityMasterId= '" + i + "' AND fad.ActivityAssignmentId='" + i2 + "' and fad.AttributeId = " + i4 + " and fad.PairId = '" + str7 + "') where (b.isactive='1' or b.isactive='true' or b.isactive='True') " + str6 + " COLLATE NOCASE order by b." + str;
    }

    public String getBrandsQry(String str, String str2) {
        Log.i("Queries", "f-" + str + "aid--" + str2);
        return "SELECT distinct b.brandId, b.brandName,fad.attributeValue FROM BrandMaster b LEFT JOIN ActivityAttributeMappingMaster  am ON b.brandId   = am.AttributeId LEFT JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b.brandId AND fad.ActivitySegmentValue  = '" + str + "' AND fad.ActivityMasterId  = '" + str2 + "' AND fad.AttributeId ='2') where (b.isactive='1' or b.isactive='true' or b.isactive='True') COLLATE NOCASE ORDER BY b.brandName,fad.attributeValue DESC";
    }

    public String getActivityAssociatedBrandsQry(String str, String str2) {
        return "SELECT distinct b.brandId, b.brandName,fad.attributeValue FROM BrandMaster b LEFT JOIN ActivityAttributeMappingMaster am ON b.brandId = am.AttributeId INNER JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b.brandId AND fad.ActivitySegmentValue= '" + str + "' AND fad.ActivityMasterId= '" + str2 + "' AND fad.AttributeId='2') ORDER BY fad.attributeValue DESC";
    }

    public String getActivityAssociatedDataQry(String str, String str2, AttributeModel attributeModel, int i, long j) {
        if (attributeModel.getAttributeLookupKey() != null && !attributeModel.getAttributeLookupKey().equalsIgnoreCase("")) {
            if (attributeModel.getAttributeSource().equalsIgnoreCase("ConfigurablelookupMaster")) {
                return "SELECT distinct b." + attributeModel.getAttributeDisplayField() + ", b." + attributeModel.getAttributeValueField() + ",fad.attributeValue FROM " + attributeModel.getAttributeSource() + " b  INNER JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + attributeModel.getAttributeDisplayField() + " AND fad.ActivitySegmentValue= '" + str + "' AND fad.ActivityMasterId= '" + str2 + "' AND fad.ActivityAssignmentId='" + i + "' and fad.TransId='" + j + "' and fad.AttributeId = " + attributeModel.getAttributeId() + ") where b.ItemType = '" + attributeModel.getAttributeLookupKey() + "' ORDER BY fad.attributeValue DESC";
            }
            return "SELECT distinct b." + attributeModel.getAttributeDisplayField() + ", b." + attributeModel.getAttributeValueField() + ",fad.attributeValue FROM " + attributeModel.getAttributeSource() + " b  INNER JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + attributeModel.getAttributeDisplayField() + " AND fad.ActivitySegmentValue= '" + str + "' AND fad.ActivityMasterId= '" + str2 + "' AND fad.ActivityAssignmentId='" + i + "' and fad.TransId='" + j + "' and fad.AttributeId = " + attributeModel.getAttributeId() + ") where b." + attributeModel.getAttributeLookupKey() + " ORDER BY fad.attributeValue DESC";
        }
        return "SELECT distinct b." + attributeModel.getAttributeDisplayField() + ", b." + attributeModel.getAttributeValueField() + ",fad.attributeValue FROM " + attributeModel.getAttributeSource() + " b  INNER JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + attributeModel.getAttributeDisplayField() + " AND fad.ActivitySegmentValue= '" + str + "' AND fad.ActivityMasterId= '" + str2 + "' AND fad.ActivityAssignmentId='" + i + "' and fad.TransId='" + j + "' and fad.AttributeId = " + attributeModel.getAttributeId() + ") ORDER BY fad.attributeValue DESC";
    }

    public String getActivityAssociatedDataQry_Pairid(String str, String str2, AttributeModel attributeModel, int i, long j, String str3) {
        String str4;
        String str5;
        if (attributeModel.getAttributeLookupKey() == null) {
            str4 = "SELECT distinct b.";
            str5 = ") and fad.PairId = '";
        } else {
            if (!attributeModel.getAttributeLookupKey().equalsIgnoreCase("")) {
                return "SELECT distinct b." + attributeModel.getAttributeDisplayField() + ", b." + attributeModel.getAttributeValueField() + ",fad.attributeValue FROM " + attributeModel.getAttributeSource() + " b  INNER JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + attributeModel.getAttributeDisplayField() + " AND fad.ActivitySegmentValue= '" + str + "' AND fad.ActivityMasterId= '" + str2 + "' AND fad.ActivityAssignmentId='" + i + "' and fad.TransId='" + j + "' and fad.AttributeId = " + attributeModel.getAttributeId() + ") and fad.PairId = '" + str3 + "' where b.ItemType = '" + attributeModel.getAttributeLookupKey() + "' ORDER BY fad.attributeValue DESC";
            }
            str4 = "SELECT distinct b.";
            str5 = ") and fad.PairId = '";
        }
        return str4 + attributeModel.getAttributeDisplayField() + ", b." + attributeModel.getAttributeValueField() + ",fad.attributeValue FROM " + attributeModel.getAttributeSource() + " b  INNER JOIN pmcAssignmentActivityDetails fad ON (fad.attributeValue= b." + attributeModel.getAttributeDisplayField() + " AND fad.ActivitySegmentValue= '" + str + "' AND fad.ActivityMasterId= '" + str2 + "' AND fad.ActivityAssignmentId='" + i + "' and fad.TransId='" + j + "' and fad.AttributeId = " + attributeModel.getAttributeId() + str5 + str3 + "' ORDER BY fad.attributeValue DESC";
    }

    public String getActivityAssociatedDataQry_byIds(String str, String str2, AttributeModel attributeModel, int i, long j) {
        if (attributeModel.getAttributeLookupKey() != null && !attributeModel.getAttributeLookupKey().equalsIgnoreCase("")) {
            return "SELECT distinct b." + attributeModel.getAttributeDisplayField() + ", b." + attributeModel.getAttributeValueField() + ",COALESCE(SequenceId,'')as attributeValue FROM " + attributeModel.getAttributeSource() + " b   where b.ItemType = '" + attributeModel.getAttributeLookupKey() + "'  and b." + attributeModel.getAttributeDisplayField() + " in (" + str2 + ") ORDER BY b." + attributeModel.getAttributeValueField() + " DESC";
        }
        return "SELECT distinct b." + attributeModel.getAttributeDisplayField() + ", b." + attributeModel.getAttributeValueField() + ",COALESCE(SequenceId,'')as attributeValue FROM " + attributeModel.getAttributeSource() + " b WHERE b." + attributeModel.getAttributeDisplayField() + " in (" + str2 + ") ORDER BY b." + attributeModel.getAttributeValueField() + " DESC";
    }

    public String getAttributesFromDB(String str, String str2) {
        return "SELECT  attributeId ,attributeValue FROM pmcFarmerActivityDetails where farmerId =1 and activityId =1";
    }

    public String getCropNameQuery(String str) {
        return "select cropName from CropMaster where cropid=" + str;
    }

    public String getBrandNameQuery(String str) {
        return "select brandName from BrandMaster where brandid=" + str + " and (Isactive='true' or Isactive='True') COLLATE NOCASE";
    }

    public String getCompanyNameQuery(String str) {
        return "select CompanyName from CompanyMaster where CompanyId=" + str;
    }

    public String getDOSQuery(String str, String str2) {
        return "select dos from FarmerCropDetails where FarmerID='" + str + "' and CropID='" + str2 + "'";
    }

    public String getFONames() {
        return "select distinct foid,foname from pmcStatusDetails";
    }

    public String getAssignmentId(String str) {
        return "select AssignmentId from pmcAssignmentActivityDetails where ActivitySegmentValue='" + str + "' GROUP BY AssignmentId";
    }

    public String deleteFarmerDetailsActivity(String str, int i, int i2) {
        return "delete from pmcAssignmentActivityDetails  where ChildLevelId == 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and activityAssignmentId = " + i2;
    }

    public String deleteSurveyDetailsActivity(String str, int i, int i2) {
        return "delete from pmcSurveyAssignmentActivityDetails  where ChildLevelId == 0  and ActivityMasterId=" + i + "  and activityAssignmentId = " + i2;
    }

    public String deleteLastVisitDetails(String str, int i) {
        return "delete from pmcLastVisitDetails  where  ActivitySegmentvalue='" + str + "' and ActivityAssignmentId = " + i;
    }

    public String deleteFarmerDetailsChildActivity(String str, int i, int i2, int i3) {
        return "delete from pmcAssignmentActivityDetails  where ChildLevelId != 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and activityAssignmentId = " + i2 + " and ChildLevelId like '%" + i3 + "%'";
    }

    public String deleteFarmerDetailsChildActivitySA(String str, int i, long j, int i2) {
        return "delete from pmcAssignmentActivityDetails  where ChildLevelId != 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and TransId = " + j + " and ChildLevelId like '%" + i2 + "%'";
    }

    public String getFarmerDetailsChildActivity(String str, int i, int i2, int i3, int i4) {
        return "select sum(attributeValue) from pmcAssignmentActivityDetails  where ChildLevelId != 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and activityAssignmentId = " + i2 + " and AttributeId =" + i4 + " and ChildLevelId like '%" + i3 + "%'";
    }

    public String deleteFarmerDetailsChildActivityFromTable(String str, int i, int i2, int i3) {
        return "delete from pmcAssignmentActivityDetails  where ChildLevelId != 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and activityAssignmentId = " + i2;
    }

    public String deleteFarmerDetailsChildActivityFromTableSA(String str, int i, long j, int i2) {
        return "delete from pmcAssignmentActivityDetails  where ChildLevelId != 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and TransId = " + j;
    }

    public String deleteFarmerDetailsActivitySelfAssign(String str, int i, long j) {
        return "delete from pmcAssignmentActivityDetails  where ChildLevelId == 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and TransId = " + j;
    }

    public String deleteFarmerDetailsActivityFBF(String str, int i, long j) {
        return "delete from pmcFBFAssignmentActivityDetails  where ChildLevelId == 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and TransId = " + j;
    }

    public String deleteFarmerDetailsActivityTST(String str, int i, long j) {
        return "delete from pmcTSTAssignmentActivityDetails  where ChildLevelId == 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and TransId = " + j;
    }

    public String deleteSelfDraftActivity(long j) {
        return "delete from pmcAssignmentActivityDetails  where TransId =" + j;
    }

    public String getchildDetailsActivityFBF(String str, int i, int i2, long j) {
        return "select detailsID from pmcFBFAssignmentActivityDetails  where ChildLevelId != 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and activityAssignmentId = " + i2 + " and TransId = " + j;
    }

    public String getchildDetailsActivity(String str, int i, int i2, long j) {
        return "select detailsID from pmcAssignmentActivityDetails  where ChildLevelId != 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and activityAssignmentId = " + i2 + " and TransId = " + j;
    }

    public String getSurveychildDetailsActivity(String str, int i, int i2, long j) {
        return "select detailsID from pmcSurveyAssignmentActivityDetails  where ChildLevelId != 0 and ActivitySegmentValue='" + str + "' and ActivityMasterId=" + i + "  and activityAssignmentId = " + i2 + " and TransId = " + j;
    }

    public String UpdateChildTransdetails(int i) {
        return "Update pmcAssignmentActivityDetails set isTransactionDone = 1,isDone = 1  where detailsID = " + i;
    }

    public String UpdateSurveyChildTransdetails(int i) {
        return "Update pmcSurveyAssignmentActivityDetails set isTransactionDone = 1,isDone = 1  where detailsID = " + i;
    }

    public String UpdateFBFResolveChildTransdetails(long j) {
        return "Update pmcFBFAssignmentActivityDetails set isTransactionDone = 0,isDone = 3  where TransId = '" + j + "'";
    }

    public String deleteFarmerDetailsActivityForBrand(int i, int i2, int i3, int i4) {
        return "DELETE FROM pmcfarmeractivitydetails WHERE detailsID = '" + i + "' AND activityId = '" + i2 + "' AND activityId = '" + i3 + "' and activityAssignmentId = " + i4;
    }

    public String getListOfAttributes(String str) {
        return "select attributeid from attributemapping where activityId='" + str + "'";
    }

    public String updateNotDoneForActivities(int i, String str, int i2, String str2) {
        return "Update pmcAssignmentActivityDetails set isDone=2,serverUpdatedStatus='false',notdoneRemark ='" + str2 + "',isTransactionDone = '1' where ActivityMasterId='" + i + "' AND ActivitySegmentValue='" + str + "' and AssignmentId='" + i2 + "'";
    }

    public String updateNotDoneForSelfActivities(int i, String str, long j, String str2) {
        return "Update pmcAssignmentActivityDetails set isDone=2,serverUpdatedStatus='false',notdoneRemark ='" + str2 + "',isTransactionDone = '1' where ActivityMasterId='" + i + "' AND ActivitySegmentValue='" + str + "' and TransId=" + j;
    }

    public String updateDraftForActivities(int i, String str, int i2, int i3) {
        return "Update pmcAssignmentActivityDetails set isTransactionDone='" + i3 + "' where ActivityMasterId='" + i + "' AND ActivitySegmentValue='" + str + "' AND ActivityAssignmentId=" + i2;
    }

    public String updateDraftForSurveyActivities(int i, String str, int i2, int i3) {
        return "Update pmcSurveyAssignmentActivityDetails set isTransactionDone='" + i3 + "' where ActivityMasterId='" + i + "' AND ActivitySegmentValue='" + str + "' AND ActivityAssignmentId=" + i2;
    }

    public String updateDraftForSelfActivities(int i, String str, long j, int i2) {
        return "Update pmcAssignmentActivityDetails set isTransactionDone='" + i2 + "' where ActivityMasterId='" + i + "' AND ActivitySegmentValue='" + str + "' AND TransId =" + j;
    }

    public String updateDraftForFeedBackActivities(int i, String str, long j, int i2) {
        return "Update pmcFBFAssignmentActivityDetails set isTransactionDone='" + i2 + "' where ActivityMasterId='" + i + "' AND ActivitySegmentValue='" + str + "' AND TransId =" + j;
    }

    public String updateDraftForTestimonials(int i, String str, long j, int i2) {
        return "Update pmcTSTAssignmentActivityDetails set isTransactionDone='" + i2 + "' where ActivityMasterId='" + i + "' AND ActivitySegmentValue='" + str + "' AND TransId =" + j;
    }

    public String updateNotSelectedForActivities(int i, String str, int i2, String str2) {
        return "Update pmcFarmerActivityDetails set isDone=3,assignmentID='" + i2 + "',serverUpdatedStatus='false',notdoneRemark ='" + str2 + "' where activityId='" + i + "' AND farmerId='" + str + "'";
    }

    public String updateDiscardForActivities(int i, String str, int i2) {
        return "Update pmcAssignmentActivityDetails set isDone=4,AssignmentId='" + i2 + "',serverUpdatedStatus='false',isTransactionDone = 'true' where ActivityMasterId='" + i + "' AND ActivitySegmentValue='" + str + "'";
    }

    public String updateFarmerCropMapping(String str) {
        return "update pmcFarmerCropMapping set serverUpdatedStatus='false' where farmerId='" + str + "'";
    }

    public String insertIntoSyncErrorLog(String str, String str2, String str3, Exception exc, String str4, String str5) {
        String replaceAll = exc != null ? exc.getMessage().replaceAll("'", "") : "";
        return "INSERT INTO SyncErrorLog (Pdaid, ColumnName, SourceID, TableName, ErrorMessage, ErrorStackTrace, Query, synctype, CreatedDate, CreatedBy, UpdatedDate, UpdatedBy, ServerUpdatedStatus) VALUES ('" + ConstantsPMC.getInstance().getDeviceID() + "','" + str + "','" + str2 + "','" + str3 + "','" + replaceAll + "','" + replaceAll + "','" + str4 + "','" + str5 + "','" + UtilDeclarations.getDate() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','" + UtilDeclarations.getDate() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','false')";
    }

    public String getGetUSerDetailsCount() {
        return this.getUSerDetailsCount;
    }

    public String updateDOSinFarmercropMapping(String str, int i, String str2) {
        return "update pmcfarmercropmapping set dos='" + str + "' where farmerid='" + i + "' and cropid='" + str2 + "'";
    }

    public String getActivityidInLookup(int i) {
        return "select  count(0) from ConfigurableLookup where itemValue='" + i + "' and  itemKey='NotSelected'  and itemType='yes'";
    }

    public String getBrandsLengthInLookup() {
        return "select  itemValue from ConfigurableLookup where itemKey='brands_length'";
    }

    public String getBrandsLengthInLookupFarmers() {
        return "select  itemValue from ConfigurableLookup where itemKey='brandsLengthFarmer'";
    }

    public String gettingfarmerbasedonmarketid(int i, int i2, int i3) {
        if (i3 == 1) {
            return "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.recordFlag FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where pf.AssignmentFlag=0 and recordFlag=0 and pf.MarketId=" + i + " GROUP BY  pf.farmerId, pf.farmerName, pf.mobile order by pf.farmerName";
        }
        if (i3 == 2) {
            return "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.recordFlag FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where pf.AssignmentFlag=0 and recordFlag=0 and pf.villageid=" + i2 + " GROUP BY  pf.farmerId, pf.farmerName, pf.mobile order by pf.farmerName";
        }
        return "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,pf.recordFlag  FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where pf.AssignmentFlag=0 and recordFlag=0  and pf.MarketId=" + i + " and pf.villageid=" + i2 + " GROUP BY  pf.farmerId, pf.farmerName, pf.mobile,pf.recordFlag order by pf.farmerName";
    }

    public String gettingFarmercount(int i, int i2, int i3) {
        if (i3 == 1) {
            return "SELECT  count(DISTINCT FarmerId)   FROM pmcSVFarmerDetails where AssignmentFlag=0 and recordFlag=0 and MarketId=" + i + "";
        }
        if (i3 == 2) {
            return "SELECT count(DISTINCT FarmerId)  FROM pmcSVFarmerDetails where AssignmentFlag=0 and recordFlag=0 and villageid=" + i2 + "";
        }
        if (i3 == 3) {
            return "SELECT count(DISTINCT FarmerId)  FROM pmcSVFarmerDetails where AssignmentFlag=0 and recordFlag=0 and MarketId=" + i + " and villageid=" + i2 + "";
        }
        return "SELECT count(DISTINCT FarmerId)   FROM pmcSVFarmerDetails where AssignmentFlag=0 and recordFlag=0";
    }

    public String getCropAceragesBasedonFarmerId2(int i) {
        return "SELECT  ocm.cropName,  SUM(oldAcreages) AS oldAcreages, SUM(newAcreages) AS newAcreages, svfcm.CropId,SUM(oldrecordFlag) AS oldRecordFlag, SUM(newrecordFlag) AS newRecordFlag FROM ( SELECT FarmerId, CropId,Acreages AS oldAcreages, 0 AS newAcreages, recordFlag AS oldrecordFlag, 0 AS newrecordFlag FROM pmcSVFarmerCropMapping WHERE recordflag =1 UNION  SELECT FarmerId, CropId, 0 AS oldAcreages, Acreages AS newAcreages, 0 AS oldrecordFlag, recordFlag  AS newrecordFlag FROM  pmcSVFarmerCropMapping WHERE recordflag = 2 ) svfcm LEFT JOIN CropMaster ocm ON svfcm.cropid=ocm.CropId WHERE svfcm.FARMERID='" + i + "' GROUP BY svfcm.CropId ORDER BY ocm.CropName";
    }

    public String getCropAceragesBasedonFarmerId(int i, int i2) {
        return "SELECT CropMaster.cropName, pmcSVFarmerCropMapping.Acreages,pmcSVFarmerCropMapping.CropId FROM pmcSVFarmerCropMapping inner join CropMaster on CropMaster.cropid=pmcSVFarmerCropMapping .CropId where farmerid=" + i + " and  recordFlag=" + i2 + " order by CropMaster.cropName";
    }

    public String updateCropAceragesDetailsQuery(int i, int i2, String str, int i3) {
        return "UPDATE pmcSVFarmerCropMapping  SET Acreages=" + str + " , ServerUpdatedStatus='false'  WHERE FarmerId=" + i + " and CropId=" + i2 + " and recordFlag=2";
    }

    public String updateCropAceragesDetailsQueryforOldRecords(int i, int i2, String str, int i3) {
        return "UPDATE pmcSVFarmerCropMapping  SET  ServerUpdatedStatus='false' WHERE FarmerId=" + i + " and CropId=" + i2 + " and recordFlag=1";
    }

    public String getmarketcount(String str) {
        return " select count(0) from '" + str + "' ";
    }

    public String getvillagecount() {
        return "select count(0)  from pmcSVFarmerDetails where recordFlag=0 and villageid>0";
    }

    public String getFarmerBasedOnMarketFoId(int i, int i2, int i3) {
        if (i3 == 1) {
            return "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,count(distinct  recordflag) AS recordFlag,MIN(pf.recordFlag) AS recordFlag1  FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where  pf.ApprovalStatus=0 and pf.recordFlag in (1,2,3) and   pf.MarketId=" + i + " GROUP BY   pf.farmerId, pf.farmerName  order by pf.farmerName";
        }
        if (i3 == 2) {
            return "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,count(distinct  recordflag)  AS recordFlag,MIN(pf.recordFlag) AS recordFlag1  FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where  pf.ApprovalStatus=0 and pf.recordFlag in (1,2,3)  and  pf.foid=" + i2 + " GROUP BY   pf.farmerId, pf.farmerName  order by pf.farmerName";
        }
        return "SELECT pf.FarmerId, pf.FarmerName ,pf.mobile,group_concat(distinct ac.activityName),pf.serverUpdatedStatus,count(distinct  recordflag)  AS recordFlag,MIN(pf.recordFlag) AS recordFlag1  FROM pmcSVFarmerDetails AS pf INNER JOIN ActivitiyMaster AS ac ON ac.activityid=acd.activityid INNER JOIN pmcSVActivityDetails AS acd ON acd.farmerid=pf.farmerid where pf.ApprovalStatus=0 and pf.recordFlag in (1,2,3)  and (pf.MarketId=" + i + " and pf.foid=" + i2 + ") GROUP BY   pf.farmerId, pf.farmerName  order by pf.farmerName";
    }

    public String getFarmerCountForFOapproval(int i, int i2, int i3) {
        if (i3 == 1) {
            return "SELECT count(distinct farmerid )  FROM pmcSVFarmerDetails where ApprovalStatus=0 and recordFlag in (1,2,3)  and MarketId=" + i + "";
        }
        if (i3 == 2) {
            return "SELECT count(distinct farmerid )  FROM pmcSVFarmerDetails where ApprovalStatus=0 and recordFlag in (1,2,3)  and foid=" + i2 + "";
        }
        if (i3 == 3) {
            return "SELECT count(distinct farmerid )  FROM pmcSVFarmerDetails where ApprovalStatus=0 and recordFlag in (1,2,3) and (MarketId=" + i + " and  foid=" + i2 + ")";
        }
        return "SELECT count(distinct farmerid )  FROM pmcSVFarmerDetails where ApprovalStatus=0 and recordFlag in (1,2,3)";
    }

    public String getLandLineItemValues(String str, String str2) {
        return "SELECT itemValue FROM ConfigurableLookup where itemType='" + str + "' and itemKey='" + str2 + "'";
    }

    public String getCountSyncNeedFarmers(int i) {
        if (i == 1) {
            return "SELECT count(*) FROM pmcSVFarmerDetails where AssignmentFlag=1 and Approvalstatus=0 and ServerUpdatedStatus='false'";
        }
        return "SELECT count(*) FROM pmcSVFarmerDetails where Approvalstatus=1 or Approvalstatus=2 and ServerUpdatedStatus='false'";
    }

    public String getUpdateApprovalStatus(int i, int i2, int i3) {
        return " update pmcSVFarmerDetails set Approvalstatus='" + i3 + "',svdescription='' where FarmerId='" + i + "'";
    }

    public String getUpdatefarmer(int i, int i2, int i3) {
        return "Update pmcSVFarmerDetails set AssignmentFlag='1',FOId=" + i2 + " , fouserid=" + i3 + "  where farmerId=" + i + "";
    }

    public String getActivitypendingcount(int i) {
        return "select sum(fopendingcount) from pmcStatusDetails where foid=" + i + "";
    }

    public String getFarmerpendingcount(int i) {
        return "select sum(farmerpendingcount) from pmcStatusDetails where foid=" + i + "";
    }

    public String FarmerAceragesOlddata(int i) {
        return "SELECT  FarmerName,CONumber,Mobile,AcreagesOwned,LeasedIn,LeasedOut,Cultivated,fodescription,svdescription,ServerUpdatedStatus, AssignmentFlag, Landline from pmcSVFarmerDetails where recordFlag =1 and FarmerId = '" + i + "'";
    }

    public String FarmerAceragesNewData(int i) {
        return "SELECT  FarmerName,CONumber,Mobile,AcreagesOwned,LeasedIn,LeasedOut,Cultivated,fodescription,svdescription ,ServerUpdatedStatus, AssignmentFlag,Landline from pmcSVFarmerDetails where recordFlag =2 and FarmerId  = '" + i + "'";
    }

    public String mbaFarmerDetails(int i) {
        return "SELECT  FarmerName,CONumber,Mobile,AcreagesOwned,LeasedIn,LeasedOut,Cultivated,fodescription,svdescription ,ServerUpdatedStatus, AssignmentFlag,Landline from pmcSVFarmerDetails where recordFlag =3 and FarmerId  = '" + i + "'";
    }

    public String getSelectsvFarmerListDetails() {
        return this.selectsvFarmerListDetails;
    }

    public void setSelectsvFarmerListDetails(String str) {
        this.selectsvFarmerListDetails = str;
    }

    public String getSvfarmercropmapping() {
        return this.svfarmercropmapping;
    }

    public void setSvfarmercropmapping(String str) {
        this.svfarmercropmapping = str;
    }

    public String getUpdateFlag(int i, String str) {
        return "Update  pmcFarmerDetails set Field1=" + i + "  where farmerId='" + str + "'";
    }

    public String getSvfarmercropmappingForApproval() {
        return this.svfarmercropmappingForApproval;
    }

    public void setSvfarmercropmappingForApproval(String str) {
        this.svfarmercropmappingForApproval = str;
    }

    public String getSelectsvFarmerListDetailsForApproval() {
        return this.selectsvFarmerListDetailsForApproval;
    }

    public void setSelectsvFarmerListDetailsForApproval(String str) {
        this.selectsvFarmerListDetailsForApproval = str;
    }

    public String getGetfarmerApprovalCount() {
        return this.getfarmerApprovalCount;
    }

    public void setGetfarmerApprovalCount(String str) {
        this.getfarmerApprovalCount = str;
    }

    public String getUseridforFOList(int i) {
        return "SELECT FOUserID  FROM pmcFoList where fopdaid=" + i + "";
    }

    public String getAssignPendingFarmerCount(int i) {
        return "SELECT SUM(farmerpendingcount)  FROM pmcAssignPendingCounts where fopdaid=" + i + "";
    }

    public String getAssignPendingActivityCount(int i) {
        return "SELECT SUM(activitypendingcount)  FROM pmcAssignPendingCounts where fopdaid=" + i + "";
    }

    public String getUseridFoeUserDetails(int i) {
        return "SELECT userId  FROM pmcUserDetails where pdaID=" + i + "";
    }

    public String getUserNameFoeUserDetails(int i) {
        return "SELECT userName  FROM pmcUserDetails where pdaID=" + i + "";
    }

    public String getVillagesBasedonMarket(int i) {
        return "select distinct villageid, VillageName  FROM  pmcSVFarmerDetails where MarketId=" + i + "   and recordFlag=0 and  villageid>0";
    }

    public String getVillagesBasedonMarketcount(int i) {
        return "select count(0)  FROM  pmcSVFarmerDetails where MarketId=" + i + " and recordFlag=0 and  villageid>0  ";
    }

    public String getAssignedMarketCount() {
        return "SELECT count(0) FROM  pmcMarkets as pmcmarkets inner join pmcSVFarmerDetails on pmcmarkets.Marketid=pmcSVFarmerDetails.MarketId where recordFlag=0";
    }

    public String getApprovedMarketCount() {
        return "SELECT count(0) FROM  pmcMarkets as pmcmarkets inner join pmcSVFarmerDetails on pmcmarkets.Marketid=pmcSVFarmerDetails.MarketId where recordFlag=1 or recordFlag=2 or recordFlag = 3";
    }

    public String getApprovalFolist() {
        return "SELECT  distinct pmcfolist .fopdaid, pmcfolist .FOName FROM  pmcFoList as pmcfolist inner join pmcSVFarmerDetails on pmcFoList .fopdaid=pmcSVFarmerDetails.FOId where recordFlag = 1 or recordFlag = 2 or recordFlag = 3 union all select pdaID,userName from  pmcUserDetails ";
    }

    public String getApprovalFoListCount() {
        return "SELECT count(0)  FROM  pmcFoList as pmcfolist inner join pmcSVFarmerDetails on pmcFoList .fopdaid=pmcSVFarmerDetails.FOId where recordFlag = 1 or recordFlag = 2 or recordFlag = 3 ";
    }

    public String getUserDetailsCount() {
        return "select count(0) from  pmcUserDetails where roleid=2";
    }

    public String getConsentFlag(String str) {
        return "SELECT Field2   FROM pmcFarmerDetails  where farmerId='" + str + "'";
    }

    public String updateIsactive(int i) {
        return "Update pmcFarmerDetails set isActive='false' where farmerId=" + i + "";
    }

    public String updateFieldOne(int i) {
        return "Update pmcFarmerDetails set Field1  ='1' where farmerId=" + i + "";
    }

    public String getStatusQuery(String str, String str2, String str3) {
        return "select distinct   UPPER(marketname)|| '-' ||UPPER(SUBSTR(talukaname,1,1))||LOWER(SUBSTR(talukaname,2))|| '-' ||UPPER(SUBSTR(districtname,1,1))||LOWER(SUBSTR(districtname,2))|| '-' ||UPPER(SUBSTR(statename,1,1))||LOWER(SUBSTR(statename,2))as column from pmcStatusDetails where activityname='" + str + "' and marketname='" + str2 + "' and talukaname='" + str3 + "'";
    }

    public String getStatusQuery(String str) {
        return "select Status from FarmerMaster where RespondentNo = '" + str + "'";
    }

    public static String getPendingRecordsCountByTableNameQry(String str, String str2) {
        return "SELECT COUNT(0) FROM " + str + " WHERE " + str2 + " = 0";
    }

    public String getImageDetails() {
        return this.selectImageActDetails;
    }

    public String getStrings(int i) {
        return "select ResourceKey ,ResourceValues  from icfResources where LanguageId ='" + i + "'  and ModuleId='2' ";
    }

    public String getlanguages() {
        return "SELECT LanguageId,DisplayedLanguageName FROM icfLanguage where IsActive='True' COLLATE NOCASE";
    }

    public String getChildAttributeCount(int i, int i2) {
        return "SELECT count() FROM ActivityAttributeMappingMaster where isActive = 1  and ParentAttributeId = " + i + " and  ActivityMasterId = " + i2;
    }

    public String getFarmerNamesListQuery(int i) {
        return "select RespondentNo ,FarmerName ,FatherName ,VillageName,Latitude,Longitude  from FarmerMaster where TypeofFarmer = 1";
    }

    public String getfarmersInSAFilter(String str, int i) {
        return "select " + str + ",RespondentNo,Latitude,Longitude,VillageName  from FarmerMaster where TypeofFarmer = " + i + " and isActive='True'";
    }

    public String getFarmernamesListFilterQuery() {
        return "select RespondentNo ,FarmerName ,FatherName ,VillageName  from FarmerMaster where ";
    }

    public String getPlanterNamesListQuery(int i) {
        return "select RespondentNo ,FarmerName ,FatherName ,VillageName,Latitude,Longitude  from FarmerMaster where TypeofFarmer = 8";
    }

    public String getRetailerNamesListQuery(int i) {
        return "select ContactId,ContactName,RetailerShopName,MarketName,Latitude,Longitude from DealerMaster where CustomerTypeID = 2";
    }

    public String getRetailersInSAFilter(String str, int i) {
        return "select " + str + ",ContactId,Latitude,Longitude  from DealerMaster where CustomerTypeID = " + i + " and  isActive='True'";
    }

    public String getMarketNamesListQuery(int i) {
        return "select ContactId,ContactName,RetailerShopName,MarketName,Latitude,Longitude from DealerMaster where CustomerTypeID = 3";
    }

    public String getVillageNamesListQuery(int i) {
        return "SELECT villageId,villageName ||' -'||MandalName as villageName,VillageShortCode,VillageMaster.ETLCode FROM VillageMaster join MandalMaster on VillageMaster.mandalID=MandalMaster.mandalID where VillageMaster.IsActive='true' Collate NoCase";
    }

    public String getTerritoryNamesListQuery(int i) {
        return "SELECT territoryId,territoryName,regionId,CRMTerritoryCode FROM TerritoryMaster where (isActive=1 OR isActive = 'True')";
    }

    public String gettingFunctionNames() {
        return "SELECT  distinct FxFunctionsMaster.FunctionId,FunctionName,PdaFunction,NavigateUrl FROM FxFunctionsMaster inner join pmcUserRolemapping on FxFunctionsMaster.FunctionId= pmcUserRolemapping.FunctionId order by OrderByPriority ASC ";
    }

    public String getActivtiesListBySegment(int i) {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(getInstance().getRoleIdFromuserRoleMapping());
            int intValue = GetDataFromDB.getInstance().getIntValue(getInstance().getRoleActivityMappingCount());
            if (intValue > 0) {
                return getActivtiesListBySegment(i, singleValue, intValue);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "SELECT asm.ActivityMasterId,am.ActivityMasterName||'-'||am.ActivityShortCode from ActivitySegmentMappingMaster as asm Inner Join ActivityMaster as am on am.ActivityMasterId = asm.ActivityMasterId AND (AM.isIndependent = 1 or AM.IsSelfAssigned = 1) where am.isActive = 1 and asm.isActive = 1 and asm.ActivitySegmentId = " + i + " order by am.ActivityMasterName ";
    }

    public String getActivtiesListBySegment(int i, String str, int i2) {
        return "SELECT asm.ActivityMasterId,am.ActivityMasterName||'-'||am.ActivityShortCode from ActivitySegmentMappingMaster as asm Inner Join ActivityMaster as am on am.ActivityMasterId = asm.ActivityMasterId AND (AM.isIndependent = 1 or AM.IsSelfAssigned = 1) Inner Join RoleActivityMapping arm  on arm.ActivityId = am.ActivityMasterId and RoleId = " + str + " and arm.IsActive = 1 where am.isActive = 1 and asm.isActive = 1 and asm.ActivitySegmentId = " + i + " order by am.ActivityMasterName ";
    }

    public String getSurveyActivtiesListBySegment(int i) {
        return "SELECT asm.ActivityMasterId,am.ActivityMasterName||'-'||am.ActivityShortCode from SurveyActivitySegmentMappingMaster as asm Inner Join SurveyActivityMaster as am on am.ActivityMasterId = asm.ActivityMasterId AND (AM.isIndependent = 1 or AM.IsSelfAssigned = 1) where am.isActive = 1 and asm.isActive = 1 and asm.ActivitySegmentId = " + i + " order by am.ActivityMasterName ";
    }

    public String getFBFActivtiesListBySegment(int i) {
        return "SELECT asm.ActivityMasterId,am.ActivityMasterName||'-'||am.ActivityShortCode from FBFActivitySegmentMappingMaster as asm Inner Join FBFActivityMaster as am on am.ActivityMasterId = asm.ActivityMasterId where am.isActive = 1 and asm.isActive = 1 and asm.ActivitySegmentId = " + i + " order by am.ActivityMasterName ";
    }

    public String gettingDynamicFields(String str, String str2) {
        return "SELECT DisplayName,ControlType,isMandatory,DBColumnName,SourceQuery,ValidationType,ValidationExpression,MaxLength,MinLength,MaxValue,MinValue,DecimalLength,IsTransactionEditable,ColumnId,CreatedBy,RetailerToFarmerMappingID,IsReadOnly,IsSaarthieFarmerReadonly    FROM fxCustomerRegistrationConfiguration where isActive=1 and Tabs='" + str + "' and Module='" + str2 + "' order by SequenceId";
    }

    public String gettingDynamicFieldsForTransaction(String str, String str2) {
        return "SELECT ControlType,isMandatory,DBColumnName,SourceQuery,ValidationType,ValidationExpression,MaxLength,MinLength,MaxValue,MinValue,DecimalLength,IsTransactionEditable  FROM fxCustomerRegistrationConfiguration  where isActive=1 and Tabs='" + str + "' and ShowInTransaction = '1' and module='" + str2 + "' order by SequenceId";
    }

    public String gettingDynamicFieldsForTransaction(String str) {
        return "SELECT DisplayName,ControlType,isMandatory,DBColumnName,SourceQuery,ValidationType,ValidationExpression,MaxLength,MinLength,MaxValue,MinValue,DecimalLength,IsTransactionEditable,ColumnId,CreatedBy,RetailerToFarmerMappingID,IsReadOnly,IsSaarthieFarmerReadonly  FROM fxCustomerRegistrationConfiguration  where isActive=1 and ShowInTransaction = '1' and module='" + str + "' order by SequenceId";
    }

    public String gettingDynamicFieldsTabs(String str) {
        return "SELECT Tabs  FROM fxCustomerRegistrationConfiguration where isActive=1 and Module='" + str + "' order by SequenceId";
    }

    public String gettingStates() {
        return "select StateId ,StateName  from StateMaster where IsActive='true' COLLATE NOCASE order by StateName";
    }

    public String gettingDistricts(String str) {
        return "SELECT DistrictId ,DistrictName  FROM DistrictMaster where StateId ='" + str + "' and IsActive='true' COLLATE NOCASE order by DistrictName";
    }

    public String gettingMandals(String str) {
        return "SELECT MandalId ,MandalName  FROM MandalMaster where Districtid ='" + str + "' and IsActive='true' COLLATE NOCASE order by MandalName";
    }

    public String gettinVillages(String str) {
        return "SELECT villageId,villageName FROM VillageMaster where mandalId='" + str + "' and IsActive='true' COLLATE NOCASE order by villageName ";
    }

    public String deleteDraftRecords(String str, String str2, String str3) {
        return "delete from " + str + " where " + str2 + "='" + str3 + "'";
    }

    public String getFavouriteFarmerByOffsetQry() {
        return "select RespondentNo,IsFavourite,PdaId,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate from FavouriteFarmer where ServerUpdatedStatus='false' LIMIT 1000";
    }

    public String getDashboardData(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT " + str + " ,RespondentNo,Sanitized,UpdatedDate,Villagename,IsFavourite,IsSaarthie,IsCropHero,IsFellowFarmer  FROM  FarmerMaster where isActive='True' COLLATE NOCASE and Status='" + str2 + "'");
        if (!str2.equals("0") && !str2.equals("5")) {
            sb.append(" and serverupdatedstatus ='" + str3 + "'");
        }
        sb.append("and TypeofFarmer='" + str4 + "' order by RespondentNo ");
        return sb.toString();
    }

    public String getDashboardData(String str, String str2, int i, int i2, String str3) {
        if (!TextUtils.isEmpty(str3) && str3.equals(ConstantsPMC.FAVOURITES)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue FROM FarmerMaster inner join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo and FavouriteFarmer.IsFavourite=1 where isActive='True' COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
            if (i >= 0) {
                sb.append(" LIMIT ");
                sb.append(i);
                sb.append(" , ");
                sb.append(i2);
            }
            return sb.toString();
        }
        if (!TextUtils.isEmpty(str3) && str3.equals(ConstantsPMC.SARATH)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue FROM  FarmerMaster left join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo where isActive='True' and (IsSaarthie =1 or IsSaarthie='YES') COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
            if (i >= 0) {
                sb2.append(" LIMIT ");
                sb2.append(i);
                sb2.append(" , ");
                sb2.append(i2);
            }
            return sb2.toString();
        }
        if (!TextUtils.isEmpty(str3) && str3.equals(ConstantsPMC.FELLOW_FARMER)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue FROM  FarmerMaster left join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo where isActive='True' and (IsFellowFarmer =1 or IsFellowFarmer='YES') COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
            if (i >= 0) {
                sb3.append(" LIMIT ");
                sb3.append(i);
                sb3.append(" , ");
                sb3.append(i2);
            }
            return sb3.toString();
        }
        if (!TextUtils.isEmpty(str3) && str3.equals(ConstantsPMC.TG)) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue FROM  FarmerMaster left join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo where isActive='True' and (FarmerSegmentationValue =1) COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
            if (i >= 0) {
                sb4.append(" LIMIT ");
                sb4.append(i);
                sb4.append(" , ");
                sb4.append(i2);
            }
            return sb4.toString();
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue FROM  FarmerMaster left join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo where isActive='True' COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
        if (i >= 0) {
            sb5.append(" LIMIT ");
            sb5.append(i);
            sb5.append(" , ");
            sb5.append(i2);
        }
        return sb5.toString();
    }

    public String getDashboardDataLocationFilter(String str, String str2, int i, int i2, String str3, String str4) {
        if (!TextUtils.isEmpty(str3) && str3.equals(ConstantsPMC.FAVOURITES)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue FROM FarmerMaster inner join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo and FavouriteFarmer.IsFavourite=1 where isActive='True' COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 " + str4 + " group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
            if (i >= 0) {
                sb.append(" LIMIT ");
                sb.append(i);
                sb.append(" , ");
                sb.append(i2);
            }
            return sb.toString();
        }
        if (!TextUtils.isEmpty(str3) && str3.equals(ConstantsPMC.SARATH)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue FROM  FarmerMaster left join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo where isActive='True' and (IsSaarthie =1 or IsSaarthie='YES') COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 " + str4 + " group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
            if (i >= 0) {
                sb2.append(" LIMIT ");
                sb2.append(i);
                sb2.append(" , ");
                sb2.append(i2);
            }
            return sb2.toString();
        }
        if (!TextUtils.isEmpty(str3) && str3.equals(ConstantsPMC.FELLOW_FARMER)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue FROM  FarmerMaster left join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo where isActive='True' and (IsFellowFarmer =1 or IsFellowFarmer='YES') COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 " + str4 + " group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
            if (i >= 0) {
                sb3.append(" LIMIT ");
                sb3.append(i);
                sb3.append(" , ");
                sb3.append(i2);
            }
            return sb3.toString();
        }
        if (!TextUtils.isEmpty(str3) && str3.equals(ConstantsPMC.TG)) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue FROM  FarmerMaster left join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo where isActive='True' and (FarmerSegmentationValue =1) COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 " + str4 + " group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
            if (i >= 0) {
                sb4.append(" LIMIT ");
                sb4.append(i);
                sb4.append(" , ");
                sb4.append(i2);
            }
            return sb4.toString();
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue FROM  FarmerMaster left join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo where isActive='True' COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 " + str4 + " group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
        if (i >= 0) {
            sb5.append(" LIMIT ");
            sb5.append(i);
            sb5.append(" , ");
            sb5.append(i2);
        }
        return sb5.toString();
    }

    public String getDashboardDataFellowFarmer(String str, String str2, int i, int i2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,FarmerSegmentationValue FROM  FarmerMaster left join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo where isActive='True' and (IsFellowFarmer =1 or IsFellowFarmer='YES') COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 and ParentSaarthieFarmerID ='" + str4 + "' group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
        if (i >= 0) {
            sb.append(" LIMIT ");
            sb.append(i);
            sb.append(" , ");
            sb.append(i2);
        }
        return sb.toString();
    }

    public String getDashboardDataFellowFarmerFilteredList(String str, String str2, int i, int i2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT " + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,LastVisistedDate,FarmerSegmentationValue FROM  FarmerMaster left join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo where isActive='True' and (IsFellowFarmer =1 or IsFellowFarmer='YES') COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 and ParentSaarthieFarmerID ='" + str4 + " " + str5 + "' group by FarmerMaster.RespondentNo order by FarmerMaster.RespondentNo ");
        if (i >= 0) {
            sb.append(" LIMIT ");
            sb.append(i);
            sb.append(" , ");
            sb.append(i2);
        }
        return sb.toString();
    }

    public String getDashboardData(String str, String str2, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT " + str + ",RespondentNo,Sanitized,UpdatedDate,VillageName  FROM  FarmerMaster where isActive='True' COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 order by RespondentNo ");
        if (i >= 0) {
            sb.append(" LIMIT ");
            sb.append(i);
            sb.append(" , ");
            sb.append(i2);
        }
        return sb.toString();
    }

    public String getDashboardDataVillage(String str, String str2, int i, int i2, String str3) {
        if (!TextUtils.isEmpty(str3) && str3.equals(ConstantsPMC.SARATH)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT VillageName," + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,FavouriteFarmer.IsFavourite,LastVisistedDate  FROM  FarmerMaster inner join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo and FavouriteFarmer.IsFavourite=1 where isActive='True' COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 order by FarmerMaster.RespondentNo ");
            if (i >= 0) {
                sb.append(" LIMIT ");
                sb.append(i);
                sb.append(" , ");
                sb.append(i2);
            }
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SELECT VillageName," + str + ",FarmerMaster.RespondentNo,Sanitized,FarmerMaster.UpdatedDate,FavouriteFarmer.IsFavourite,LastVisistedDate  FROM  FarmerMaster left join FavouriteFarmer on FavouriteFarmer.RespondentNo=FarmerMaster.RespondentNo and FavouriteFarmer.IsFavourite=1 where isActive='True' COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and  Status<>5 order by FarmerMaster.RespondentNo ");
        if (i >= 0) {
            sb2.append(" LIMIT ");
            sb2.append(i);
            sb2.append(" , ");
            sb2.append(i2);
        }
        return sb2.toString();
    }

    public String getFarmersThreshold() {
        return getItemValue("FarmersThreshold");
    }

    public String getTotalFarmersCount(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT COUNT(0) FROM  FarmerMaster where isActive='True' COLLATE NOCASE and TypeofFarmer='" + str + "' and Status<>0");
        return sb.toString();
    }

    public String getDashboardDataSA(String str, String str2, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT " + str + ",RespondentNo,VillageName  FROM  FarmerMaster where isActive='True' COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and Status<>5 order by RespondentNo");
        if (i >= 0) {
            sb.append(" LIMIT ");
            sb.append(i);
            sb.append(" , ");
            sb.append(i2);
        }
        return sb.toString();
    }

    public String getAllRetailersDashboardData(String str, String str2, int i, int i2, String str3, String str4) {
        StringBuilder sb;
        if (!TextUtils.isEmpty(str3) && str3.equals(ConstantsPMC.FAVOURITES)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SELECT " + str + ",DealerMaster.ContactId,Column1,IsFocused,LastVisitedDate,OutStandingValue,Balance_Points,isRisingStar FROM  DealerMaster  where  isActive='True' COLLATE NOCASE and CustomerTypeID='" + str2 + "' and IsFocused = 'FOCUS' and StatusReason<>0 and StatusReason<>5 and DealerMaster.ContactId Not in ('0','1') ");
            if (!TextUtils.isEmpty(str4)) {
                sb2.append(" " + str4 + " ");
            }
            sb2.append("  group by DealerMaster.ContactId   order by DealerMaster.ContactId");
            if (i >= 0) {
                sb2.append(" LIMIT ");
                sb2.append(i);
                sb2.append(" , ");
                sb2.append(i2);
            }
            return sb2.toString();
        }
        if (str2.equalsIgnoreCase("3")) {
            sb = new StringBuilder();
            sb.append("SELECT " + str + ",DealerMaster.ContactId,VillageName,IsFocused,LastVisitedDate,OutStandingValue,Balance_Points,isRisingStar FROM  DealerMaster  where  isActive='True' COLLATE NOCASE and CustomerTypeID='" + str2 + "' and StatusReason<>0 and StatusReason<>5 and DealerMaster.ContactId Not in ('0','1')  ");
            if (!TextUtils.isEmpty(str4)) {
                sb.append(" " + str4 + " ");
            }
            sb.append(" group by DealerMaster.ContactId   order by DealerMaster.ContactId");
            if (i >= 0) {
                sb.append(" LIMIT ");
                sb.append(i);
                sb.append(" , ");
                sb.append(i2);
            }
        } else {
            sb = new StringBuilder();
            sb.append("SELECT " + str + ",DealerMaster.ContactId,Column1,IsFocused,LastVisitedDate,OutStandingValue,Balance_Points,isRisingStar FROM  DealerMaster  where  isActive='True' COLLATE NOCASE and CustomerTypeID='" + str2 + "' and StatusReason<>0 and StatusReason<>5 and DealerMaster.ContactId Not in ('0','1')  ");
            if (!TextUtils.isEmpty(str4)) {
                sb.append(" " + str4 + " ");
            }
            sb.append(" group by DealerMaster.ContactId   order by DealerMaster.ContactId");
            if (i >= 0) {
                sb.append(" LIMIT ");
                sb.append(i);
                sb.append(" , ");
                sb.append(i2);
            }
        }
        return sb.toString();
    }

    public String getAllRetailersDashboardData(String str, String str2, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT " + str + ",ContactId,OutStandingValue,Balance_Points,isRisingStar  FROM  DealerMaster where  isActive='True' COLLATE NOCASE and CustomerTypeID='" + str2 + "' and StatusReason<>0 and StatusReason<>5 and ContactId Not in ('0','1') order by ContactId");
        if (i >= 0) {
            sb.append(" LIMIT ");
            sb.append(i);
            sb.append(" , ");
            sb.append(i2);
        }
        return sb.toString();
    }

    public String getAllRetailersDashboardDataWithRadius(String str, String str2, String str3, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT " + str + ",ContactId,LastVisitedDate  FROM  DealerMaster where  isActive='True' COLLATE NOCASE and CustomerTypeID='" + str3 + "' and StatusReason<>0 and StatusReason<>5 and ContactId Not in ('0','1') ");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(" order by ContactId");
        sb.append(sb2.toString());
        if (i >= 0) {
            sb.append(" LIMIT ");
            sb.append(i);
            sb.append(" , ");
            sb.append(i2);
        }
        return sb.toString();
    }

    public String getRetailerDashboardData(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT " + str + " ,ContactId,OutStandingValue,Balance_Points  FROM  DealerMaster  where  isActive='True' COLLATE NOCASE and StatusReason='" + str2 + "'");
        if (!str2.equals("0")) {
            sb.append(" and serverupdatedstatus ='" + str3 + "'");
        }
        sb.append(" and CustomerTypeID='" + str4 + "' order by ContactId ");
        return sb.toString();
    }

    public String gettingRetailerStatus(String str, String str2, String str3) {
        return "SELECT " + str + " ,ContactId  FROM  DealerMaster where StatusReason='" + str2 + "' and ServerUpdatedStatus ='" + str3 + "' order by ContactId ";
    }

    public String getListOfAttributesUpdated(String str) {
        return "select AttributeId from ActivityAttributeMappingMaster where ActivityMasterId=" + str;
    }

    public String getPMCActivityAttributeQueryUpdated(String str, int i, int i2, long j) {
        return "select am.AttributeId,am.DisplayNameMobile,am.ControlType,fad.attributevalue,aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.FilterAttributeId1 ,aam.FilterAttributeId2 ,aam.FilterAttributeId3,aam.DisplayType,am.DynamicColumn,am.DynamicCondition,aam.IsReadOnly,aam.SourceQuery,aam.DisplayRows  from AttributeMaster as am INNER JOIN ActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId AND aam.ActivityMasterId=" + i + " LEFT JOIN pmcAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId and   fad.ActivityMasterId=" + i + " and fad.ActivitySegmentValue= '" + str + "' and fad.activityAssignmentId = " + i2 + " and fad.transId =" + j + " and (fad.isActive =1 OR fad.isActive ='True') WHERE (aam.isActive =1 OR aam.isActive ='True') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") and aam.AttributeKeyMappingId is ''  GROUP BY am.AttributeId ORDER BY aam.controlsequence";
    }

    public String getPMCActivityAttributeQueryUpdatedFBF(String str, int i, int i2, long j) {
        return "select am.AttributeId,am.DisplayNameMobile,am.ControlType,fad.attributevalue,aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.FilterAttributeId1 ,aam.FilterAttributeId2 ,aam.FilterAttributeId3,aam.DisplayType,am.DynamicColumn,am.DynamicCondition,aam.IsReadOnly,aam.SourceQuery,aam.DisplayRows  from FBFAttributeMaster as am INNER JOIN FBFActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId AND aam.ActivityMasterId=" + i + " LEFT JOIN pmcFBFAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId and   fad.ActivityMasterId=" + i + " and fad.ActivitySegmentValue= '" + str + "' and fad.activityAssignmentId = " + i2 + " and fad.transId =" + j + " and (fad.isActive =1 OR fad.isActive ='True') WHERE (aam.isActive =1 OR aam.isActive ='True') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") and aam.AttributeKeyMappingId is ''  GROUP BY am.AttributeId ORDER BY aam.controlsequence";
    }

    public String getListOfAttributesUpdate(String str) {
        return "select AttributeId from ActivityAttributeMappingMaster where ActivityMasterId ='" + str + "' and AttributeKeyMappingId is ''";
    }

    public String getSegmentData(int i) {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(getInstance().getRoleIdFromuserRoleMapping());
            if (GetDataFromDB.getInstance().getIntValue(getInstance().getRoleSegmentMappingCount()) > 0) {
                return getSegmentData(i, singleValue);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i != 0) {
            return "select distinct aln.ActivitySegmentId,aln.ActivitySegmentName,asm.RefrenceTableName,asm.PrimaryKeyColumn from ActivitySegmentMaster asm INNER JOIN ActivitySegmentMasterLn aln on aln.ActivitySegmentId = asm.ActivitySegmentId and aln.LanguangeId = " + i + "  where asm.isActive=1 and asm.ActivitySegmentId!=5";
        }
        return "select distinct ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from ActivitySegmentMaster where isActive=1 and ActivitySegmentId!=5";
    }

    public String getSegmentData(int i, String str) {
        if (i != 0) {
            return "select distinct aln.ActivitySegmentId,aln.ActivitySegmentName,asm.RefrenceTableName,asm.PrimaryKeyColumn from ActivitySegmentMaster asm INNER JOIN ActivitySegmentMasterLn aln on aln.ActivitySegmentId = asm.ActivitySegmentId and aln.LanguangeId = " + i + " INNER JOIN RoleSegmentMapping rsm on rsm.SegmentId=asm.ActivitySegmentId and rsm.IsActive = 1 and RoleId = " + str + " where asm.isActive=1 and asm.ActivitySegmentId!=5";
        }
        return "select distinct ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from ActivitySegmentMaster  INNER JOIN RoleSegmentMapping rsm on rsm.SegmentId=asm.ActivitySegmentId and rsm.IsActive = 1 and RoleId = " + str + " where isActive=1 and ActivitySegmentId!=5";
    }

    public String getTSTSegmentData(int i) {
        if (i != 0) {
            return "select distinct aln.ActivitySegmentId,aln.ActivitySegmentName,asm.RefrenceTableName,asm.PrimaryKeyColumn from TSTActivitySegmentMaster asm INNER JOIN ActivitySegmentMasterLn aln on aln.ActivitySegmentId = asm.ActivitySegmentId and aln.LanguangeId = " + i + "  where asm.isActive=1 and asm.ActivitySegmentId!=5";
        }
        return "select distinct ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from TSTActivitySegmentMaster where isActive=1 and ActivitySegmentId!=5";
    }

    public String getFBFSegmentData(int i) {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(getInstance().getRoleIdFromuserRoleMapping());
            if (GetDataFromDB.getInstance().getIntValue(getInstance().getRoleSegmentMappingCount()) > 0) {
                return getFBFSegmentData(i, singleValue);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i != 0) {
            return "select distinct aln.ActivitySegmentId,aln.ActivitySegmentName,asm.RefrenceTableName,asm.PrimaryKeyColumn from FBFActivitySegmentMaster asm INNER JOIN ActivitySegmentMasterLn aln on aln.ActivitySegmentId = asm.ActivitySegmentId and aln.LanguangeId = " + i + "  where asm.isActive=1 and asm.ActivitySegmentId!=5";
        }
        return "select distinct ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from FBFActivitySegmentMaster where isActive=1 and ActivitySegmentId!=5";
    }

    public String getFBFSegmentData(int i, String str) {
        if (i != 0) {
            return "select distinct aln.ActivitySegmentId,aln.ActivitySegmentName,asm.RefrenceTableName,asm.PrimaryKeyColumn from FBFActivitySegmentMaster asm INNER JOIN ActivitySegmentMasterLn aln on aln.ActivitySegmentId = asm.ActivitySegmentId and aln.LanguangeId = " + i + " INNER JOIN RoleSegmentMapping rsm on rsm.SegmentId=asm.ActivitySegmentId and rsm.IsActive = 1 and RoleId = " + str + "  where asm.isActive=1 and asm.ActivitySegmentId!=5";
        }
        return "select distinct ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from FBFActivitySegmentMaster asm  INNER JOIN RoleSegmentMapping rsm on rsm.SegmentId=asm.ActivitySegmentId and rsm.IsActive = 1 and RoleId = " + str + "  where asm.isActive=1 and asm.ActivitySegmentId!=5";
    }

    public String getSegmentDataOrders() {
        return "select distinct ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from ActivitySegmentMaster where isActive=1 and ActivitySegmentId IN (2,3)";
    }

    public String getSegmentDataComplaints() {
        return "select distinct ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from ActivitySegmentMaster where isActive=1 and ActivitySegmentId IN (1,2,3)";
    }

    public String getSegmentDataUserWise(int i) {
        if (i != 0) {
            return "select asm.ActivitySegmentId,asm.ActivitySegmentName,asm.RefrenceTableName,asm.PrimaryKeyColumn from ActivitySegmentMaster as asm inner join ActivitySegmentMappingMaster as asmm on asmm.ActivitySegmentId =asm.ActivitySegmentId and asmm.ActivityMasterId = " + i + " and asmm.isActive=1  where asm.isActive=1 and asm.ActivitySegmentId NOT IN (5,10)  ";
        }
        return "select ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from ActivitySegmentMaster where isActive=1 and ActivitySegmentId NOT IN (5,10)";
    }

    public String getSegmentDataByTypeId(int i) {
        return "select ActivitySegmentId,ActivitySegmentName,RefrenceTableName,PrimaryKeyColumn from ActivitySegmentMaster where ";
    }

    public String getActivitySegments() {
        return "select ActivitySegmentId,ActivitySegmentName from ActivitySegmentMaster where isActive=1";
    }

    public String gettingAtaticData(String str) {
        return "SELECT StateID,StateName,DistrictID,DistrictName, MandalID,MandalName,VillageId,VillageName,Latitude,Longitude  FROM FarmerMaster where RespondentNo ='" + str + "'";
    }

    public String gettingRetailerAtaticData(String str) {
        return "SELECT StateID,StateName,DistrictID,DistrictName, MandalID,MandalName,VillageId,VillageName,Latitude,Longitude   FROM DealerMaster where contactId ='" + str + "'";
    }

    public String gettingFarmerCount(String str) {
        return "SELECT count(0)  FROM FarmerMaster where RespondentNo='" + str + "'";
    }

    public String gettingRetailerCount(String str) {
        return "SELECT count(0)  FROM DealerMaster where contactId='" + str + "'";
    }

    public String gettingDraftColunNames(String str) {
        return "SELECT DBColumnName FROM fxCustomerRegistrationConfiguration where ShowInDraft=1 and isActive=1 and Module='" + str + "' order by sequenceid";
    }

    public String gettingAudianceFramerObject(String str) {
        return "select TableName,DBColumnName from fxCustomerRegistrationConfiguration where ColumnId=" + str;
    }

    public String getChildValuesAttributeQueryUpdate(String str, int i, int i2, int i3, long j) {
        return "select fad.AttributeId,aam.DisplayNameMobile,aam.controltype,fad.attributevalue,COALESCE(\"\",fad.attributevalue),fad.detailsID,fad.PairId,fad.activityAttributeId,aam.MaxLength,aam.MinLength,aam.MinValue,aam.MaxValue,aam.ValidationType,aam.ValidationExpression, aam.AttributeSource, aam.AttributeDisplayField, aam.AttributeValueField,aam.AttributeLookupKey,aam.AttributeDefaultValue,aam.isKeyAttribute,am.FilterAttributeId1 ,am.FilterAttributeId2 ,am.FilterAttributeId3,am.DisplayType,aam.DynamicColumn,aam.DynamicCondition,am.IsReadOnly,am.SourceQuery,am.DisplayRows from pmcAssignmentActivityDetails  as fad INNER JOIN AttributeMaster as aam ON aam.AttributeId = fad.AttributeId INNER JOIN ActivityAttributeMappingMaster as am ON am.AttributeId=fad.AttributeId and am.ActivityMasterId=fad.ActivityMasterId and am.ParentAttributeId=" + i2 + "  and (fad.isActive =1 OR fad.isActive ='True') where (aam.isActive =1 OR aam.isActive ='True') and am.isRequiredMobile=1 and fad.ActivitySegmentValue= '" + str + "' and fad.ActivityMasterId= " + i + " and fad.activityAssignmentId = " + i3 + " and fad.TransId = " + j + " ORDER BY am.controlsequence";
    }

    public String getSelectedAttributeQueryUpdate(String str, int i, int i2) {
        return "select am.AttributeId ,am.DisplayNameMobile,am.controltype,COALESCE(\"\",fad.attributevalue),aam.isMandatoryMobile,COALESCE(\"\",fad.detailsID),COALESCE(\"\",fad.PairId ),fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.FilterAttributeId1 ,aam.FilterAttributeId2 ,aam.FilterAttributeId3,aam.DisplayType,am.DynamicColumn,am.DynamicCondition,aam.IsReadOnly,aam.SourceQuery,aam.DisplayRows from AttributeMaster as am INNER JOIN ActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId and aam.ActivityMasterId= " + i + " LEFT JOIN pmcAssignmentActivityDetails  as fad ON aam.attributeid=fad.AttributeId and fad.ActivitySegmentValue= '" + str + "'  and (fad.isActive =1 OR fad.isActive ='True') where (aam.isActive =1 OR aam.isActive ='True') and aam.isRequiredMobile=1 and  ParentAttributeId= " + i2 + " GROUP BY am.AttributeId ORDER BY aam.controlsequence ";
    }

    public String gettingStateCount() {
        return "select count(0) from StateMaster where IsActive='true' COLLATE NOCASE";
    }

    public String gettingCountofMasters(String str, String str2, String str3) {
        return "SELECT count(0)  FROM " + str + "  where " + str2 + " ='" + str3 + "'  and IsActive='true' Collate NoCase";
    }

    public String gettingHybrieds(String str) {
        return "SELECT BrandID,BrandName  FROM BrandMaster where CropId='" + str + "' and Isactive='true' COLLATE NOCASE Order by brandName";
    }

    public String gettingSeason() {
        return "SELECT seasonId,seasonName FROM SeasonMaster  where Isactive='true' COLLATE NOCASE Order by seasonName";
    }

    public String getSelectFarmerRegistration() {
        return this.selectFarmerRegistration;
    }

    public void setSelectFarmerRegistration(String str) {
        this.selectFarmerRegistration = str;
    }

    public String getPictureIdCount(String str) {
        return "select count(0) from ActivityImageDetails where ReferenceID  ='" + str + "'";
    }

    public String getPictureId(String str) {
        return "select ImageId from ActivityImageDetails   where ReferenceID ='" + str + "'";
    }

    public String getItemValue(String str) {
        return "select itemValue from ConfigurablelookupMaster where itemKey ='" + str + "' and IsActive = 'True'";
    }

    public String getItemValue(String str, String str2) {
        return "select itemValue from ConfigurablelookupMaster where itemKey ='" + str + "' and  ItemDescription = '" + str2 + "' and IsActive = 'True'";
    }

    public String getItemValueForImage(String str) {
        return "select itemValue from ConfigurablelookupMaster where itemKey ='" + str + "' and ItemType ='ImageReferenceType' and IsActive = 'True'";
    }

    public static String updatePatchDetailsQry(String str, String str2, String str3, String str4) {
        return "INSERT OR REPLACE INTO AppSyncStatusDetails (LineId, Type, Status, PatchPath, UpdatedOn) VALUES (" + str + ", '" + str2 + "', '" + str3 + "', '" + str4 + "', (SELECT date('now', 'localtime')))";
    }

    public static String updatePatchDetailsQryWithTime(String str, String str2, String str3, String str4) {
        return "INSERT OR REPLACE INTO AppSyncStatusDetails (LineId, Type, Status, PatchPath, UpdatedOn) VALUES (" + str + ", '" + str2 + "', '" + str3 + "', '" + str4 + "', (SELECT date('now', 'localtime')))";
    }

    public static String getLastMasterSyncTime() {
        return "select  PatchPath from  AppSyncStatusDetails where LineId = 1 ";
    }

    public static String getVersionNumberQry() {
        return "SELECT VersionNumber FROM VersionDetails";
    }

    public static String getLatestPatchDetailsQry() {
        return "SELECT aps.Type, aps. Status, aps.PatchPath, UpdatedOn FROM AppSyncStatusDetails AS aps";
    }

    public String searchQuery(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13) {
        String str14;
        if (!TextUtils.isEmpty(str13) && str13.equalsIgnoreCase(ConstantsPMC.FAVOURITES)) {
            String str15 = "SELECT " + str + " ,fm.RespondentNo,fm.Sanitized,fm.UpdatedDate,fm.VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue  FROM  FarmerMaster fm inner join FavouriteFarmer on FavouriteFarmer.RespondentNo=fm.RespondentNo and FavouriteFarmer.IsFavourite=1 Left join FarmerCropDetails  fcm on fcm.RespondentNo = fm.RespondentNo where fm.RespondentNo != 0 " + str2 + str3 + str4 + str5 + str6 + str7 + str8 + str11 + " and  fm.isActive='True' and TypeofFarmer='" + str12 + "' group by fm.RespondentNo ";
            if (!TextUtils.isEmpty(str9) && !TextUtils.isEmpty(str10)) {
                return str15 + " HAVING  " + str9 + " and  " + str10 + " order by  fm.RespondentNo ";
            }
            if (!TextUtils.isEmpty(str9)) {
                return str15 + " HAVING  " + str9 + " order by  fm.RespondentNo ";
            }
            if (!TextUtils.isEmpty(str10)) {
                return str15 + " HAVING  " + str10 + " order by  fm.RespondentNo ";
            }
            return str15 + " order by  fm.RespondentNo ";
        }
        if (TextUtils.isEmpty(str13)) {
            str14 = str10;
        } else {
            if (str13.equalsIgnoreCase(ConstantsPMC.SARATH)) {
                String str16 = "SELECT " + str + " ,fm.RespondentNo,fm.Sanitized,fm.UpdatedDate,fm.VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue  FROM  FarmerMaster fm left join FavouriteFarmer on FavouriteFarmer.RespondentNo=fm.RespondentNo and FavouriteFarmer.IsFavourite=1 and (IsSaarthie =1 or IsSaarthie ='YES')  Left join FarmerCropDetails  fcm on fcm.RespondentNo = fm.RespondentNo where fm.RespondentNo != 0 " + str2 + str3 + str4 + str5 + str6 + str7 + str8 + str11 + " and  fm.isActive='True' and TypeofFarmer='" + str12 + "' group by fm.RespondentNo  ";
                if (!TextUtils.isEmpty(str9) && !TextUtils.isEmpty(str10)) {
                    return str16 + " HAVING  " + str9 + " and " + str10 + " order by  fm.RespondentNo ";
                }
                if (!TextUtils.isEmpty(str9)) {
                    return str16 + " HAVING   " + str9 + " order by  fm.RespondentNo ";
                }
                if (!TextUtils.isEmpty(str10)) {
                    return str16 + " HAVING   " + str10 + " order by  fm.RespondentNo ";
                }
                return str16 + " order by  fm.RespondentNo ";
            }
            str14 = str10;
        }
        String str17 = "SELECT " + str + " ,fm.RespondentNo,fm.Sanitized,fm.UpdatedDate,fm.VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue  FROM  FarmerMaster fm left join FavouriteFarmer on FavouriteFarmer.RespondentNo=fm.RespondentNo Left join FarmerCropDetails  fcm on fcm.RespondentNo = fm.RespondentNo where fm.RespondentNo != 0 " + str2 + str3 + str4 + str5 + str6 + str7 + str8 + str11 + " and  fm.isActive='True' and TypeofFarmer='" + str12 + "' group by fm.RespondentNo ";
        if (!TextUtils.isEmpty(str9) && !TextUtils.isEmpty(str10)) {
            return str17 + " HAVING  " + str9 + " and  " + str14 + " order by  fm.RespondentNo ";
        }
        if (!TextUtils.isEmpty(str9)) {
            return str17 + " HAVING  " + str9 + " order by  fm.RespondentNo ";
        }
        if (!TextUtils.isEmpty(str10)) {
            return str17 + " HAVING  " + str14 + " order by  fm.RespondentNo ";
        }
        return str17 + " order by  fm.RespondentNo ";
    }

    public String searchQueryLatLongNotNull(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13) {
        if (!TextUtils.isEmpty(str13) && str13.equalsIgnoreCase(ConstantsPMC.FAVOURITES)) {
            String str14 = "SELECT " + str + " ,fm.RespondentNo,fm.Sanitized,fm.UpdatedDate,fm.VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue  FROM  FarmerMaster fm inner join FavouriteFarmer on FavouriteFarmer.RespondentNo=fm.RespondentNo and FavouriteFarmer.IsFavourite=1 Left join FarmerCropDetails  fcm on fcm.RespondentNo = fm.RespondentNo where fm.RespondentNo != 0 " + str2 + str3 + str4 + str5 + str6 + str7 + str8 + str11 + " and  fm.Latitude <> '' and  fm.isActive='True' and TypeofFarmer='" + str12 + "' group by fm.RespondentNo ";
            if (!TextUtils.isEmpty(str9) && !TextUtils.isEmpty(str10)) {
                return str14 + " HAVING  " + str9 + " and " + str10 + " order by  fm.RespondentNo ";
            }
            if (!TextUtils.isEmpty(str9)) {
                return str14 + " HAVING  " + str9 + " order by  fm.RespondentNo ";
            }
            if (!TextUtils.isEmpty(str10)) {
                return str14 + " HAVING  " + str10 + " order by  fm.RespondentNo ";
            }
            return str14 + " order by  fm.RespondentNo ";
        }
        if (!TextUtils.isEmpty(str13) && str13.equalsIgnoreCase(ConstantsPMC.SARATH)) {
            String str15 = "SELECT " + str + " ,fm.RespondentNo,fm.Sanitized,fm.UpdatedDate,fm.VillageName,FavouriteFarmer.IsFavourite,IsSaarthie,IsCropHero,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue  FROM  FarmerMaster fm left join FavouriteFarmer on FavouriteFarmer.RespondentNo=fm.RespondentNo and FavouriteFarmer.IsFavourite=1 and (IsSaarthie =1 or IsSaarthie ='YES')  Left join FarmerCropDetails  fcm on fcm.RespondentNo = fm.RespondentNo where fm.RespondentNo != 0 " + str2 + str3 + str4 + str5 + str6 + str7 + str8 + str11 + " and  fm.Latitude <> '' and  fm.isActive='True' and TypeofFarmer='" + str12 + "' group by fm.RespondentNo ";
            if (!TextUtils.isEmpty(str9) && !TextUtils.isEmpty(str10)) {
                return str15 + " HAVING " + str9 + " and " + str10 + " order by  fm.RespondentNo ";
            }
            if (!TextUtils.isEmpty(str9)) {
                return str15 + " HAVING  " + str9 + " order by  fm.RespondentNo ";
            }
            if (!TextUtils.isEmpty(str10)) {
                return str15 + " HAVING  " + str10 + " order by  fm.RespondentNo ";
            }
            return str15 + " order by  fm.RespondentNo ";
        }
        String str16 = "SELECT " + str + " ,fm.RespondentNo,fm.Sanitized,fm.UpdatedDate,fm.VillageName,FavouriteFarmer.IsFavouriteIsSaarthie,IsCropHero,IsFellowFarmer,SaarthieFarmerID,FarmerSegmentationValue  FROM  FarmerMaster fm left join FavouriteFarmer on FavouriteFarmer.RespondentNo=fm.RespondentNo Left join FarmerCropDetails  fcm on fcm.RespondentNo = fm.RespondentNo where fm.RespondentNo != 0 " + str2 + str3 + str4 + str5 + str6 + str7 + str8 + str11 + " and  fm.Latitude <> '' and  fm.isActive='True' and TypeofFarmer='" + str12 + "' group by fm.RespondentNo ";
        if (!TextUtils.isEmpty(str9) && !TextUtils.isEmpty(str10)) {
            return str16 + " HAVING  " + str9 + " and  " + str10 + " order by  fm.RespondentNo ";
        }
        if (!TextUtils.isEmpty(str9)) {
            return str16 + " HAVING  " + str9 + " order by  fm.RespondentNo ";
        }
        if (!TextUtils.isEmpty(str10)) {
            return str16 + " HAVING  " + str10 + " order by  fm.RespondentNo ";
        }
        return str16 + " order by  fm.RespondentNo ";
    }

    public String searchQuery(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        return "SELECT " + str + " ,fm.RespondentNo,fm.Sanitized,fm.UpdatedDate,fm.VillageName  FROM  FarmerMaster fm Left join FarmerCropDetails  fcm on fcm.RespondentNo = fm.RespondentNo where fm.RespondentNo != 0 and fm.Status<>0 and  fm.Status<>5 " + str2 + str3 + str4 + str5 + str6 + str7 + str8 + str11 + " and  fm.isActive='True' and TypeofFarmer='" + str12 + "' group by fm.RespondentNo order by  fm.RespondentNo ";
    }

    public String searchQueryLatLongNotNull(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        return "SELECT " + str + " ,fm.RespondentNo,fm.Sanitized,fm.UpdatedDate,fm.VillageName  FROM  FarmerMaster fm Left join FarmerCropDetails  fcm on fcm.RespondentNo = fm.RespondentNo where fm.RespondentNo != 0 and fm.Status<>0 and  fm.Status<>5 " + str2 + str3 + str4 + str5 + str6 + str7 + str8 + str11 + " and  fm.Latitude <> '' and  fm.isActive='True' and TypeofFarmer='" + str12 + "' group by fm.RespondentNo order by  fm.RespondentNo ";
    }

    public String retailerSearchQuery(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        if (!TextUtils.isEmpty(str9) && str9.equals(ConstantsPMC.FAVOURITES)) {
            return "SELECT " + str + " ,dm.contactId,FavouriteRetailer.IsFavourite  FROM  DealerMaster dm inner join FavouriteRetailer on FavouriteRetailer.ContactId=dm.ContactId and FavouriteRetailer.IsFavourite=1 Left join FarmerCropDetails  fcm on fcm.RespondentNo = dm.ContactId where dm.contactId != 0 and StatusReason<>0 and StatusReason<>5 " + str2 + str3 + str4 + str5 + str6 + str7 + "  and dm.isActive='True' and CustomerTypeID='" + str8 + "' group by dm.contactId order by  dm.contactId";
        }
        return "SELECT " + str + " ,dm.contactId,FavouriteRetailer.IsFavourite  FROM  DealerMaster dm left join FavouriteRetailer on FavouriteRetailer.ContactId=dm.ContactId  Left join FarmerCropDetails  fcm on fcm.RespondentNo = dm.ContactId where dm.contactId != 0 and StatusReason<>0 and StatusReason<>5 " + str2 + str3 + str4 + str5 + str6 + str7 + "  and dm.isActive='True' and CustomerTypeID='" + str8 + "' group by dm.contactId order by  dm.contactId";
    }

    public String retailerSearchQuery(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        return "SELECT " + str + " ,dm.contactId  FROM  DealerMaster dm  Left join FarmerCropDetails  fcm on fcm.RespondentNo = dm.ContactId where dm.contactId != 0 and StatusReason<>0 and StatusReason<>5 " + str2 + str3 + str4 + str5 + str6 + str7 + "  and dm.isActive='True' and CustomerTypeID='" + str8 + "' group by dm.contactId order by  dm.contactId";
    }

    public String retailerSearchQueryLatLongNotNull(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        if (!TextUtils.isEmpty(str9) && str9.equals(ConstantsPMC.FAVOURITES)) {
            return "SELECT " + str + " ,dm.contactId,FavouriteRetailer.IsFavourite  FROM  DealerMaster dm inner join FavouriteRetailer on FavouriteRetailer.ContactId=dm.ContactId and FavouriteRetailer.IsFavourite=1 Left join FarmerCropDetails  fcm on fcm.RespondentNo = dm.ContactId where dm.contactId != 0 and StatusReason<>0 and StatusReason<>5 " + str2 + str3 + str4 + str5 + str6 + str7 + " and  dm.Latitude <> '' and dm.isActive='True' and CustomerTypeID='" + str8 + "' group by dm.contactId order by  dm.contactId";
        }
        return "SELECT " + str + " ,dm.contactId,FavouriteRetailer.IsFavourite  FROM  DealerMaster dm left join FavouriteRetailer on FavouriteRetailer.ContactId=dm.ContactId Left join FarmerCropDetails  fcm on fcm.RespondentNo = dm.ContactId where dm.contactId != 0 and StatusReason<>0 and StatusReason<>5 " + str2 + str3 + str4 + str5 + str6 + str7 + " and  dm.Latitude <> '' and dm.isActive='True' and CustomerTypeID='" + str8 + "' group by dm.contactId order by  dm.contactId";
    }

    public String retailerSearchQueryLatLongNotNull(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        return "SELECT " + str + " ,dm.contactId  FROM  DealerMaster dm  Left join FarmerCropDetails  fcm on fcm.RespondentNo = dm.ContactId where dm.contactId != 0 and StatusReason<>0 and StatusReason<>5 " + str2 + str3 + str4 + str5 + str6 + str7 + " and  dm.Latitude <> '' and dm.isActive='True' and CustomerTypeID='" + str8 + "' group by dm.contactId order by  dm.contactId";
    }

    public String getAssignmentActivityDetailsCountQry() {
        return "SELECT COUNT(0) FROM pmcAssignmentActivityDetails WHERE serverUpdatedStatus='false'";
    }

    public String getFarmerCropMappingCountQry() {
        return "SELECT COUNT(0) FROM FarmerCropDetails WHERE serverUpdatedStatus='false'";
    }

    public String getFarmerLandDetailsCountQry() {
        return "SELECT COUNT(0) from DealerLandDetails WHERE serverUpdatedStatus='false'";
    }

    public String getDealerCropCountQry() {
        return "SELECT COUNT(0) FROM DealerCropMapping WHERE serverUpdatedStatus='false'";
    }

    public String getDealerCompanyCountQry() {
        return "SELECT COUNT(0) FROM DealerCompanyMapping WHERE serverUpdatedStatus='false'";
    }

    public String getFarmerListDetailsCountQry() {
        return "SELECT COUNT(0) FROM pmcFarmerDetails WHERE serverUpdatedStatus='false'";
    }

    public String getAssignmentVisitDetailsCountQry() {
        return "SELECT COUNT(0) FROM pmcAssignmentVisit WHERE serverupdatedstatus='false'";
    }

    public String getFarmerMasterDetailsCountQry() {
        return "SELECT COUNT(0) FROM FarmerMaster WHERE serverupdatedstatus='false'";
    }

    public String getDealerMasterDetailsCountQry() {
        return "SELECT COUNT(0) FROM DealerMaster  WHERE serverupdatedstatus='false'";
    }

    public String getSyncErrorLogsCountQry() {
        return "SELECT COUNT(0) FROM SyncErrorLog";
    }

    public String getPendingPicturesCountQry() {
        return "SELECT COUNT(0) FROM ActivityImageDetails WHERE ServerStatus = 'false'";
    }

    public String getSelectFavouriteFarmer() {
        return this.selectFavouriteFarmerDetails;
    }

    public String getSelectApplyLeaveDetailsDetails() {
        return this.selectApplyLeaveDetails;
    }

    public String getPendingPicturesCountQryForTestimonial() {
        return "SELECT COUNT(0) FROM ActivityImageDetails WHERE ServerStatus = 'false' & ContentTypeId = '1'";
    }

    public String getPendingVideosCountQry() {
        return "SELECT COUNT(0) FROM ActivityImageDetails WHERE ServerStatus = 'false' & ContentTypeId = '2'";
    }

    public String getLog4netCountQry() {
        return "SELECT COUNT(0) FROM log4net  where serverUpdateStatus='false'";
    }

    public String getAttendanceCountQry() {
        return "SELECT COUNT(0) FROM AttendanceDetails WHERE serverupdatedstatus='false'";
    }

    public String getApplyOnLeave() {
        return "SELECT COUNT(0) FROM ApplyLeave WHERE serverupdatedstatus='false'";
    }

    public String getPMCAttendanceCountQry() {
        return "SELECT COUNT(0) FROM PMCAttendanceDetails WHERE serverupdatedstatus='false'";
    }

    public String getPMCTSTAssingmentActivityDetailsCountQry() {
        return "SELECT COUNT(0) from  PMCTSTAssignmentActivityDetails   where serverUpdatedStatus='false'";
    }

    public String getPMCFBFAssingmentActivityDetailsCountQry() {
        return "SELECT COUNT(0) from  PMCFBFAssignmentActivityDetails   where serverUpdatedStatus='false'";
    }

    public String getPMCSurveyAssingmentActivityDetailsCountQry() {
        return "SELECT COUNT(0) from  PMCSurveyAssignmentActivityDetails   where serverUpdatedStatus='false'";
    }

    public String getPMCFBFResolveActivityDetailsCountQry() {
        return "SELECT COUNT(0) from  FBFActivityResolveTrack   where serverUpdatedStatus='false'";
    }

    public String getImageDetailsQry(String str) {
        return "SELECT  ImageId, AssignmentId, ActivityId, AttributeId, SubJect, Comments, Remarks, PicturePath, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, PDAID, ReferenceType,ReferenceID,EventTypeId FROM ActivityImageDetails   where  ServerStatus='false' AND ImageId = '" + str + "'";
    }

    public String getImageDetailsQryForSync() {
        return "SELECT  ImageId, AssignmentId, ActivityId, AttributeId, SubJect, Comments, Remarks, PicturePath, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, PDAID, ReferenceType,ReferenceID,EventTypeId,ContentTypeId FROM ActivityImageDetails   where  ServerStatus='false' and ContentTypeId  !=2";
    }

    public String getImageDetailsQry_IDS() {
        return "SELECT ImageId FROM ActivityImageDetails  where  ServerStatus='false' ";
    }

    public String getImageDetailsQry_Assignment(String str) {
        return "SELECT  ImageId, AssignmentId, ActivityId, AttributeId, SubJect, Comments, Remarks, PicturePath, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, PDAID, ReferenceType,ReferenceID,EventTypeId FROM ActivityImageDetails where (ServerStatus='false' or ServerStatus='') and ContentTypeId = '1' and  ReferenceID = '" + str + "'";
    }

    public String getUpdateImageQry(String str) {
        return "UPDATE ActivityImageDetails SET ServerStatus='true' WHERE ImageId='" + str + "'";
    }

    public String getFarmerActivityDetailsByOffsetQry() {
        return "SELECT pfad.detailsID,pfad.farmerId,pfad.activityId,pfad.attributeId,pfad.attributeValue,pfad.createdBy,pfad.createddate,pfad.updatedBy,pfad.updatedDate,pfad.isPlanned,pfad.assignmentID,pfad.pdaId,pfad.isDone,pfad.notdoneRemark FROM pmcFarmerActivityDetails AS pfad  inner join pmcfarmerDetails on pfad.farmerId = pmcfarmerDetails.farmerid WHERE pmcfarmerDetails.isVisited ='true' AND pfad.serverUpdatedStatus='false'  LIMIT 1000";
    }

    public String getFarmerCropMappingByOffsetQry() {
        return "SELECT pfcm.DetailsID,pfcm. FarmerID,pfcm.CropID ,pfcm.Acreages,pfcm.CreatedBy,pfcm.CreatedDate,pfcm.UpdatedBy,pfcm.UpdatedDate,pfcm.pdaid,pfcm.dos,pfcm.productId,pfcm.IsMainCrop,pfcm.Spraypattern,pfcm.LandType,pfcm.RespondentNo,pfcm.status,pfcm.SeasonID,pfcm.IrrigationType  from FarmerCropDetails as pfcm where pfcm.serverUpdatedStatus='false' LIMIT 1000";
    }

    public String getFarmerLandDetailsByOffsetQry() {
        return "select DetailsID ,FarmerID ,LandName,Acreages,Address,Latitude,Longitude,IsOnField,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaID,RespondentNo from DealerLandDetails where serverupdatedstatus = 'false' LIMIT 1000";
    }

    public String getFarmerListDetailsByOffsetQry() {
        return "select farmerId,mobile,landline,coNumber,acreagesOwned,leasedIn,leasedOut,cultivated,visitDescription,createdBy,createddate,updatedBy,updatedDate,pdaId,retailerId,totalLandHolding, latitude, longitude,landMark,isActive,Field1 FROM  pmcFarmerDetails where serverUpdatedStatus='false' and isVisited='true' LIMIT 1000";
    }

    public String getIsLatLongMandatory(int i) {
        return "select isLatLongRequired from ActivityMaster where ActivityMasterId  = " + i;
    }

    public String getIsLatLongMandatoryInSurvey(int i) {
        return "select isLatLongRequired from SurveyActivityMaster where ActivityMasterId  = " + i;
    }

    public String getIsTSTLatLongMandatory(int i) {
        return "select isLatLongRequired from TSTActivityMaster where ActivityMasterId  = " + i;
    }

    public String getIsFBFLatLongMandatory(int i) {
        return "select isLatLongRequired from FBFActivityMaster where ActivityMasterId  = " + i;
    }

    public String getAssignmentVisitDetailsByOffsetQry() {
        return "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId,visitId FROM pmcAssignmentVisit where serverupdatedstatus='false' LIMIT 1000";
    }

    public String getSyncErrorLogDataByOffsetQry() {
        return "SELECT Pdaid, ColumnName, SourceID, TableName, ErrorMessage, ErrorStackTrace, Query, synctype, CreatedDate, CreatedBy, UpdatedDate, UpdatedBy, Remarks, isSolved  FROM SyncErrorLog  where serverUpdatedStatus='false' LIMIT 1000";
    }

    public String getLog4NetDataByOffsetQry() {
        return "select date,thread,level,logger,message,exception,userId,exceptionAt,id  FROM log4net  where serverUpdateStatus='false' LIMIT 1000";
    }

    public String geetingPdaid() {
        return "SELECT pdaID  FROM pmcUserDetails";
    }

    public String getRoleQuery() {
        return "Select RoleId from pmcUserRolemapping limit 1";
    }

    public String getFarmerMasterDataQry() {
        return "select FarmerID ,RespondentNo ,UniqueId, FarmerName ,CONumber ,SWDName ,PINCODE ,LandMark ,Email ,Education ,AnnualHouseholdIncome,FamilyMembersCount,StateID ,StateName ,DistrictID ,DistrictName ,Surname,FarmerSegmentation ,ZoneID  ,RegionID,TerritoryId, AgeGroupId ,Gender,Landline ,Mobile ,MandalID ,MandalName ,LeasedInAcreages,LeasedOutAcreages,TotalAcreage,TotalCultivated,FarmersInfluencedCount ,BrandedCPusage,Segment,TotalAcreageInfluencedByFarmer,PreferredRetailerID,LastVisistedDate,ServerStatus,IsActive,CreatedBy ,CreatedDate ,UpdatedBy ,UpdatedDate,VillageName ,VisitDescription ,TotalLandHolding ,Latitude ,Longitude ,TerritoryName ,Address1 ,Address2 ,Field1 ,Field2,Field3 ,Field4 ,FatherName ,PP ,ProgressiveScore ,LeasedInLandAreaInLocalUnits ,LeasedOutLandAreaInLocalUnits ,OwnedLandCultivatedInLocalUnits ,LandMeasureUnitLeasedInLand ,LandMeasureUnitLeasedOutLand ,LandMeasureUnitOwnedLandCultivated ,TotalLandCultivatedInLocalUnits ,MarketId ,SocialStatus ,Irrigatedland ,Rainfedland ,PreferredRetailerID2 ,isNew  ,isCompleted ,pdaid,Status,FarmerTypeId,TypeofFarmer,VillageId,serverupdatedstatus,age,AadharRawData,Audiencefarmer,HasProfileImage,GPSTimeStamp,Sanitized,Column3,Column5,IsSaarthie,IsCropHero,SaarthieFarmerID,IsApprovedCropHero,Column1,Column2,Column4,LastVisistedDate,IsFellowFarmer,FarmerSegmentationValue FROM farmermaster WHERE serverupdatedstatus = 'false'";
    }

    public String getFarmerMasterDataByOffsetQry() {
        return "select FarmerID ,RespondentNo ,UniqueId, FarmerName ,CONumber ,SWDName ,PINCODE ,LandMark ,Email ,Education ,AnnualHouseholdIncome,FamilyMembersCount,StateID ,StateName ,DistrictID ,DistrictName ,Surname,FarmerSegmentation ,ZoneID  ,RegionID,TerritoryId, AgeGroupId ,Gender,Landline ,Mobile ,MandalID ,MandalName ,LeasedInAcreages,LeasedOutAcreages,TotalAcreage,TotalCultivated,FarmersInfluencedCount ,BrandedCPusage,Segment,TotalAcreageInfluencedByFarmer,PreferredRetailerID,LastVisistedDate,ServerStatus,IsActive,CreatedBy ,CreatedDate ,UpdatedBy ,UpdatedDate,VillageName ,VisitDescription ,TotalLandHolding ,Latitude ,Longitude ,TerritoryName ,Address1 ,Address2 ,Field1 ,Field2,Field3 ,Field4 ,FatherName ,PP ,ProgressiveScore ,LeasedInLandAreaInLocalUnits ,LeasedOutLandAreaInLocalUnits ,OwnedLandCultivatedInLocalUnits ,LandMeasureUnitLeasedInLand ,LandMeasureUnitLeasedOutLand ,LandMeasureUnitOwnedLandCultivated ,TotalLandCultivatedInLocalUnits ,MarketId ,SocialStatus ,Irrigatedland ,Rainfedland ,PreferredRetailerID2 ,isNew  ,isCompleted ,pdaid,Status,FarmerTypeId,TypeofFarmer,VillageId,serverupdatedstatus,age FROM farmermaster WHERE serverupdatedstatus = 'false'   LIMIT 1000";
    }

    public String getDealerMasterDataQry() {
        return "select ContactId ,CustomerId ,RetailerCode ,ContactCode ,CustomerTypeID ,RetailerShopName ,ShopLicenceNo ,MarketName ,ContactName ,ProprietorName ,SurName ,MobileNumber ,AlternateContact ,BusinessPhone ,pType ,Longitude ,Latitude , isNew ,CompanyId ,PDAId , ZoneId , RegionId , TerritoryId , StateId , DistrictId , MandalId ,VillageId ,ZoneName ,RegionName ,TerritoryName ,StateName ,DistrictName ,MandalName ,VillageName ,VATNo ,PANNo , BankId ,BankLocation ,BankAddress ,AccountNumber ,MICRNumber ,KYCNumber,IFSCCode ,AnnualTotalTOValue , CompanyTotalTOValue , SeedsTOValue , PesticideTOValue ,FertilizerTOValue ,CashPercent ,CropWiseRetail ,IsOwnedShop , DateofBirth ,NewMarket ,Distributor1Id ,Distributor2Id ,Distributor3Id ,Distributor4Id ,CustomerType ,ContactsCopyLineId ,Email ,FAX ,Address ,Address1 ,Landmark ,Place ,PINCode ,Remarks , IsSMSPinRecieved, URId ,PINNumber , IsActive,  ServerUpdatedStatus ,  ServiceStatus ,  SyncStatus ,  RetailerStatus ,  SourceCreatedby , TransactionDate ,  CreatedBy , CreatedDate ,  UpdatedBy , UpdatedDate ,Column1 ,Column2 ,Column3 ,Column4 ,Column5 ,Column6 ,Column7,Column8 ,Column9 ,Column10,Column11 ,Column12 ,Column13 ,Column14 ,Column15 , StatusReason,Column16,Column17,Column18,Column19,Column39,Column40,Column41,Gender,AadharRawData,GPSTimeStamp,HasProfilePicture,IsFocused,LastVisitedDate,ApproveLatLong from DealerMaster where ServerUpdatedStatus='false'";
    }

    public String getDealerCompanyDataQry() {
        return "select dcm.MappingId, dcm.ContactId, dcm.CompanyId, dcm.CompanyName,dcm.CompanySales,dcm.CreatedBy,dcm.CreatedDate,dcm.UpdatedBy,dcm.UpdatedDate ,dcm.PdaId,dcm.status  from DealerCompanyMapping as dcm  where dcm.serverUpdatedStatus='false'";
    }

    public String getDealerMasterDataByOffsetQry() {
        return "select ContactId ,CustomerId ,RetailerCode ,ContactCode ,CustomerTypeID ,RetailerShopName ,ShopLicenceNo ,MarketName ,ContactName ,ProprietorName ,SurName ,MobileNumber ,AlternateContact ,BusinessPhone ,pType ,Longitude ,Latitude , isNew ,CompanyId ,PDAId , ZoneId , RegionId , TerritoryId , StateId , DistrictId , MandalId ,VillageId ,ZoneName ,RegionName ,TerritoryName ,StateName ,DistrictName ,MandalName ,VillageName ,VATNo ,PANNo , BankId ,BankLocation ,BankAddress ,AccountNumber ,MICRNumber ,KYCNumber,IFSCCode ,AnnualTotalTOValue , CompanyTotalTOValue , SeedsTOValue , PesticideTOValue ,FertilizerTOValue ,CashPercent ,CropWiseRetail ,IsOwnedShop , DateofBirth ,NewMarket ,Distributor1Id ,Distributor2Id ,Distributor3Id ,Distributor4Id ,CustomerType ,ContactsCopyLineId ,Email ,FAX ,Address ,Address1 ,Landmark ,Place ,PINCode ,Remarks , IsSMSPinRecieved, URId ,PINNumber , IsActive,  ServerUpdatedStatus ,  ServiceStatus ,  SyncStatus ,  RetailerStatus ,  SourceCreatedby , TransactionDate ,  CreatedBy , CreatedDate ,  UpdatedBy , UpdatedDate ,Column1 ,Column2 ,Column3 ,Column4 ,Column5 ,Column6 ,Column7,Column8 ,Column9 ,Column10,Column11 ,Column12 ,Column13 ,Column14 ,Column15 , StatusReason,Column16,Column17,Column18,Column19,Column39,Column40,Column41,Gender,AadharRawData from DealerMaster where ServerUpdatedStatus='false' LIMIT 1000";
    }

    public String getDealerCompanyDataByOffsetQry() {
        return "select MappingId, ContactId, CompanyId, CompanyName,CompanySales,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate ,PdaId  from DealerCompanyMapping where ServerUpdatedStatus ='false' LIMIT 1000";
    }

    public String getDealerCropDataByOffsetQry() {
        return "select dcm.MappingId,dcm.ContactId,dcm.CropId,dcm.CropName,dcm.CropSales,dcm.CreatedBy,dcm.CreatedDate,dcm.UpdatedBy,dcm.UpdatedDate from DealerCropMapping dcm where dcm.serverupdatedstatus = 'false' LIMIT 1000";
    }

    public String getInWhichTab(String str) {
        return "SELECT Tabs FROM fxCustomerRegistrationConfiguration where Module='" + str + "' and DisplayName='GeoDetails'";
    }

    public String getSelectAssignmentActivityDetails() {
        return this.selectAssignmentActivityDetails;
    }

    public String getSurveyAssignmentActivityDetails() {
        return this.surveyAssignmentActivityDetails;
    }

    public void setSelectAssignmentActivityDetails(String str) {
        this.selectAssignmentActivityDetails = str;
    }

    public void setSelectAssignmentVisitDetails(String str) {
        this.selectAssignmentVisitDetails = str;
    }

    public String getSelectAssignmentVisitDetails() {
        return this.selectAssignmentVisitDetails;
    }

    public String getSurveyAssignmentVisitDetails() {
        return this.surveyAssignmentVisitDetails;
    }

    public String getFBFComplaintResolutionDetails() {
        return this.FBFResolutionAssignmentVisitDetails;
    }

    public String getSelectTSTAssignmentVisitDetails() {
        return this.selectTSTAssignmentVisitDetails;
    }

    public String getSelectFBFAssignmentVisitDetails() {
        return this.selectFBFAssignmentVisitDetails;
    }

    public String getSelectAssignmentActivityDetailsByOffSetQry() {
        return this.selectAssignmentActivityDetailsByOffSetQry;
    }

    public void setSelectAssignmentActivityDetailsByOffSetQry(String str) {
        this.selectAssignmentActivityDetailsByOffSetQry = str;
    }

    public String getRespondenrNumber(String str) {
        return "SELECT  RespondentNo   FROM FarmerMaster where FarmerID ='" + str + "'";
    }

    public String insertFilterData(FilterData filterData) {
        return "insert or replace  into FilterData (LineId ,CropID ,CropName ,StateID ,StateName ,DistrictId ,DistrictName \n\n,TalukaID ,TalukaName ,LocationID ,LocationName ,Radious ) values (1," + filterData.getCropID() + "," + filterData.getCropName() + "," + filterData.getStateID() + "," + filterData.getStateName() + "," + filterData.getDistrictId() + "," + filterData.getDistrictName() + "," + filterData.getTalukaID() + "," + filterData.getTalukaName() + "," + filterData.getLocationID() + "," + filterData.getLocationName() + "," + filterData.getRadious() + ")";
    }

    public String getFilterData() {
        return "select * from FilterData";
    }

    public String getPendingFarmersToSend(int i) {
        return "select count(0) from FarmerMaster where TypeofFarmer='" + i + "' and serverupdatedstatus='false'";
    }

    public String getDraftFarmersToSend(int i) {
        return "select count(0) from FarmerMaster where TypeofFarmer='" + i + "' and Status=='0'";
    }

    public String getDraftFarmersToSend(int i, int i2) {
        return "select count(0) from FarmerMaster where TypeofFarmer='" + i + "' and Status=='" + i2 + "'";
    }

    public String getPendingRetailersToSend(int i) {
        return "select count(0) from DealerMaster where CustomerTypeID='" + i + "' and serverupdatedstatus='false'";
    }

    public String getTotalFarmers(int i) {
        return "select count(0) from FarmerMaster where isActive='True' and TypeofFarmer=" + i;
    }

    public String getTotalDealers(int i) {
        return "select count(0) from DealerMaster where isActive='True' and CustomerTypeID=" + i + " and (RetailerStatus <> 6 or RetailerStatus is null)";
    }

    public String getDraftDealers(int i) {
        return "select count(0) from DealerMaster where CustomerTypeID=" + i + " and StatusReason='0'";
    }

    public String getPendingActivities() {
        return "select  COUNT(distinct activityassignmentid) FROM  pmcAssignmentActivityDetails where isplanned = 1 and isTransactionDone in(0) and isActive=1";
    }

    public String getServyPendingActivities() {
        return "select  COUNT(distinct activityassignmentid) FROM  pmcSurveyAssignmentActivityDetails where isplanned = 1 and isTransactionDone in(0) and (isActive=1 or isActive='True')";
    }

    public String getActivitySummaryDetailsQry() {
        return "select  sum(Target),sum(Plan),sum(Actual) FROM  ActivitySummaryDetails asm inner join ActivityMaster am on am.ActivityMasterId=asm.ActivityMasterId where  (am.isActive= 1 or am.isActive='True')";
    }

    public String getDraftActivities() {
        return "select  COUNT(distinct activityassignmentid) FROM  pmcAssignmentActivityDetails where isplanned = 1 and isTransactionDone in(2) and isActive=1";
    }

    public String updateActivityDetails(String str, String str2) {
        return "UPDATE pmcAssignmentActivityDetails SET attributeValue = '', isTransactionDone = 0 WHERE isplanned = 1 AND isTransactionDone IN (2) AND isActive = 1 AND AttributeId not in(" + str2 + ") AND updatedDate < '" + str + "'";
    }

    public String updateVisitLatLong(String str) {
        return "UPDATE pmcAssignmentVisit\nSET latitude = '', longitude = ''\nWHERE EXISTS (\n    SELECT 1\n    FROM pmcAssignmentActivityDetails\n    WHERE pmcAssignmentVisit.activityAssignmentId = pmcAssignmentActivityDetails.activityAssignmentId\n      AND pmcAssignmentActivityDetails.isplanned = 1\n      AND pmcAssignmentActivityDetails.isTransactionDone IN (2)\n      AND pmcAssignmentActivityDetails.isActive = 1\n      AND pmcAssignmentActivityDetails.updatedDate < '" + str + "'\n)";
    }

    public String getSurveyDraftActivities() {
        return "select  COUNT(distinct activityassignmentid) FROM  pmcSurveyAssignmentActivityDetails where isplanned = 1 and isTransactionDone in(2) and isActive=1";
    }

    public String getDraftSelfActivities() {
        return "select  COUNT(distinct Transid) FROM  pmcAssignmentActivityDetails where isplanned = 0 and isTransactionDone in(2) and isActive=1 and TransId !=0";
    }

    public String getDraftTSTActivities() {
        return "select  COUNT(distinct Transid) FROM  pmcTSTAssignmentActivityDetails where isplanned = 0 and isTransactionDone in(2) and isActive=1 and TransId !=0";
    }

    public String getActivitySummaryDetails() {
        return "select  sum(distinct Transid) FROM  pmcAssignmentActivityDetails where isplanned = 0 and isTransactionDone in(2) and isActive=1 and TransId !=0";
    }

    public String getSelfAssignmentMessage() {
        return "SELECT ItemDescription FROM ConfigurablelookupMaster where ItemKey ='TileSelfAssignment' and ItemType ='DisplayText'";
    }

    public String getImageReffType(String str) {
        return "SELECT ItemValue FROM ConfigurablelookupMaster where ItemKey ='" + str + "' and ItemType ='ImageReferenceType'";
    }

    public String getPMCActivityKeyAttributes(int i, int i2, int i3) {
        return "select am.AttributeId,am.DisplayNameMobile,am.ControlType,COALESCE('',fad.attributevalue),aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.DisplayType,am.DynamicColumn,am.DynamicCondition,aam.IsReadOnly from AttributeMaster as am  INNER JOIN ActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId  inner join ActivityKeyAttributesMaster as ak on ak.AttributeKeyMappingId = aam.AttributeKeyMappingId and ak.ActivityMasterId = aam.ActivityMasterId LEFT JOIN pmcAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId     and (fad.isActive =1 OR fad.isActive ='True') where ak.ActivityMasterId = " + i + " and ak.KeyAttributeId =" + i3 + " and ak.KeyAttributeValue =" + i2 + " and (aam.isActive =1 OR aam.isActive ='True') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") GROUP BY am.AttributeId ORDER BY aam.controlsequence";
    }

    public String getPMCFBFActivityKeyAttributes(int i, int i2, int i3) {
        return "select am.AttributeId,am.DisplayNameMobile,am.ControlType,COALESCE('',fad.attributevalue),aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.DisplayType,am.DynamicColumn,am.DynamicCondition,aam.IsReadOnly from FBFAttributeMaster as am  INNER JOIN FBFActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId  inner join FBFActivityKeyAttributesMaster as ak on ak.AttributeKeyMappingId = aam.AttributeKeyMappingId and ak.ActivityMasterId = aam.ActivityMasterId LEFT JOIN pmcFBFAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId     and (fad.isActive =1 OR fad.isActive ='True') where ak.ActivityMasterId = " + i + " and ak.KeyAttributeId =" + i3 + " and ak.KeyAttributeValue =" + i2 + " and (aam.isActive =1 OR aam.isActive ='True') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") GROUP BY am.AttributeId ORDER BY aam.controlsequence";
    }

    public String getPMCActivityKeyAttributes_All(int i, int i2, int i3) {
        return "select am.AttributeId,am.DisplayNameMobile,am.ControlType,COALESCE('',fad.attributevalue),aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.DisplayType,am.DynamicColumn,am.DynamicCondition,aam.IsReadOnly from AttributeMaster as am  INNER JOIN ActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId  inner join ActivityKeyAttributesMaster as ak on  ak.ActivityMasterId = aam.ActivityMasterId LEFT JOIN pmcAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId     and (fad.isActive =1 OR fad.isActive ='True') where ak.ActivityMasterId = " + i + " and ak.KeyAttributeId =" + i3 + " and ak.KeyAttributeValue =" + i2 + " and (aam.isActive =1 OR aam.isActive ='True') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") and (ak.AttributeKeyMappingId = aam.AttributeKeyMappingId OR aam.AttributeKeyMappingId is '') GROUP BY am.AttributeId ORDER BY aam.controlsequence";
    }

    public String getSelectdealerCropMapping() {
        return this.selectdealerCropMapping;
    }

    public String deleteImage(long j) {
        return "delete from ActivityImageDetails where ImageId =" + j;
    }

    public String getAssignmentVisitDetail(int i) {
        return "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId FROM pmcAssignmentVisit where ActivityAssignmentId =" + i;
    }

    public String getSurveyAssignmentVisitDetail(int i) {
        return "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId FROM pmcSurveyAssignmentVisit where ActivityAssignmentId =" + i;
    }

    public String getAssignmentVisitDetailSelfAssign(long j) {
        return "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId FROM pmcAssignmentVisit where TransactionId =" + j;
    }

    public String getFBFAssignmentVisitDetailSelfAssign(long j) {
        return "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId FROM pmcFBFAssignmentVisit where TransactionId =" + j;
    }

    public String getTSTAssignmentVisitDetailSelfAssign(long j) {
        return "select assignmentid,visitdescription,createdDate,createdby,updatedDate,updatedBy,pdaId,latitude,longitude,remarks,activityAssignmentId,TransactionId FROM pmcTSTAssignmentVisit where TransactionId =" + j;
    }

    public String getDeletionQueryForSelfAssignmentDrafts1(long j) {
        return "delete FROM pmcAssignmentVisit where TransactionId ='" + j + "'";
    }

    public String getDeletionQueryForTestimonialtDrafts1(long j) {
        return "delete FROM pmcTSTAssignmentVisit where TransactionId ='" + j + "'";
    }

    public String getDeletionQueryForSelfAssignmentDrafts2(long j) {
        return "delete FROM pmcassignmentactivitydetails where TransId ='" + j + "'";
    }

    public String getDeletionQueryForTestmionialDrafts2(long j) {
        return "delete FROM pmcTSTassignmentactivitydetails where TransId ='" + j + "'";
    }

    public String getDelForSADraftsImages(long j) {
        return "delete FROM ActivityImageDetails where ReferenceID ='" + j + "'";
    }

    public String updateDraftForAssignmentvisit(long j) {
        return "select visitId from pmcAssignmentVisit where activityAssignmentId =" + j + " OR TransactionId = " + j;
    }

    public String updateDraftForAssignmentvisitSurvey(long j) {
        return "select visitId from pmcSurveyAssignmentVisit where activityAssignmentId =" + j + " OR TransactionId = " + j;
    }

    public String updateDraftForAssignmentvisitFBF(long j) {
        return "select visitId from pmcFBFAssignmentVisit where activityAssignmentId =" + j + " OR TransactionId = " + j;
    }

    public String brandNamesBassedOnCropId(String str) {
        return "select BrandId,BrandName from BrandMaster where CropId='" + str + "' and Isactive='True' COLLATE NOCASE order by BrandName ";
    }

    public String getqueryForMIDropdown(int i, int i2) {
        return "select SourceQuery from ActivityAttributeMappingMaster where ActivityMasterId=" + i2 + " and AttributeId = " + i;
    }

    public String getqueryForMIFirstchild(int i, int i2) {
        return "select AttributeId from ActivityAttributeMappingMaster where ActivityMasterId=" + i2 + " and ParentAttributeId = " + i + " AND isFirstChild = 1";
    }

    public String getQueryActivityType(int i) {
        return "select GroupId from ActivityGroupMappingMaster where ActivityMasterId =" + i + " and groupId = 5 and isActive = 1";
    }

    public String iLoggerEnabledStatus() {
        return "SELECT itemValue FROM ConfigurableLookupMaster where itemKey ='iLoggerStatus' and itemType='iLogger'";
    }

    public String getAllDraftData_SelfAssign() {
        return "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,TransId,startdate,pmcassignmentactivitydetails.createddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName  from pmcassignmentactivitydetails Left Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId where pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(2)  and TransId is not 0 group by TransId order by TransId";
    }

    public String getAllDraftData_TST() {
        return "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmctstassignmentactivitydetails .activitymasterid,TransId,startdate,pmctstassignmentactivitydetails.createddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName  from pmctstassignmentactivitydetails Left Join TSTActivityMaster as am on pmctstassignmentactivitydetails .activitymasterid = am.ActivityMasterId where pmctstassignmentactivitydetails.isActive=1 and isTransactionDone in(2)  and TransId is not 0 group by TransId order by TransId";
    }

    public String getAllDraftData_FBF() {
        return "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcFBFassignmentactivitydetails .activitymasterid,TransId,startdate,pmcFBFassignmentactivitydetails.createddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName  from pmcFBFassignmentactivitydetails Left Join FBFActivityMaster as am on pmcFBFassignmentactivitydetails .activitymasterid = am.ActivityMasterId where pmcFBFassignmentactivitydetails.isActive=1 and isTransactionDone in(1)  and TransId is not 0 group by TransId order by TransId";
    }

    public String getColumnValueWhereConditionBased(String str, String str2, String str3, String str4) {
        return "select " + str + " from " + str2 + " where " + str3 + "='" + str4 + "'";
    }

    public String farmerIDIncrement() {
        return "SELECT max(FarmerID ) from FarmerMaster";
    }

    public String bindQueryInAddFarmer(String str, String str2, int i) {
        return "select " + str + " from FarmerMaster where RespondentNo ='" + str2 + "' and TypeofFarmer=" + i;
    }

    public String bindQueryInAddRetailer(String str, String str2, int i) {
        return "select " + str + " from DealerMaster where ContactId ='" + str2 + "' and CustomerTypeID=" + i;
    }

    public String isMobileExistsForFarmer(String str, int i) {
        return "SELECT Mobile FROM FarmerMaster where RespondentNo NOT IN('" + str + "') and Mobile is NOT NULL and TypeofFarmer=" + i;
    }

    public String isMobileExistsForRetailer(String str, int i) {
        return "SELECT MobileNumber FROM DealerMaster where ContactId NOT IN('" + str + "') and MobileNumber is NOT NULL and CustomerTypeID=" + i;
    }

    public String isMobileExistsForRetailerPAN(String str, int i) {
        return "SELECT MobileNumber,PANNo FROM DealerMaster where ContactId NOT IN('" + str + "') and MobileNumber is NOT NULL and PANNo IS NOT NULL and CustomerTypeID=" + i;
    }

    public String isMobileExistsForRetailerInTerrytory(String str, int i) {
        return "SELECT MobileNumber FROM PMCTerritoryDealerMaster where ContactId NOT IN('" + str + "') and MobileNumber is NOT NULL ";
    }

    public String isGSTNoExistsForRetailer(String str, int i) {
        return "SELECT VATNo FROM DealerMaster where ContactId NOT IN('" + str + "') and MobileNumber is NOT NULL and CustomerTypeID=" + i;
    }

    public String getRemarkValues() {
        return "SELECT itemType,itemValue FROM ConfigurableLookupMaster where itemKey='DiscardRemarks'";
    }

    public String userActiveStatus() {
        return "select active from pmcUserDetails";
    }

    public String userIMEIActiveStatus() {
        return "select address2 from pmcUserDetails";
    }

    public String updateTrainingOrLiveStatus(int i) {
        return "UPDATE ConfigurableLookup set itemValue='" + i + "' where itemKey='isTrainingORLive'";
    }

    public String deleteTableData(String str) {
        return "DELETE FROM " + str;
    }

    public String getUpdateProfileImageDetails() {
        return "Update ConfigurableLookup set isActive='0'  where itemKey ='ProfileImage'";
    }

    public String getProfilePicStatus() {
        return "select itemKey from ConfigurableLookup where isActive='false' and itemKey='ProfileImage'";
    }

    public String getGeoDetailsCondition(String str, String str2) {
        return "select DisplayName,isMandatory from fxCustomerRegistrationConfiguration where TableName='" + str + "' and Module='" + str2 + "'";
    }

    public String getClearLogQuery() {
        return "delete from Logger ";
    }

    public String getSelectImageActDetails() {
        return "SELECT id,ClassName ,MethodName ,Params ,LogTime ,MethodResult ,ServerUpdatedStatus ,ExecutionTime from logger ";
    }

    public String getSelectLoggerDetails_By1000() {
        return "SELECT id,ClassName ,MethodName ,Params ,LogTime ,MethodResult ,ServerUpdatedStatus ,ExecutionTime from logger LIMIT 200 ";
    }

    public String getDebugTraceErrorLogsCountQry() {
        return "SELECT COUNT(0) FROM Logger";
    }

    public String getDeleteLogQuery(String str) {
        return "Delete from Logger WHERE  (strftime('%s','" + str + "') >strftime('%s', logtime)) ";
    }

    public String getDeleteLogTime() {
        return "select itemValue FROM ConfigurablelookupMaster where ItemType = 'DeleteDebugLogDuration'";
    }

    public String getExpCamReqOrNot() {
        return "select itemValue FROM ConfigurablelookupMaster where ItemType = 'TotalSumexpenseattribute' and isActive ='True' ";
    }

    public String getDebugLogSyncStatus() {
        return "select itemValue FROM ConfigurablelookupMaster where ItemType = 'SyncDebugLog'";
    }

    public String getAssignmentStatus(int i) {
        return "select * FROM pmcAssignmentActivityDetails where (isActive =1 OR isActive ='True') and istransactiondone = 1 and activityAssignmentId = " + i;
    }

    public String getSurveyAssignmentStatus(int i) {
        return "select * FROM pmcSurveyAssignmentActivityDetails where (isActive =1 OR isActive ='True') and istransactiondone = 1 and activityAssignmentId = " + i;
    }

    public String getDeleteDraftQuery(String str) {
        return "Delete from pmcAssignmentActivityDetails WHERE  (strftime('%s','" + str + "') >strftime('%s', updatedDate)) and isActive=1 and isTransactionDone in(2)  and TransId is not 0";
    }

    public String getDeleteExpensesExpiryQuery(String str) {
        return "Delete from pmcAssignmentActivityDetails WHERE  strftime('%s', updatedDate) < strftime('%s','" + str + "') and isActive=1 and isTransactionDone in(1) ";
    }

    public String getDeleteExpensesExpiryQuery2(String str) {
        return "Delete from pmcExpenseAssignmentActivityDetails WHERE  strftime('%s', updatedDate) < strftime('%s','" + str + "') and isActive=1 and isTransactionDone in(1) ";
    }

    public String getDeleteDraftQueryCount(String str) {
        return "select count(distinct TransId) from pmcAssignmentActivityDetails WHERE  (strftime('%s','" + str + "') >strftime('%s', updatedDate)) and isActive=1 and isTransactionDone in(2)  and TransId is not 0";
    }

    public String getTerritoryDraftQuery(int i, long j) {
        return "select distinct territoryId from pmcAssignmentActivityDetails where ActivityAssignmentId = " + i + " and TransId = " + j;
    }

    public String getTSTTerritoryDraftQuery(int i, long j) {
        return "select distinct territoryId from pmcTSTAssignmentActivityDetails where ActivityAssignmentId = " + i + " and TransId = " + j;
    }

    public String getTerritoryName(int i) {
        return "select  territoryName from TerritoryMaster where territoryId = " + i;
    }

    public String getEcexutionSegmentIdDraftQuery(int i, long j) {
        return "select distinct ActivityExecutionSegmentId from pmcAssignmentActivityDetails where ActivityAssignmentId = " + i + " and TransId = " + j;
    }

    public String getTSTEcexutionSegmentIdDraftQuery(int i, long j) {
        return "select distinct ActivityExecutionSegmentId from pmcTSTAssignmentActivityDetails where ActivityAssignmentId = " + i + " and TransId = " + j;
    }

    public String getEcexutionSegmentValueDraftQuery(int i, long j) {
        return "select distinct ActivityExecutionSegmentValue from pmcAssignmentActivityDetails where ActivityAssignmentId = " + i + " and TransId = " + j;
    }

    public String getTSTEcexutionSegmentValueDraftQuery(int i, long j) {
        return "select distinct ActivityExecutionSegmentValue from pmcTSTAssignmentActivityDetails where ActivityAssignmentId = " + i + " and TransId = " + j;
    }

    public String getCustomerNameBySegmentValue(String str, int i) {
        return "select CASE WHEN (asm .RefrenceTableName = 'FarmerMaster') THEN (SELECT FarmerName FROM FarmerMaster WHERE RespondentNo = '" + str + "') WHEN (asm .RefrenceTableName = 'DealerMaster') THEN (SELECT ProprietorName  FROM DealerMaster WHERE ContactId = '" + str + "')WHEN  (asm .RefrenceTableName='VillageMaster')  THEN (SELECT VillageName  FROM VillageMaster INNER JOIN MandalMaster ON VillageMaster.MandalID = MandalMaster.MandalId WHERE VillageID='" + str + "') ELSE 'n/a' END AS 'latitude' from ActivitySegmentMaster as asm where asm.ActivitySegmentId = " + i;
    }

    public String getNameDistributir(String str, int i) {
        return "select RetailerShopName FROM DealerMaster WHERE ContactId='" + str + "'";
    }

    public String getCustomerPhoneNUmber(String str, int i) {
        return "select CASE WHEN (asm .RefrenceTableName = 'FarmerMaster') THEN (SELECT Mobile FROM FarmerMaster WHERE RespondentNo = '" + str + "') WHEN (asm .RefrenceTableName = 'DealerMaster') THEN (SELECT MobileNumber  FROM DealerMaster WHERE ContactId = '" + str + "')WHEN  (asm .RefrenceTableName='VillageMaster')  THEN (SELECT VillageName  FROM VillageMaster INNER JOIN MandalMaster ON VillageMaster.MandalID = MandalMaster.MandalId WHERE VillageID='" + str + "') ELSE 'n/a' END AS 'latitude' from ActivitySegmentMaster as asm where asm.ActivitySegmentId = " + i;
    }

    public String getPlannedPendingActivities() {
        return "select  COUNT(distinct activityassignmentid) FROM  pmcAssignmentActivityDetails where isplanned = 1 and isTransactionDone in(0,2) and isActive=1";
    }

    public String getTotalDraftFarmersToSend() {
        return "select count(0) from FarmerMaster where   Status=='0'";
    }

    public String getTotalFarmersToSend() {
        return "select count(0) from FarmerMaster where   Status=='1'";
    }

    public String getTotalDraftDealers() {
        return "select count(0) from DealerMaster where StatusReason='0'";
    }

    public String getTotalDealers() {
        return "select count(0) from DealerMaster where StatusReason='1'";
    }

    public String getTotalFarmerCropDetails() {
        return "select count(0) from FarmerCropDetails fcd Inner Join FarmerMaster fm on fm.RespondentNo = fcd.RespondentNo and fm.Status IN (1,2) where fm.isActive = 'True'";
    }

    public String getTotalDealerCompanyDetails() {
        return "select count(0) from DealerCompanyMapping dcm Inner Join DealerMaster dm on dm.ContactId = dcm.ContactId and dm.StatusReason IN (1,2)";
    }

    public String getTotalDealerCropDetails() {
        return "select count(0) from DealerCropMapping dcm Inner Join DealerMaster dm on dm.ContactId = dcm.ContactId and dm.StatusReason IN (1,2)";
    }

    public String getImageIsMandatory(int i) {
        return "select isPicturesRequired from ActivityMaster where ActivityMasterId = " + i;
    }

    public String getImageIsMandatoryInSurvey(int i) {
        return "select isPicturesRequired from SurveyActivityMaster where ActivityMasterId = " + i;
    }

    public String getVideoIsMandatory(int i) {
        return "select isVideoRequired from ActivityMaster where ActivityMasterId = " + i;
    }

    public String getAllImagesMandatory(int i) {
        return "select ConfigId from ActivityImageMappingMaster where IsMandatory=1 and ActivityMasterId = " + i;
    }

    public String getVideoIsMandatoryInSurvey(int i) {
        return "select isVideoRequired from SurveyActivityMaster where ActivityMasterId = " + i;
    }

    public String getTSTImageIsMandatory(int i) {
        return "select isPicturesRequired from TSTActivityMaster where ActivityMasterId = " + i;
    }

    public String getFBFImageIsMandatory(int i) {
        return "select isPicturesRequired from FBFActivityMaster where ActivityMasterId = " + i;
    }

    public String getTSTVideoIsMandatory(int i) {
        return "select isVideoRequired from TSTActivityMaster where ActivityMasterId = " + i;
    }

    public String getFBFVideoIsMandatory(int i) {
        return "select isVideoRequired from FBFActivityMaster where ActivityMasterId = " + i;
    }

    public String getActivityDisplayType(int i) {
        return "select DisplayType from ActivityMaster where ActivityMasterId = " + i;
    }

    public String getSurveyActivityDisplayType(int i) {
        return "select DisplayType from SurveyActivityMaster where ActivityMasterId = " + i;
    }

    public String getLastVisitDeletQry(String str) {
        return "Delete FROM pmcLastVisitDetails where ActivitySegmentvalue ='" + str + "'";
    }

    public String getIsAssignmentInDb(int i) {
        return "SELECT * FROM pmcAssignmentActivityDetails where activityassignmentid = " + i;
    }

    public String getNotifyAssignmentInDb(int i) {
        return "SELECT distinct am.ActivityMasterName,packagename,activityassignmentid,asm.activitysegmentName FROM pmcAssignmentActivityDetails pad\nInner join  Activitysegmentmaster asm on asm.ActivitySegmentId = pad.ActivitySegmentId \nInner Join ActivityMaster am on am.Activitymasterid = pad.activitymasterid where activityassignmentid =  " + i;
    }

    public String getappversionRecord(Context context) {
        return "select * from configurablelookup where itemkey = 'AppVersion' and itemvalue = '" + UtilDeclarations.getApplicationVersion(context) + "'";
    }

    public String getNotificationStatus() {
        return "select NotificationStatus from pmcUserDetails ";
    }

    public String updateNotificationstatus(int i) {
        return "update pmcUserDetails set NotificationStatus = " + i;
    }

    public String updateUserImEiStatus(String str) {
        return "update pmcUserDetails set address2 = '" + str + "'";
    }

    public String getLoginTimeStatus(String str) {
        return "SELECT * FROM ConfigurableLookup where itemKey = 'loginTime' and (strftime('%s','" + str + "') > strftime('%s', itemValue)) and itemValue IS NOT NULL";
    }

    public String getLoginTime() {
        return "SELECT itemValue FROM ConfigurableLookup where itemKey = 'loginTime'  and itemValue IS NOT NULL";
    }

    public String getLoginSessionTimeStatus(String str) {
        return "SELECT * FROM ConfigurableLookup where itemKey = 'loginTime' and (strftime('%s','" + str + "') < strftime('%s', itemValue)) and itemValue IS NOT NULL";
    }

    public String updateLoginTime() {
        return "update ConfigurableLookup set itemValue = '" + UtilDeclarations.getDateTime() + "' where itemKey = 'loginTime'";
    }

    public String updateLoginTimeClear() {
        return "update ConfigurableLookup set itemValue = '' where itemKey = 'loginTime'";
    }

    public String GetUsernameQuery() {
        return "SELECT username as name FROM pmcUserDetails limit 1";
    }

    public String getPasswordQuery() {
        return "SELECT password as name FROM pmcUserDetails limit 1";
    }

    public String getMobileQuery() {
        return "SELECT mobile as name FROM pmcUserDetails limit 1";
    }

    public String updateWcfToken(String str) {
        return "update ConfigurableLookup set itemValue = '" + str + "' where itemKey = 'wcfToken'";
    }

    public String updateWebToken(String str) {
        return "update ConfigurableLookup set itemValue = '" + str + "' where itemKey = 'webToken'";
    }

    public String getRulesQuery(String str) {
        return "select ruleid,atrributeid,validationattributeid from rulesconfiguration where module = '" + str + "' and isActive =1 group by ruleid,validationattributeid,atrributeid ";
    }

    public String getAppVersionQuery(String str) {
        return " select * from ConfigurablelookupMaster where itemType='Min Version Required' and ItemValue > '" + str + "'";
    }

    public String getAddCropFormat() {
        return "select Itemvalue from ConfigurablelookupMaster where ItemKey ='IsPercentageRequiredForFCM'";
    }

    public String getIsProfilePicCapturd(String str) {
        return "select HasProfileImage from FarmerMaster where RespondentNo = '" + str + "'";
    }

    public String getregionid() {
        return "select regionid from TerritoryMaster limit 1";
    }

    public String getIsRetailerProfilePicCapturd(String str) {
        return "select HasProfilePicture from DealerMaster where ContactID = '" + str + "'";
    }

    public String getIsImageReq(String str) {
        return "select Itemvalue from ConfigurablelookupMaster where ItemKey ='" + str + "'";
    }

    public String getAddCropMandatory() {
        return "select Itemvalue from ConfigurablelookupMaster where ItemKey ='IsFarmerCropMandatory'";
    }

    public String getSowingWindowEnable() {
        return "select Itemvalue from ConfigurablelookupMaster where ItemKey ='EnableSowingWindowFCM'";
    }

    public String getDropdownValuesLookup(String str) {
        return "SELECT ItemId,ItemValue FROM ConfigurableLookupMaster where ItemType='" + str + "' and (IsActive=1 or IsActive='True') ";
    }

    public String getIssecurity() {
        return "select Itemvalue from ConfigurablelookupMaster where ItemKey ='IsSecurityRequired'";
    }

    public String getTrackId() {
        return "SELECT TrackId FROM FoTrackerHeader WHERE EndDate IS NULL ORDER BY TrackId DESC LIMIT 1";
    }

    public String getStartedDate() {
        return "SELECT StartDate FROM FoTrackerHeader ORDER BY TrackId DESC LIMIT 1";
    }

    public String getLastData() {
        return "SELECT * FROM FoTrackerDetails ORDER BY DetailsId DESC LIMIT 1";
    }

    public String getLastvistFarmerInPacData(String str) {
        return "SELECT  attributevalue,activityname,activitysegmentid,activitysegmentvalue,attributeid,attributename,lastvisitdate ,location1,location2,person1,person2,visitdescription FROM LastVisitActivityAttributes where ActivityAssignmentId ='" + str + "' order by lastvisitdate";
    }

    public String getItemValueFromConfigurableLookup(String str) {
        return "SELECT itemValue FROM ConfigurableLookupMaster where itemKey ='" + str + "'";
    }

    public String getTerritoryFarmerQry(String str) {
        return "Select FarmerID,FarmerName,Mobile,Territory,Village from PMCTerritoryFarmerMaster where Mobile = '" + str + "'";
    }

    public String getSaartiFarmerNameQry(String str) {
        return "Select FarmerName from FarmerMaster where SaarthieFarmerID = '" + str + "'";
    }

    public String getTerritoryFarmerQryInFarmerMaster(String str) {
        return "Select FarmerID,FarmerName,Mobile,MandalName,VillageName,RespondentNo from FarmerMaster where Mobile = '" + str + "'";
    }

    public String getTerritoryRetailerQry1(String str, String str2) {
        return "Select ContactId,RetailerShopName,MobileNumber,MandalName,VillageName,PANNo from DealerMaster where MobileNumber = '" + str + "' and PANNo = '" + str2 + "'";
    }

    public String getTerritoryRetailerQry1WithGst(String str) {
        return "Select ContactId,RetailerShopName,MobileNumber,MandalName,VillageName,PANNo from DealerMaster where  PANNo = '" + str + "' and (IsActive=1 or IsActive='True')";
    }

    public String getTerritoryRetailerQry(String str) {
        return "Select ContactId,RetailerShopName,MobileNumber,Territory,Village from PMCTerritoryDealerMaster where MobileNumber = '" + str + "'";
    }

    public String getTerritoryRetailerQry1(String str) {
        return "Select ContactId,RetailerShopName,MobileNumber,MandalName,VillageName from DealerMaster where MobileNumber = '" + str + "'";
    }

    public String getUpdatePasword(String str, String str2) {
        return "UPDATE pmcUserDetails set password='" + str + "', IsPasswordChanged = 1 ,PasswordChangedDate='" + str2 + "'";
    }

    public String getUpdatePaswordDate(String str) {
        return "UPDATE pmcUserDetails set  IsPasswordChanged = 0 ,PasswordChangedDate='" + str + "'";
    }

    public String getGetIsPasswordChanged() {
        return this.getIsPasswordChanged;
    }

    public String getGetPasswordChangedDate() {
        return this.passwordChangedDate;
    }

    public String getCropQry() {
        return this.cropQry;
    }

    public String getLandQry() {
        return this.landQry;
    }

    public String getFarmerQry() {
        return this.farmerQry;
    }

    public String getSuggesionsQry(String str) {
        return "select  AttributeName,SuggestValueText,am.AttributeID,SuggestValueIDs from PackageActivitySuggestedValues pas  join AttributeMaster am on am.AttributeId =pas.AttributeId where ActivityId= '" + str + "'";
    }

    public String getDosagesQry(String str, String str2) {
        return "select CropMaster.CropName,BrandMaster.BrandName,DosageperAcre, DosageperLt, MappingId from CropBrandMappingMaster join BrandMaster on CropBrandMappingMaster.BrandId=BrandMaster.BrandID join CropMaster on CropBrandMappingMaster.CropId=CropMaster.CropId where CropBrandMappingMaster.CropId in (" + str + ") and CropBrandMappingMaster.BrandId in (" + str2 + ") and (CropBrandMappingMaster.IsActive=1 or CropBrandMappingMaster.IsActive='True') and (DosageperLt <> '' or DosageperAcre <> '')and (DosageperLt >0 or DosageperAcre >0) group by MappingId";
    }

    public String getDealerQry() {
        return this.dealerQry;
    }

    public String getTerritoryFarmerQry() {
        return this.territoryFarmerQry;
    }

    public String getTerritoryDealerQry() {
        return this.territoryDealerQry;
    }

    public String getAttendanceDetailsQuery(String str) {
        return "Select Count(AttendanceDate) As DetailCount from PMCAttendanceDetails where AttendanceDate='" + str + "'";
    }

    public String getReportsData(String str) {
        return "select ActivityMasterId,ActivityMasterName from ActivityMaster where ActivityMasterId in (" + str + ")";
    }

    public String getRoles() {
        return "select itemValue FROM ConfigurablelookupMaster where ItemType = 'ReportsRoleIDS'";
    }

    public String getRoleIdFromuserRoleMapping() {
        return "select RoleId FROM pmcUserRolemapping LIMIT 1";
    }

    public String getCurrentDateFromuserRoleMapping() {
        return "select UpdatedDate FROM pmcUserRolemapping where RoleId=5 or RoleId=4";
    }

    public String getRoleActivityMappingCount() {
        return "select count (*) FROM RoleActivityMapping ";
    }

    public String getRoleSegmentMappingCount() {
        return "select count (*) FROM RoleSegmentMapping ";
    }

    public String getDeleteUserRolemapping() {
        return this.deleteUserRolemapping;
    }

    public String getDeletePricesData() {
        return this.deletePricesData;
    }

    public String getAllPricesData() {
        return "select * from PricesDisplay";
    }

    public String gettingReportsFunctionNames(int i) {
        return "SELECT  distinct FxFunctionsMaster.FunctionId,FunctionName,PdaFunction,NavigateUrl FROM FxFunctionsMaster join pmcUserRolemapping on pmcUserRolemapping.FunctionId=FxFunctionsMaster.FunctionId where ParentFunctionId = " + i + " order by OrderByPriority ASC ";
    }

    public String getApprovedListQry() {
        return "select pad.*,fsm.FOUserName from PMCAttendanceDetails pad join FOSVMapping fsm on pad.FoUserId=fsm.FOUserId where pad.IsApproved =0";
    }

    public String getFoNames() {
        return "SELECT FOUserId,FOUserName  FROM FOSVMapping where (IsActive='true' or IsActive = 1 ) COLLATE NOCASE order by FOUserName";
    }

    public String getPairID(String str, String str2) {
        return "select max(PairId) from pmcAssignmentActivityDetails where PairId <> '' and ActivityAssignmentID= '" + str + "' and  ActivityMasterId= " + str2;
    }

    public String getPairIDSA(String str, String str2, int i) {
        return "select max(PairId) from pmcAssignmentActivityDetails where PairId <> '' and PairId like '%" + i + "%' and TransID= '" + str + "' and  ActivityMasterId= " + str2;
    }

    public String getImageDetailsQry_Video(String str, String str2) {
        return "SELECT  ImageId, AssignmentId, ActivityId, AttributeId, SubJect, Comments, Remarks, PicturePath, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, PDAID, ReferenceType,ReferenceID,EventTypeId FROM ActivityImageDetails   where  ServerStatus='false' and ReferenceID = '" + str + "'  and ContentTypeId = '" + str2 + "'";
    }

    public String getPMCActivityAttributeTSTQueryUpdated(String str, int i, int i2, int i3, long j) {
        return "select am.AttributeId,am.DisplayNameMobile,am.ControlType,fad.attributevalue,aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.FilterAttributeId1 ,aam.FilterAttributeId2 ,aam.FilterAttributeId3,aam.DisplayType,am.DynamicColumn,am.DynamicCondition,aam.IsReadOnly,aam.SourceQuery  from TSTAttributeMaster as am INNER JOIN TSTActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId INNER JOIN TSTActivitySegmentMappingMaster as asm ON asm.activityMasterId=aam.ActivityMasterId AND asm.ActivitySegmentId = " + i2 + " LEFT JOIN pmcTSTAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId and fad.ActivitySegmentValue= '" + str + "' and fad.activityAssignmentId = " + i3 + " and fad.transId =" + j + " and (fad.isActive =1 OR fad.isActive ='True') WHERE (aam.isActive =1 OR aam.isActive ='True') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") and aam.AttributeKeyMappingId is ''  GROUP BY am.AttributeId ORDER BY aam.controlsequence";
    }

    public String getPMCActivityAttributeSurveyQueryUpdated(String str, int i, int i2, long j) {
        return "select am.AttributeId,am.DisplayNameMobile,am.ControlType,fad.attributevalue,aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.FilterAttributeId1 ,aam.FilterAttributeId2 ,aam.FilterAttributeId3,aam.DisplayType,am.DynamicColumn,am.DynamicCondition,aam.IsReadOnly,aam.SourceQuery,aam.DisplayRows  from SurveyAttributeMaster as am INNER JOIN SurveyActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId AND aam.ActivityMasterId=" + i + " LEFT JOIN pmcSurveyAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId and   fad.ActivityMasterId=" + i + " and fad.ActivitySegmentValue= '" + str + "' and fad.activityAssignmentId = " + i2 + " and fad.transId =" + j + " and (fad.isActive =1 OR fad.isActive ='True') WHERE (aam.isActive =1 OR aam.isActive ='True') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") and aam.AttributeKeyMappingId is ''  GROUP BY am.AttributeId ORDER BY aam.controlsequence";
    }

    public String getPMCActivityAttributeFBF_CompletedQueryUpdated(String str, int i, int i2, int i3, long j) {
        return "select am.AttributeId,am.DisplayNameMobile,am.ControlType,fad.attributevalue,aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.FilterAttributeId1 ,aam.FilterAttributeId2 ,aam.FilterAttributeId3,aam.DisplayType,am.DynamicColumn,am.DynamicCondition,aam.IsReadOnly,aam.SourceQuery  from FBFAttributeMaster as am INNER JOIN FBFActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId INNER JOIN FBFActivitySegmentMappingMaster as asm ON asm.activityMasterId=aam.ActivityMasterId AND asm.ActivitySegmentId = " + i3 + " LEFT JOIN pmcFBFAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId and fad.ActivitySegmentValue= '" + str + "' and fad.transId ='" + j + "' and (fad.isActive =1 OR fad.isActive ='True') WHERE (aam.isActive =1 OR aam.isActive ='True') and aam.isRequiredMobile=1 and (fad.isTransactionDone=0 OR fad.isTransactionDone=1) and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") and aam.AttributeKeyMappingId is ''  GROUP BY am.AttributeId ORDER BY aam.controlsequence";
    }

    public String getPMCActivityAttributeFBFQueryUpdated(String str, int i, int i2, int i3, long j) {
        return "select am.AttributeId,am.DisplayNameMobile,am.ControlType,fad.attributevalue,aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.FilterAttributeId1 ,aam.FilterAttributeId2 ,aam.FilterAttributeId3,aam.DisplayType,am.DynamicColumn,am.DynamicCondition,aam.IsReadOnly,aam.SourceQuery  from FBFAttributeMaster as am INNER JOIN FBFActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId INNER JOIN FBFActivitySegmentMappingMaster as asm ON asm.activityMasterId=aam.ActivityMasterId AND asm.ActivitySegmentId = " + i3 + " LEFT JOIN pmcFBFAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId and fad.ActivitySegmentValue= '" + str + "' and fad.transId ='" + j + "' and (fad.isActive =1 OR fad.isActive ='True') WHERE (aam.isActive =1 OR aam.isActive ='True') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") and aam.AttributeKeyMappingId is ''  GROUP BY am.AttributeId ORDER BY aam.controlsequence";
    }

    public String getSelectPMCTSTAssignmentActivityDetails() {
        return this.selectPMCTSTAssignmentActivityDetails;
    }

    public String getSelectPMCFBFAssignmentActivityDetails() {
        return this.selectPMCFBFAssignmentActivityDetails;
    }

    public void setSelectPMCTSTAssignmentActivityDetails(String str) {
        this.selectPMCTSTAssignmentActivityDetails = str;
    }

    public void setSelectPMCFBFAssignmentActivityDetails(String str) {
        this.selectPMCFBFAssignmentActivityDetails = str;
    }

    public String getPMCListOfVideos() {
        return "SELECT PicturePath FROM ActivityImageDetails WHERE PicturePath not like '%VideoCompressor%' AND  PicturePath NOT like '%Pictures%'";
    }

    public String getVideoDetaisQry_assignment_testimonial(String str) {
        return "SELECT  ImageId, AssignmentId, ActivityId, AttributeId, SubJect, Comments, Remarks, PicturePath, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, PDAID, ReferenceType,ReferenceID,EventTypeId FROM ActivityImageDetails   where   ContentTypeId = '2' and ReferenceID = '" + str + "'";
    }

    public String getImageDetailsQry_Assignment_Testimonial(String str) {
        return "SELECT  ImageId, AssignmentId, ActivityId, AttributeId, SubJect, Comments, Remarks, PicturePath, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, PDAID, ReferenceType,ReferenceID,EventTypeId FROM ActivityImageDetails   where  (ServerStatus='false'  or ServerStatus='')  and ContentTypeId = '1' and ReferenceID = '" + str + "'";
    }

    public String getVideoDetailsQryForSync() {
        return "SELECT  ImageId, AssignmentId, ActivityId, AttributeId, SubJect, Comments, Remarks, PicturePath, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, PDAID, ReferenceType,ReferenceID,EventTypeId,ContentTypeId FROM ActivityImageDetails   where  ServerStatus='false' AND ContentTypeId  = 2  AND IsCompressed = '1'";
    }

    public String updateVideoServerStatus(String str, String str2) {
        return "update" + str + "set serverStatus = 'true' where serverStatus='false' and imageId in (" + str2 + ")";
    }

    public String UpdatePictureRecord(String str, String str2) {
        return "update " + str + "  set  serverStatus='true' where serverStatus='false' and  imageId in (" + str2 + ")";
    }

    public String updatecompressedImage(String str, Long l) {
        return "update ActivityImageDetails  set  PicturePath = '" + str + "' where  ImageId = '" + l + "'";
    }

    public String updateCompressionStatus(int i, Long l) {
        return "update ActivityImageDetails  set  IsCompressed = '" + i + "' where  ImageId = '" + l + "'";
    }

    public String getGetFarmerMultiAttributeDetails() {
        return this.getFarmerMultiAttributeDetails;
    }

    public String getGetDealerMultiAttributeDetails() {
        return this.getDealerMultiAttributeDetails;
    }

    public String deleteMultiAttributeData(String str, int i) {
        return "delete from FarmerMultiAttributeDetails where RespondentNo='" + str + "' and ColumnMappingId = " + i;
    }

    public String deleteRetailerMultiAttributeData(String str, int i) {
        return "delete from DealerMultiAttributeDetails where ContactID='" + str + "' and ColumnMappingId = " + i;
    }

    public String getFarmerMultiSelectDataQry(String str, int i) {
        return "select AttributeValue,AttributeTypeName from FarmerMultiAttributeDetails where RespondentNo='" + str + "' and ColumnMappingId=" + i;
    }

    public String getDealerMultiSelectDataQry(String str, int i) {
        return "select AttributeValue,AttributeTypeName from DealerMultiAttributeDetails where ContactID='" + str + "' and ColumnMappingId=" + i;
    }

    public String getActualValQry(String str) {
        return "select Actual from ActivitySummaryDetails where ActivityMasterID='" + str + "'";
    }

    public String getUpdateActualValQry(String str, int i) {
        return "Update ActivitySummaryDetails set Actual = " + i + " where ActivityMasterID='" + str + "'";
    }

    public String getPOPCropCategoryDetails() {
        return "select POPID,CropCategory,ThumbnailURL,LocalThumnailpath,VersionNo,DeviceVersionNo from POPMaster where Type='CropCategory'";
    }

    public String getCategoryWiseCropDetails(String str) {
        return "select POPID,CropName,ThumbnailURL,LocalThumnailpath,HTMLZIPURL,LocalHTMLZIPURL,HTMLStartPage,VersionNo,DeviceVersionNo from POPMaster where  Type='Crop' and CropCategory='" + str + "'";
    }

    public String getLibraryDetails() {
        return "select POPID,HTMLZIPURL,LocalHTMLZIPURL,VersionNo,DeviceVersionNo from POPMaster where Type='library'";
    }

    public String getIndividualCropDetails(int i) {
        return "select POPID,CropName,ThumbnailURL,LocalThumnailpath,HTMLZIPURL,LocalHTMLZIPURL,HTMLStartPage,VersionNo,DeviceVersionNo from POPMaster where  Type='Crop' and POPID=" + i;
    }

    public String updateLibraryDetails(String str, int i, int i2) {
        return "Update POPMaster set LocalHTMLZIPURL='" + str + "',DeviceVersionNo=" + i + "  where POPID=" + i2;
    }

    public String updateCropDetails(String str, int i, int i2) {
        return "Update POPMaster set LocalHTMLZIPURL='" + str + "',DeviceVersionNo=" + i + "  where POPID=" + i2;
    }

    public String updateCropDetails2(String str, int i) {
        return "Update POPMaster set LocalHTMLZIPURL='" + str + "'  where POPID=" + i;
    }

    public String getFarmerNameMobileQuery(String str) {
        return "select FarmerName, Mobile, pdaid from FarmerMaster where RespondentNo = '" + str + "' AND (IsActive = 1 or IsActive='True')";
    }

    public String getResolvedNameAndDetails(String str) {
        return "select ResolveName, ResolveRemarks, CreatedDate,ActivityResolveId,ActivityAssignmentId,ResolvedBy from FBFActivityResolveTrack where TransId = '" + str + "' and ResolvedStatus=1";
    }

    public String getResolvedNameAndDetails1(String str) {
        return "select ResolveName, ResolveRemarks, CreatedDate,ActivityResolveId,ActivityAssignmentId,ResolvedBy from FBFActivityResolveTrack where TransId = '" + str + "' and (ResolvedStatus= 1 or ResolvedStatus==2)";
    }

    public String getRetailerNameMobileQuery(String str) {
        return "select ProprietorName, MobileNumber, PDAId from DealerMaster where ContactId = '" + str + "' AND (IsActive = 1 or IsActive='True')";
    }

    public String getItemValuewithActiveCondition(String str) {
        return "select itemValue from ConfigurablelookupMaster where itemKey ='" + str + "' and (IsActive= 'True' or IsActive==1)";
    }

    public String getItemValueForPDFLinks(String str) {
        return "select itemValue from ConfigurablelookupMaster where itemKey ='" + str + "' and (IsActive= 'True' or IsActive==1)";
    }

    public String getCategoryDetails(int i) {
        return "select CategoryId,CategoryName from CategoryMaster where ParentCategoryID='" + i + "' and IsActive=1 order by Sequence asc";
    }

    public String getRuleDetails(int i) {
        return "select  AttributeId from ActivityAttributesRulesConfiguration where  ActivityMasterId= " + i + " and (isActive =1 or isActive='True')";
    }

    public String getVisibilityType(int i, int i2) {
        return "select OperationType from ActivityAttributesRulesConfiguration where  ActivityMasterId= " + i + " and AttributeId = " + i2 + "  and (isActive =1 or isActive='True')";
    }

    public String getParentAttributeId(int i, int i2) {
        return "select ParentAttributeId from ActivityAttributesRulesConfiguration where  ActivityMasterId= " + i + " and ParentAttributeId = " + i2 + "  and (isActive =1 or isActive='True')";
    }

    public String getIsValidChild(int i, int i2, int i3) {
        return "select count (*) from ActivityAttributesRulesConfiguration where  ActivityMasterId= " + i + " and ParentAttributeId=" + i3 + " and AttributeId = " + i2 + "  and (isActive =1 or isActive='True')";
    }

    public String getParentAttributeIdDraft(int i, int i2) {
        return "select ParentAttributeId from ActivityAttributesRulesConfiguration where  ActivityMasterId= " + i + " and AttributeId = " + i2 + "  and (isActive =1 or isActive='True')";
    }

    public String getRuleAttributeId(int i, int i2) {
        return "select AttributeId from ActivityAttributesRulesConfiguration where  ActivityMasterId= " + i + " and ParentAttributeId = " + i2 + "  and (isActive =1 or isActive='True')";
    }

    public String getOperationType(int i, int i2, int i3) {
        return "select OperationType from ActivityAttributesRulesConfiguration where  ActivityMasterId= " + i + " and ParentAttributeId = " + i2 + " and ParentAttributeValueId = " + i3 + " and (isActive =1 or isActive='True')";
    }

    public String getRuleAttrValue(int i, int i2, int i3) {
        return "select AttributeId from ActivityAttributesRulesConfiguration where  ActivityMasterId= " + i + " and ParentAttributeId = " + i2 + " and ParentAttributeValueId = " + i3 + " and (isActive =1 or isActive='True')";
    }

    public String getRuleParentAttrValueId(int i, int i2) {
        return "select ParentAttributeValueId from ActivityAttributesRulesConfiguration where  ActivityMasterId= " + i + " and ParentAttributeId = " + i2 + "  and (isActive =1 or isActive='True')";
    }

    public String getRuleParentAttrValueId(int i, int i2, int i3) {
        return "select ParentAttributeValueId from ActivityAttributesRulesConfiguration where  ActivityMasterId= " + i + " and ParentAttributeId = " + i2 + " and AttributeId =" + i3 + " and (isActive =1 or isActive='True')";
    }

    public String getResolveID(long j, int i) {
        return "select ResolvedStatus from FBFActivityResolveTrack where TransId='" + j + "' and ResolvedBy='" + i + "'";
    }

    public String getResolveActivityData(long j, int i) {
        return "select ResolveName, ResolveRemarks, CreatedDate,ResolvedStatus,IsSMSRequired  from FBFActivityResolveTrack where TransId='" + j + "' and serverupdatedstatus='true' ";
    }

    public String getResolveActivityData1(long j, int i) {
        return "select ResolveName, ResolveRemarks, CreatedDate,ResolvedStatus,IsSMSRequired  from FBFActivityResolveTrack where TransId='" + j + "'";
    }

    public String updateCameraSwitchStatus(int i) {
        return "UPDATE ConfigurablelookupMaster set itemValue='" + i + "' where itemKey='cameraOptions'";
    }

    public String updateImagePathInMigration(String str, String str2) {
        return "update ActivityImageDetails set PicturePath=replace(PicturePath,'" + str + "','" + str2 + "')";
    }

    public String updateFailedTableDatainMasterversion(String str, String str2) {
        return "update MasterVersionTrackingSystem set UpdatedOn ='" + str2 + "'where TableName='" + str + "'";
    }

    public String getActivityShortCode(int i) {
        return "select ActivityShortCode from ActivityMaster where ActivityMasterID=" + i;
    }

    public String getDropdownValueBasedItemCode(String str) {
        return "select itemKey  from ConfigurablelookupMaster where ItemType = 'AcreageType' and ItemCode ='" + str + "'";
    }

    public String getAcresDertails() {
        return "select ItemValue ,ItemKey  from ConfigurablelookupMaster where ItemType = 'AcreageType' and ItemKey='Acres'";
    }

    public String getUpdateFarmerOTPVerificationQuery(String str, String str2) {
        return "Update FarmerMaster set Field3 = '" + str2 + "'  where RespondentNo = '" + str + "'";
    }

    public String getUnVerifiedFarmersCount() {
        return "select count(Field3) from FarmerMaster where Field3='0' and status <> 0";
    }

    public String getUpdateFarmerServerStatus(String str) {
        return "Update FarmerMaster set serverUpdatedStatus='false' where RespondentNo = '" + str + "'";
    }

    public String getUpdateFarmerStatus(String str) {
        return "Update FarmerMaster set status='1' where RespondentNo = '" + str + "'";
    }

    public String getField3Query(String str) {
        return "select Field3 from FarmerMaster where RespondentNo = '" + str + "'";
    }

    public String getUpdateRetailerOTPVerificationQuery(String str, String str2) {
        return "Update DealerMaster set Column1 = '" + str2 + "' ,serverUpdatedStatus='false'  where ContactId = '" + str + "'";
    }

    public String getUpdateRetailerLocationUpdateStatusQuery(String str, String str2) {
        return "Update DealerMaster set ApproveLatLong = '" + str2 + "'   where ContactId = '" + str + "'";
    }

    public String getColumn1Query(String str) {
        return "select Column1 from DealerMaster where ContactId = '" + str + "'";
    }

    public String getRetailerStatusQuery(String str) {
        return "select StatusReason from DealerMaster where ContactId = '" + str + "'";
    }

    public String getUnVerifiedRetailersCount(String str) {
        return "select count(Column1) from DealerMaster where Column1='0' and CustomerTypeID='" + str + "'";
    }

    public String getDashboardDataForUnverifiedFarmers(String str, String str2, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT " + str + ",RespondentNo, Field3,Segment,VillageName,DistrictName  FROM  FarmerMaster where isActive='True' COLLATE NOCASE and TypeofFarmer='" + str2 + "' and Status<>0 and Field3='0' order by RespondentNo ");
        if (i >= 0) {
            sb.append(" LIMIT ");
            sb.append(i);
            sb.append(" , ");
            sb.append(i2);
        }
        return sb.toString();
    }

    public String getDashboardDataForUnverifiedRetailers(String str, String str2, int i, int i2, String str3) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str3) && str3.equals(ConstantsPMC.FAVOURITES)) {
            sb.append("SELECT " + str + ",ContactId,Column1,IsFocused  FROM  DealerMaster where  isActive='True' COLLATE NOCASE and CustomerTypeID='" + str2 + "' and StatusReason<>0 and Column1 ='0' and IsFocused = 'FOCUS' and ContactId not in (0,1) order by ContactId");
        } else {
            sb.append("SELECT " + str + ",ContactId,Column1,IsFocused  FROM  DealerMaster where  isActive='True' COLLATE NOCASE and CustomerTypeID='" + str2 + "' and StatusReason<>0 and Column1 ='0' and ContactId not in (0,1) order by ContactId");
        }
        if (i >= 0) {
            sb.append(" LIMIT ");
            sb.append(i);
            sb.append(" , ");
            sb.append(i2);
        }
        return sb.toString();
    }

    public String getSarthiFarmerQuery(String str) {
        return "SELECT IsSaarthie from FarmerMaster where RespondentNo ='" + str + "'";
    }

    public String getDynamicColumnNamesQuery(String str) {
        return "select DBColumnName from fxCustomerRegistrationConfiguration where Module ='" + str + "'  and (isActive='1' or isActive ='True') and isMandatory=1";
    }

    public String getDealerDataQry(String str, String str2) {
        return "select " + str + " from DealerMaster where ContactId ='" + str2 + "'";
    }

    public String getFarmerDataQry(String str, String str2) {
        return "select " + str + " from FarmerMaster where RespondentNo ='" + str2 + "'";
    }

    public String getLocationApproveStatusQry(String str) {
        return "select ApproveLatLong  from DealerMaster where ContactId ='" + str + "'";
    }

    public String getLocationApproveStatusQryFarmer(String str) {
        return "select ApproveLatLong  from FarmerMaster where FarmerID ='" + str + "'";
    }

    public String getDemoActivityExpenseAmountQry(String str) {
        return "select ActivityCostValue  from SpotDemoMappingMaster where DemoId='" + str + "'";
    }

    public String getDemoActivityBrandQry(String str) {
        return "Select BrandName from BrandMaster b inner join RegionWiseCropDosage RCD on RCD.BrandId=b.BrandId and RCD.DemoID='" + str + "'";
    }

    public String getDemoActivityDosageQry(String str) {
        return "Select Dosage from RegionWiseCropDosage where DemoID='" + str + "' and (IsActive = 1 or IsActive='True')";
    }

    public String getDemoActivityBrandIdQry(String str) {
        return "Select BrandId from RegionWiseCropDosage where DemoID='" + str + "' and (IsActive = 1 or IsActive='True')";
    }

    public String getDemoActivityProtocolPlotSizeQry(String str) {
        return "Select Column1 from SpotDemoMappingMaster where DemoId='" + str + "' and (IsActive = 1 or IsActive='True')";
    }

    public String getFarmerDemoAmountQry(String str) {
        return "select ActivityCostValueExecuted  from FarmerMaster where RespondentNo='" + str + "'";
    }

    public String getFoModes() {
        return "SELECT itemcode,itemValue FROM ConfigurablelookupMaster where itemKey='Travelmode'";
    }

    public String getTodayRecord(String str) {
        return "SELECT COUNT(0) FROM FoTrackerHeader where date(StartDate)= '" + str + "'";
    }

    public String getTrainingStartDate() {
        return "select itemValue from ConfigurableLookup where itemKey='RegistrationDate'";
    }

    public String getTrainingThresholdValue() {
        return "select itemValue from ConfigurablelookupMaster where itemKey='TrainingDaysCheck'";
    }

    public String updateTrainingDate(String str) {
        return "UPDATE ConfigurableLookup set itemValue='" + str + "' where itemKey='RegistrationDate'";
    }

    public String updateUserSuspendStatus(String str, String str2) {
        return "update pmcUserDetails set IsDeviceActive = '" + str + "', active = '" + str2 + "'";
    }

    public String userIsDeviceActiveStatus() {
        return "select IsDeviceActive from pmcUserDetails";
    }

    public String getSVRadiusDataQry() {
        return this.SVRadiusDataQry;
    }

    public String getSVAssignmentIDs() {
        return "select  distinct(ActivityAssignmentId),am.radius,ActivitySegmentId,ActivitySegmentValue FROM  pmcAssignmentActivityDetails paad inner join ActivityMAster am on am.ActivityMasterId=paad.ActivityMasterId where isplanned = 1 and isTransactionDone in(0,2) and paad.isActive=1";
    }

    public String getUpdateLastVisitedDate(int i, String str, String str2) {
        if (i == 2 || i == 3) {
            return "update DealerMaster set LastVisitedDate = '" + str2 + "' where ContactId = '" + str + "'";
        }
        if (i == 1) {
            return "update FarmerMaster set LastVisistedDate = '" + str2 + "' where RespondentNo = '" + str + "'";
        }
        if (i == 4) {
            return "update FarmerMaster set LastVisistedDate = '" + str2 + "' where VillageId = '" + str + "'and TypeofFarmer =4";
        }
        return "";
    }

    public String getSVAllFarmersDataWithFilterByActivity(String str, String str2, String str3, String str4, String str5) {
        return "select ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,pmcassignmentactivitydetails .activitymasterid,activityassignmentid,startdate,enddate,assignmentid,serverupdatedstatus,isdone,istransactionDone,PackageId,PackageName,latitude,longitude,pmcassignmentactivitydetails.createdBy  from pmcassignmentactivitydetails Inner Join ActivityMaster as am on pmcassignmentactivitydetails .activitymasterid = am.ActivityMasterId where pmcassignmentactivitydetails.activitymasterid = '" + str + "' and pmcassignmentactivitydetails.isActive=1 and isTransactionDone in(0,2) and pmcassignmentactivitydetails.location1<>'' " + str3 + " " + str4 + " group by activityassignmentid order by assignmentId";
    }

    public String getVillagePrifileUpdatedDate(String str) {
        return "select UpdatedDate FROM FarmerMaster where TypeofFarmer=4 and  RespondentNo='" + str + "'";
    }

    public String getSVToDoAssignmentIDs() {
        return "select  distinct(ActivityAssignmentId),am.radius,ActivitySegmentId,ActivitySegmentValue FROM  pmcAssignmentActivityDetails paad inner join ActivityMAster am on am.ActivityMasterId=paad.ActivityMasterId and IsSupervisoryActivity = 1 where isplanned = 1 and isTransactionDone in(0) and paad.isActive=1";
    }

    public String getToDoAssignmentIDs() {
        return "select  distinct(ActivityAssignmentId),am.radius,ActivitySegmentId,ActivitySegmentValue FROM  pmcAssignmentActivityDetails paad inner join ActivityMAster am on am.ActivityMasterId=paad.ActivityMasterId where isplanned = 1 and IsSupervisoryActivity != 1 and isTransactionDone in(0) and paad.isActive=1";
    }

    public String getVillageRespondenrNumber(String str) {
        return "SELECT  RespondentNo   FROM FarmerMaster where VillageId ='" + str + "' and TypeofFarmer = 4 ";
    }

    public String getVillageIdFromRespondenrNumber(String str) {
        return "SELECT  VillageId   FROM FarmerMaster where RespondentNo ='" + str + "' and TypeofFarmer = 4 ";
    }

    public String getLotLongDetailsQry(String str, int i) {
        return "SELECT  Latitude,Longitude   FROM FarmerMaster where RespondentNo ='" + str + "' and TypeofFarmer = " + i;
    }

    public String getLotLongDetailsDealerQry(String str, int i) {
        return "SELECT  Latitude,Longitude   FROM DealerMaster where ContactId ='" + str + "' and CustomerTypeID = " + i;
    }

    public String getActivityRadius(int i) {
        return "select radius from ActivityMaster where ActivityMasterId=" + i;
    }

    public String getHomeAddressDetais() {
        return "select HomeLatitude,HomeLongitude,HomeAddress,homelocationupdateddate from pmcUserDetails where HomeLocationSyncStatus='False' ";
    }

    public String getHomeAddressDetaisCount() {
        return "select HomeLatitude from pmcUserDetails  ";
    }

    public String getMultiSelectCountDisplayValue(int i, int i2) {
        return "select IsDisplayCount from ActivityAttributeMappingMaster where ActivityMasterId=" + i + " and AttributeId =" + i2;
    }

    public String getImageDetailsQry_Assignment(String str, long j) {
        return "SELECT  ImageId, AssignmentId, ActivityId, AttributeId, SubJect, Comments, Remarks, PicturePath, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, PDAID, ReferenceType,ReferenceID,EventTypeId FROM ActivityImageDetails   where   ContentTypeId = '1' and  ReferenceID = '" + str + "' and EventTypeId ='" + j + "'";
    }

    public String getAttendanceDeleteQry(int i) {
        return "delete from AttendanceDetails where  AttendanceID= '" + i + "'";
    }

    public String getAttendanceDetails() {
        return "select * from AttendanceDetails where Fromdate='" + UtilDeclarations.getDateInDDMMYYYY() + "' and Status = 0 ";
    }

    public String getPastAttendanceDetails() {
        return "select * from AttendanceDetails where Fromdate<>'" + UtilDeclarations.getDateInDDMMYYYY() + "' and Status = 0 ";
    }

    public String getAttendanceStatusToday() {
        return "select Status from AttendanceDetails where Fromdate='" + UtilDeclarations.getDateInDDMMYYYY() + "'";
    }

    public String getItemValuewithType(String str, String str2) {
        return "select itemValue from ConfigurablelookupMaster where itemKey ='" + str + "' and  ItemType = '" + str2 + "' and IsActive = 'True'";
    }

    public String deleteAttendanceDraftDetails(long j) {
        return "delete from AttendanceDetails where TransId='" + j + "'";
    }

    public String getTravelModeMsg() {
        return "Select ItemValue from ConfigurablelookupMaster where ItemKey='Travelmode' and ItemCode =1";
    }

    public String getTravelModeDetails(String str) {
        return "Select Remarks from FoTrackerHeader where StartDate like '%" + str + "%'";
    }

    public String getPendingExpenses(int i, int i2) {
        return "select  COUNT(distinct activityassignmentid) FROM  pmcAssignmentActivityDetails aam inner join ActivityMaster am on am.ActivityMasterId=aam.ActivityMasterId and (am.ExpensesRequired=1 or am.ExpensesRequired='true')where  activityassignmentid !=0 and isTransactionDone in(1) and  (isExpensesSubmited is null or isExpensesSubmited<>1) and aam.isActive=1 and aam.AttributeId=" + i + " and aam.attributeValue=" + i2 + " and isApproved=1";
    }

    public String getPendingExpensesSelf(int i, int i2) {
        return "select  COUNT(distinct transId) FROM  pmcAssignmentActivityDetails aam inner join ActivityMaster am on am.ActivityMasterId=aam.ActivityMasterId and (am.ExpensesRequired=1 or am.ExpensesRequired='true')where transId !=0 and isTransactionDone in(1) and  (isExpensesSubmited is null or isExpensesSubmited<>1) and aam.isActive=1 and aam.AttributeId=" + i + " and aam.attributeValue=" + i2 + " and isApproved=1";
    }

    public String getSubmitedExpenses(int i, int i2) {
        return "select   count(distinct activityassignmentid) FROM  pmcAssignmentActivityDetails  aam  inner join ActivityMaster am on am.ActivityMasterId=aam.ActivityMasterId  where   activityassignmentid >0 and isTransactionDone in(1) and isExpensesSubmited= 1 and aam.isActive=1 and aam.AttributeId=" + i + " and aam.attributeValue=" + i2 + " and isApproved=1";
    }

    public String getSubmitedExpensesNew(int i, int i2) {
        return "select   count(distinct TransId) FROM  pmcAssignmentActivityDetails  aam inner join ActivityMaster am on am.ActivityMasterId=aam.ActivityMasterId  where   TransId >0 and isTransactionDone in(1) and isExpensesSubmited= 1 and aam.isActive=1 and aam.AttributeId=" + i + " and aam.attributeValue=" + i2 + " and isApproved=1";
    }

    public String getSubmitedExpensesSelf() {
        return "select  COUNT(distinct TransId) FROM  pmcExpenseAssignmentActivityDetails aam  inner join ActivityMaster am on am.ActivityMasterId=aam.ActivityMasterId and (am.ExpensesRequired=1 or am.ExpensesRequired='')where   isTransactionDone in(1)  and ParentActivityAssignmentID=0 and ParentActivityTransID =0  and aam.isActive=1 ";
    }

    public String getExpCount(String str) {
        return "select count(*) from pmcExpenseAssignmentActivityDetails where (strftime('%s','" + str + "') <strftime('%s', StartDate)) group by TransId";
    }

    public String getExpanceAssignList(int i) {
        return "select TransId from pmcExpenseAssignmentActivityDetails where ParentActivityAssignmentID = '" + i + "'";
    }

    public String getUpdateExpensesDetails(String str, int i, int i2) {
        return "Update pmcExpenseAssignmentActivityDetails set isApproved = '" + i + "', ApprovedBy = '" + i2 + "' where TransId='" + str + "'";
    }

    public String getUpdateActivityDetails(String str, int i, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return "Update pmcAssignmentActivityDetails set isApproved = '" + i + "' where TransId='" + str + "'";
        }
        return "Update pmcAssignmentActivityDetails set isApproved = '" + i + "' where ActivityAssignmentID='" + str2 + "'";
    }

    public String getExpanceTranList(long j) {
        return "select TransId from pmcExpenseAssignmentActivityDetails where ParentActivityTransID = '" + j + "'";
    }

    public String getExpApprovalSelf(long j) {
        return "select isApproved from pmcExpenseAssignmentActivityDetails where ParentActivityTransID = '" + j + "'";
    }

    public String getExpApprovalToDO(int i) {
        return "select isApproved from pmcExpenseAssignmentActivityDetails where ParentActivityAssignmentID = '" + i + "'";
    }

    public String getExpApproval(long j) {
        return "select isApproved from pmcExpenseAssignmentActivityDetails where TransId = '" + j + "'";
    }

    public String getImagesList(int i, long j) {
        return "select Count(*) from ActivityImageDetails   where attributeid='" + i + "' and ReferenceID='" + j + "'";
    }

    public String getImagesAvailableOrNot(String str, long j) {
        return "select Count(*) from ActivityImageDetails where EventTypeId='" + str + "' and ReferenceID='" + j + "'";
    }

    public String getImagesAvailableOrNotToDo(String str, long j) {
        return "select Count(*) from ActivityImageDetails where EventTypeId='" + str + "' and AssignmentId='" + j + "'";
    }

    public String getItemId(String str) {
        return "select ItemId from ConfigurableLookupMaster where configid='" + str + "'";
    }

    public String getItemKey(String str) {
        return "select ItemKey from ConfigurableLookupMaster where configid='" + str + "'";
    }

    public String getPMCExpenseActivityAttributeQueryUpdated(String str, int i, int i2, long j) {
        return "select am.AttributeId,am.DisplayNameMobile,am.ControlType,fad.attributevalue,aam.isMandatoryMobile, fad.detailsID,fad.pairId,fad.activityAttributeId,am.MaxLength,am.MinLength,am.MinValue,am.MaxValue,am.ValidationType,am.ValidationExpression, am.AttributeSource, am.AttributeDisplayField, am.AttributeValueField,am.AttributeLookupKey,am.AttributeDefaultValue,am.isKeyAttribute,aam.FilterAttributeId1 ,aam.FilterAttributeId2 ,aam.FilterAttributeId3,aam.DisplayType,am.DynamicColumn,am.DynamicCondition,aam.IsReadOnly,aam.SourceQuery,aam.DisplayRows  from ExpenseAttributeMaster as am INNER JOIN ExpenseActivityAttributeMappingMaster as aam ON am.AttributeId=aam.AttributeId AND aam.ActivityMasterId=" + i + " LEFT JOIN pmcExpenseAssignmentActivityDetails as fad ON aam.ActivityMasterId=fad.ActivityMasterId AND am.AttributeId=fad.AttributeId and   fad.ActivityMasterId=" + i + " and fad.ActivitySegmentValue= '" + str + "' and fad.activityAssignmentId = " + i2 + " and fad.transId =" + j + " and (fad.isActive =1 OR fad.isActive ='True') WHERE (aam.isActive =1 OR aam.isActive ='True') and aam.isRequiredMobile=1 and (aam.ParentAttributeId=0 OR aam.ParentAttributeId=\"\") and aam.AttributeKeyMappingId is ''  GROUP BY am.AttributeId ORDER BY aam.controlsequence";
    }

    public String updateExpenseDraftForAssignmentvisit(long j) {
        return "select visitId from pmcExpenseAssignmentVisit where activityAssignmentId =" + j + " OR TransactionId = " + j;
    }

    public String deleteExpensesFarmerDetailsActivity(long j) {
        return "delete from pmcExpenseAssignmentActivityDetails  where TransId='" + j + "'";
    }

    public String getpmcExpenseAssignmentActivityDetailsCountQry() {
        return "SELECT COUNT(0) from  pmcExpenseAssignmentActivityDetails   where serverUpdatedStatus='false'";
    }

    public String getpmcExpenseAssignmentActivityDetailsCountQry(int i, long j) {
        if (j > 0) {
            return "SELECT TransId from  pmcExpenseAssignmentActivityDetails where ParentActivityTransID= " + j;
        }
        return "SELECT TransId from  pmcExpenseAssignmentActivityDetails where ParentActivityAssignmentID= " + i;
    }

    public String getpmcExpenseAssignmentVisitDetailsCountQry() {
        return "SELECT COUNT(0) from  pmcExpenseAssignmentVisit   where serverUpdatedStatus='false'";
    }

    public String getAllExpensesFarmersDataTimeBased(String str, String str2, int i, int i2) {
        return "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate ,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId ,PackageName,latitude,longitude,paad.createdBy,paad.isExpensesSubmited,paad.TransId,paad.ExecutionDate,paad.createddate from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId and (am.ExpensesRequired=1 or am.ExpensesRequired='true') where  paad.TransId = 0 and isDone= 1   and paad.isActive=1 and paad.isTransactionDone in(1) and isApproved=1 " + str + str2 + " and paad.AttributeId=" + i + " and attributeValue=" + i2 + " group by paad.activityassignmentid order by startdate ASC";
    }

    public String getAllExpensesSelfFarmersDataTimeBased(String str, String str2, int i, int i2) {
        return "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate ,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId ,PackageName,latitude,longitude,paad.createdBy,paad.isExpensesSubmited,paad.TransId,paad.ExecutionDate,paad.createddate from pmcassignmentactivitydetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId and (am.ExpensesRequired=1 or am.ExpensesRequired='true') where  paad.activityassignmentid = 0 and isDone= 1   and paad.isActive=1 and paad.isTransactionDone in(1) and isApproved=1 " + str + str2 + " and paad.AttributeId=" + i + " and attributeValue=" + i2 + " group by paad.TransId order by startdate ASC";
    }

    public String getSelfExpensesFarmersDataTimeBased(String str, String str2) {
        return "select paad.ActivitySegmentId,ActivitySegmentValue,person1,person2,location1,location2,contactnumber,am.ActivityMasterName,paad.activitymasterid,activityassignmentid,startdate,enddate ,assignmentId,serverUpdatedStatus,isdone,istransactionDone,PackageId ,PackageName,latitude,longitude,paad.createdBy,paad.isExpensesSubmited,paad.TransId,paad.ExecutionDate,paad.createddate from pmcExpenseAssignmentActivityDetails as paad inner Join ActivityMaster as am on paad.activitymasterid = am.ActivityMasterId where  isDone= 1 and ParentActivityAssignmentID=0 and ParentActivityTransID =0  and paad.isActive=1 and paad.isTransactionDone in(1) " + str + str2 + "group by paad.TransId order by startdate ASC";
    }

    public String getDeleteDetailsbyIDForExpenses(String str, String str2, String str3) {
        return "delete from " + str2 + " where " + str3 + " IN (" + str + ") and pmcAssignmentActivityDetails.ActivityMasterId in (select pmcAssignmentActivityDetails.ActivityMasterId from pmcAssignmentActivityDetails inner join ActivityMaster am on am.ActivityMasterId= pmcAssignmentActivityDetails.ActivityMasterId and (am.ExpensesRequired<>1  or am.ExpensesRequired is null)) ";
    }

    public String UpdateDetailsbyIDForExpences(String str, String str2, String str3) {
        return "update " + str2 + "  set  serverUpdatedStatus='true' where serverUpdatedStatus='false' and " + str3 + " IN (" + str + ") and pmcAssignmentActivityDetails.ActivityMasterId in (select pmcAssignmentActivityDetails.ActivityMasterId from pmcAssignmentActivityDetails inner join ActivityMaster am on am.ActivityMasterId= pmcAssignmentActivityDetails.ActivityMasterId and (am.ExpensesRequired=1 or am.ExpensesRequired='true')) ";
    }

    public String getExpenseAssignmentActivityDetails() {
        return this.expenseAssignmentActivityDetails;
    }

    public String getExpenseAssignmentVisitDetails() {
        return this.expenseAssignmentVisitDetails;
    }

    public String getActivityAssignmentIds() {
        return "select distinct(ActivityAssignmentId) from pmcAssignmentActivityDetails where isApproved ==0  and isDone=1 and isTransactionDone=1 and ActivityAssignmentId!=0";
    }

    public String getTransIds() {
        return "select distinct(transid) from pmcAssignmentActivityDetails where isApproved == 0 and isDone=1 and isTransactionDone=1 and transid!=0";
    }

    public String getGeoEditStatus(String str) {
        return "select ApproveLatLong from DealerMaster where ContactId='" + str + "' ";
    }

    public String getCampaignID(long j) {
        return "select CampaignID from pmcAssignmentVisit where TransactionId='" + j + "'";
    }

    public String getCampaignIDToDo(int i) {
        return "select CampaignID from pmcAssignmentVisit where ActivityAssignmentId='" + i + "'";
    }

    public String getVillageName(String str, String str2, String str3, String str4) {
        return "SELECT " + str2 + " FROM " + str + " where " + str3 + "='" + str4 + "'";
    }

    public String getVillageNameFromVillageMaster(String str) {
        return "SELECT VillageName || '-' || MandalName as VillageName  FROM VillageMaster vm JOIN MandalMaster mm on mm.mandalid=vm.mandalid where VillageID ='" + str + "'";
    }

    public String getCampaignConfiguration(int i) {
        return "SELECT IsNeoCampaignRequired FROM ActivityMaster where ActivityMasterId =" + i;
    }

    public String getFelloFarmerCount(String str) {
        return "SELECT count(*) from FarmerMaster where ParentSaarthieFarmerID='" + str + "' and isActive='True'  and (IsFellowFarmer =1 or IsFellowFarmer='YES')  and TypeofFarmer='1' and Status<>0 and  Status<>5 ";
    }

    public String getDraftRecordsCountSA(String str) {
        return "select count(0) from pmcassignmentactivitydetails where isTransactionDone=2 and isDone=0 and CampaignID <> ''and  TransactionId='" + str + "'";
    }

    public String getDraftRecordsCountTODO(String str) {
        return "select count(0) from pmcassignmentactivitydetails where isTransactionDone=2 and isDone=0 and CampaignID <> ''and  ActivityAssignmentId='" + str + "'";
    }
}
