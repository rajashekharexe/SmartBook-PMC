package com.conceptglobal.pmc.utils;

import com.conceptglobal.pmc.PMCApplication;

/* loaded from: classes.dex */
public class ConstantDeclarations {
    public static final int A_Z = 7;
    public static int DatabaseLocation = 2;
    public static final String FLAVOR_BIOSEED = "bioseed";
    public static final String FLAVOR_PMC = "pmc";
    public static final String FLAVOR_PROFARM = "profarm";
    public static final String ID_EXTRA_KEY = "notificationId";
    public static final String MESSAGE_EXTRA_KEY = "message";
    public static int MediaLocation = 2;
    public static final int PERSISTENT_TRACKING_ID = 1;
    public static final int PII_SALES_HIGHTOLOW = 5;
    public static final int PII_SALES_LOWTOHIGH = 6;
    public static final long REPEAT_TIME = 60000;
    public static final int RULES_FARMER_ID = 10001;
    public static final int SALES_HIGHTOLOW = 4;
    public static final int SALES_LOWTOHIGH = 3;
    public static final int SEGMENT_HIGHTOLOW = 2;
    public static final int SEGMENT_LOWTOHIGH = 1;
    public static final int Z_A = 8;
    public static String imeiFilePath = FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + "/.imei.txt";
    private static ConstantDeclarations instance;
    private String KeySegmentTypeId;
    private String videoFolder;
    private String videoStoragePath;
    private String empty = "";
    private String fwdSlash = "/";
    private String comma = ",";
    private String keyVillageId = "villageId";
    private String keyVillageName = "villageName";
    private String keyFarmerName = "farmerName";
    private String keymarketname = "marketname";
    private String keyIsMba = "ismba";
    private String keyFarmerId = "farmerId";
    private String keyActivityId = "ActvityId";
    private String keyIsPlanned = "isPlanned";
    private String keyRetailerId = "retailerId";
    private String keyRetailerName = "retailerName";
    private String keyFoName = "foName";
    private String keyContentSyncTime = "CMSyncTime";
    private String keyTicketVisibility = "TicketVisibility";
    private String keyLastUpdatedTime = "lastUpdatedTime";
    private String keyMode = "Mode";
    private String keyLastUpdatedTime1 = "lastUpdatedTime";
    private String keyTrainingORLive = "TrainingORLive";
    private int idleTimeAppPatch = 86400000;
    private int idleTimeMasterSync = 60000;
    private String dbName = "tblpmcs.db";
    private String tblMasterVersionTrackingSystem = "MasterVersionTrackingSystem";
    private String tblVillages = "pmcVillages";
    private String tblFarmerDetails = "pmcFarmerDetails";
    private String tblAssaignmentVisit = "pmcAssignmentVisit";
    private String tblFarmerCropMapping = "FarmerCropDetails";
    private String tblAssighmentActivityDetails = "pmcAssignmentActivityDetails";
    private String tblFarmerMaster = "FarmerMaster";
    private String tblDealerMaster = "DealerMaster";
    private String tblDealerCompanyMapping = "DealerCompanyMapping";
    private String tblDealerCropMapping = "DealerCropMapping";
    private String childSetSharedPref = "ChildSetDataSharedPref";
    private String tblLog4Net = "log4Net";
    private String tblSyncErrorLog = "SyncErrorLog";
    private String tblsvFarmerDetails = "pmcSVFarmerDetails";
    private String tblsvFarmerCropMapping = "pmcSVFarmerCropMapping";
    private String keyfromwhichclass = "fromwhichclass";
    private String pmcRootFolder = "PMCLivedeepakfertilizers";
    private String pmcRootFolderAfterMygration = this.pmcRootFolder + "Migration";
    private String getAppPath = FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + "/PMCPatch/";
    private String dbFolder = "/" + this.pmcRootFolder + "/Database";
    private String externalRenamedbFolder = "/" + this.pmcRootFolderAfterMygration + "/Database";
    private String databasePath = this.dbFolder + "/pmc.sqlite";
    private String databasePathold = "/PMC";
    private String databasePatholdPII = "/PMCPII";
    private String trainingDBFolder = this.dbFolder + "/Training";
    private String trainingDatabasePath = this.trainingDBFolder + "/pmc.sqlite";
    private String dbDownloadPaths = FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + this.dbFolder + "/";
    private String keySelection = "Selection";
    private String keySelectionQuery = "Selection_query";
    private String pmcLOGRootFolder = this.pmcRootFolder;
    private String dbLOGFolder = "/" + this.pmcLOGRootFolder + "/DatabaseDebug";
    private String databasePathLOG = this.dbLOGFolder + "/aop.sqlite";
    private String picFolder = "/" + this.pmcRootFolder + "/Pictures";
    private String tempFolder = "/" + this.pmcRootFolder + "/Temp";
    private String pdfFolder = "/" + this.pmcRootFolder + "/pdfs";
    private String picStoragePath = FileUtils.getPicDataDir(PMCApplication.getContext()).getAbsolutePath() + this.picFolder + "/";
    private String pdfStoragePath = FileUtils.getPDFlocationsDir(PMCApplication.getContext()) + this.pdfFolder + "/";
    private String tempPath = FileUtils.getPicDataDir(PMCApplication.getContext()).getAbsolutePath() + this.tempFolder + "/";

    public ConstantDeclarations() {
        StringBuilder sb = new StringBuilder("/");
        sb.append(this.pmcRootFolder);
        sb.append("/videos");
        this.videoFolder = sb.toString();
        this.videoStoragePath = FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + this.videoFolder + "/";
        this.KeySegmentTypeId = "segmentId";
    }

    public static ConstantDeclarations getInstance() {
        if (instance == null) {
            instance = new ConstantDeclarations();
        }
        return instance;
    }

    public String getKeyIsMba() {
        return this.keyIsMba;
    }

    public void setKeyIsMba(String str) {
        this.keyIsMba = str;
    }

    public String getKeymarketname() {
        return this.keymarketname;
    }

    public void setKeymarketname(String str) {
        this.keymarketname = str;
    }

    public String getTblDealerCropMapping() {
        return this.tblDealerCropMapping;
    }

    public void setTblDealerCropMapping(String str) {
        this.tblDealerCropMapping = str;
    }

    public String getTblDealerCompanyMapping() {
        return this.tblDealerCompanyMapping;
    }

    public void setTblDealerCompanyMapping(String str) {
        this.tblDealerCompanyMapping = str;
    }

    public String getTblAssighmentActivityDetails() {
        return this.tblAssighmentActivityDetails;
    }

    public String getKeyfromwhichclass() {
        return this.keyfromwhichclass;
    }

    public void setKeyfromwhichclass(String str) {
        this.keyfromwhichclass = str;
    }

    public String getTblsvFarmerDetails() {
        return this.tblsvFarmerDetails;
    }

    public void setTblsvFarmerDetails(String str) {
        this.tblsvFarmerDetails = str;
    }

    public String getTblsvFarmerCropMapping() {
        return this.tblsvFarmerCropMapping;
    }

    public void setTblsvFarmerCropMapping(String str) {
        this.tblsvFarmerCropMapping = str;
    }

    public String getVideoStoragePath() {
        return this.videoStoragePath;
    }

    public String getDatabasePatholdPII() {
        return this.databasePatholdPII;
    }

    public String getEMPTY() {
        return this.empty;
    }

    public String getFWDSLASH() {
        return this.fwdSlash;
    }

    public String getCOMMA() {
        return this.comma;
    }

    public String getKEYVILLAGEID() {
        return this.keyVillageId;
    }

    public String getKEYVILLAGENAME() {
        return this.keyVillageName;
    }

    public String getKEYFARMERNAME() {
        return this.keyFarmerName;
    }

    public String getKEYFARMERID() {
        return this.keyFarmerId;
    }

    public String getKEYACTIVITYID() {
        return this.keyActivityId;
    }

    public String getKEYISPLANNED() {
        return this.keyIsPlanned;
    }

    public String getKEYRETAILERID() {
        return this.keyRetailerId;
    }

    public String getKEYRETAILERNAME() {
        return this.keyRetailerName;
    }

    public String getKEYFONAME() {
        return this.keyFoName;
    }

    public String getKeyContentSyncTime() {
        return this.keyContentSyncTime;
    }

    public String getKeyTicketVisibility() {
        return this.keyTicketVisibility;
    }

    public String getKEYLASTUPDATEDTIME() {
        return this.keyLastUpdatedTime;
    }

    public String getKeyMode() {
        return this.keyMode;
    }

    public String getKEYLASTRETAILERSUPDATEDTIME() {
        return this.keyLastUpdatedTime1;
    }

    public int getIDEALTIMEFORAPPPATCH() {
        return this.idleTimeAppPatch;
    }

    public int getIDEALTIMEFORFARMERSSYNC() {
        return this.idleTimeMasterSync;
    }

    public String getDBNAME() {
        return this.dbName;
    }

    public String getTBLMASTERVERSION() {
        return this.tblMasterVersionTrackingSystem;
    }

    public String getTBLVILLAGES() {
        return this.tblVillages;
    }

    public String getDatabasePathold() {
        return this.databasePathold;
    }

    public String getTBLFARMERS() {
        return this.tblFarmerDetails;
    }

    public String getTBLASSIGNMENTVISITDETAILS() {
        return this.tblAssaignmentVisit;
    }

    public String getTBLCROPMAPPING() {
        return this.tblFarmerCropMapping;
    }

    public String getTBLLOG4NET() {
        return this.tblLog4Net;
    }

    public String getTBLSYNCERRORLOG() {
        return this.tblSyncErrorLog;
    }

    public void setTblDealerMaster(String str) {
        this.tblDealerMaster = str;
    }

    public void setTblFarmerMaster(String str) {
        this.tblFarmerMaster = str;
    }

    public String getTblFarmerMaster() {
        return this.tblFarmerMaster;
    }

    public String getTblDealerMaster() {
        return this.tblDealerMaster;
    }

    public String getPmcRootFolder() {
        return this.pmcRootFolder;
    }

    public String getGETAPPPATH() {
        return this.getAppPath;
    }

    public String getDatabaseFolder() {
        return this.dbFolder;
    }

    public String getDatabasePath() {
        return this.databasePath;
    }

    public String getDBDOWNLOADPATH() {
        return this.dbDownloadPaths;
    }

    public String getKEYSELECTION() {
        return this.keySelection;
    }

    public String getKEYSELECTIONQUERY() {
        return this.keySelectionQuery;
    }

    public String getDatabasePathLOG() {
        return this.databasePathLOG;
    }

    public void setDatabasePathLOG(String str) {
        this.databasePathLOG = str;
    }

    public String getChildSetSharedPref() {
        return this.childSetSharedPref;
    }

    public void setChildSetSharedPref(String str) {
        this.childSetSharedPref = str;
    }

    public enum Enumaration {
        mRequestType0(0),
        mRequestType1(1),
        mRequestType2(2),
        mRequestType3(3),
        mRequestType4(4),
        mRequestType5(5),
        mRequestType6(6),
        mRequestType7(7),
        mRequestType8(8),
        mRequestType9(9),
        mRequestType10(10),
        mRequestType11(11),
        mRequestType12(12),
        mRequestType13(13),
        mRequestType14(14),
        mRequestType15(15),
        mRequestType16(16),
        mRequestType17(17),
        mRequestType18(18),
        mRequestType19(19),
        mRequestType20(20),
        mRequestType21(21),
        mRequestType22(22),
        mRequestType23(23),
        mRequestType24(24),
        mRequestType25(25),
        mRequestType26(26),
        mRequestType27(27),
        mRequestType28(28),
        mRequestType29(29),
        mRequestType30(30),
        mRequestType31(31),
        mRequestType32(32),
        mRequestType33(33),
        mRequestType34(34),
        mRequestType35(35),
        mRequestType36(36),
        mRequestType37(37),
        mRequestType38(38),
        mRequestType39(39),
        mRequestType40(40),
        mRequestType41(41),
        mRequestType42(42),
        mRequestType43(43),
        mRequestType44(44),
        mRequestType45(45),
        mRequestType46(46),
        mRequestType47(47),
        mRequestType48(48),
        mRequestType49(49),
        mRequestType50(50),
        mRequestType51(51),
        mRequestType52(52),
        mRequestType53(53),
        mRequestType54(54),
        mRequestType55(55),
        mRequestType56(56),
        mRequestType57(57),
        mRequestType58(58),
        mRequestType59(59),
        mRequestType60(60),
        mRequestType61(61),
        mRequestType62(62),
        mRequestType63(63),
        mRequestType64(64),
        mRequestType65(65),
        mRequestType66(66),
        mRequestType67(67),
        mRequestType68(68),
        mRequestType69(69),
        mRequestType70(70),
        mRequestType71(71),
        mRequestType72(72),
        mRequestType73(73),
        mRequestType74(74),
        mRequestType75(75),
        mRequestType76(76),
        mRequestType77(77),
        mRequestType78(78),
        mRequestType79(79),
        mRequestType80(80),
        mRequestType81(81),
        mRequestType82(82),
        mRequestType83(83),
        mRequestType84(84),
        mRequestType85(85),
        mRequestType86(86),
        mRequestType87(87),
        mRequestType88(88),
        mRequestType89(89),
        mRequestType90(90),
        mRequestType91(91),
        mRequestType92(92),
        mRequestType93(93),
        mRequestType94(94),
        mRequestType95(95),
        mRequestType96(96),
        mRequestType97(97),
        mRequestType98(98),
        mRequestType99(99),
        mRequestType100(100),
        mRequestType101(101),
        mRequestType102(102),
        mRequestType103(103),
        mRequestType104(104),
        mRequestType105(105),
        mRequestType106(106),
        mRequestType107(107),
        mRequestType108(108),
        mRequestType109(109),
        mRequestType110(110);

        private int var;

        Enumaration(int i) {
            this.var = i;
        }

        public Integer value() {
            return Integer.valueOf(this.var);
        }
    }

    public String getTrainingDatabasePath() {
        return this.trainingDatabasePath;
    }

    public String getTrainingDBFolder() {
        return this.trainingDBFolder;
    }

    public String getKeyTrainingORLive() {
        return this.keyTrainingORLive;
    }

    public String getPicStoragePath() {
        return this.picStoragePath;
    }

    public String getPicFolder() {
        return this.picFolder;
    }

    public String getTempPath() {
        return this.tempPath;
    }

    public String getKeySegmentTypeId() {
        return this.KeySegmentTypeId;
    }

    public String getRootFolderName() {
        return this.pmcRootFolder;
    }

    public String getExternalNewRootFolderName() {
        return this.pmcRootFolderAfterMygration;
    }

    public String getExternalRenamedbFolder() {
        return this.externalRenamedbFolder;
    }

    public String getRootfolderName() {
        return this.pmcRootFolder;
    }

    public String getPdfStoragePath() {
        return this.pdfStoragePath;
    }
}
