package com.conceptglobal.pmc.utils;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.conceptglobal.pmc.database.DataBaseHandler;

/* loaded from: classes.dex */
public class DBPatchQueries {
    private static final String TAG = "DB Patch Queries";
    private static SQLiteDatabase sqliteDatabase;
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    private static String[] tables = {"CREATE TABLE IF NOT EXISTS PackageActivitySuggestedValues(PackageActivitySuggestedValuesID int  PRIMARY KEY,PackageId int ,ActivityId int ,AttributeID int ,SuggestValueIDs varchar,ActualValueIDs varchar,LookupKey varchar,EffectiveFromDate datetime ,EffectiveToDate datetime ,isActive bit ,CreatedBy int ,Createddate datetime ,UpdatedBy int ,UpdatedDate datetime ,SuggestValueText varchar,ActualValueText varchar)", "Create table IF NOT EXISTS TestimonialMaster (TestimonialID Integer Primary Key autoincrement,ImageId long,CropId int,BrandId int,Remarks varchar,TestimonialTypeId int,Column1 varchar,Column2 varchar,Column3 varchar,Column4 varchar,Column5 varchar,CreatedBy int,CreatedDate datetime,UpdatedBy int,UpdatedDate datetime)", "CREATE TABLE  IF NOT EXISTS vwBrandPackMappingMaster ('BrandPackId' INTEGER PRIMARY KEY   NOT NULL  DEFAULT (0) ,'BrandName' VARCHAR  ,'PackName' VARCHAR  ,'CompanyID' INTEGER  ,'CategoryID' INTEGER  ,'BrandID' INTEGER  ,'PackId' INTEGER  ,'Isactive' INTEGER  ,'Description' VARCHAR  ,'DisplayName' VARCHAR  ,'CreatedDate' VARCHAR  ,'UpdatedDate' VARCHAR)", "CREATE TABLE IF NOT EXISTS ActivitySegmentMasterLn ('ActivitySegmentLnId' INTEGER NOT NULL,'ActivitySegmentName' VARCHAR,'LanguangeId' INTEGER,'EffectiveFromDate' VARCHAR ,'EffectiveToDate' VARCHAR,'IsActive' INTEGER,'CreatedBy' INTEGER,'CreatedDate' VARCHAR,'UpdatedBy' INTEGER,'UpdatedDate' VARCHAR,'ActivitySegmentId' INTEGER)", "CREATE TABLE IF NOT EXISTS vwFOstaffDetails ('userid' INTEGER PRIMARY KEY NOT NULL,'FirstName' VARCHAR,'Mobile' VARCHAR ,'isActive' VARCHAR,'updateddate' INTEGER,'territoryId' INTEGER)", "CREATE TABLE IF NOT EXISTS RulesMaster (ruleId INTEGER PRIMARY KEY  NOT NULL , rule VARCHAR, isActive INTEGER, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)", "CREATE TABLE IF NOT EXISTS Rulesconfiguration (rcId INTEGER PRIMARY KEY  NOT NULL , ruleId INTEGER, atrributeId INTEGER, ValidationattributeId INTEGER, module VARCHAR, isActive INTEGER, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)", "CREATE TABLE IF NOT EXISTS ComplaintParentCategoryMaster (ParentCategoryId INTEGER PRIMARY KEY  NOT NULL , CategoryName VARCHAR, IsActive INTEGER, CusSegmentId INTEGER, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)", "CREATE TABLE IF NOT EXISTS ComplaintCategoryMaster (CategoryId INTEGER PRIMARY KEY  NOT NULL , CategoryName VARCHAR, IsActive INTEGER, ParentCategoryId INTEGER, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)", "CREATE TABLE IF NOT EXISTS ActivitySummaryDetails (ActivityMasterId  INTEGER PRIMARY KEY  NOT NULL , Target  Integer, Plan  INTEGER, Actual  INTEGER, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)", "CREATE TABLE IF NOT EXISTS IMEINumbersMaster(IMEIId INTEGER PRIMARY KEY AUTOINCREMENT, IMEINumber1 TEXT, IMEINumber2 TEXT, PdaId INTEGER, Createddate TEXT, CreatedBy INTEGER, UpdatedBy INTEGER, UpdatedDate TEXT, isActive INTEGER)", "CREATE TABLE IF NOT EXISTS FOSVMapping(MappingId INTEGER PRIMARY KEY NOT NULL,FOUserId int,FOUserName varchar,SVUserId int,isActive int,CreatedBy int,Createddate varchar,UpdatedBy int,Updateddate varchar)", "CREATE TABLE IF NOT EXISTS ContentFaourites(FavouriteId INTEGER PRIMARY KEY autoincrement,ContentID int,ISFavourite int,serverUpdatedStatus boolean,CreatedBy int,Createddate varchar,UpdatedBy int,Updateddate varchar)", "CREATE TABLE IF NOT EXISTS PMCAttendanceDetails(AttendanceId INTEGER PRIMARY KEY AUTOINCREMENT,TransId varchar,FoUserId varchar,FoName varchar,SVUserId varchar,IsSelfAttendance Integer,OnLeave varchar,AttendanceDate varchar,FoTravel varchar,FoNightHalt varchar,SVApprovedTravel varchar,SVApprovedNightHalt varchar,SVApprovedDate varchar,IsApproved varchar,Latitude varchar,\n\tLongitude varchar,Comments varchar,PdaId INTEGER,IsProcessed int,ServerUpdatedDate datetime,serverUpdatedStatus boolean,CreatedBy varchar,CreatedDate varchar,UpdatedBy varchar,Updateddate varchar)", "CREATE TABLE IF NOT EXISTS DownLoadFileDetails(ContentID integer,DownloadID String,FilePath String)", "CREATE TABLE IF NOT EXISTS TSTActivityMaster ( `ActivityMasterId` INTEGER NOT NULL DEFAULT (null), `ActivityMasterName` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `CreatedDate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `isRequiredForApproval` INTEGER, `isLatLongRequired` INTEGER, `ActivityShortCode` VARCHAR, `ActivityColorCode` VARCHAR, `isIndependent` INTEGER, `isPicturesRequired` INTEGER, `DisplayType` varchar, `IsSelfAssigned` INTEGER, IsSupervisoryActivity Integer, Radius VARCHAR, PRIMARY KEY(`ActivityMasterId`) )", "CREATE TABLE IF NOT EXISTS TSTActivityAttributeMappingMaster ( `MappingId` INTEGER, `ActivityMasterId` INTEGER, `AttributeId` INTEGER, `isRequiredWeb` INTEGER, `isRequiredMobile` INTEGER, `isMandatoryWeb` INTEGER, `isMandatoryMobile` INTEGER, `ParentAttributeId` INTEGER, `ControlSequence` INTEGER, `AttributeKeyMappingId` INTEGER, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `SourceQuery` VARCHAR, `isFirstChild` INTEGER, `FilterAttributeId1` INTEGER, `FilterAttributeId2` INTEGER, `FilterAttributeId3` INTEGER, `DisplayType` varchar, `IsReadOnly` INTEGER,DisplayRows INTEGER, PRIMARY KEY(`MappingId`) )", "CREATE TABLE IF NOT EXISTS \"pmcTSTAssignmentActivityDetails\" (\"detailsID\" INTEGER PRIMARY KEY DEFAULT (0) ,\"ActivitySegmentId\" INTEGER DEFAULT (0) ,\"ActivityMasterId\" INTEGER DEFAULT (0) ,\"attributeValue\" NVARCHAR,\"isDone\" VARCHAR,\"createdBy\" INTEGER DEFAULT (0) ,\"createddate\" DATE TIME,\"updatedBy\" INTEGER DEFAULT (0) ,\"updatedDate\" DATE TIME,\"serverUpdatedStatus\" boolean,\"isPlanned\" INTEGER DEFAULT (0) ,\"pdaId\" INTEGER DEFAULT (0) ,\"notdoneRemark\" VARCHAR,\"ActivitySegmentValue\" VARCHAR,\"ActivityAssignmentId\" INTEGER,\"ActivityAttributeId\" INTEGER,\"ActivitySegmentName\" VARCHAR,\"TransId\" VARCHAR DEFAULT (0) ,\"PairId\" INTEGER DEFAULT (0) ,\"isTransactionDone\" INTEGER DEFAULT (0) ,\"ActivityExecutionSegmentId\" INTEGER DEFAULT (null) ,\"ActivityExecutionSegmentValue\" VARCHAR,\"ExecutionDate\" VARCHAR,\"AttributeId\" INTEGER,\"AssignmentId\" INTEGER,\"StartDate\" VARCHAR,\"EndDate\" VARCHAR,\"Person1\" VARCHAR,\"Person2\" VARCHAR,\"Location1\" VARCHAR,\"Location2\" VARCHAR,\"ContactNumber\" VARCHAR,\"ChildLevelId\" INTEGER DEFAULT (0) , \"PackageId\" INTEGER, \"isActive\" INTEGER, PackageName VARCHAR, territoryId INTEGER, latitude INTEGER, longitude INTEGER)", "CREATE TABLE IF NOT EXISTS pmcTSTAssignmentVisit ( `visitId` INTEGER NOT NULL, `assignmentId` INTEGER, `visitDescription` VARCHAR DEFAULT (null), `createdDate` DATETIME, `createdBy` INTEGER, `updatedDate` DATETIME, `updatedBy` INTEGER, `serverUpdatedStatus` BOOL, `pdaId` INTEGER, `farmerId` INTEGER, `latitude` DOUBLE, `longitude` DOUBLE, `remarks` VARCHAR, `activityAssignmentId` INTEGER, `TransactionId` VARCHAR, `GPSTimeStamp` datetime, PRIMARY KEY(`visitId`) )", "CREATE TABLE IF NOT EXISTS \"TSTAttributeMaster\" ( `AttributeId` INTEGER, `AttributeName` VARCHAR, `DisplayNameWeb` VARCHAR, `DisplayNameMobile` VARCHAR, `ControlType` VARCHAR, `AttributeSource` VARCHAR, `AttributeDisplayField` VARCHAR, `AttributeValueField` VARCHAR, `AttributeLookupKey` VARCHAR, `AttributeDefaultValue` VARCHAR, `isKeyAttribute` INTEGER, `ValidationType` VARCHAR, `ValidationExpression` VARCHAR, `MaxLength` INTEGER, `MinLength` INTEGER, `MinValue` VARCHAR, `MaxValue` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `AttributeQuery` VARCHAR, `DynamicColumn` VARCHAR, `DynamicCondition` VARCHAR, PRIMARY KEY(`AttributeId`) )", "CREATE TABLE IF NOT EXISTS FarmerMultiAttributeDetails (LineId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,FarmerId INTEGER,RespondentNo VARCHAR, ColumnMappingId INTEGER,AttributeValue VARCHAR, AttributeTypeName VARCHAR, PdaId INTEGER, IsProcessed INTEGER, ServerUpdatedStatus VARCHAR, ServerUpdatedDate  datetime, CreatedBy INTEGER, CreatedDate datetime, UpdatedBy INTEGER, UpdatedDate datetime)", "CREATE TABLE IF NOT EXISTS DealerMultiAttributeDetails(LineId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,ContactID varchar(100) NULL,ColumnMappingId int NULL,AttributeValue varchar NULL,AttributeTypeName varchar NULL,PdaId int NULL,IsProcessed int NULL,ServerUpdatedStatus varchar NULL,ServerUpdatedDate datetime NULL,CreatedBy int NULL,CreatedDate datetime NULL,UpdatedBy int NULL,UpdatedDate datetime NULL)", "CREATE TABLE IF NOT EXISTS TSTActivitySegmentMaster(ActivitySegmentId INTEGER PRIMARY KEY, ActivitySegmentName VARCHAR, ActivitySegmentTypeId INTEGER, RefrenceTableName VARCHAR, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR, PrimaryKeyColumn VARCHAR, isActive INTEGER, IsKeyColumnEncrypt INTEGER)", "CREATE TABLE IF NOT EXISTS TSTActivitySegmentMappingMaster (ActivitySegmentMappingId INTEGER PRIMARY KEY, ActivitySegmentId INTEGER, ActivityMasterId INTEGER, isActive INTEGER, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, Createddate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)", "CREATE TABLE IF NOT EXISTS FBFActivityMaster ( `ActivityMasterId` INTEGER NOT NULL DEFAULT (null), `ActivityMasterName` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `CreatedDate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `isRequiredForApproval` INTEGER, `isLatLongRequired` INTEGER, `ActivityShortCode` VARCHAR, `ActivityColorCode` VARCHAR, `isIndependent` INTEGER, `isPicturesRequired` INTEGER, `DisplayType` varchar, `IsSelfAssigned` INTEGER, IsSupervisoryActivity Integer, Radius VARCHAR, PRIMARY KEY(`ActivityMasterId`) )", "CREATE TABLE IF NOT EXISTS FBFActivityAttributeMappingMaster ( `MappingId` INTEGER, `ActivityMasterId` INTEGER, `AttributeId` INTEGER, `isRequiredWeb` INTEGER, `isRequiredMobile` INTEGER, `isMandatoryWeb` INTEGER, `isMandatoryMobile` INTEGER, `ParentAttributeId` INTEGER, `ControlSequence` INTEGER, `AttributeKeyMappingId` INTEGER, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `SourceQuery` VARCHAR, `isFirstChild` INTEGER, `FilterAttributeId1` INTEGER, `FilterAttributeId2` INTEGER, `FilterAttributeId3` INTEGER, `DisplayType` varchar, `IsReadOnly` INTEGER,DisplayRows INTEGER, PRIMARY KEY(`MappingId`) )", "CREATE TABLE IF NOT EXISTS \"pmcFBFAssignmentActivityDetails\" (\"detailsID\" INTEGER PRIMARY KEY DEFAULT (0) ,\"ActivitySegmentId\" INTEGER DEFAULT (0) ,\"ActivityMasterId\" INTEGER DEFAULT (0) ,\"attributeValue\" NVARCHAR,\"isDone\" VARCHAR,\"createdBy\" INTEGER DEFAULT (0) ,\"createddate\" DATE TIME,\"updatedBy\" INTEGER DEFAULT (0) ,\"updatedDate\" DATE TIME,\"serverUpdatedStatus\" boolean,\"isPlanned\" INTEGER DEFAULT (0) ,\"pdaId\" INTEGER DEFAULT (0) ,\"notdoneRemark\" VARCHAR,\"ActivitySegmentValue\" VARCHAR,\"ActivityAssignmentId\" INTEGER,\"ActivityAttributeId\" INTEGER,\"ActivitySegmentName\" VARCHAR,\"TransId\" VARCHAR DEFAULT (0) ,\"PairId\" INTEGER DEFAULT (0) ,\"isTransactionDone\" INTEGER DEFAULT (0) ,\"ActivityExecutionSegmentId\" INTEGER DEFAULT (null) ,\"ActivityExecutionSegmentValue\" VARCHAR,\"ExecutionDate\" VARCHAR,\"AttributeId\" INTEGER,\"AssignmentId\" INTEGER,\"StartDate\" VARCHAR,\"EndDate\" VARCHAR,\"Person1\" VARCHAR,\"Person2\" VARCHAR,\"Location1\" VARCHAR,\"Location2\" VARCHAR,\"ContactNumber\" VARCHAR,\"ChildLevelId\" INTEGER DEFAULT (0) , \"PackageId\" INTEGER, \"isActive\" INTEGER, PackageName VARCHAR, territoryId INTEGER, latitude INTEGER, longitude INTEGER)", "CREATE TABLE IF NOT EXISTS pmcFBFAssignmentVisit ( `visitId` INTEGER NOT NULL, `assignmentId` INTEGER, `visitDescription` VARCHAR DEFAULT (null), `createdDate` DATETIME, `createdBy` INTEGER, `updatedDate` DATETIME, `updatedBy` INTEGER, `serverUpdatedStatus` BOOL, `pdaId` INTEGER, `farmerId` INTEGER, `latitude` DOUBLE, `longitude` DOUBLE, `remarks` VARCHAR, `activityAssignmentId` INTEGER, `TransactionId` VARCHAR, `GPSTimeStamp` datetime, PRIMARY KEY(`visitId`) )", "CREATE TABLE IF NOT EXISTS \"FBFAttributeMaster\" ( `AttributeId` INTEGER, `AttributeName` VARCHAR, `DisplayNameWeb` VARCHAR, `DisplayNameMobile` VARCHAR, `ControlType` VARCHAR, `AttributeSource` VARCHAR, `AttributeDisplayField` VARCHAR, `AttributeValueField` VARCHAR, `AttributeLookupKey` VARCHAR, `AttributeDefaultValue` VARCHAR, `isKeyAttribute` INTEGER, `ValidationType` VARCHAR, `ValidationExpression` VARCHAR, `MaxLength` INTEGER, `MinLength` INTEGER, `MinValue` VARCHAR, `MaxValue` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `AttributeQuery` VARCHAR, `DynamicColumn` VARCHAR, `DynamicCondition` VARCHAR, PRIMARY KEY(`AttributeId`) )", "CREATE TABLE IF NOT EXISTS FBFActivitySegmentMaster(ActivitySegmentId INTEGER PRIMARY KEY, ActivitySegmentName VARCHAR, ActivitySegmentTypeId INTEGER, RefrenceTableName VARCHAR, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR, PrimaryKeyColumn VARCHAR, isActive INTEGER, IsKeyColumnEncrypt INTEGER)", "CREATE TABLE IF NOT EXISTS FBFActivitySegmentMappingMaster (ActivitySegmentMappingId INTEGER PRIMARY KEY, ActivitySegmentId INTEGER, ActivityMasterId INTEGER, isActive INTEGER, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, Createddate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)", "CREATE TABLE IF NOT EXISTS FBFActivityResolveTrack(TransId int,ActivityResolveId INTEGER PRIMARY KEY  NOT NULL,ActivityAssignmentId Varchar,ResolvedBy int,ResolveName VARCHAR,ResolveRemarks varchar,CreatedBy int,CreatedDate datetime,UpdatedBy int,UpdatedDate datetime, `serverUpdatedStatus` BOOL,ResolvedStatus VARCHAR,IsSMSRequired VARCHAR)", "CREATE TABLE IF NOT EXISTS SurveyActivityMaster ( `ActivityMasterId` INTEGER NOT NULL DEFAULT (null), `ActivityMasterName` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `CreatedDate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `isRequiredForApproval` INTEGER, `isLatLongRequired` INTEGER, `ActivityShortCode` VARCHAR, `ActivityColorCode` VARCHAR, `isIndependent` INTEGER, `isPicturesRequired` INTEGER, `DisplayType` varchar, `IsSelfAssigned` INTEGER, IsSupervisoryActivity Integer, Radius VARCHAR,isVideoRequired Integer, PRIMARY KEY(`ActivityMasterId`) )", "CREATE TABLE IF NOT EXISTS SurveyActivityAttributeMappingMaster ( `MappingId` INTEGER, `ActivityMasterId` INTEGER, `AttributeId` INTEGER, `isRequiredWeb` INTEGER, `isRequiredMobile` INTEGER, `isMandatoryWeb` INTEGER, `isMandatoryMobile` INTEGER, `ParentAttributeId` INTEGER, `ControlSequence` INTEGER, `AttributeKeyMappingId` INTEGER, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `SourceQuery` VARCHAR, `isFirstChild` INTEGER, `FilterAttributeId1` INTEGER, `FilterAttributeId2` INTEGER, `FilterAttributeId3` INTEGER, `DisplayType` varchar, `IsReadOnly` INTEGER,DisplayRows INTEGER, PRIMARY KEY(`MappingId`) )", "CREATE TABLE IF NOT EXISTS pmcSurveyAssignmentActivityDetails (\"detailsID\" INTEGER PRIMARY KEY DEFAULT (0) ,\"ActivitySegmentId\" INTEGER DEFAULT (0) ,\"ActivityMasterId\" INTEGER DEFAULT (0) ,\"attributeValue\" NVARCHAR,\"isDone\" VARCHAR,\"createdBy\" INTEGER DEFAULT (0) ,\"createddate\" DATE TIME,\"updatedBy\" INTEGER DEFAULT (0) ,\"updatedDate\" DATE TIME,\"serverUpdatedStatus\" boolean,\"isPlanned\" INTEGER DEFAULT (0) ,\"pdaId\" INTEGER DEFAULT (0) ,\"notdoneRemark\" VARCHAR,\"ActivitySegmentValue\" VARCHAR,\"ActivityAssignmentId\" INTEGER,\"ActivityAttributeId\" INTEGER,\"ActivitySegmentName\" VARCHAR,\"TransId\" VARCHAR DEFAULT (0) ,\"PairId\" INTEGER DEFAULT (0) ,\"isTransactionDone\" INTEGER DEFAULT (0) ,\"ActivityExecutionSegmentId\" INTEGER DEFAULT (null) ,\"ActivityExecutionSegmentValue\" VARCHAR,\"ExecutionDate\" VARCHAR,\"AttributeId\" INTEGER,\"AssignmentId\" INTEGER,\"StartDate\" VARCHAR,\"EndDate\" VARCHAR,\"Person1\" VARCHAR,\"Person2\" VARCHAR,\"Location1\" VARCHAR,\"Location2\" VARCHAR,\"ContactNumber\" VARCHAR,\"ChildLevelId\" INTEGER DEFAULT (0) , \"PackageId\" INTEGER, \"isActive\" INTEGER, PackageName VARCHAR, territoryId INTEGER, latitude INTEGER, longitude INTEGER)", "CREATE TABLE IF NOT EXISTS pmcSurveyAssignmentVisit ( `visitId` INTEGER NOT NULL, `assignmentId` INTEGER, `visitDescription` VARCHAR DEFAULT (null), `createdDate` DATETIME, `createdBy` INTEGER, `updatedDate` DATETIME, `updatedBy` INTEGER, `serverUpdatedStatus` BOOL, `pdaId` INTEGER, `farmerId` INTEGER, `latitude` DOUBLE, `longitude` DOUBLE, `remarks` VARCHAR, `activityAssignmentId` INTEGER, `TransactionId` VARCHAR, `GPSTimeStamp` datetime, PRIMARY KEY(`visitId`) )", "CREATE TABLE IF NOT EXISTS SurveyAttributeMaster ( `AttributeId` INTEGER, `AttributeName` VARCHAR, `DisplayNameWeb` VARCHAR, `DisplayNameMobile` VARCHAR, `ControlType` VARCHAR, `AttributeSource` VARCHAR, `AttributeDisplayField` VARCHAR, `AttributeValueField` VARCHAR, `AttributeLookupKey` VARCHAR, `AttributeDefaultValue` VARCHAR, `isKeyAttribute` INTEGER, `ValidationType` VARCHAR, `ValidationExpression` VARCHAR, `MaxLength` INTEGER, `MinLength` INTEGER, `MinValue` VARCHAR, `MaxValue` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `AttributeQuery` VARCHAR, `DynamicColumn` VARCHAR, `DynamicCondition` VARCHAR, PRIMARY KEY(`AttributeId`) )", "CREATE TABLE IF NOT EXISTS SurveyActivitySegmentMaster(ActivitySegmentId INTEGER PRIMARY KEY, ActivitySegmentName VARCHAR, ActivitySegmentTypeId INTEGER, RefrenceTableName VARCHAR, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR, PrimaryKeyColumn VARCHAR, isActive INTEGER, IsKeyColumnEncrypt INTEGER)", "CREATE TABLE IF NOT EXISTS SurveyActivitySegmentMappingMaster (ActivitySegmentMappingId INTEGER PRIMARY KEY, ActivitySegmentId INTEGER, ActivityMasterId INTEGER, isActive INTEGER, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, Createddate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)", "CREATE TABLE IF NOT EXISTS ActivityAttributesRulesConfiguration (RulesConfigId INTEGER PRIMARY KEY AUTOINCREMENT,  ActivityMasterId INTEGER,AttributeId INTEGER,ParentAttributeId INTEGER,ParentAttributeValueId INTEGER,OperationType  VARCHAR,OperationMode Varchar,isActive INTEGER,  CreatedBy INTEGER, Createddate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)", "CREATE TABLE IF NOT EXISTS POPMaster(POPID int PRIMARY KEY NOT NULL,CropCategory varchar NULL,CropName vrchar NULL,\n    ThumbnailURL varchar NULL,LocalThumnailpath varchar NULL,HTMLZIPURL varchar NULL,LocalHTMLZIPURL varchar NULL,HTMLStartPage varchar NULL,\n    VersionNo int NULL,DeviceVersionNo int NULL, Type varchar NULL,Status int NULL,\n    CreatedBy int NULL,CreatedDate datetime NULL,UpdatedBy int NULL,UpdatedDate datetime NULL)", "CREATE TABLE IF NOT EXISTS PricesDisplay(LineId INTEGER PRIMARY KEY AUTOINCREMENT, State TEXT,District TEXT,Market TEXT,Commodity TEXT,Variety TEXT,ArrivaleDate TEXT,MinPrice TEXT,MaxPrice TEXT,MondalPrice TEXT)", "CREATE TABLE IF NOT EXISTS Log4Trace(CreatedID INTEGER PRIMARY KEY AUTOINCREMENT,PdaId INTEGER,CreatedDate TEXT,ActivityID TEXT,Action TEXT,ScreenName TEXT,UserId INTEGER,serverUpdateStatus boolean)", "CREATE TABLE IF NOT EXISTS Log4Pi(LineId INTEGER PRIMARY KEY AUTOINCREMENT,Action TEXT,ModuleTypeId INTEGER,PrimaryKeyId INTEGER,PrimaryKeyCoulmn TEXT,ActionValue TEXT,UserId INTEGER,PdaId INTEGER,CreatedDate TEXT,serverUpdateStatus boolean)", "CREATE TABLE IF NOT EXISTS RoleActivityMapping(LineId Varchar primary key NOT NULL,RoleId integer,ActivityId integer,IsActive integer,CreatedBy integer,CreatedDate Varchar,UpdatedBy integer,UpdatedDate Varchar)", "CREATE TABLE IF NOT EXISTS RoleSegmentMapping(LineId Varchar primary key NOT NULL,RoleId integer,SegmentId integer,IsActive integer,CreatedBy integer,CreatedDate Varchar,UpdatedBy integer,UpdatedDate Varchar)", "CREATE TABLE IF NOT EXISTS FavouriteFarmer(FavouriteId Integer auto increment,RespondentNo nvarchar PRIMARY KEY,UserId Integer,PdaId Integer ,IsFavourite Integer,RoleId Integer,ServerUpdatedStatus text,CreatedBy Integer,CreatedDate nvarchar,UpdatedBy Integer,UpdatedDate nvarchar)", "CREATE TABLE IF NOT EXISTS FavouriteFarmerAttribute(RespondentNo varchar PRIMARY KEY,TotalSale real,IsHNF Integer,IsKAM Integer,Attribute1 varchar,Attribute2 varchar,Attribute3 varchar,Attribute4 varchar,Attribute5 varchar,ServerUpdatedStatus text,CreatedBy int,CreatedDate TEXT,UpdatedBy int,UpdatedDate TEXT)", "CREATE TABLE IF NOT EXISTS FavouriteRetailer(FavouriteRetailerId Integer auto increment,ContactId nvarchar PRIMARY KEY,UserId Integer,PdaId Integer,IsFavourite Integer,IsRROFavourite Integer,RoleId Integer,ServerUpdatedStatus text,CreatedBy Integer,CreatedDate TEXT,UpdatedBy Integer,UpdatedDate TEXT)", "CREATE TABLE IF NOT EXISTS DealerLandDetails ( `DetailsID` INTEGER PRIMARY KEY AUTOINCREMENT, `ContactId` int NOT NULL, `LandName` varchar, `Acreages` decimal ( 18 , 2 ), `Address` varchar, `IsOnField` varchar,`landmark` varchar, `Latitude` varchar, `Longitude` varchar, `IsActive` int, `CreatedBy` int, `CreatedDate` datetime, `UpdatedBy` int, `UpdatedDate` datetime, `serverupdatedstatus` boolean DEFAULT (null), `pdaid` INTEGER,status  int ,  `GPSTimeStamp` datetime, `ServerDetailsID` INTEGER )", "CREATE TABLE  IF NOT EXISTS ActivityImageMappingMaster(MappingId int PRIMARY KEY NOT NULL, ActivityMasterId int,ImageTypeId int,IsActive int,IsMandatory int,SequenceID int,ConfigId int,CreatedBy int,CreatedDate datetime,UpdatedBy int,UpdatedDate datetime)", "CREATE TABLE IF NOT EXISTS ResignedUsers(ID INTEGER PRIMARY KEY   NOT NULL,pdaid varchar,applieddate datetime,reason varchar,description varchar,lastworkingdate datetime,resignationstatus int,reviewedby int,reviweddate datetime,ServerUpdatedStatus ,reviewedbyname varchar,createdby int,createddate datetime,updatedby datetime,updateddate datetime)", "CREATE TABLE IF NOT EXISTS ApplyLeave(AttendanceID Integer PRIMARY KEY, Fromdate varchar,ToDate varchar,LeaveType varchar,ReasonType varchar,NoOfDays int,Remarks varchar,CreatedBy INTEGER,CreatedDate TEXT,UpdatedBy INTEGER,UpdatedDate TEXT,serverupdatedstatus boolean DEFAULT (null) ,pdaid INTEGER)", "CREATE TABLE IF NOT EXISTS ExpenseAttributeMaster ( `AttributeId` INTEGER, `AttributeName` VARCHAR, `DisplayNameWeb` VARCHAR, `DisplayNameMobile` VARCHAR, `ControlType` VARCHAR, `AttributeSource` VARCHAR, `AttributeDisplayField` VARCHAR, `AttributeValueField` VARCHAR, `AttributeLookupKey` VARCHAR, `AttributeDefaultValue` VARCHAR, `isKeyAttribute` INTEGER, `ValidationType` VARCHAR, `ValidationExpression` VARCHAR, `MaxLength` INTEGER, `MinLength` INTEGER, `MinValue` VARCHAR, `MaxValue` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `AttributeQuery` VARCHAR, `DynamicColumn` VARCHAR, `DynamicCondition` VARCHAR, PRIMARY KEY(`AttributeId`) )", "CREATE TABLE IF NOT EXISTS ExpenseActivityAttributeMappingMaster ( `MappingId` INTEGER, `ActivityMasterId` INTEGER, `AttributeId` INTEGER, `isRequiredWeb` INTEGER, `isRequiredMobile` INTEGER, `isMandatoryWeb` INTEGER, `isMandatoryMobile` INTEGER, `ParentAttributeId` INTEGER, `ControlSequence` INTEGER, `AttributeKeyMappingId` INTEGER, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `SourceQuery` VARCHAR, `isFirstChild` INTEGER, `FilterAttributeId1` INTEGER, `FilterAttributeId2` INTEGER, `FilterAttributeId3` INTEGER, `DisplayType` varchar, `IsReadOnly` INTEGER, `DisplayRows` INTEGER, PRIMARY KEY(`MappingId`) )", "CREATE TABLE IF NOT EXISTS pmcExpenseAssignmentActivityDetails (\"detailsID\" INTEGER PRIMARY KEY DEFAULT (0) ,\"ActivitySegmentId\" INTEGER DEFAULT (0) ,\"ActivityMasterId\" INTEGER DEFAULT (0) ,\"attributeValue\" NVARCHAR,\"isDone\" VARCHAR,\"createdBy\" INTEGER DEFAULT (0) ,\"createddate\" DATE TIME,\"updatedBy\" INTEGER DEFAULT (0) ,\"updatedDate\" DATE TIME,\"serverUpdatedStatus\" boolean,\"isPlanned\" INTEGER DEFAULT (0) ,\"pdaId\" INTEGER DEFAULT (0) ,\"notdoneRemark\" VARCHAR,\"ActivitySegmentValue\" VARCHAR,\"ActivityAssignmentId\" INTEGER,\"ActivityAttributeId\" INTEGER,\"ActivitySegmentName\" VARCHAR,\"TransId\" VARCHAR DEFAULT (0) ,\"PairId\" INTEGER DEFAULT (0) ,\"isTransactionDone\" INTEGER DEFAULT (0) ,\"ActivityExecutionSegmentId\" INTEGER DEFAULT (null) ,\"ActivityExecutionSegmentValue\" VARCHAR,\"ExecutionDate\" VARCHAR,\"AttributeId\" INTEGER,\"AssignmentId\" INTEGER,\"StartDate\" VARCHAR,\"EndDate\" VARCHAR,\"Person1\" VARCHAR,\"Person2\" VARCHAR,\"Location1\" VARCHAR,\"Location2\" VARCHAR,\"ContactNumber\" VARCHAR,\"ChildLevelId\" INTEGER DEFAULT (0) , \"PackageId\" INTEGER, \"isActive\" INTEGER, PackageName VARCHAR, territoryId INTEGER, latitude INTEGER, longitude INTEGER, ActivityCode VARCHAR,ParentActivityAssignmentID INTEGER,ParentActivityTransID INTEGER,isExpensesSubmited INTEGER )", "CREATE TABLE IF NOT EXISTS pmcExpenseAssignmentVisit ( `visitId` INTEGER NOT NULL, `assignmentId` INTEGER, `visitDescription` VARCHAR DEFAULT (null), `createdDate` DATETIME, `createdBy` INTEGER, `updatedDate` DATETIME, `updatedBy` INTEGER, `serverUpdatedStatus` BOOL, `pdaId` INTEGER, `farmerId` INTEGER, `latitude` DOUBLE, `longitude` DOUBLE, `remarks` VARCHAR, `activityAssignmentId` INTEGER, `TransactionId` VARCHAR, `GPSTimeStamp` datetime, PRIMARY KEY(`visitId`) )"};

    public static boolean ExecuteDBPatchQueries(Context context) {
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                checkForDBTblUpdate(tables, openDatabase);
                executeRawQueryInDB("delete from Log4Net where serverUpdateStatus = '0'", openDatabase);
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'ExpenseAttributeMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('ExpenseAttributeMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'ExpenseActivityAttributeMappingMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('ExpenseActivityAttributeMappingMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'PackageActivitySuggestedValues'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('PackageActivitySuggestedValues','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM ConfigurableLookup where itemKey = 'RegistrationDate'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into ConfigurableLookup (itemKey,itemValue) values('RegistrationDate','" + UtilDeclarations.getDateTime20mins() + "')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'RoleActivityMapping'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('RoleActivityMapping','2016-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'PackageActivitySuggestedValues'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('PackageActivitySuggestedValues','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'TSTActivitySegmentMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('TSTActivitySegmentMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'TSTActivitySegmentMappingMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('TSTActivitySegmentMappingMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'FBFActivitySegmentMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('FBFActivitySegmentMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'FBFActivitySegmentMappingMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('FBFActivitySegmentMappingMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'ActivityAttributesRulesConfiguration'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('ActivityAttributesRulesConfiguration','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'ActivityImageMappingMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('ActivityImageMappingMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsColumnInTable("CropBrandMappingMaster", "DosageperAcre", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE CropBrandMappingMaster ADD DosageperAcre real", openDatabase);
                }
                if (existsColumnInTable("CropBrandMappingMaster", "DosageperLt", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE CropBrandMappingMaster ADD DosageperLt real", openDatabase);
                }
                if (existsColumnInTable("ActivityMaster", "ExpensesRequired", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityMaster ADD ExpensesRequired VARCHAR", openDatabase);
                }
                if (existsColumnInTable("pmcAssignmentActivityDetails", "isExpensesSubmited", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcAssignmentActivityDetails ADD isExpensesSubmited Integer", openDatabase);
                }
                if (existsColumnInTable("pmcExpenseAssignmentActivityDetails", "ApprovalStatus", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcExpenseAssignmentActivityDetails ADD ApprovalStatus Integer ", openDatabase);
                }
                if (existsColumnInTable("pmcExpenseAssignmentActivityDetails", "ApprovedBy", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcExpenseAssignmentActivityDetails ADD ApprovedBy Integer ", openDatabase);
                }
                if (existsColumnInTable("pmcExpenseAssignmentActivityDetails", "isApproved", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcExpenseAssignmentActivityDetails ADD isApproved Integer ", openDatabase);
                }
                if (existsColumnInTable("UsageDetails", "SyncStatus", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE UsageDetails ADD SyncStatus boolean", openDatabase);
                }
                if (existsColumnInTable("FarmerMaster", "Column5", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FarmerMaster ADD Column5  varchar", openDatabase);
                }
                if (existsColumnInTable("UsageDetails", "ModuleTypeId", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE UsageDetails ADD ModuleTypeId int", openDatabase);
                    executeRawQueryInDB("ALTER TABLE UsageDetails ADD Action text", openDatabase);
                    executeRawQueryInDB("ALTER TABLE UsageDetails ADD ActionValue int", openDatabase);
                    executeRawQueryInDB("ALTER TABLE UsageDetails ADD PrimaryKeyId int", openDatabase);
                    executeRawQueryInDB("ALTER TABLE UsageDetails ADD PrimaryKeyCoulmn text", openDatabase);
                }
                if (existsColumnInTable("pmcAssignmentVisit", "StartTimeDevice", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcAssignmentVisit ADD StartTimeDevice varchar", openDatabase);
                    executeRawQueryInDB("ALTER TABLE pmcAssignmentVisit ADD StopTimeDevice varchar", openDatabase);
                    executeRawQueryInDB("ALTER TABLE pmcAssignmentVisit ADD StartTimeGPS varchar", openDatabase);
                    executeRawQueryInDB("ALTER TABLE pmcAssignmentVisit ADD StopTimeGPS varchar", openDatabase);
                }
                if (existsColumnInTable("ContentMaster", "ModuleType", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ContentMaster ADD ModuleType int", openDatabase);
                }
                if (existsColumnInTable("ContentMaster", "IsDownloadable", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ContentMaster ADD IsDownloadable int", openDatabase);
                }
                if (existsColumnInTable("ContentMaster", "IsDeleted", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ContentMaster ADD IsDeleted int", openDatabase);
                    executeRawQueryInDB("ALTER TABLE ContentMaster ADD IsSharable int", openDatabase);
                    executeRawQueryInDB("ALTER TABLE ContentMaster ADD IsBanner int", openDatabase);
                }
                if (existsColumnInTable("FBFActivityResolveTrack", "serverUpdatedStatus", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FBFActivityResolveTrack ADD serverUpdatedStatus BOOL", openDatabase);
                    executeRawQueryInDB("ALTER TABLE FBFActivityResolveTrack ADD ResolvedStatus VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE FBFActivityResolveTrack ADD IsSMSRequired VARCHAR", openDatabase);
                }
                if (existsColumnInTable("ContentMaster", "LocalThumbnail", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ContentMaster ADD LocalThumbnail VARCHAR", openDatabase);
                }
                if (existsColumnInTable("pmcLastVisitDetails", "Latitude", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcLastVisitDetails ADD Latitude VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE pmcLastVisitDetails ADD Longitude VARCHAR", openDatabase);
                }
                if (existsColumnInTable("FarmerMaster", "LastVisitedDate", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FarmerMaster ADD LastVisitedDate  varchar", openDatabase);
                }
                if (existsColumnInTable("DealerMaster", "LastVisitedDate", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE DealerMaster ADD LastVisitedDate  varchar", openDatabase);
                }
                if (existsColumnInTable("ActivityImageDetails", "ContentTypeId", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityImageDetails ADD ContentTypeId Integer", openDatabase);
                }
                if (existsColumnInTable("ActivityImageDetails", "IsCompressed", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityImageDetails ADD IsCompressed ", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'POPMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('POPMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsColumnInTable("RegionWiseCropDosage", "ActivityId", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE RegionWiseCropDosage ADD ActivityId Integer", openDatabase);
                }
                if (existsColumnInTable("RegionWiseCropDosage", "DemoID", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE RegionWiseCropDosage ADD DemoID Integer", openDatabase);
                }
                if (existsColumnInTable("DownLoadFileDetails", "Type", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE DownLoadFileDetails ADD Type Integer", openDatabase);
                }
                if (existsColumnInTable("TSTActivityMaster", "isVideoRequired", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE TSTActivityMaster ADD isVideoRequired Integer", openDatabase);
                }
                if (existsColumnInTable("FBFActivityMaster", "isVideoRequired", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FBFActivityMaster ADD isVideoRequired Integer", openDatabase);
                }
                if (existsColumnInTable("ContentMaster", "ContextId", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ContentMaster ADD ContextId Integer", openDatabase);
                }
                if (existsColumnInTable("TSTActivityAttributeMappingMaster", "DisplayRows", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE TSTActivityAttributeMappingMaster ADD DisplayRows INTEGER", openDatabase);
                }
                if (existsColumnInTable("DealerCropMapping", "CompanyId1", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE DealerCropMapping ADD CompanyId1 Integer", openDatabase);
                    executeRawQueryInDB("ALTER TABLE DealerCropMapping ADD CompanyId2 Integer", openDatabase);
                }
                if (existsColumnInTable("ContentTypeMaster", "isactive", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ContentTypeMaster ADD isactive Integer", openDatabase);
                    executeRawQueryInDB("ALTER TABLE ContentTypeMaster ADD CreatedBy VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE ContentTypeMaster ADD CreatedDate VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE ContentTypeMaster ADD UpdatedBy VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE ContentTypeMaster ADD UpdatedDate VARCHAR", openDatabase);
                }
                if (existsColumnInTable("pmcUserDetails", "HomeLatitude", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcUserDetails ADD HomeLatitude VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE pmcUserDetails ADD HomeLongitude VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE pmcUserDetails ADD HomeAddress VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE pmcUserDetails ADD homelocationupdateddate VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE pmcUserDetails ADD HomeLocationSyncStatus VARCHAR", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'RoleSegmentMapping'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('RoleSegmentMapping','2016-05-20 11:31:01')", openDatabase);
                }
                if (existsColumnInTable("FarmerCropDetails", "AcreageType", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FarmerCropDetails ADD AcreageType Integer", openDatabase);
                    executeRawQueryInDB("ALTER TABLE FarmerCropDetails ADD AcreageValue DOUBLE", openDatabase);
                }
                if (existsColumnInTable("fxCustomerRegistrationConfiguration", "IsSaarthieFarmerReadonly", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE fxCustomerRegistrationConfiguration ADD IsSaarthieFarmerReadonly Integer", openDatabase);
                }
                if (existsColumnInTable("FarmerMaster", "IsSaarthie", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FarmerMaster ADD IsSaarthie  varchar", openDatabase);
                }
                if (existsColumnInTable("FarmerMaster", "IsFavourite", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FarmerMaster ADD IsFavourite  Integer", openDatabase);
                }
                if (existsColumnInTable("FarmerMaster", "IsCropHero", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FarmerMaster ADD IsCropHero  varchar", openDatabase);
                }
                if (existsColumnInTable("FarmerMaster", "SaarthieFarmerID", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FarmerMaster ADD SaarthieFarmerID  varchar", openDatabase);
                }
                if (existsColumnInTable("FarmerMaster", "IsApprovedCropHero", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FarmerMaster ADD IsApprovedCropHero  varchar", openDatabase);
                }
                if (existsColumnInTable("DealerMaster", "IsFocused", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE DealerMaster ADD IsFocused  varchar", openDatabase);
                }
                if (existsColumnInTable("DealerMaster", "IsApprovedFocusedRetailer", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE DealerMaster ADD IsApprovedFocusedRetailer  varchar", openDatabase);
                }
                if (existsColumnInTable("ActivityMaster", "isRequiredForApprovalCompleted", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityMaster ADD isRequiredForApprovalCompleted INTEGER", openDatabase);
                }
                if (existsColumnInTable("ActivityMaster", "ActivityCostValue", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityMaster ADD ActivityCostValue INTEGER", openDatabase);
                }
                if (existsColumnInTable("ActivityMaster", "ActivityCostThresholdValue", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityMaster ADD ActivityCostThresholdValue INTEGER", openDatabase);
                }
                if (existsColumnInTable("DealerLandDetails", "DealerId", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE DealerLandDetails  ADD DealerId  varchar", openDatabase);
                }
                if (existsColumnInTable("FarmerMaster", "ActivityCostValueExecuted", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FarmerMaster  ADD ActivityCostValueExecuted  integer", openDatabase);
                }
                if (existsColumnInTable("SpotDemoMappingMaster", "IrrigationId", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE SpotDemoMappingMaster  ADD IrrigationId  integer", openDatabase);
                }
                if (existsColumnInTable("SpotDemoMappingMaster", "SeasonID", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE SpotDemoMappingMaster  ADD SeasonID  integer", openDatabase);
                }
                if (existsColumnInTable("SpotDemoMappingMaster", "ActivityCostValue", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE SpotDemoMappingMaster  ADD ActivityCostValue  varchar", openDatabase);
                }
                if (existsColumnInTable("SpotDemoMappingMaster", "ActivityCostThresholdValue", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE SpotDemoMappingMaster  ADD ActivityCostThresholdValue  varchar", openDatabase);
                }
                if (existsColumnInTable("SpotDemoMaster", "Grade", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE SpotDemoMaster  ADD Grade  varchar", openDatabase);
                    executeRawQueryInDB("ALTER TABLE SpotDemoMaster  ADD DemoType  varchar", openDatabase);
                    executeRawQueryInDB("ALTER TABLE SpotDemoMaster  ADD Column1  varchar", openDatabase);
                    executeRawQueryInDB("ALTER TABLE SpotDemoMaster  ADD Column2  varchar", openDatabase);
                }
                if (existsColumnInTable("SpotDemoMappingMaster", "Column1", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE SpotDemoMappingMaster  ADD Column1  varchar", openDatabase);
                    executeRawQueryInDB("ALTER TABLE SpotDemoMappingMaster  ADD Column2  varchar", openDatabase);
                }
                if (existsColumnInTable("pmcUserDetails", "IsDeviceActive", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcUserDetails ADD IsDeviceActive varchar", openDatabase);
                }
                if (existsColumnInTable("SpotDemoMappingMaster", "IrrigationType", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE SpotDemoMappingMaster ADD IrrigationType varchar", openDatabase);
                }
                if (existsColumnInTable("AttendanceDetails", "StartLatitude", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD StartKM Integer", openDatabase);
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD EndKM Integer", openDatabase);
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD Status Integer", openDatabase);
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD TransId VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD StartLatitude VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD StartLongitude VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD EndLatitude VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD EndLongitude VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD StartLocationTime VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD EndLocationTime VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD StartLocationAddress VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE AttendanceDetails ADD EndLocationAddress VARCHAR", openDatabase);
                }
                if (existsColumnInTable("SurveyActivityMaster", "IsEligibleForPointsConsideration", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE SurveyActivityMaster ADD IsEligibleForPointsConsideration Integer", openDatabase);
                }
                if (existsColumnInTable("SurveyActivityMaster", "IsEligibleForPointsConsideration", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE SurveyActivityMaster ADD IsEligibleForPointsConsideration Integer", openDatabase);
                }
                if (existsColumnInTable("pmcAssignmentActivityDetails", "isApproved", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcAssignmentActivityDetails ADD isApproved Integer", openDatabase);
                }
                if (existsColumnInTable("DealerMaster", "ApproveLatLong", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE DealerMaster ADD ApproveLatLong Integer", openDatabase);
                }
                if (existsColumnInTable("DealerMaster", "OutStandingValue", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE DealerMaster ADD OutStandingValue DOUBLE", openDatabase);
                }
                if (existsColumnInTable("DealerMaster", "Balance_Points", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE DealerMaster ADD Balance_Points DOUBLE", openDatabase);
                }
                if (existsColumnInTable("DealerMaster", "isRisingStar", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE DealerMaster ADD isRisingStar VARCHAR", openDatabase);
                }
                if (existsColumnInTable("DealerMaster", "SevenDaysProjectedOutstanding", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE DealerMaster ADD SevenDaysProjectedOutstanding DOUBLE", openDatabase);
                }
                if (existsColumnInTable("pmcUserDetails", "isCampaignRequired", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcUserDetails ADD isCampaignRequired Integer", openDatabase);
                }
                if (existsColumnInTable("ActivityMaster", "IsSupervisoryActivity", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityMaster ADD IsSupervisoryActivity Integer", openDatabase);
                    executeRawQueryInDB("ALTER TABLE ActivityMaster ADD Radius VARCHAR", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'TSTActivityMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('TSTActivityMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'TSTAttributeMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('TSTAttributeMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'TSTActivityAttributeMappingMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('TSTActivityAttributeMappingMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'FBFActivityMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('FBFActivityMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'FBFAttributeMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('FBFAttributeMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'FBFActivityAttributeMappingMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('FBFActivityAttributeMappingMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'SurveyActivityMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('SurveyActivityMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'SurveyActivityAttributeMappingMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('SurveyActivityAttributeMappingMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'SurveyAttributeMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('SurveyAttributeMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'SurveyActivitySegmentMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('SurveyActivitySegmentMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsRowInTable("SELECT * FROM MasterVersionTrackingSystem where TableName = 'SurveyActivitySegmentMappingMaster'", "ad", openDatabase)) {
                    executeRawQueryInDB("insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values('SurveyActivitySegmentMappingMaster','2015-05-20 11:31:01')", openDatabase);
                }
                if (existsColumnInTable("ActivityAttributeMappingMaster", "IsDisplayCount", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityAttributeMappingMaster ADD IsDisplayCount Integer", openDatabase);
                }
                if (existsColumnInTable("pmcUserDetails", "PasswordChangedDate", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcUserDetails ADD PasswordChangedDate VARCHAR", openDatabase);
                }
                if (existsColumnInTable("ActivityMaster", "IsEligibleForPointsConsideration", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityMaster ADD IsEligibleForPointsConsideration Integer", openDatabase);
                }
                if (existsColumnInTable("ActivityMaster", "IsEligibleForPointsConsideration", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityMaster ADD IsEligibleForPointsConsideration Integer", openDatabase);
                }
                if (existsColumnInTable("ActivityMaster", "ExpensesRequired", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityMaster ADD ExpensesRequired Integer", openDatabase);
                }
                if (existsColumnInTable("pmcAssignmentVisit", "CampaignID", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcAssignmentVisit ADD CampaignID VARCHAR", openDatabase);
                }
                if (existsColumnInTable("pmcAssignmentVisit", "Address", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE pmcAssignmentVisit ADD Address VARCHAR", openDatabase);
                }
                if (existsColumnInTable("ActivityMaster", "IsNeoCampaignRequired", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE ActivityMaster ADD IsNeoCampaignRequired Integer", openDatabase);
                }
                if (existsColumnInTable("FarmerMaster", "ParentSaarthieFarmerID", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FarmerMaster ADD ParentSaarthieFarmerID VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE FarmerMaster ADD FellowFarmerID VARCHAR", openDatabase);
                    executeRawQueryInDB("ALTER TABLE FarmerMaster ADD IsFellowFarmer  varchar", openDatabase);
                }
                if (existsColumnInTable("FarmerMaster", "FarmerSegmentationValue", openDatabase)) {
                    executeRawQueryInDB("ALTER TABLE FarmerMaster ADD FarmerSegmentationValue Integer", openDatabase);
                }
                dbInstance.closeDatabase();
                return true;
            } catch (Exception e) {
                PLog.e(TAG, e, 0);
                dbInstance.closeDatabase();
                return false;
            }
        } catch (Throwable th) {
            dbInstance.closeDatabase();
            throw th;
        }
    }

    private static synchronized void executeRawQueryInDB(String str, SQLiteDatabase sQLiteDatabase) throws Exception {
        synchronized (DBPatchQueries.class) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.execSQL(str);
                } catch (Exception e) {
                    PLog.e(TAG, e, 0);
                }
            }
        }
    }

    public static boolean existsColumnInTable(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        try {
            try {
                cursor = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
                if (cursor.getColumnIndex(str2) != -1) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return false;
                }
                if (cursor == null) {
                    return true;
                }
                cursor.close();
                return true;
            } catch (Exception e) {
                Log.d("existsColumnInTable", "checking whether a column exists in the table " + e.getMessage());
                PLog.e(TAG, e);
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static boolean existsRowInTable(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        try {
            try {
                cursor = sQLiteDatabase.rawQuery(str, null);
                if (cursor != null && cursor.getCount() > 0) {
                    if (cursor.moveToFirst()) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        return false;
                    }
                }
                if (cursor == null) {
                    return true;
                }
                cursor.close();
                return true;
            } catch (Exception e) {
                Log.d("existsColumnInTable", "checking whether a column exists in the table " + e.getMessage());
                PLog.e(TAG, e);
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static void checkForDBTblUpdate(String[] strArr, SQLiteDatabase sQLiteDatabase) {
        try {
            for (String str : strArr) {
                executeRawQueryInDB(str, sQLiteDatabase);
            }
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
        }
    }
}
