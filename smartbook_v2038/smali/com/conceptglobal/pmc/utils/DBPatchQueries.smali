.class public Lcom/conceptglobal/pmc/utils/DBPatchQueries;
.super Ljava/lang/Object;
.source "DBPatchQueries.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DB Patch Queries"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

.field private static sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static tables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 58

    .line 19
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    .line 21
    const-string v56, "CREATE TABLE IF NOT EXISTS pmcExpenseAssignmentActivityDetails (\"detailsID\" INTEGER PRIMARY KEY DEFAULT (0) ,\"ActivitySegmentId\" INTEGER DEFAULT (0) ,\"ActivityMasterId\" INTEGER DEFAULT (0) ,\"attributeValue\" NVARCHAR,\"isDone\" VARCHAR,\"createdBy\" INTEGER DEFAULT (0) ,\"createddate\" DATE TIME,\"updatedBy\" INTEGER DEFAULT (0) ,\"updatedDate\" DATE TIME,\"serverUpdatedStatus\" boolean,\"isPlanned\" INTEGER DEFAULT (0) ,\"pdaId\" INTEGER DEFAULT (0) ,\"notdoneRemark\" VARCHAR,\"ActivitySegmentValue\" VARCHAR,\"ActivityAssignmentId\" INTEGER,\"ActivityAttributeId\" INTEGER,\"ActivitySegmentName\" VARCHAR,\"TransId\" VARCHAR DEFAULT (0) ,\"PairId\" INTEGER DEFAULT (0) ,\"isTransactionDone\" INTEGER DEFAULT (0) ,\"ActivityExecutionSegmentId\" INTEGER DEFAULT (null) ,\"ActivityExecutionSegmentValue\" VARCHAR,\"ExecutionDate\" VARCHAR,\"AttributeId\" INTEGER,\"AssignmentId\" INTEGER,\"StartDate\" VARCHAR,\"EndDate\" VARCHAR,\"Person1\" VARCHAR,\"Person2\" VARCHAR,\"Location1\" VARCHAR,\"Location2\" VARCHAR,\"ContactNumber\" VARCHAR,\"ChildLevelId\" INTEGER DEFAULT (0) , \"PackageId\" INTEGER, \"isActive\" INTEGER, PackageName VARCHAR, territoryId INTEGER, latitude INTEGER, longitude INTEGER, ActivityCode VARCHAR,ParentActivityAssignmentID INTEGER,ParentActivityTransID INTEGER,isExpensesSubmited INTEGER )"

    const-string v57, "CREATE TABLE IF NOT EXISTS pmcExpenseAssignmentVisit ( `visitId` INTEGER NOT NULL, `assignmentId` INTEGER, `visitDescription` VARCHAR DEFAULT (null), `createdDate` DATETIME, `createdBy` INTEGER, `updatedDate` DATETIME, `updatedBy` INTEGER, `serverUpdatedStatus` BOOL, `pdaId` INTEGER, `farmerId` INTEGER, `latitude` DOUBLE, `longitude` DOUBLE, `remarks` VARCHAR, `activityAssignmentId` INTEGER, `TransactionId` VARCHAR, `GPSTimeStamp` datetime, PRIMARY KEY(`visitId`) )"

    const-string v1, "CREATE TABLE IF NOT EXISTS PackageActivitySuggestedValues(PackageActivitySuggestedValuesID int  PRIMARY KEY,PackageId int ,ActivityId int ,AttributeID int ,SuggestValueIDs varchar,ActualValueIDs varchar,LookupKey varchar,EffectiveFromDate datetime ,EffectiveToDate datetime ,isActive bit ,CreatedBy int ,Createddate datetime ,UpdatedBy int ,UpdatedDate datetime ,SuggestValueText varchar,ActualValueText varchar)"

    const-string v2, "Create table IF NOT EXISTS TestimonialMaster (TestimonialID Integer Primary Key autoincrement,ImageId long,CropId int,BrandId int,Remarks varchar,TestimonialTypeId int,Column1 varchar,Column2 varchar,Column3 varchar,Column4 varchar,Column5 varchar,CreatedBy int,CreatedDate datetime,UpdatedBy int,UpdatedDate datetime)"

    const-string v3, "CREATE TABLE  IF NOT EXISTS vwBrandPackMappingMaster (\'BrandPackId\' INTEGER PRIMARY KEY   NOT NULL  DEFAULT (0) ,\'BrandName\' VARCHAR  ,\'PackName\' VARCHAR  ,\'CompanyID\' INTEGER  ,\'CategoryID\' INTEGER  ,\'BrandID\' INTEGER  ,\'PackId\' INTEGER  ,\'Isactive\' INTEGER  ,\'Description\' VARCHAR  ,\'DisplayName\' VARCHAR  ,\'CreatedDate\' VARCHAR  ,\'UpdatedDate\' VARCHAR)"

    const-string v4, "CREATE TABLE IF NOT EXISTS ActivitySegmentMasterLn (\'ActivitySegmentLnId\' INTEGER NOT NULL,\'ActivitySegmentName\' VARCHAR,\'LanguangeId\' INTEGER,\'EffectiveFromDate\' VARCHAR ,\'EffectiveToDate\' VARCHAR,\'IsActive\' INTEGER,\'CreatedBy\' INTEGER,\'CreatedDate\' VARCHAR,\'UpdatedBy\' INTEGER,\'UpdatedDate\' VARCHAR,\'ActivitySegmentId\' INTEGER)"

    const-string v5, "CREATE TABLE IF NOT EXISTS vwFOstaffDetails (\'userid\' INTEGER PRIMARY KEY NOT NULL,\'FirstName\' VARCHAR,\'Mobile\' VARCHAR ,\'isActive\' VARCHAR,\'updateddate\' INTEGER,\'territoryId\' INTEGER)"

    const-string v6, "CREATE TABLE IF NOT EXISTS RulesMaster (ruleId INTEGER PRIMARY KEY  NOT NULL , rule VARCHAR, isActive INTEGER, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)"

    const-string v7, "CREATE TABLE IF NOT EXISTS Rulesconfiguration (rcId INTEGER PRIMARY KEY  NOT NULL , ruleId INTEGER, atrributeId INTEGER, ValidationattributeId INTEGER, module VARCHAR, isActive INTEGER, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)"

    const-string v8, "CREATE TABLE IF NOT EXISTS ComplaintParentCategoryMaster (ParentCategoryId INTEGER PRIMARY KEY  NOT NULL , CategoryName VARCHAR, IsActive INTEGER, CusSegmentId INTEGER, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)"

    const-string v9, "CREATE TABLE IF NOT EXISTS ComplaintCategoryMaster (CategoryId INTEGER PRIMARY KEY  NOT NULL , CategoryName VARCHAR, IsActive INTEGER, ParentCategoryId INTEGER, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)"

    const-string v10, "CREATE TABLE IF NOT EXISTS ActivitySummaryDetails (ActivityMasterId  INTEGER PRIMARY KEY  NOT NULL , Target  Integer, Plan  INTEGER, Actual  INTEGER, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)"

    const-string v11, "CREATE TABLE IF NOT EXISTS IMEINumbersMaster(IMEIId INTEGER PRIMARY KEY AUTOINCREMENT, IMEINumber1 TEXT, IMEINumber2 TEXT, PdaId INTEGER, Createddate TEXT, CreatedBy INTEGER, UpdatedBy INTEGER, UpdatedDate TEXT, isActive INTEGER)"

    const-string v12, "CREATE TABLE IF NOT EXISTS FOSVMapping(MappingId INTEGER PRIMARY KEY NOT NULL,FOUserId int,FOUserName varchar,SVUserId int,isActive int,CreatedBy int,Createddate varchar,UpdatedBy int,Updateddate varchar)"

    const-string v13, "CREATE TABLE IF NOT EXISTS ContentFaourites(FavouriteId INTEGER PRIMARY KEY autoincrement,ContentID int,ISFavourite int,serverUpdatedStatus boolean,CreatedBy int,Createddate varchar,UpdatedBy int,Updateddate varchar)"

    const-string v14, "CREATE TABLE IF NOT EXISTS PMCAttendanceDetails(AttendanceId INTEGER PRIMARY KEY AUTOINCREMENT,TransId varchar,FoUserId varchar,FoName varchar,SVUserId varchar,IsSelfAttendance Integer,OnLeave varchar,AttendanceDate varchar,FoTravel varchar,FoNightHalt varchar,SVApprovedTravel varchar,SVApprovedNightHalt varchar,SVApprovedDate varchar,IsApproved varchar,Latitude varchar,\n\tLongitude varchar,Comments varchar,PdaId INTEGER,IsProcessed int,ServerUpdatedDate datetime,serverUpdatedStatus boolean,CreatedBy varchar,CreatedDate varchar,UpdatedBy varchar,Updateddate varchar)"

    const-string v15, "CREATE TABLE IF NOT EXISTS DownLoadFileDetails(ContentID integer,DownloadID String,FilePath String)"

    const-string v16, "CREATE TABLE IF NOT EXISTS TSTActivityMaster ( `ActivityMasterId` INTEGER NOT NULL DEFAULT (null), `ActivityMasterName` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `CreatedDate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `isRequiredForApproval` INTEGER, `isLatLongRequired` INTEGER, `ActivityShortCode` VARCHAR, `ActivityColorCode` VARCHAR, `isIndependent` INTEGER, `isPicturesRequired` INTEGER, `DisplayType` varchar, `IsSelfAssigned` INTEGER, IsSupervisoryActivity Integer, Radius VARCHAR, PRIMARY KEY(`ActivityMasterId`) )"

    const-string v17, "CREATE TABLE IF NOT EXISTS TSTActivityAttributeMappingMaster ( `MappingId` INTEGER, `ActivityMasterId` INTEGER, `AttributeId` INTEGER, `isRequiredWeb` INTEGER, `isRequiredMobile` INTEGER, `isMandatoryWeb` INTEGER, `isMandatoryMobile` INTEGER, `ParentAttributeId` INTEGER, `ControlSequence` INTEGER, `AttributeKeyMappingId` INTEGER, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `SourceQuery` VARCHAR, `isFirstChild` INTEGER, `FilterAttributeId1` INTEGER, `FilterAttributeId2` INTEGER, `FilterAttributeId3` INTEGER, `DisplayType` varchar, `IsReadOnly` INTEGER,DisplayRows INTEGER, PRIMARY KEY(`MappingId`) )"

    const-string v18, "CREATE TABLE IF NOT EXISTS \"pmcTSTAssignmentActivityDetails\" (\"detailsID\" INTEGER PRIMARY KEY DEFAULT (0) ,\"ActivitySegmentId\" INTEGER DEFAULT (0) ,\"ActivityMasterId\" INTEGER DEFAULT (0) ,\"attributeValue\" NVARCHAR,\"isDone\" VARCHAR,\"createdBy\" INTEGER DEFAULT (0) ,\"createddate\" DATE TIME,\"updatedBy\" INTEGER DEFAULT (0) ,\"updatedDate\" DATE TIME,\"serverUpdatedStatus\" boolean,\"isPlanned\" INTEGER DEFAULT (0) ,\"pdaId\" INTEGER DEFAULT (0) ,\"notdoneRemark\" VARCHAR,\"ActivitySegmentValue\" VARCHAR,\"ActivityAssignmentId\" INTEGER,\"ActivityAttributeId\" INTEGER,\"ActivitySegmentName\" VARCHAR,\"TransId\" VARCHAR DEFAULT (0) ,\"PairId\" INTEGER DEFAULT (0) ,\"isTransactionDone\" INTEGER DEFAULT (0) ,\"ActivityExecutionSegmentId\" INTEGER DEFAULT (null) ,\"ActivityExecutionSegmentValue\" VARCHAR,\"ExecutionDate\" VARCHAR,\"AttributeId\" INTEGER,\"AssignmentId\" INTEGER,\"StartDate\" VARCHAR,\"EndDate\" VARCHAR,\"Person1\" VARCHAR,\"Person2\" VARCHAR,\"Location1\" VARCHAR,\"Location2\" VARCHAR,\"ContactNumber\" VARCHAR,\"ChildLevelId\" INTEGER DEFAULT (0) , \"PackageId\" INTEGER, \"isActive\" INTEGER, PackageName VARCHAR, territoryId INTEGER, latitude INTEGER, longitude INTEGER)"

    const-string v19, "CREATE TABLE IF NOT EXISTS pmcTSTAssignmentVisit ( `visitId` INTEGER NOT NULL, `assignmentId` INTEGER, `visitDescription` VARCHAR DEFAULT (null), `createdDate` DATETIME, `createdBy` INTEGER, `updatedDate` DATETIME, `updatedBy` INTEGER, `serverUpdatedStatus` BOOL, `pdaId` INTEGER, `farmerId` INTEGER, `latitude` DOUBLE, `longitude` DOUBLE, `remarks` VARCHAR, `activityAssignmentId` INTEGER, `TransactionId` VARCHAR, `GPSTimeStamp` datetime, PRIMARY KEY(`visitId`) )"

    const-string v20, "CREATE TABLE IF NOT EXISTS \"TSTAttributeMaster\" ( `AttributeId` INTEGER, `AttributeName` VARCHAR, `DisplayNameWeb` VARCHAR, `DisplayNameMobile` VARCHAR, `ControlType` VARCHAR, `AttributeSource` VARCHAR, `AttributeDisplayField` VARCHAR, `AttributeValueField` VARCHAR, `AttributeLookupKey` VARCHAR, `AttributeDefaultValue` VARCHAR, `isKeyAttribute` INTEGER, `ValidationType` VARCHAR, `ValidationExpression` VARCHAR, `MaxLength` INTEGER, `MinLength` INTEGER, `MinValue` VARCHAR, `MaxValue` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `AttributeQuery` VARCHAR, `DynamicColumn` VARCHAR, `DynamicCondition` VARCHAR, PRIMARY KEY(`AttributeId`) )"

    const-string v21, "CREATE TABLE IF NOT EXISTS FarmerMultiAttributeDetails (LineId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,FarmerId INTEGER,RespondentNo VARCHAR, ColumnMappingId INTEGER,AttributeValue VARCHAR, AttributeTypeName VARCHAR, PdaId INTEGER, IsProcessed INTEGER, ServerUpdatedStatus VARCHAR, ServerUpdatedDate  datetime, CreatedBy INTEGER, CreatedDate datetime, UpdatedBy INTEGER, UpdatedDate datetime)"

    const-string v22, "CREATE TABLE IF NOT EXISTS DealerMultiAttributeDetails(LineId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,ContactID varchar(100) NULL,ColumnMappingId int NULL,AttributeValue varchar NULL,AttributeTypeName varchar NULL,PdaId int NULL,IsProcessed int NULL,ServerUpdatedStatus varchar NULL,ServerUpdatedDate datetime NULL,CreatedBy int NULL,CreatedDate datetime NULL,UpdatedBy int NULL,UpdatedDate datetime NULL)"

    const-string v23, "CREATE TABLE IF NOT EXISTS TSTActivitySegmentMaster(ActivitySegmentId INTEGER PRIMARY KEY, ActivitySegmentName VARCHAR, ActivitySegmentTypeId INTEGER, RefrenceTableName VARCHAR, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR, PrimaryKeyColumn VARCHAR, isActive INTEGER, IsKeyColumnEncrypt INTEGER)"

    const-string v24, "CREATE TABLE IF NOT EXISTS TSTActivitySegmentMappingMaster (ActivitySegmentMappingId INTEGER PRIMARY KEY, ActivitySegmentId INTEGER, ActivityMasterId INTEGER, isActive INTEGER, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, Createddate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)"

    const-string v25, "CREATE TABLE IF NOT EXISTS FBFActivityMaster ( `ActivityMasterId` INTEGER NOT NULL DEFAULT (null), `ActivityMasterName` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `CreatedDate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `isRequiredForApproval` INTEGER, `isLatLongRequired` INTEGER, `ActivityShortCode` VARCHAR, `ActivityColorCode` VARCHAR, `isIndependent` INTEGER, `isPicturesRequired` INTEGER, `DisplayType` varchar, `IsSelfAssigned` INTEGER, IsSupervisoryActivity Integer, Radius VARCHAR, PRIMARY KEY(`ActivityMasterId`) )"

    const-string v26, "CREATE TABLE IF NOT EXISTS FBFActivityAttributeMappingMaster ( `MappingId` INTEGER, `ActivityMasterId` INTEGER, `AttributeId` INTEGER, `isRequiredWeb` INTEGER, `isRequiredMobile` INTEGER, `isMandatoryWeb` INTEGER, `isMandatoryMobile` INTEGER, `ParentAttributeId` INTEGER, `ControlSequence` INTEGER, `AttributeKeyMappingId` INTEGER, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `SourceQuery` VARCHAR, `isFirstChild` INTEGER, `FilterAttributeId1` INTEGER, `FilterAttributeId2` INTEGER, `FilterAttributeId3` INTEGER, `DisplayType` varchar, `IsReadOnly` INTEGER,DisplayRows INTEGER, PRIMARY KEY(`MappingId`) )"

    const-string v27, "CREATE TABLE IF NOT EXISTS \"pmcFBFAssignmentActivityDetails\" (\"detailsID\" INTEGER PRIMARY KEY DEFAULT (0) ,\"ActivitySegmentId\" INTEGER DEFAULT (0) ,\"ActivityMasterId\" INTEGER DEFAULT (0) ,\"attributeValue\" NVARCHAR,\"isDone\" VARCHAR,\"createdBy\" INTEGER DEFAULT (0) ,\"createddate\" DATE TIME,\"updatedBy\" INTEGER DEFAULT (0) ,\"updatedDate\" DATE TIME,\"serverUpdatedStatus\" boolean,\"isPlanned\" INTEGER DEFAULT (0) ,\"pdaId\" INTEGER DEFAULT (0) ,\"notdoneRemark\" VARCHAR,\"ActivitySegmentValue\" VARCHAR,\"ActivityAssignmentId\" INTEGER,\"ActivityAttributeId\" INTEGER,\"ActivitySegmentName\" VARCHAR,\"TransId\" VARCHAR DEFAULT (0) ,\"PairId\" INTEGER DEFAULT (0) ,\"isTransactionDone\" INTEGER DEFAULT (0) ,\"ActivityExecutionSegmentId\" INTEGER DEFAULT (null) ,\"ActivityExecutionSegmentValue\" VARCHAR,\"ExecutionDate\" VARCHAR,\"AttributeId\" INTEGER,\"AssignmentId\" INTEGER,\"StartDate\" VARCHAR,\"EndDate\" VARCHAR,\"Person1\" VARCHAR,\"Person2\" VARCHAR,\"Location1\" VARCHAR,\"Location2\" VARCHAR,\"ContactNumber\" VARCHAR,\"ChildLevelId\" INTEGER DEFAULT (0) , \"PackageId\" INTEGER, \"isActive\" INTEGER, PackageName VARCHAR, territoryId INTEGER, latitude INTEGER, longitude INTEGER)"

    const-string v28, "CREATE TABLE IF NOT EXISTS pmcFBFAssignmentVisit ( `visitId` INTEGER NOT NULL, `assignmentId` INTEGER, `visitDescription` VARCHAR DEFAULT (null), `createdDate` DATETIME, `createdBy` INTEGER, `updatedDate` DATETIME, `updatedBy` INTEGER, `serverUpdatedStatus` BOOL, `pdaId` INTEGER, `farmerId` INTEGER, `latitude` DOUBLE, `longitude` DOUBLE, `remarks` VARCHAR, `activityAssignmentId` INTEGER, `TransactionId` VARCHAR, `GPSTimeStamp` datetime, PRIMARY KEY(`visitId`) )"

    const-string v29, "CREATE TABLE IF NOT EXISTS \"FBFAttributeMaster\" ( `AttributeId` INTEGER, `AttributeName` VARCHAR, `DisplayNameWeb` VARCHAR, `DisplayNameMobile` VARCHAR, `ControlType` VARCHAR, `AttributeSource` VARCHAR, `AttributeDisplayField` VARCHAR, `AttributeValueField` VARCHAR, `AttributeLookupKey` VARCHAR, `AttributeDefaultValue` VARCHAR, `isKeyAttribute` INTEGER, `ValidationType` VARCHAR, `ValidationExpression` VARCHAR, `MaxLength` INTEGER, `MinLength` INTEGER, `MinValue` VARCHAR, `MaxValue` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `AttributeQuery` VARCHAR, `DynamicColumn` VARCHAR, `DynamicCondition` VARCHAR, PRIMARY KEY(`AttributeId`) )"

    const-string v30, "CREATE TABLE IF NOT EXISTS FBFActivitySegmentMaster(ActivitySegmentId INTEGER PRIMARY KEY, ActivitySegmentName VARCHAR, ActivitySegmentTypeId INTEGER, RefrenceTableName VARCHAR, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR, PrimaryKeyColumn VARCHAR, isActive INTEGER, IsKeyColumnEncrypt INTEGER)"

    const-string v31, "CREATE TABLE IF NOT EXISTS FBFActivitySegmentMappingMaster (ActivitySegmentMappingId INTEGER PRIMARY KEY, ActivitySegmentId INTEGER, ActivityMasterId INTEGER, isActive INTEGER, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, Createddate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)"

    const-string v32, "CREATE TABLE IF NOT EXISTS FBFActivityResolveTrack(TransId int,ActivityResolveId INTEGER PRIMARY KEY  NOT NULL,ActivityAssignmentId Varchar,ResolvedBy int,ResolveName VARCHAR,ResolveRemarks varchar,CreatedBy int,CreatedDate datetime,UpdatedBy int,UpdatedDate datetime, `serverUpdatedStatus` BOOL,ResolvedStatus VARCHAR,IsSMSRequired VARCHAR)"

    const-string v33, "CREATE TABLE IF NOT EXISTS SurveyActivityMaster ( `ActivityMasterId` INTEGER NOT NULL DEFAULT (null), `ActivityMasterName` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `CreatedDate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `isRequiredForApproval` INTEGER, `isLatLongRequired` INTEGER, `ActivityShortCode` VARCHAR, `ActivityColorCode` VARCHAR, `isIndependent` INTEGER, `isPicturesRequired` INTEGER, `DisplayType` varchar, `IsSelfAssigned` INTEGER, IsSupervisoryActivity Integer, Radius VARCHAR,isVideoRequired Integer, PRIMARY KEY(`ActivityMasterId`) )"

    const-string v34, "CREATE TABLE IF NOT EXISTS SurveyActivityAttributeMappingMaster ( `MappingId` INTEGER, `ActivityMasterId` INTEGER, `AttributeId` INTEGER, `isRequiredWeb` INTEGER, `isRequiredMobile` INTEGER, `isMandatoryWeb` INTEGER, `isMandatoryMobile` INTEGER, `ParentAttributeId` INTEGER, `ControlSequence` INTEGER, `AttributeKeyMappingId` INTEGER, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `SourceQuery` VARCHAR, `isFirstChild` INTEGER, `FilterAttributeId1` INTEGER, `FilterAttributeId2` INTEGER, `FilterAttributeId3` INTEGER, `DisplayType` varchar, `IsReadOnly` INTEGER,DisplayRows INTEGER, PRIMARY KEY(`MappingId`) )"

    const-string v35, "CREATE TABLE IF NOT EXISTS pmcSurveyAssignmentActivityDetails (\"detailsID\" INTEGER PRIMARY KEY DEFAULT (0) ,\"ActivitySegmentId\" INTEGER DEFAULT (0) ,\"ActivityMasterId\" INTEGER DEFAULT (0) ,\"attributeValue\" NVARCHAR,\"isDone\" VARCHAR,\"createdBy\" INTEGER DEFAULT (0) ,\"createddate\" DATE TIME,\"updatedBy\" INTEGER DEFAULT (0) ,\"updatedDate\" DATE TIME,\"serverUpdatedStatus\" boolean,\"isPlanned\" INTEGER DEFAULT (0) ,\"pdaId\" INTEGER DEFAULT (0) ,\"notdoneRemark\" VARCHAR,\"ActivitySegmentValue\" VARCHAR,\"ActivityAssignmentId\" INTEGER,\"ActivityAttributeId\" INTEGER,\"ActivitySegmentName\" VARCHAR,\"TransId\" VARCHAR DEFAULT (0) ,\"PairId\" INTEGER DEFAULT (0) ,\"isTransactionDone\" INTEGER DEFAULT (0) ,\"ActivityExecutionSegmentId\" INTEGER DEFAULT (null) ,\"ActivityExecutionSegmentValue\" VARCHAR,\"ExecutionDate\" VARCHAR,\"AttributeId\" INTEGER,\"AssignmentId\" INTEGER,\"StartDate\" VARCHAR,\"EndDate\" VARCHAR,\"Person1\" VARCHAR,\"Person2\" VARCHAR,\"Location1\" VARCHAR,\"Location2\" VARCHAR,\"ContactNumber\" VARCHAR,\"ChildLevelId\" INTEGER DEFAULT (0) , \"PackageId\" INTEGER, \"isActive\" INTEGER, PackageName VARCHAR, territoryId INTEGER, latitude INTEGER, longitude INTEGER)"

    const-string v36, "CREATE TABLE IF NOT EXISTS pmcSurveyAssignmentVisit ( `visitId` INTEGER NOT NULL, `assignmentId` INTEGER, `visitDescription` VARCHAR DEFAULT (null), `createdDate` DATETIME, `createdBy` INTEGER, `updatedDate` DATETIME, `updatedBy` INTEGER, `serverUpdatedStatus` BOOL, `pdaId` INTEGER, `farmerId` INTEGER, `latitude` DOUBLE, `longitude` DOUBLE, `remarks` VARCHAR, `activityAssignmentId` INTEGER, `TransactionId` VARCHAR, `GPSTimeStamp` datetime, PRIMARY KEY(`visitId`) )"

    const-string v37, "CREATE TABLE IF NOT EXISTS SurveyAttributeMaster ( `AttributeId` INTEGER, `AttributeName` VARCHAR, `DisplayNameWeb` VARCHAR, `DisplayNameMobile` VARCHAR, `ControlType` VARCHAR, `AttributeSource` VARCHAR, `AttributeDisplayField` VARCHAR, `AttributeValueField` VARCHAR, `AttributeLookupKey` VARCHAR, `AttributeDefaultValue` VARCHAR, `isKeyAttribute` INTEGER, `ValidationType` VARCHAR, `ValidationExpression` VARCHAR, `MaxLength` INTEGER, `MinLength` INTEGER, `MinValue` VARCHAR, `MaxValue` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `AttributeQuery` VARCHAR, `DynamicColumn` VARCHAR, `DynamicCondition` VARCHAR, PRIMARY KEY(`AttributeId`) )"

    const-string v38, "CREATE TABLE IF NOT EXISTS SurveyActivitySegmentMaster(ActivitySegmentId INTEGER PRIMARY KEY, ActivitySegmentName VARCHAR, ActivitySegmentTypeId INTEGER, RefrenceTableName VARCHAR, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, CreatedDate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR, PrimaryKeyColumn VARCHAR, isActive INTEGER, IsKeyColumnEncrypt INTEGER)"

    const-string v39, "CREATE TABLE IF NOT EXISTS SurveyActivitySegmentMappingMaster (ActivitySegmentMappingId INTEGER PRIMARY KEY, ActivitySegmentId INTEGER, ActivityMasterId INTEGER, isActive INTEGER, EffectiveFromDate VARCHAR, EffectiveToDate VARCHAR, CreatedBy INTEGER, Createddate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)"

    const-string v40, "CREATE TABLE IF NOT EXISTS ActivityAttributesRulesConfiguration (RulesConfigId INTEGER PRIMARY KEY AUTOINCREMENT,  ActivityMasterId INTEGER,AttributeId INTEGER,ParentAttributeId INTEGER,ParentAttributeValueId INTEGER,OperationType  VARCHAR,OperationMode Varchar,isActive INTEGER,  CreatedBy INTEGER, Createddate VARCHAR, UpdatedBy INTEGER, UpdatedDate VARCHAR)"

    const-string v41, "CREATE TABLE IF NOT EXISTS POPMaster(POPID int PRIMARY KEY NOT NULL,CropCategory varchar NULL,CropName vrchar NULL,\n    ThumbnailURL varchar NULL,LocalThumnailpath varchar NULL,HTMLZIPURL varchar NULL,LocalHTMLZIPURL varchar NULL,HTMLStartPage varchar NULL,\n    VersionNo int NULL,DeviceVersionNo int NULL, Type varchar NULL,Status int NULL,\n    CreatedBy int NULL,CreatedDate datetime NULL,UpdatedBy int NULL,UpdatedDate datetime NULL)"

    const-string v42, "CREATE TABLE IF NOT EXISTS PricesDisplay(LineId INTEGER PRIMARY KEY AUTOINCREMENT, State TEXT,District TEXT,Market TEXT,Commodity TEXT,Variety TEXT,ArrivaleDate TEXT,MinPrice TEXT,MaxPrice TEXT,MondalPrice TEXT)"

    const-string v43, "CREATE TABLE IF NOT EXISTS Log4Trace(CreatedID INTEGER PRIMARY KEY AUTOINCREMENT,PdaId INTEGER,CreatedDate TEXT,ActivityID TEXT,Action TEXT,ScreenName TEXT,UserId INTEGER,serverUpdateStatus boolean)"

    const-string v44, "CREATE TABLE IF NOT EXISTS Log4Pi(LineId INTEGER PRIMARY KEY AUTOINCREMENT,Action TEXT,ModuleTypeId INTEGER,PrimaryKeyId INTEGER,PrimaryKeyCoulmn TEXT,ActionValue TEXT,UserId INTEGER,PdaId INTEGER,CreatedDate TEXT,serverUpdateStatus boolean)"

    const-string v45, "CREATE TABLE IF NOT EXISTS RoleActivityMapping(LineId Varchar primary key NOT NULL,RoleId integer,ActivityId integer,IsActive integer,CreatedBy integer,CreatedDate Varchar,UpdatedBy integer,UpdatedDate Varchar)"

    const-string v46, "CREATE TABLE IF NOT EXISTS RoleSegmentMapping(LineId Varchar primary key NOT NULL,RoleId integer,SegmentId integer,IsActive integer,CreatedBy integer,CreatedDate Varchar,UpdatedBy integer,UpdatedDate Varchar)"

    const-string v47, "CREATE TABLE IF NOT EXISTS FavouriteFarmer(FavouriteId Integer auto increment,RespondentNo nvarchar PRIMARY KEY,UserId Integer,PdaId Integer ,IsFavourite Integer,RoleId Integer,ServerUpdatedStatus text,CreatedBy Integer,CreatedDate nvarchar,UpdatedBy Integer,UpdatedDate nvarchar)"

    const-string v48, "CREATE TABLE IF NOT EXISTS FavouriteFarmerAttribute(RespondentNo varchar PRIMARY KEY,TotalSale real,IsHNF Integer,IsKAM Integer,Attribute1 varchar,Attribute2 varchar,Attribute3 varchar,Attribute4 varchar,Attribute5 varchar,ServerUpdatedStatus text,CreatedBy int,CreatedDate TEXT,UpdatedBy int,UpdatedDate TEXT)"

    const-string v49, "CREATE TABLE IF NOT EXISTS FavouriteRetailer(FavouriteRetailerId Integer auto increment,ContactId nvarchar PRIMARY KEY,UserId Integer,PdaId Integer,IsFavourite Integer,IsRROFavourite Integer,RoleId Integer,ServerUpdatedStatus text,CreatedBy Integer,CreatedDate TEXT,UpdatedBy Integer,UpdatedDate TEXT)"

    const-string v50, "CREATE TABLE IF NOT EXISTS DealerLandDetails ( `DetailsID` INTEGER PRIMARY KEY AUTOINCREMENT, `ContactId` int NOT NULL, `LandName` varchar, `Acreages` decimal ( 18 , 2 ), `Address` varchar, `IsOnField` varchar,`landmark` varchar, `Latitude` varchar, `Longitude` varchar, `IsActive` int, `CreatedBy` int, `CreatedDate` datetime, `UpdatedBy` int, `UpdatedDate` datetime, `serverupdatedstatus` boolean DEFAULT (null), `pdaid` INTEGER,status  int ,  `GPSTimeStamp` datetime, `ServerDetailsID` INTEGER )"

    const-string v51, "CREATE TABLE  IF NOT EXISTS ActivityImageMappingMaster(MappingId int PRIMARY KEY NOT NULL, ActivityMasterId int,ImageTypeId int,IsActive int,IsMandatory int,SequenceID int,ConfigId int,CreatedBy int,CreatedDate datetime,UpdatedBy int,UpdatedDate datetime)"

    const-string v52, "CREATE TABLE IF NOT EXISTS ResignedUsers(ID INTEGER PRIMARY KEY   NOT NULL,pdaid varchar,applieddate datetime,reason varchar,description varchar,lastworkingdate datetime,resignationstatus int,reviewedby int,reviweddate datetime,ServerUpdatedStatus ,reviewedbyname varchar,createdby int,createddate datetime,updatedby datetime,updateddate datetime)"

    const-string v53, "CREATE TABLE IF NOT EXISTS ApplyLeave(AttendanceID Integer PRIMARY KEY, Fromdate varchar,ToDate varchar,LeaveType varchar,ReasonType varchar,NoOfDays int,Remarks varchar,CreatedBy INTEGER,CreatedDate TEXT,UpdatedBy INTEGER,UpdatedDate TEXT,serverupdatedstatus boolean DEFAULT (null) ,pdaid INTEGER)"

    const-string v54, "CREATE TABLE IF NOT EXISTS ExpenseAttributeMaster ( `AttributeId` INTEGER, `AttributeName` VARCHAR, `DisplayNameWeb` VARCHAR, `DisplayNameMobile` VARCHAR, `ControlType` VARCHAR, `AttributeSource` VARCHAR, `AttributeDisplayField` VARCHAR, `AttributeValueField` VARCHAR, `AttributeLookupKey` VARCHAR, `AttributeDefaultValue` VARCHAR, `isKeyAttribute` INTEGER, `ValidationType` VARCHAR, `ValidationExpression` VARCHAR, `MaxLength` INTEGER, `MinLength` INTEGER, `MinValue` VARCHAR, `MaxValue` VARCHAR, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `AttributeQuery` VARCHAR, `DynamicColumn` VARCHAR, `DynamicCondition` VARCHAR, PRIMARY KEY(`AttributeId`) )"

    const-string v55, "CREATE TABLE IF NOT EXISTS ExpenseActivityAttributeMappingMaster ( `MappingId` INTEGER, `ActivityMasterId` INTEGER, `AttributeId` INTEGER, `isRequiredWeb` INTEGER, `isRequiredMobile` INTEGER, `isMandatoryWeb` INTEGER, `isMandatoryMobile` INTEGER, `ParentAttributeId` INTEGER, `ControlSequence` INTEGER, `AttributeKeyMappingId` INTEGER, `isActive` INTEGER, `EffectiveFromDate` VARCHAR, `EffectiveToDate` VARCHAR, `CreatedBy` INTEGER, `Createddate` VARCHAR, `UpdatedBy` INTEGER, `UpdatedDate` VARCHAR, `SourceQuery` VARCHAR, `isFirstChild` INTEGER, `FilterAttributeId1` INTEGER, `FilterAttributeId2` INTEGER, `FilterAttributeId3` INTEGER, `DisplayType` varchar, `IsReadOnly` INTEGER, `DisplayRows` INTEGER, PRIMARY KEY(`MappingId`) )"

    filled-new-array/range {v1 .. v57}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->tables:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ExecuteDBPatchQueries(Landroid/content/Context;)Z
    .locals 24

    .line 109
    const-string v1, "isVideoRequired"

    const-string v2, "RegionWiseCropDosage"

    const-string v3, "ActivityImageDetails"

    const-string v4, "LastVisitedDate"

    const-string v5, "UsageDetails"

    const-string v6, "isApproved"

    const-string v7, "pmcAssignmentActivityDetails"

    const-string v8, "ExpensesRequired"

    const-string v9, "CropBrandMappingMaster"

    const-string v10, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'PackageActivitySuggestedValues\'"

    const-string v11, "pmcAssignmentVisit"

    const-string v12, "pmcExpenseAssignmentActivityDetails"

    const-string v13, "IsEligibleForPointsConsideration"

    const-string v14, "pmcUserDetails"

    const-string v15, "ContentMaster"

    move-object/from16 p0, v13

    const-string v13, "SpotDemoMappingMaster"

    move-object/from16 v16, v13

    const-string v13, "DealerMaster"

    move-object/from16 v17, v14

    const-string v14, "ActivityMaster"

    move-object/from16 v18, v1

    const-string v1, "FarmerMaster"

    move-object/from16 v19, v2

    const-string v2, "ad"

    move-object/from16 v20, v3

    .line 0
    const-string v3, "insert into ConfigurableLookup (itemKey,itemValue) values(\'RegistrationDate\',\'"

    .line 113
    :try_start_0
    sget-object v21, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v21}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    move-object/from16 v21, v4

    .line 114
    sget-object v4, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->tables:[Ljava/lang/String;

    invoke-static {v4, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->checkForDBTblUpdate([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    const-string v4, "delete from Log4Net where serverUpdateStatus = \'0\'"

    invoke-static {v4, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 119
    const-string v4, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'ExpenseAttributeMaster\'"

    invoke-static {v4, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    const-string v4, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'ExpenseAttributeMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v4, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    :cond_0
    const-string v4, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'ExpenseActivityAttributeMappingMaster\'"

    invoke-static {v4, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    const-string v4, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'ExpenseActivityAttributeMappingMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v4, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 127
    :cond_1
    invoke-static {v10, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v23, v15

    .line 128
    const-string v15, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'PackageActivitySuggestedValues\',\'2015-05-20 11:31:01\')"

    if-eqz v4, :cond_2

    .line 129
    :try_start_1
    invoke-static {v15, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    :cond_2
    const-string v4, "SELECT * FROM ConfigurableLookup where itemKey = \'RegistrationDate\'"

    invoke-static {v4, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime20mins()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\')"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 136
    :cond_3
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'RoleActivityMapping\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'RoleActivityMapping\',\'2016-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 140
    :cond_4
    invoke-static {v10, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 142
    invoke-static {v15, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    :cond_5
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'TSTActivitySegmentMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 146
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'TSTActivitySegmentMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    :cond_6
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'TSTActivitySegmentMappingMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 150
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'TSTActivitySegmentMappingMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    :cond_7
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'FBFActivitySegmentMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 154
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'FBFActivitySegmentMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 156
    :cond_8
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'FBFActivitySegmentMappingMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 158
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'FBFActivitySegmentMappingMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 160
    :cond_9
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'ActivityAttributesRulesConfiguration\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 162
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'ActivityAttributesRulesConfiguration\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 164
    :cond_a
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'ActivityImageMappingMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 166
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'ActivityImageMappingMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    :cond_b
    const-string v3, "DosageperAcre"

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 170
    const-string v3, "ALTER TABLE CropBrandMappingMaster ADD DosageperAcre real"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 172
    :cond_c
    const-string v3, "DosageperLt"

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 174
    const-string v3, "ALTER TABLE CropBrandMappingMaster ADD DosageperLt real"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 177
    :cond_d
    invoke-static {v14, v8, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 179
    const-string v3, "ALTER TABLE ActivityMaster ADD ExpensesRequired VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 181
    :cond_e
    const-string v3, "isExpensesSubmited"

    invoke-static {v7, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 183
    const-string v3, "ALTER TABLE pmcAssignmentActivityDetails ADD isExpensesSubmited Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 185
    :cond_f
    const-string v3, "ApprovalStatus"

    invoke-static {v12, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 187
    const-string v3, "ALTER TABLE pmcExpenseAssignmentActivityDetails ADD ApprovalStatus Integer "

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 189
    :cond_10
    const-string v3, "ApprovedBy"

    invoke-static {v12, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 191
    const-string v3, "ALTER TABLE pmcExpenseAssignmentActivityDetails ADD ApprovedBy Integer "

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 193
    :cond_11
    invoke-static {v12, v6, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 195
    const-string v3, "ALTER TABLE pmcExpenseAssignmentActivityDetails ADD isApproved Integer "

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 197
    :cond_12
    const-string v3, "SyncStatus"

    invoke-static {v5, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 199
    const-string v3, "ALTER TABLE UsageDetails ADD SyncStatus boolean"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 201
    :cond_13
    const-string v3, "Column5"

    invoke-static {v1, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 203
    const-string v3, "ALTER TABLE FarmerMaster ADD Column5  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 205
    :cond_14
    const-string v3, "ModuleTypeId"

    invoke-static {v5, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 207
    const-string v3, "ALTER TABLE UsageDetails ADD ModuleTypeId int"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 208
    const-string v3, "ALTER TABLE UsageDetails ADD Action text"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 209
    const-string v3, "ALTER TABLE UsageDetails ADD ActionValue int"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 210
    const-string v3, "ALTER TABLE UsageDetails ADD PrimaryKeyId int"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 211
    const-string v3, "ALTER TABLE UsageDetails ADD PrimaryKeyCoulmn text"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    :cond_15
    const-string v3, "StartTimeDevice"

    invoke-static {v11, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 215
    const-string v3, "ALTER TABLE pmcAssignmentVisit ADD StartTimeDevice varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 216
    const-string v3, "ALTER TABLE pmcAssignmentVisit ADD StopTimeDevice varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    const-string v3, "ALTER TABLE pmcAssignmentVisit ADD StartTimeGPS varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 218
    const-string v3, "ALTER TABLE pmcAssignmentVisit ADD StopTimeGPS varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 220
    :cond_16
    const-string v3, "ModuleType"

    move-object/from16 v4, v23

    invoke-static {v4, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 222
    const-string v3, "ALTER TABLE ContentMaster ADD ModuleType int"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 224
    :cond_17
    const-string v3, "IsDownloadable"

    invoke-static {v4, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 226
    const-string v3, "ALTER TABLE ContentMaster ADD IsDownloadable int"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 228
    :cond_18
    const-string v3, "IsDeleted"

    invoke-static {v4, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 230
    const-string v3, "ALTER TABLE ContentMaster ADD IsDeleted int"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 231
    const-string v3, "ALTER TABLE ContentMaster ADD IsSharable int"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 232
    const-string v3, "ALTER TABLE ContentMaster ADD IsBanner int"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 234
    :cond_19
    const-string v3, "FBFActivityResolveTrack"

    const-string v5, "serverUpdatedStatus"

    invoke-static {v3, v5, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 236
    const-string v3, "ALTER TABLE FBFActivityResolveTrack ADD serverUpdatedStatus BOOL"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 237
    const-string v3, "ALTER TABLE FBFActivityResolveTrack ADD ResolvedStatus VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 238
    const-string v3, "ALTER TABLE FBFActivityResolveTrack ADD IsSMSRequired VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 240
    :cond_1a
    const-string v3, "LocalThumbnail"

    invoke-static {v4, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 242
    const-string v3, "ALTER TABLE ContentMaster ADD LocalThumbnail VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 244
    :cond_1b
    const-string v3, "pmcLastVisitDetails"

    const-string v5, "Latitude"

    invoke-static {v3, v5, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 246
    const-string v3, "ALTER TABLE pmcLastVisitDetails ADD Latitude VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 247
    const-string v3, "ALTER TABLE pmcLastVisitDetails ADD Longitude VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1c
    move-object/from16 v3, v21

    .line 250
    invoke-static {v1, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 252
    const-string v5, "ALTER TABLE FarmerMaster ADD LastVisitedDate  varchar"

    invoke-static {v5, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1d
    move-object/from16 v5, v22

    .line 254
    invoke-static {v5, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 256
    const-string v3, "ALTER TABLE DealerMaster ADD LastVisitedDate  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 260
    :cond_1e
    const-string v3, "ContentTypeId"

    move-object/from16 v9, v20

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 262
    const-string v3, "ALTER TABLE ActivityImageDetails ADD ContentTypeId Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 265
    :cond_1f
    const-string v3, "IsCompressed"

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 267
    const-string v3, "ALTER TABLE ActivityImageDetails ADD IsCompressed "

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 269
    :cond_20
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'POPMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 271
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'POPMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 275
    :cond_21
    const-string v3, "ActivityId"

    move-object/from16 v9, v19

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 277
    const-string v3, "ALTER TABLE RegionWiseCropDosage ADD ActivityId Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 279
    :cond_22
    const-string v3, "DemoID"

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 281
    const-string v3, "ALTER TABLE RegionWiseCropDosage ADD DemoID Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 283
    :cond_23
    const-string v3, "DownLoadFileDetails"

    const-string v9, "Type"

    invoke-static {v3, v9, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 285
    const-string v3, "ALTER TABLE DownLoadFileDetails ADD Type Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 287
    :cond_24
    const-string v3, "TSTActivityMaster"

    move-object/from16 v9, v18

    invoke-static {v3, v9, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 289
    const-string v3, "ALTER TABLE TSTActivityMaster ADD isVideoRequired Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 291
    :cond_25
    const-string v3, "FBFActivityMaster"

    invoke-static {v3, v9, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 293
    const-string v3, "ALTER TABLE FBFActivityMaster ADD isVideoRequired Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 296
    :cond_26
    const-string v3, "ContextId"

    invoke-static {v4, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 298
    const-string v3, "ALTER TABLE ContentMaster ADD ContextId Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 301
    :cond_27
    const-string v3, "TSTActivityAttributeMappingMaster"

    const-string v4, "DisplayRows"

    invoke-static {v3, v4, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 303
    const-string v3, "ALTER TABLE TSTActivityAttributeMappingMaster ADD DisplayRows INTEGER"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 307
    :cond_28
    const-string v3, "DealerCropMapping"

    const-string v4, "CompanyId1"

    invoke-static {v3, v4, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 309
    const-string v3, "ALTER TABLE DealerCropMapping ADD CompanyId1 Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 310
    const-string v3, "ALTER TABLE DealerCropMapping ADD CompanyId2 Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 313
    :cond_29
    const-string v3, "ContentTypeMaster"

    const-string v4, "isactive"

    invoke-static {v3, v4, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 315
    const-string v3, "ALTER TABLE ContentTypeMaster ADD isactive Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 316
    const-string v3, "ALTER TABLE ContentTypeMaster ADD CreatedBy VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 317
    const-string v3, "ALTER TABLE ContentTypeMaster ADD CreatedDate VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 318
    const-string v3, "ALTER TABLE ContentTypeMaster ADD UpdatedBy VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 319
    const-string v3, "ALTER TABLE ContentTypeMaster ADD UpdatedDate VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 321
    :cond_2a
    const-string v3, "HomeLatitude"

    move-object/from16 v4, v17

    invoke-static {v4, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 323
    const-string v3, "ALTER TABLE pmcUserDetails ADD HomeLatitude VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 324
    const-string v3, "ALTER TABLE pmcUserDetails ADD HomeLongitude VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 325
    const-string v3, "ALTER TABLE pmcUserDetails ADD HomeAddress VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 326
    const-string v3, "ALTER TABLE pmcUserDetails ADD homelocationupdateddate VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 327
    const-string v3, "ALTER TABLE pmcUserDetails ADD HomeLocationSyncStatus VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 330
    :cond_2b
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'RoleSegmentMapping\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 332
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'RoleSegmentMapping\',\'2016-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 335
    :cond_2c
    const-string v3, "FarmerCropDetails"

    const-string v9, "AcreageType"

    invoke-static {v3, v9, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 337
    const-string v3, "ALTER TABLE FarmerCropDetails ADD AcreageType Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 338
    const-string v3, "ALTER TABLE FarmerCropDetails ADD AcreageValue DOUBLE"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 340
    :cond_2d
    const-string v3, "fxCustomerRegistrationConfiguration"

    const-string v9, "IsSaarthieFarmerReadonly"

    invoke-static {v3, v9, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 342
    const-string v3, "ALTER TABLE fxCustomerRegistrationConfiguration ADD IsSaarthieFarmerReadonly Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 344
    :cond_2e
    const-string v3, "IsSaarthie"

    invoke-static {v1, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 346
    const-string v3, "ALTER TABLE FarmerMaster ADD IsSaarthie  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 348
    :cond_2f
    const-string v3, "IsFavourite"

    invoke-static {v1, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 350
    const-string v3, "ALTER TABLE FarmerMaster ADD IsFavourite  Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 353
    :cond_30
    const-string v3, "IsCropHero"

    invoke-static {v1, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 355
    const-string v3, "ALTER TABLE FarmerMaster ADD IsCropHero  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 357
    :cond_31
    const-string v3, "SaarthieFarmerID"

    invoke-static {v1, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 359
    const-string v3, "ALTER TABLE FarmerMaster ADD SaarthieFarmerID  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 361
    :cond_32
    const-string v3, "IsApprovedCropHero"

    invoke-static {v1, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 363
    const-string v3, "ALTER TABLE FarmerMaster ADD IsApprovedCropHero  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 365
    :cond_33
    const-string v3, "IsFocused"

    invoke-static {v5, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 367
    const-string v3, "ALTER TABLE DealerMaster ADD IsFocused  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 369
    :cond_34
    const-string v3, "IsApprovedFocusedRetailer"

    invoke-static {v5, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 371
    const-string v3, "ALTER TABLE DealerMaster ADD IsApprovedFocusedRetailer  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 373
    :cond_35
    const-string v3, "isRequiredForApprovalCompleted"

    invoke-static {v14, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 375
    const-string v3, "ALTER TABLE ActivityMaster ADD isRequiredForApprovalCompleted INTEGER"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 377
    :cond_36
    const-string v3, "ActivityCostValue"

    invoke-static {v14, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 379
    const-string v3, "ALTER TABLE ActivityMaster ADD ActivityCostValue INTEGER"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 381
    :cond_37
    const-string v3, "ActivityCostThresholdValue"

    invoke-static {v14, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 383
    const-string v3, "ALTER TABLE ActivityMaster ADD ActivityCostThresholdValue INTEGER"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 386
    :cond_38
    const-string v3, "DealerLandDetails"

    const-string v9, "DealerId"

    invoke-static {v3, v9, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 388
    const-string v3, "ALTER TABLE DealerLandDetails  ADD DealerId  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 391
    :cond_39
    const-string v3, "ActivityCostValueExecuted"

    invoke-static {v1, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 393
    const-string v3, "ALTER TABLE FarmerMaster  ADD ActivityCostValueExecuted  integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 396
    :cond_3a
    const-string v3, "IrrigationId"

    move-object/from16 v9, v16

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 398
    const-string v3, "ALTER TABLE SpotDemoMappingMaster  ADD IrrigationId  integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 400
    :cond_3b
    const-string v3, "SeasonID"

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 402
    const-string v3, "ALTER TABLE SpotDemoMappingMaster  ADD SeasonID  integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 404
    :cond_3c
    const-string v3, "ActivityCostValue"

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 406
    const-string v3, "ALTER TABLE SpotDemoMappingMaster  ADD ActivityCostValue  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 408
    :cond_3d
    const-string v3, "ActivityCostThresholdValue"

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 410
    const-string v3, "ALTER TABLE SpotDemoMappingMaster  ADD ActivityCostThresholdValue  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 412
    :cond_3e
    const-string v3, "SpotDemoMaster"

    const-string v10, "Grade"

    invoke-static {v3, v10, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 414
    const-string v3, "ALTER TABLE SpotDemoMaster  ADD Grade  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 415
    const-string v3, "ALTER TABLE SpotDemoMaster  ADD DemoType  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 416
    const-string v3, "ALTER TABLE SpotDemoMaster  ADD Column1  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 417
    const-string v3, "ALTER TABLE SpotDemoMaster  ADD Column2  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 419
    :cond_3f
    const-string v3, "Column1"

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 421
    const-string v3, "ALTER TABLE SpotDemoMappingMaster  ADD Column1  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 422
    const-string v3, "ALTER TABLE SpotDemoMappingMaster  ADD Column2  varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 424
    :cond_40
    const-string v3, "IsDeviceActive"

    invoke-static {v4, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 426
    const-string v3, "ALTER TABLE pmcUserDetails ADD IsDeviceActive varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 429
    :cond_41
    const-string v3, "IrrigationType"

    invoke-static {v9, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 431
    const-string v3, "ALTER TABLE SpotDemoMappingMaster ADD IrrigationType varchar"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 435
    :cond_42
    const-string v3, "AttendanceDetails"

    const-string v9, "StartLatitude"

    invoke-static {v3, v9, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 437
    const-string v3, "ALTER TABLE AttendanceDetails ADD StartKM Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 438
    const-string v3, "ALTER TABLE AttendanceDetails ADD EndKM Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 439
    const-string v3, "ALTER TABLE AttendanceDetails ADD Status Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 440
    const-string v3, "ALTER TABLE AttendanceDetails ADD TransId VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 441
    const-string v3, "ALTER TABLE AttendanceDetails ADD StartLatitude VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 442
    const-string v3, "ALTER TABLE AttendanceDetails ADD StartLongitude VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 443
    const-string v3, "ALTER TABLE AttendanceDetails ADD EndLatitude VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 444
    const-string v3, "ALTER TABLE AttendanceDetails ADD EndLongitude VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 445
    const-string v3, "ALTER TABLE AttendanceDetails ADD StartLocationTime VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 446
    const-string v3, "ALTER TABLE AttendanceDetails ADD EndLocationTime VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 447
    const-string v3, "ALTER TABLE AttendanceDetails ADD StartLocationAddress VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 448
    const-string v3, "ALTER TABLE AttendanceDetails ADD EndLocationAddress VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 450
    :cond_43
    const-string v3, "SurveyActivityMaster"

    move-object/from16 v9, p0

    invoke-static {v3, v9, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 452
    const-string v3, "ALTER TABLE SurveyActivityMaster ADD IsEligibleForPointsConsideration Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 455
    :cond_44
    const-string v3, "SurveyActivityMaster"

    invoke-static {v3, v9, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 457
    const-string v3, "ALTER TABLE SurveyActivityMaster ADD IsEligibleForPointsConsideration Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 459
    :cond_45
    invoke-static {v7, v6, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 461
    const-string v3, "ALTER TABLE pmcAssignmentActivityDetails ADD isApproved Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 463
    :cond_46
    const-string v3, "ApproveLatLong"

    invoke-static {v5, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 465
    const-string v3, "ALTER TABLE DealerMaster ADD ApproveLatLong Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 467
    :cond_47
    const-string v3, "OutStandingValue"

    invoke-static {v5, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 469
    const-string v3, "ALTER TABLE DealerMaster ADD OutStandingValue DOUBLE"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 471
    :cond_48
    const-string v3, "Balance_Points"

    invoke-static {v5, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 473
    const-string v3, "ALTER TABLE DealerMaster ADD Balance_Points DOUBLE"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 475
    :cond_49
    const-string v3, "isRisingStar"

    invoke-static {v5, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 477
    const-string v3, "ALTER TABLE DealerMaster ADD isRisingStar VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 479
    :cond_4a
    const-string v3, "SevenDaysProjectedOutstanding"

    invoke-static {v5, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 481
    const-string v3, "ALTER TABLE DealerMaster ADD SevenDaysProjectedOutstanding DOUBLE"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 483
    :cond_4b
    const-string v3, "isCampaignRequired"

    invoke-static {v4, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 485
    const-string v3, "ALTER TABLE pmcUserDetails ADD isCampaignRequired Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 688
    :cond_4c
    const-string v3, "IsSupervisoryActivity"

    invoke-static {v14, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 690
    const-string v3, "ALTER TABLE ActivityMaster ADD IsSupervisoryActivity Integer"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 691
    const-string v3, "ALTER TABLE ActivityMaster ADD Radius VARCHAR"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 711
    :cond_4d
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'TSTActivityMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 713
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'TSTActivityMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 715
    :cond_4e
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'TSTAttributeMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 717
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'TSTAttributeMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 720
    :cond_4f
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'TSTActivityAttributeMappingMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 722
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'TSTActivityAttributeMappingMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 724
    :cond_50
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'FBFActivityMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 726
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'FBFActivityMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 728
    :cond_51
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'FBFAttributeMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 730
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'FBFAttributeMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 733
    :cond_52
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'FBFActivityAttributeMappingMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 735
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'FBFActivityAttributeMappingMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 738
    :cond_53
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'SurveyActivityMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 740
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'SurveyActivityMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 742
    :cond_54
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'SurveyActivityAttributeMappingMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 744
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'SurveyActivityAttributeMappingMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 746
    :cond_55
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'SurveyAttributeMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 748
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'SurveyAttributeMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 750
    :cond_56
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'SurveyActivitySegmentMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 752
    const-string v3, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'SurveyActivitySegmentMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 754
    :cond_57
    const-string v3, "SELECT * FROM MasterVersionTrackingSystem where TableName = \'SurveyActivitySegmentMappingMaster\'"

    invoke-static {v3, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 756
    const-string v2, "insert into MasterVersionTrackingSystem (TableName,UpdatedOn) values(\'SurveyActivitySegmentMappingMaster\',\'2015-05-20 11:31:01\')"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 758
    :cond_58
    const-string v2, "ActivityAttributeMappingMaster"

    const-string v3, "IsDisplayCount"

    invoke-static {v2, v3, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 760
    const-string v2, "ALTER TABLE ActivityAttributeMappingMaster ADD IsDisplayCount Integer"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 762
    :cond_59
    const-string v2, "PasswordChangedDate"

    invoke-static {v4, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 764
    const-string v2, "ALTER TABLE pmcUserDetails ADD PasswordChangedDate VARCHAR"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 766
    :cond_5a
    invoke-static {v14, v9, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 768
    const-string v2, "ALTER TABLE ActivityMaster ADD IsEligibleForPointsConsideration Integer"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 770
    :cond_5b
    invoke-static {v14, v9, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 772
    const-string v2, "ALTER TABLE ActivityMaster ADD IsEligibleForPointsConsideration Integer"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 774
    :cond_5c
    invoke-static {v14, v8, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 776
    const-string v2, "ALTER TABLE ActivityMaster ADD ExpensesRequired Integer"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 778
    :cond_5d
    const-string v2, "CampaignID"

    invoke-static {v11, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 780
    const-string v2, "ALTER TABLE pmcAssignmentVisit ADD CampaignID VARCHAR"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 782
    :cond_5e
    const-string v2, "Address"

    invoke-static {v11, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 784
    const-string v2, "ALTER TABLE pmcAssignmentVisit ADD Address VARCHAR"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 786
    :cond_5f
    const-string v2, "IsNeoCampaignRequired"

    invoke-static {v14, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 788
    const-string v2, "ALTER TABLE ActivityMaster ADD IsNeoCampaignRequired Integer"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 790
    :cond_60
    const-string v2, "ParentSaarthieFarmerID"

    invoke-static {v1, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 792
    const-string v2, "ALTER TABLE FarmerMaster ADD ParentSaarthieFarmerID VARCHAR"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 793
    const-string v2, "ALTER TABLE FarmerMaster ADD FellowFarmerID VARCHAR"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 794
    const-string v2, "ALTER TABLE FarmerMaster ADD IsFellowFarmer  varchar"

    invoke-static {v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 796
    :cond_61
    const-string v2, "FarmerSegmentationValue"

    invoke-static {v1, v2, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 798
    const-string v1, "ALTER TABLE FarmerMaster ADD FarmerSegmentationValue Integer"

    invoke-static {v1, v13}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    :cond_62
    sget-object v1, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 803
    :try_start_2
    const-string v2, "DB Patch Queries"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 806
    sget-object v1, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v1, 0x0

    :goto_0
    return v1

    :goto_1
    sget-object v2, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 807
    throw v1
.end method

.method public static checkForDBTblUpdate([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 866
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 869
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 873
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 874
    const-string p1, "DB Patch Queries"

    invoke-static {p1, p0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized executeRawQueryInDB(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/conceptglobal/pmc/utils/DBPatchQueries;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 814
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 817
    :try_start_1
    const-string p1, "DB Patch Queries"

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    monitor-exit v0

    throw p0

    .line 819
    :cond_0
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static existsColumnInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5

    const-string v0, "checking whether a column exists in the table "

    const-string v1, "SELECT * FROM "

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 824
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " LIMIT 0"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 825
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    if-eqz v3, :cond_0

    .line 835
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return v2

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 830
    :try_start_1
    const-string p1, "existsColumnInTable"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const-string p1, "DB Patch Queries"

    invoke-static {p1, p0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 835
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    return v2

    :goto_0
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 837
    :cond_4
    throw p0
.end method

.method public static existsRowInTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    const-string p1, "checking whether a column exists in the table "

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 843
    :try_start_0
    invoke-virtual {p2, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 844
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    if-eqz v1, :cond_0

    .line 854
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 849
    :try_start_1
    const-string p2, "existsColumnInTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string p1, "DB Patch Queries"

    invoke-static {p1, p0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 854
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 856
    :cond_4
    throw p0
.end method
