package com.conceptglobal.pmc.fotracker;

/* loaded from: classes.dex */
public class LabelUtils {
    private static LabelUtils instance;
    private String mo_progressText = "mo_progressText";
    private String mo_FoName = "mo_FoName";
    private String mo_hintPassword = "mo_hintPassword";
    private String mo_btnLogin = "mo_btnLogin";
    private String mo_labelFrgtPwd = "mo_labelFrgtPwd";
    private String mo_copyRights = "mo_copyRights";
    private String mo_trainingLiveText = "mo_trainingLiveText";
    private String mo_LiveText = "mo_LiveText";
    private String mo_trainingText = "mo_trainingText";
    private String pmc_enterMobileNumHint = "pmc_enterMobileNumHint";
    private String pmc_registerButton = "pmc_registerButton";
    private String pmc_addFarmerText = "pmc_addFarmerText";
    private String pmc_addFarmerTotal = "pmc_addFarmerTotal";
    private String pmc_addFarmerPend = "pmc_addFarmerPend";
    private String pmc_addRetailerText = "pmc_addRetailerText";
    private String pmc_addRetailerTotal = "pmc_addRetailerTotal";
    private String pmc_addRetailerPend = "pmc_addRetailerPend";
    private String pmc_EditDistributorText = "pmc_EditDistributorText";
    private String pmc_addVillageText = "pmc_addVillageText";
    private String pmc_toDoText = "pmc_toDoText";
    private String pmc_todoPendText = "pmc_todoPendText";
    private String pmc_draftTabText = "pmc_draftTabText";
    private String pmc_notSentTabText = "pmc_notSentTabText";
    private String pmc_sentTabText = "pmc_sentTabText";
    private String pmc_sentTabText_farmer = "pmc_sentTabText_Farmrer";
    private String pmc_allTabText = "pmc_allTabText";
    private String pmc_cropFilterText = "pmc_cropFilterText";
    private String pmc_stateFilterText = "pmc_stateFilterText";
    private String pmc_districtFilterText = "pmc_districtFilterText";
    private String pmc_talukaFilterText = "pmc_talukaFilterText";
    private String pmc_villageFilterText = "pmc_villageFilterText";
    private String pmc_radiusFilterText = "pmc_radiusFilterText";
    private String pmc_goFilterText = "pmc_goFilterText";
    private String pmc_clearFilterText = "pmc_clearFilterText";
    private String pmc_addFarmerDetailsText = "pmc_addFarmerDetailsText";
    private String pmc_draftFarmerText = "pmc_draftFarmerText";
    private String pmc_latitudeText = "pmc_latitudeText";
    private String pmc_longitudeText = "pmc_longitudeText";
    private String pmc_acresValueText = "pmc_acresValueText";
    private String pmc_addCropText = "pmc_addCropText";
    private String pmc_addLandText = "pmc_addLandText";
    private String pmc_addCropText1 = "pmc_addCropText1";
    private String pmc_selectDropdownText = "pmc_selectDropdownText";
    private String pmc_saveText = "pmc_saveText";
    private String pmc_remarksText = "pmc_remarksText";
    private String pmc_enterRemarksText = "pmc_enterRemarksText";
    private String pmc_personalTabText = "pmc_personalTabText";
    private String pmc_LandTabText = "pmc_LandTabText";
    private String pmc_acreageTabText = "pmc_acreageTabText";
    private String pmc_othersTabText = "pmc_othersTabText";
    private String pmc_validationToast = "pmc_validationToast";
    private String pmc_emptyEditText = "pmc_emptyEditText";
    private String pmc_invalidNumberText = "pmc_invalidNumberText";
    private String pmc_homeText = "pmc_homeText";
    private String pmc_addRetailersDetailsText = "pmc_addRetailersDetailsText";
    private String pmc_retailerDetailsText = "pmc_retailerDetailsText";
    private String pmc_districtText = "pmc_districtText";
    private String pmc_mandalsText = "pmc_mandalsText";
    private String pmc_villageText = "pmc_villageText";
    private String pmc_stateText = "pmc_stateText";
    private String pmc_thereIsNoText = "pmc_thereIsNoText";
    private String pmc_companiesText = "pmc_companiesText";
    private String pmc_salesValueText = "pmc_salesValueText";
    private String pmc_addCompanyText = "pmc_addCompanyText";
    private String pmc_selfAssignText = "pmc_selfAssignText";
    private String pmc_selectAsignTypeText = "pmc_selectAsignTypeText";
    private String pmc_farmerText = "pmc_farmerText";
    private String pmc_retailerText = "pmc_retailerText";
    private String pmc_territoryText = "pmc_territoryText";
    private String pmc_selectFarmerText = "pmc_selectFarmerText";
    private String pmc_selectRetailerText = "pmc_selectRetailerText";
    private String pmc_selectVillageText = "pmc_selectVillageText";
    private String pmc_selectActivityText = "pmc_selectActivityText";
    private String pmc_searchHereText = "pmc_searchHereText";
    private String pmc_geoTabText = "pmc_geoTabText";
    private String pmc_calendarTabText = "pmc_calendarTabText";
    private String pmc_contactsTabText = "pmc_contactsTabText";
    private String pmc_villageColumnText = "pmc_villageColumnText";
    private String pmc_tbvColumnText = "pmc_tbvColumnText";
    private String pmc_pdColumnText = "pmc_pdColumnText";
    private String pmc_onExitToastText = "pmc_onExitToastText";
    private String pmc_sendingDataWaitText = "pmc_sendingDataWaitText";
    private String pmc_sentSuccessfullDialogText = "pmc_sentSuccessfullDialogText";
    private String pmc_okText = "pmc_okText";
    private String pmc_homeNav = "pmc_homeNav";
    private String pmc_masterSyncNav = "pmc_masterSyncNav";
    private String pmc_applicationPatchNav = "pmc_applicationPatchNav";
    private String pmc_aboutPMCNav = "pmc_aboutPMCNav";
    private String pmc_uploadNav = "pmc_uploadNav";
    private String pmc_clearDataNav = "pmc_clearDataNav";
    private String pmc_functionalStateNav = "pmc_functionalStateNav";
    private String pmc_logoutNav = "pmc_logoutNav";
    private String pmc_syncMasterPWText = "pmc_syncMasterPWText";
    private String pmc_buildVersionText = "pmc_buildVersionText";
    private String pmc_appVersionText = "pmc_appVersionText";
    private String pmc_pwDatabaseUploadingPB = "pmc_pwDatabaseUploadingPB";
    private String pmc_passwordCleardata = "pmc_passwordCleardata";
    private String pmc_yesText = "pmc_yesText";
    private String pmc_noText = "pmc_noText";
    private String pmc_downloadFunStateButtonText = "pmc_downloadFunStateButtonText";
    private String pmc_todoFarmerAssignAlertText = "pmc_todoFarmerAssignAlertText";
    private String pmc_tbvScrollText = "pmc_tbvScrollText";
    private String pmc_pdScrolltext = "pmc_pdScrolltext";
    private String pmc_pfuscrolltext = "pmc_pfuscrolltext";
    private String pmc_CannotSyncAlertText = "pmc_CannotSyncAlertText";
    private String pmc_problemInSendingFileAlert = "pmc_problemInSendingFileAlert";
    private String pmc_pleaseSelectStateToastInFS = "pmc_pleaseSelectStateToastInFS";
    private String pmc_tryAgainDialogButtonText = "pmc_tryAgainDialogButtonText";
    private String pmc_cancelDialogButtonText = "pmc_cancelDialogButtonText";
    private String pmc_maxImagesToast = "pmc_maxImagesToast";
    private String pmc_dataSavedSuccessfullyDialog = "pmc_dataSavedSuccessfullyDialog";
    private String pmc_companyFilterHint = "pmc_companyFilterHint";
    private String pmc_fileUploadSuccessDialog = "pmc_fileUploadSuccessDialog";
    private String pmc_dataSendBGToast = "pmc_dataSendBGToast";
    private String pmc_changeLanguage = "pmc_changeLanguage";
    private String pmc_selectOneDropDownTitle = "pmc_selectOneDropDownTitle";
    private String pmc_selectText = "pmc_selectText";
    private String pmc_pleaseSelectCropToast = "pmc_pleaseSelectCropToast";
    private String pmc_enterPropAcreToast = "pmc_enterPropAcreToast";
    private String pmc_enterCropDOSToast = "pmc_enterCropDOSToast";
    private String pmc_enterCropSeasomToast = "pmc_enterCropSeasomToast";
    private String pmc_enterCropIrrigationToast = "pmc_enterCropIrrigationToast";
    private String pmc_selectProperDate = "pmc_selectProperDate";
    private String pmc_mobileExistsToast = "pmc_mobileExistsToast";
    private String pmc_enterValidToast = "pmc_enterValidToast";
    private String pmc_numberText = "pmc_numberText";
    private String pmc_pwDataSaving = "pmc_pwDataSaving";
    private String pmc_pleaseSelectCompany = "pmc_pleaseSelectCompany";
    private String pmc_enterSalesDetailsToast = "pmc_enterSalesDetailsToast";
    private String pmc_addAcreages = "pmc_addAcreages";
    private String pmc_addHybrid = "pmc_addHybrid";
    private String pmc_addSeason = "pmc_addSeason";
    private String pmc_irrigation = "pmc_irrigation";
    private String pmc_addSales = "pmc_addSales";
    private String pmc_addSales1 = "pmc_addSales1";
    private String pmc_companyTabText = "pmc_companyTabText";
    private String pmc_selectMarketText = "pmc_selectMarketText";
    private String pmc_selectTerritoryText = "pmc_selectTerritoryText";
    private String pmc_selfAssignModuleText = "pmc_selfAssignModuleText";
    private String pmc_noSDCardDialogText = "pmc_noSDCardDialogText";
    private String pmc_selectLanguage = "pmc_selectLanguage";
    private String pmc_offLineDBDownloadErrorText = "pmc_offLineDBDownloadErrorText";
    private String pmc_unableDBErrorText = "pmc_unableDBErrorText";
    private String pmc_rootPathNotCreatedError = "pmc_rootPathNotCreatedError";
    private String pmc_unableDbUrlServerError = "pmc_unableDbUrlServerError";
    private String pmc_unreachableDbURLError = "pmc_unreachableDbURLError";
    private String pmc_unableRecResDownDBError = "pmc_unableRecResDownDBError";
    private String pmc_dbNotDownloaded = "pmc_dbNotDownloaded";
    private String pmc_unableGetResFromServer = "pmc_unableGetResFromServer";
    private String pmc_pleaseCheckDataError = "pmc_pleaseCheckDataError";
    private String pmc_enterValMobNumHint = "pmc_enterValMobNumHint";
    private String pmc_registerButtonText = "pmc_registerButtonText";
    private String pmc_registrationToolbarText = "pmc_registrationToolbarText";
    private String pmc_haveToEnterErrorText = "pmc_haveToEnterErrorText";
    private String pmc_charactersInPWError = "pmc_charactersInPWError";
    private String pmc_notValidMobNumError = "pmc_notValidMobNumError";
    private String pmc_mobNumEnterWrongError = "pmc_mobNumEnterWrongError";
    private String pmc_enteredWrongMobNumError = "pmc_enteredWrongMobNumError";
    private String pmc_noResRecFromServerError = "pmc_noResRecFromServerError";
    private String pmc_userAlreadyMapped = "pmc_userAlreadyMapped";
    private String pmc_userDetailsDialogText = "pmc_userDetailsDialogText";
    private String pmc_userNameInUDetText = "pmc_userNameInUDetText";
    private String pmc_passwordInUDetText = "pmc_passwordInUDetText";
    private String pmc_enterSomeDataError = "pmc_enterSomeDataError";
    private String pmc_notDoneText = "pmc_notDoneText";
    private String pmc_discardText = "pmc_discardText";
    private String pmc_closeText = "pmc_closeText";
    private String pmc_visitDetNotAvailText = "pmc_visitDetNotAvailText";
    private String pmc_oneCropMandateText = "pmc_oneCropMandateText";
    private String pmc_pendActivities = "pmc_pendActivities";
    private String pmc_confirmDelActivityDialog = "pmc_confirmDelActivityDialog";
    private String pmc_copyRightsText = "pmc_copyRightsText";
    private String pmc_pmcVsTrainingText = "pmc_pmcVsTrainingText";
    private String pmc_pmcVsLiveText = "pmc_pmcVsLiveText";
    private String pmc_iConceptTrainingText = "pmc_iConceptTrainingText";
    private String pmc_visitCompletedText = "pmc_visitCompletedText";
    private String pmc_draftsHint = "pmc_draftsHint";
    private String pmc_pendingDataHint = "pmc_pendingDataHint";
    private String pmc_fieldVisitText = "pmc_fieldVisitText";
    private String pmc_lp = "pmc_lp";
    private String pmc_fieldDemoText = "pmc_fieldDemoText";
    private String pmc_selectDateText = "pmc_selectDateText";
    private String pmc_selectTimeText = "pmc_selectTimeText";
    private String pmc_configPMCPWprogressDialog = "pmc_configPMCPWprogressDialog";
    private String pmc_farmerSegText = "pmc_farmerSegText";
    private String pmc_assignActCannotDelAlert = "pmc_assignActCannotDelAlert";
    private String pmc_selectDOSowingToast = "pmc_selectDOSowingToast";
    private String pmc_noItemsAvailableAlert = "pmc_noItemsAvailableAlert";
    private String pmc_gpsEnabledAlert = "pmc_gpsEnabledAlert";
    private String pmc_notAbleCaptureGPSAlert = "pmc_notAbleCaptureGPSAlert";
    private String pmc_gpsTurnedOffAlert = "pmc_gpsTurnedOffAlert";
    private String pmc_gpsOKButton = "pmc_gpsOKButton";
    private String pmc_gpsCancelButton = "pmc_gpsCancelButton";
    private String pmc_gettLocationPWDialog = "pmc_gettLocationPWDialog";
    private String pmc_noPendDataToServerToast = "pmc_noPendDataToServerToast";
    private String pmc_sendDataPicToServerFailedAlert = "pmc_sendDataPicToServerFailedAlert";
    private String pmc_internetIsTurnedOffToast = "pmc_internetIsTurnedOffToast";
    private String pmc_pleaseSelectToast = "pmc_pleaseSelectToast";
    private String pmc_locationText = "pmc_locationText";
    private String pmc_latestAppAvailAlert = "pmc_latestAppAvailAlert";
    private String pmc_reLoginText = "pmc_reLoginText";
    private String pmc_laterText = "pmc_laterText";
    private String pmc_latestAppDataAvailAlert = "pmc_latestAppDataAvailAlert";
    private String pmc_checkForNewMasterSyncPW = "pmc_checkForNewMasterSyncPW";
    private String pmc_pwUpdatingPatchDialog = "pmc_pwUpdatingPatchDialog";
    private String pmc_downloadingNewAppPW = "pmc_downloadingNewAppPW";
    private String pmc_pleaseWaitDialog = "pmc_pleaseWaitDialog";
    private String pmc_captureImageText = "pmc_captureImageText";
    private String pmc_totalPercentageLimitAlert = "pmc_totalPercentageLimitAlert";
    private String pmc_noPendFarmersNActivities = "pmc_noPendFarmersNActivities";
    private String pmc_beInOnlineforNewData = "pmc_beInOnlineforNewData";
    private String pmc_enterValidCropAcrAlert = "pmc_enterValidCropAcrAlert";
    private String pmc_acreagesText = "pmc_acreagesText";
    private String pmc_rejectText = "pmc_rejectText";
    private String pmc_approveText = "pmc_approveText";
    private String pmc_supervisorDescText = "pmc_supervisorDescText";
    private String pmc_foVisitDesc = "pmc_foVisitDesc";
    private String pmc_sendingAckApprovalDetailsDialog = "pmc_sendingAckApprovalDetailsDialog";
    private String pmc_storeFarmNActivitiesForAssing = "pmc_storeFarmNActivitiesForAssing";
    private String pmc_getFarmNActivitiesForAssign = "pmc_getFarmNActivitiesForAssign";
    private String pmc_storefarmerPendApprval = "pmc_storefarmerPendApprval";
    private String pmc_getFarmPendApprvl = "pmc_getFarmPendApprvl";
    private String pmc_selAtleastOneFarmer = "pmc_selAtleastOneFarmer";
    private String pmc_farmersPendCount = "pmc_farmersPendCount";
    private String pmc_activitiesPendCount = "pmc_activitiesPendCount";
    private String pmc_noVillagesToast = "pmc_noVillagesToast";
    private String pmc_noFieldOfficersToast = "pmc_noFieldOfficersToast";
    private String pmc_noMarketsToast = "pmc_noMarketsToast";
    private String pmc_unableStoreActvtDetToast = "pmc_unableStoreActvtDetToast";
    private String pmc_noDataFound = "pmc_noDataFound";
    private String pmc_statusVillages = "pmc_statusVillages";
    private String pmc_plsSelFO = "pmc_plsSelFO";
    private String pmc_noInternetWantToContinue = "pmc_noInternetWantToContinue";
    private String pmc_noRecordsFound = "pmc_noRecordsFound";
    private String pmc_lastVisitDataText = "pmc_lastVisitDataText";
    private String pmc_activityLastVisitText = "pmc_activityLastVisitText";
    private String pmc_descriptioLastVisitText = "pmc_descriptioLastVisitText";
    private String pmc_campaignTodoAssignText = "pmc_campaignTodoAssignText";
    private String pmc_closeInSelfAssignActionText = "pmc_closeInSelfAssignActionText";
    private String pmc_notDoneSelfAssignActionText = "pmc_notDoneSelfAssignActionText";
    private String pmc_discardSelfAssignActionText = "pmc_discardSelfAssignActionText";
    private String pmc_doneSelfAssignActionText = "pmc_doneSelfAssignActionText";
    private String pmc_activityTabSelfAssignText = "pmc_activityTabSelfAssignText";
    private String pmc_finishTabSelfAssignText = "pmc_finishTabSelfAssignText";
    private String pmc_visitDescSelfAssignText = "pmc_visitDescSelfAssignText";
    private String pmc_addDescSelfAssignText = "pmc_addDescSelfAssignText";
    private String pmc_closeSelfAssignButtonText = "pmc_closeSelfAssignButtonText";
    private String pmc_visitCompleteButtonText = "pmc_visitCompleteButtonText";
    private String pmc_confirmVisitCompleteDialogText = "pmc_confirmVisitCompleteDialogText";
    private String pmc_cancelVisitCompleteDialogButton = "pmc_cancelVisitCompleteDialogButton";
    private String pmc_agreeVisitCompleteDialogButton = "pmc_agreeVisitCompleteDialogButton";
    private String pmc_doneSelfAssignToastText = "pmc_doneSelfAssignToastText";
    private String pmc_discardSelfAssignConfirmDialog = "pmc_discardSelfAssignConfirmDialog";
    private String pmc_cancelDiscardButton = "pmc_cancelDiscardButton";
    private String pmc_okDiscardDialog = "pmc_okDiscardDialog";
    private String pmc_remarksForNotDoneSelfAssign = "pmc_remarksForNotDoneSelfAssign";
    private String pmc_noAttribsAvailToastSA = "pmc_noAttribsAvailToastSA";
    private String pmc_multipleCheckBoxLimitDialog = "pmc_multipleCheckBoxLimitDialog";
    private String pmc_multipleCheckBoxItemsDialog = "pmc_multipleCheckBoxItemsDialog";
    private String pmc_dateOfSowingInFarmerCrops = "pmc_dateOfSowingInFarmerCrops";
    private String pmc_customTypeFilterText = "pmc_customTypeFilterText";
    private String pmc_addPlanterHomeText = "pmc_addPlanterHomeText";
    private String pmc_deleteConfirmationDialogText = "pmc_deleteConfirmationDialogText";
    private String pmc_selectDayMonthDPTitle = "pmc_selectDayMonthDPTitle";
    private String pmc_copyRightsDialogText = "pmc_copyRightsDialogText";
    private String pmc_invalidPasswordError = "pmc_invalidPasswordError";
    private String pmc_enterMobileNumFPDialog = "pmc_enterMobileNumFPDialog";
    private String pmc_notAValidPWError = "pmc_notAValidPWError";
    private String pmc_submitBtnText = "pmc_submitBtnText";
    private String pmc_invalidACKinFS = "pmc_invalidACKinFS";
    private String pmc_assignedActCannotDelToast = "pmc_assignedActCannotDelToast";
    private String pmc_confirmDeletionFarmerDialog = "pmc_confirmDeletionFarmerDialog";
    private String pmc_pcodeNotAvailText = "pmc_pcodeNotAvailText";
    private String pmc_pcodeText = "pmc_pcodeText";
    private String pmc_plsSelStateFilter = "pmc_plsSelStateFilter";
    private String pmc_plsSelDistrictFilter = "pmc_plsSelDistrictFilter";
    private String pmc_plsSelMandalFilter = "pmc_plsSelMandalFilter";
    private String pmc_plsSelVillageFilter = "pmc_plsSelVillageFilter";
    private String pmc_brandFilterText = "pmc_brandFilterText";
    private String pmc_forgotPassTitle = "pmc_forgotPassTitle";
    private String pmc_passwordReqTitle = "pmc_passwordReqTitle";
    private String pmc_villWiseSummery = "pmc_villWiseSummery";
    private String pmc_pmcFarmerInUFA = "pmc_pmcFarmerInUFA";
    private String pmc_prefDealerInUFA = "pmc_prefDealerInUFA";
    private String pmc_visitDescInUFA = "pmc_visitDescInUFA";
    private String pmc_addDescInUFA = "pmc_addDescInUFA";
    private String pmc_closeInUFA = "pmc_closeInUFA";
    private String pmc_deactivateInUFA = "pmc_deactivateInUFA";
    private String pmc_visitCompleteInUFA = "pmc_visitCompleteInUFA";
    private String pmc_selectDealerInUFA = "pmc_selectDealerInUFA";
    private String pmc_doUWantToSaveChangesInUFA = "pmc_doUWantToSaveChangesInUFA";
    private String pmc_isNoLongerLivingFarmerInUFA = "pmc_isNoLongerLivingFarmerInUFA";
    private String pmc_saveNCloseDialogInUFA = "pmc_saveNCloseDialogInUFA";
    private String pmc_dontSave = "pmc_dontSave";
    private String pmc_disAgree = "pmc_disAgree";
    private String pmc_noBrandsAvailableToast = "pmc_noBrandsAvailableToast";
    private String pmc_lastVisitTabName = "pmc_lastVisitTabName";
    private String pmc_customerDetailsTabName = "pmc_customerDetailsTabName";
    private String pmc_addDescInFFA = "pmc_addDescInFFA";
    private String pmc_visitDescInFFA = "pmc_visitDescInFFA";
    private String pmc_prefDealerInFFA = "pmc_prefDealerInFFA";
    private String pmc_pmcFarmerInFFA = "pmc_pmcFarmerInFFA";
    private String pmc_selectDealerInFFA = "pmc_selectDealerInFFA";
    private String pmc_locationIsMandateError = "pmc_locationIsMandateError";
    private String pmc_selectReasonDiscardTitle = "pmc_selectReasonDiscardTitle";
    private String pmc_gpsOffPlsEnableGPSDialog = "pmc_gpsOffPlsEnableGPSDialog";
    private String pmc_settings = "pmc_settings";
    private String pmc_imageCantBeDelToast = "pmc_imageCantBeDelToast";
    private String pmc_recWrongRespFS = "pmc_recWrongRespFS";
    private String pmc_mobileNumNAToast = "pmc_mobileNumNAToast";
    private String pmc_successInsertMasterData = "pmc_successInsertMasterData";
    private String pmc_noPatchAvailable = "pmc_noPatchAvailable";
    private String pmc_patchAvail = "pmc_patchAvail";
    private String pmc_unableStoreUserDetails = "pmc_unableStoreUserDetails";
    private String pmc_getButton = "pmc_getButton";
    private String pmc_notAvilable = "pmc_notAvilable";
    private String pmc_farmerRegDetails = "pmc_farmerRegDetails";
    private String pmc_contactReportManager = "pmc_contactReportManager";
    private String pmc_cannotSync = "pmc_cannotSync";
    private String pmc_pfuColumnText = "pmc_pfuColumnText";
    private String pmc_patchUpdateNotSuccess = "pmc_patchUpdateNotSuccess";
    private String pmc_noResponseRecPatchUpdate = "pmc_noResponseRecPatchUpdate";
    private String pmc_patchUpdateSuccess = "pmc_patchUpdateSuccess";
    private String pmc_unableToSendDataToServer = "pmc_unableToSendDataToServer";
    private String pmc_unableToExecuteFewTables = "pmc_unableToExecuteFewTables";
    private String pmc_unableToStoreRecInDB = "pmc_unableToStoreRecInDB";
    private String pmc_noRespRexFromServer = "pmc_noRespRexFromServer";
    private String pmc_invalidResRecFromServer = "pmc_invalidResRecFromServer";
    private String pmc_wrongPinAttemtsDBDelToast = "pmc_wrongPinAttemtsDBDelToast";
    private String pmc_dataErasedToast = "pmc_dataErasedToast";
    private String pmc_delDatabaseTitle = "pmc_delDatabaseTitle";
    private String pmc_dbDelConfirmDialog = "pmc_dbDelConfirmDialog";
    private String pmc_enterTheToast = "pmc_enterTheToast";
    private String pmc_minimumLengthFor = "pmc_minimumLengthFor";
    private String pmc_minimumValueFor = "pmc_minimumValueFor";
    private String pmc_logoutConfirmDialog = "pmc_logoutConfirmDialog";
    private String pmc_updateSuccesToast = "pmc_updateSuccesToast";
    private String pmc_noChangesToUpdate = "pmc_noChangesToUpdate";
    private String pmc_plsCaptureImage = "pmc_plsCaptureImage";
    private String pmc_plsCaptureImageProperly = "pmc_plsCaptureImageProperly";
    private String pmc_pictureTitle = "pmc_pictureTitle";
    private String pmc_eventTitle = "pmc_eventTitle";
    private String pmc_commentsTitle = "pmc_commentsTitle";
    private String pmc_subjectTitle = "pmc_subjectTitle";
    private String pmc_selectPlanterText = "pmc_selectPlanterText";
    private String pmc_planterText = "pmc_planterText";
    private String pmc_marketText = "pmc_marketText";
    private String pmc_masterDataUpdated = "pmc_masterDataUpdated";
    private String pmc_companyAlreadyExists = "pmc_companyAlreadyExists";
    private String pmc_todoAbbrevations = "pmc_todoAbbrevations";
    private String pmc_wrongAttemptsText = "pmc_wrongAttemptsText";
    private String pmc_hybridText = "pmc_hybridText";
    private String pmc_plsSelectCustomerToast = "pmc_plsSelectCustomerToast";
    private String pmc_plsSelectImageToast = "pmc_plsSelectImageToast";
    private String pmc_addDistributorText = "pmc_addDistributorText";
    private String pmc_userRemovedTitle = "pmc_userRemovedTitle";
    private String pmc_userRemovedMessage = "pmc_userRemovedMessage";
    private String pmc_retailerDetails = "pmc_retailerDetails";
    private String pmc_distributorDetails = "pmc_distributorDetails";
    private String pmc_selectNumTo = "pmc_selectNumTo";
    private String pmc_noNumFoundInDailOrSms = "pmc_noNumFoundInDailOrSms";
    private String pmc_savePictureButton = "pmc_savePictureButton";
    private String pmc_updatePictureButton = "pmc_updatePictureButton";
    private String pmc_addCustomerGoBackDialog = "pmc_addCustomerGoBackDialog";
    private String pmc_todoStartDateFilter = "pmc_todoStartDateFilter";
    private String pmc_todoEndDateFilter = "pmc_todoEndDateFilter";
    private String pmc_activityTabToDo = "pmc_activityTabToDo";
    private String pmc_clearLogsConfirmation = "pmc_clearLogsConfirmation";
    private String pmc_sendLogsNav = "pmc_sendLogsNav";
    private String pmc_clearLogsNav = "pmc_clearLogsNav";
    private String pmc_selfAssignmentTileText = "pmc_selfAssignmentTileText";
    private String pmc_draft = "pmc_draft";
    private String pmc_pendingData = "pmc_pendingData";
    private String pmc_pendFarmerCount = "pmc_pendFarmerCount";
    private String pmc_pendRetailerCount = "pmc_pendRetailerCount";
    private String pmc_pendAssignmentsCount = "pmc_pendAssignmentsCount";
    private String pmc_pendPicturesCount = "pmc_pendPicturesCount";
    private String pmc_plsSelectTerritory = "pmc_plsSelectTerritory";
    private String pmc_pdaid = "pmc_pdaid";
    private String pmc_selfAssignDraftsText = "pmc_selfAssignDraftsText";
    private String pmc_farmerMasterTable = "pmc_farmerMasterTable";
    private String pmc_retailerMasterTable = "pmc_retailerMasterTable";
    private String pmc_farmerCropTable = "pmc_farmerCropTable";
    private String pmc_retailerCropTable = "pmc_retailerCropTable";
    private String pmc_retailerCompanyTable = "pmc_retailerCompanyTable";
    private String pmc_assignActivitiesTable = "pmc_assignActivitiesTable";
    private String pmc_assignVisitsTable = "pmc_assignVisitsTable";
    private String pmc_imagesTable = "pmc_imagesTable";
    private String pmc_addVillageDetailsText = "pmc_addVillageDetailsText";
    private String pmc_settingsToolbarText = "pmc_settingsToolbarText";
    private String pmc_sales2016 = "pmc_sales2016";
    private String pmc_sales2017 = "pmc_sales2017";
    private String pmc_plot_name = "pmc_plot_name";
    private String pmc_plot_acerage = "pmc_plot_acerage";
    private String pmc_plot_onFieldorOffField = "pmc_plot_on_or_off_field";
    private String pmc_plot_address = "pmc_plot_address";
    private String pmc_plot_name_toast = "pmc_plot_name_toast";
    private String pmc_plot_acerage_toast = "pmc_plot_acerage_toast";
    private String pmc_plot_address_toast = "pmc_plot_address_toast";
    private String pmc_plot_onfield_toast = "pmc_plot_onfield_toast";

    public static LabelUtils getInstance() {
        if (instance == null) {
            instance = new LabelUtils();
        }
        return instance;
    }

    public String getPmc_registerButton() {
        return this.pmc_registerButton;
    }

    public String getPmc_enterMobileNumHint() {
        return this.pmc_enterMobileNumHint;
    }

    public String getPmc_plot_onfield_toast() {
        return this.pmc_plot_onfield_toast;
    }

    public void setPmc_plot_onfield_toast(String str) {
        this.pmc_plot_onfield_toast = str;
    }

    public String getPmc_plot_name_toast() {
        return this.pmc_plot_name_toast;
    }

    public void setPmc_plot_name_toast(String str) {
        this.pmc_plot_name_toast = str;
    }

    public String getPmc_plot_acerage_toast() {
        return this.pmc_plot_acerage_toast;
    }

    public void setPmc_plot_acerage_toast(String str) {
        this.pmc_plot_acerage_toast = str;
    }

    public String getPmc_plot_address_toast() {
        return this.pmc_plot_address_toast;
    }

    public void setPmc_plot_address_toast(String str) {
        this.pmc_plot_address_toast = str;
    }

    public String getPmc_plot_address() {
        return this.pmc_plot_address;
    }

    public void setPmc_plot_address(String str) {
        this.pmc_plot_address = str;
    }

    public String getPmc_plot_name() {
        return this.pmc_plot_name;
    }

    public void setPmc_plot_name(String str) {
        this.pmc_plot_name = str;
    }

    public String getPmc_plot_acerage() {
        return this.pmc_plot_acerage;
    }

    public void setPmc_plot_acerage(String str) {
        this.pmc_plot_acerage = str;
    }

    public String getPmc_plot_onFieldorOffField() {
        return this.pmc_plot_onFieldorOffField;
    }

    public void setPmc_plot_onFieldorOffField(String str) {
        this.pmc_plot_onFieldorOffField = str;
    }

    public String getPmc_selectTimeText() {
        return this.pmc_selectTimeText;
    }

    public String getPmc_draft() {
        return this.pmc_draft;
    }

    public String getPmc_retailerDetails() {
        return this.pmc_retailerDetails;
    }

    public String getPmc_distributorDetails() {
        return this.pmc_distributorDetails;
    }

    public String getPmc_farmerMasterTable() {
        return this.pmc_farmerMasterTable;
    }

    public String getPmc_retailerMasterTable() {
        return this.pmc_retailerMasterTable;
    }

    public String getPmc_farmerCropTable() {
        return this.pmc_farmerCropTable;
    }

    public String getPmc_retailerCropTable() {
        return this.pmc_retailerCropTable;
    }

    public String getPmc_retailerCompanyTable() {
        return this.pmc_retailerCompanyTable;
    }

    public String getPmc_assignActivitiesTable() {
        return this.pmc_assignActivitiesTable;
    }

    public String getPmc_assignVisitsTable() {
        return this.pmc_assignVisitsTable;
    }

    public String getPmc_imagesTable() {
        return this.pmc_imagesTable;
    }

    public String getPmc_selfAssignDraftsText() {
        return this.pmc_selfAssignDraftsText;
    }

    public String getPmc_pdaid() {
        return this.pmc_pdaid;
    }

    public String getPmc_plsSelectTerritory() {
        return this.pmc_plsSelectTerritory;
    }

    public String getPmc_pendFarmerCount() {
        return this.pmc_pendFarmerCount;
    }

    public String getPmc_pendRetailerCount() {
        return this.pmc_pendRetailerCount;
    }

    public String getPmc_pendAssignmentsCount() {
        return this.pmc_pendAssignmentsCount;
    }

    public String getPmc_pendPicturesCount() {
        return this.pmc_pendPicturesCount;
    }

    public String getPmc_pendingData() {
        return this.pmc_pendingData;
    }

    public String getPmc_selfAssignmentTileText() {
        return this.pmc_selfAssignmentTileText;
    }

    public String getPmc_sendLogsNav() {
        return this.pmc_sendLogsNav;
    }

    public String getPmc_clearLogsNav() {
        return this.pmc_clearLogsNav;
    }

    public String getPmc_clearLogsConfirmation() {
        return this.pmc_clearLogsConfirmation;
    }

    public String getPmc_activityTabToDo() {
        return this.pmc_activityTabToDo;
    }

    public String getPmc_todoStartDateFilter() {
        return this.pmc_todoStartDateFilter;
    }

    public String getPmc_todoEndDateFilter() {
        return this.pmc_todoEndDateFilter;
    }

    public String getPmc_noNumFoundInDailOrSms() {
        return this.pmc_noNumFoundInDailOrSms;
    }

    public String getPmc_addCustomerGoBackDialog() {
        return this.pmc_addCustomerGoBackDialog;
    }

    public String getPmc_savePictureButton() {
        return this.pmc_savePictureButton;
    }

    public String getPmc_updatePictureButton() {
        return this.pmc_updatePictureButton;
    }

    public String getPmc_selectNumTo() {
        return this.pmc_selectNumTo;
    }

    public String getPmc_userRemovedTitle() {
        return this.pmc_userRemovedTitle;
    }

    public String getPmc_userRemovedMessage() {
        return this.pmc_userRemovedMessage;
    }

    public String getPmc_addDistributorText() {
        return this.pmc_addDistributorText;
    }

    public String getPmc_plsSelectCustomerToast() {
        return this.pmc_plsSelectCustomerToast;
    }

    public String getPmc_hybridText() {
        return this.pmc_hybridText;
    }

    public String getPmc_wrongAttemptsText() {
        return this.pmc_wrongAttemptsText;
    }

    public String getPmc_todoAbbrevations() {
        return this.pmc_todoAbbrevations;
    }

    public String getPmc_masterDataUpdated() {
        return this.pmc_masterDataUpdated;
    }

    public String getPmc_companyAlreadyExists() {
        return this.pmc_companyAlreadyExists;
    }

    public String getPmc_selectPlanterText() {
        return this.pmc_selectPlanterText;
    }

    public String getPmc_planterText() {
        return this.pmc_planterText;
    }

    public String getPmc_marketText() {
        return this.pmc_marketText;
    }

    public String getPmc_eventTitle() {
        return this.pmc_eventTitle;
    }

    public String getPmc_commentsTitle() {
        return this.pmc_commentsTitle;
    }

    public String getPmc_subjectTitle() {
        return this.pmc_subjectTitle;
    }

    public String getPmc_pictureTitle() {
        return this.pmc_pictureTitle;
    }

    public String getPmc_plsCaptureImageProperly() {
        return this.pmc_plsCaptureImageProperly;
    }

    public String getPmc_plsCaptureImage() {
        return this.pmc_plsCaptureImage;
    }

    public String getPmc_noChangesToUpdate() {
        return this.pmc_noChangesToUpdate;
    }

    public String getPmc_updateSuccesToast() {
        return this.pmc_updateSuccesToast;
    }

    public String getPmc_logoutConfirmDialog() {
        return this.pmc_logoutConfirmDialog;
    }

    public String getPmc_minimumValueFor() {
        return this.pmc_minimumValueFor;
    }

    public String getPmc_enterTheToast() {
        return this.pmc_enterTheToast;
    }

    public String getPmc_minimumLengthFor() {
        return this.pmc_minimumLengthFor;
    }

    public String getPmc_delDatabaseTitle() {
        return this.pmc_delDatabaseTitle;
    }

    public String getPmc_dbDelConfirmDialog() {
        return this.pmc_dbDelConfirmDialog;
    }

    public String getPmc_wrongPinAttemtsDBDelToast() {
        return this.pmc_wrongPinAttemtsDBDelToast;
    }

    public String getPmc_dataErasedToast() {
        return this.pmc_dataErasedToast;
    }

    public String getPmc_pfuColumnText() {
        return this.pmc_pfuColumnText;
    }

    public String getPmc_patchUpdateNotSuccess() {
        return this.pmc_patchUpdateNotSuccess;
    }

    public String getPmc_noResponseRecPatchUpdate() {
        return this.pmc_noResponseRecPatchUpdate;
    }

    public String getPmc_patchUpdateSuccess() {
        return this.pmc_patchUpdateSuccess;
    }

    public String getPmc_unableToSendDataToServer() {
        return this.pmc_unableToSendDataToServer;
    }

    public String getPmc_unableToExecuteFewTables() {
        return this.pmc_unableToExecuteFewTables;
    }

    public String getPmc_unableToStoreRecInDB() {
        return this.pmc_unableToStoreRecInDB;
    }

    public String getPmc_noRespRexFromServer() {
        return this.pmc_noRespRexFromServer;
    }

    public String getPmc_invalidResRecFromServer() {
        return this.pmc_invalidResRecFromServer;
    }

    public String getPmc_cannotSync() {
        return this.pmc_cannotSync;
    }

    public String getPmc_contactReportManager() {
        return this.pmc_contactReportManager;
    }

    public String getPmc_farmerRegDetails() {
        return this.pmc_farmerRegDetails;
    }

    public String getPmc_notAvilable() {
        return this.pmc_notAvilable;
    }

    public String getPmc_getButton() {
        return this.pmc_getButton;
    }

    public String getPmc_unableStoreUserDetails() {
        return this.pmc_unableStoreUserDetails;
    }

    public String getPmc_patchAvail() {
        return this.pmc_patchAvail;
    }

    public String getPmc_noPatchAvailable() {
        return this.pmc_noPatchAvailable;
    }

    public String getPmc_successInsertMasterData() {
        return this.pmc_successInsertMasterData;
    }

    public String getPmc_recWrongRespFS() {
        return this.pmc_recWrongRespFS;
    }

    public String getPmc_mobileNumNAToast() {
        return this.pmc_mobileNumNAToast;
    }

    public String getPmc_logoutNav() {
        return this.pmc_logoutNav;
    }

    public String getPmc_imageCantBeDelToast() {
        return this.pmc_imageCantBeDelToast;
    }

    public String getPmc_settings() {
        return this.pmc_settings;
    }

    public String getPmc_gpsOffPlsEnableGPSDialog() {
        return this.pmc_gpsOffPlsEnableGPSDialog;
    }

    public String getPmc_selectReasonDiscardTitle() {
        return this.pmc_selectReasonDiscardTitle;
    }

    public String getPmc_locationIsMandateError() {
        return this.pmc_locationIsMandateError;
    }

    public String getPmc_selectDealerInFFA() {
        return this.pmc_selectDealerInFFA;
    }

    public String getPmc_pmcFarmerInFFA() {
        return this.pmc_pmcFarmerInFFA;
    }

    public String getPmc_prefDealerInFFA() {
        return this.pmc_prefDealerInFFA;
    }

    public String getPmc_visitDescInFFA() {
        return this.pmc_visitDescInFFA;
    }

    public String getPmc_addDescInFFA() {
        return this.pmc_addDescInFFA;
    }

    public String getPmc_customerDetailsTabName() {
        return this.pmc_customerDetailsTabName;
    }

    public String getPmc_lastVisitTabName() {
        return this.pmc_lastVisitTabName;
    }

    public String getPmc_lastVisitDataText() {
        return this.pmc_lastVisitDataText;
    }

    public String getPmc_activityLastVisitText() {
        return this.pmc_activityLastVisitText;
    }

    public String getPmc_descriptioLastVisitText() {
        return this.pmc_descriptioLastVisitText;
    }

    public String getPmc_villWiseSummery() {
        return this.pmc_villWiseSummery;
    }

    public String getPmc_pmcFarmerInUFA() {
        return this.pmc_pmcFarmerInUFA;
    }

    public String getPmc_prefDealerInUFA() {
        return this.pmc_prefDealerInUFA;
    }

    public String getPmc_visitDescInUFA() {
        return this.pmc_visitDescInUFA;
    }

    public String getPmc_addDescInUFA() {
        return this.pmc_addDescInUFA;
    }

    public String getPmc_closeInUFA() {
        return this.pmc_closeInUFA;
    }

    public String getPmc_deactivateInUFA() {
        return this.pmc_deactivateInUFA;
    }

    public String getPmc_visitCompleteInUFA() {
        return this.pmc_visitCompleteInUFA;
    }

    public String getPmc_selectDealerInUFA() {
        return this.pmc_selectDealerInUFA;
    }

    public String getPmc_doUWantToSaveChangesInUFA() {
        return this.pmc_doUWantToSaveChangesInUFA;
    }

    public String getPmc_isNoLongerLivingFarmerInUFA() {
        return this.pmc_isNoLongerLivingFarmerInUFA;
    }

    public String getPmc_saveNCloseDialogInUFA() {
        return this.pmc_saveNCloseDialogInUFA;
    }

    public String getPmc_dontSave() {
        return this.pmc_dontSave;
    }

    public String getPmc_disAgree() {
        return this.pmc_disAgree;
    }

    public String getPmc_noBrandsAvailableToast() {
        return this.pmc_noBrandsAvailableToast;
    }

    public String getPmc_forgotPassTitle() {
        return this.pmc_forgotPassTitle;
    }

    public String getPmc_passwordReqTitle() {
        return this.pmc_passwordReqTitle;
    }

    public String getPmc_brandFilterText() {
        return this.pmc_brandFilterText;
    }

    public String getPmc_pcodeNotAvailText() {
        return this.pmc_pcodeNotAvailText;
    }

    public String getPmc_pcodeText() {
        return this.pmc_pcodeText;
    }

    public String getPmc_plsSelStateFilter() {
        return this.pmc_plsSelStateFilter;
    }

    public String getPmc_plsSelDistrictFilter() {
        return this.pmc_plsSelDistrictFilter;
    }

    public String getPmc_plsSelMandalFilter() {
        return this.pmc_plsSelMandalFilter;
    }

    public String getPmc_plsSelVillageFilter() {
        return this.pmc_plsSelVillageFilter;
    }

    public String getPmc_deleteConfirmationDialogText() {
        return this.pmc_deleteConfirmationDialogText;
    }

    public String getPmc_assignedActCannotDelToast() {
        return this.pmc_assignedActCannotDelToast;
    }

    public String getPmc_confirmDeletionFarmerDialog() {
        return this.pmc_confirmDeletionFarmerDialog;
    }

    public String getPmc_invalidACKinFS() {
        return this.pmc_invalidACKinFS;
    }

    public String getPmc_submitBtnText() {
        return this.pmc_submitBtnText;
    }

    public String getPmc_notAValidPWError() {
        return this.pmc_notAValidPWError;
    }

    public String getPmc_enterMobileNumFPDialog() {
        return this.pmc_enterMobileNumFPDialog;
    }

    public String getPmc_invalidPasswordError() {
        return this.pmc_invalidPasswordError;
    }

    public String getPmc_selectDayMonthDPTitle() {
        return this.pmc_selectDayMonthDPTitle;
    }

    public String getPmc_copyRightsDialogText() {
        return this.pmc_copyRightsDialogText;
    }

    public String getPmc_addPlanterHomeText() {
        return this.pmc_addPlanterHomeText;
    }

    public String getPmc_dateOfSowingInFarmerCrops() {
        return this.pmc_dateOfSowingInFarmerCrops;
    }

    public String getPmc_customTypeFilterText() {
        return this.pmc_customTypeFilterText;
    }

    public String getPmc_multipleCheckBoxItemsDialog() {
        return this.pmc_multipleCheckBoxItemsDialog;
    }

    public String getPmc_multipleCheckBoxLimitDialog() {
        return this.pmc_multipleCheckBoxLimitDialog;
    }

    public String getPmc_campaignTodoAssignText() {
        return this.pmc_campaignTodoAssignText;
    }

    public String getPmc_closeInSelfAssignActionText() {
        return this.pmc_closeInSelfAssignActionText;
    }

    public String getPmc_notDoneSelfAssignActionText() {
        return this.pmc_notDoneSelfAssignActionText;
    }

    public String getPmc_discardSelfAssignActionText() {
        return this.pmc_discardSelfAssignActionText;
    }

    public String getPmc_doneSelfAssignActionText() {
        return this.pmc_doneSelfAssignActionText;
    }

    public String getPmc_activityTabSelfAssignText() {
        return this.pmc_activityTabSelfAssignText;
    }

    public String getPmc_finishTabSelfAssignText() {
        return this.pmc_finishTabSelfAssignText;
    }

    public String getPmc_visitDescSelfAssignText() {
        return this.pmc_visitDescSelfAssignText;
    }

    public String getPmc_addDescSelfAssignText() {
        return this.pmc_addDescSelfAssignText;
    }

    public String getPmc_closeSelfAssignButtonText() {
        return this.pmc_closeSelfAssignButtonText;
    }

    public String getPmc_visitCompleteButtonText() {
        return this.pmc_visitCompleteButtonText;
    }

    public String getPmc_confirmVisitCompleteDialogText() {
        return this.pmc_confirmVisitCompleteDialogText;
    }

    public String getPmc_cancelVisitCompleteDialogButton() {
        return this.pmc_cancelVisitCompleteDialogButton;
    }

    public String getPmc_agreeVisitCompleteDialogButton() {
        return this.pmc_agreeVisitCompleteDialogButton;
    }

    public String getPmc_doneSelfAssignToastText() {
        return this.pmc_doneSelfAssignToastText;
    }

    public String getPmc_discardSelfAssignConfirmDialog() {
        return this.pmc_discardSelfAssignConfirmDialog;
    }

    public String getPmc_cancelDiscardButton() {
        return this.pmc_cancelDiscardButton;
    }

    public String getPmc_okDiscardDialog() {
        return this.pmc_okDiscardDialog;
    }

    public String getPmc_remarksForNotDoneSelfAssign() {
        return this.pmc_remarksForNotDoneSelfAssign;
    }

    public String getPmc_noAttribsAvailToastSA() {
        return this.pmc_noAttribsAvailToastSA;
    }

    public String getPmc_noSDCardDialogText() {
        return this.pmc_noSDCardDialogText;
    }

    public String getPmc_selectLanguage() {
        return this.pmc_selectLanguage;
    }

    public String getPmc_offLineDBDownloadErrorText() {
        return this.pmc_offLineDBDownloadErrorText;
    }

    public String getPmc_unableDBErrorText() {
        return this.pmc_unableDBErrorText;
    }

    public String getPmc_rootPathNotCreatedError() {
        return this.pmc_rootPathNotCreatedError;
    }

    public String getPmc_unableDbUrlServerError() {
        return this.pmc_unableDbUrlServerError;
    }

    public String getPmc_unreachableDbURLError() {
        return this.pmc_unreachableDbURLError;
    }

    public String getPmc_unableRecResDownDBError() {
        return this.pmc_unableRecResDownDBError;
    }

    public String getPmc_dbNotDownloaded() {
        return this.pmc_dbNotDownloaded;
    }

    public String getPmc_unableGetResFromServer() {
        return this.pmc_unableGetResFromServer;
    }

    public String getPmc_pleaseCheckDataError() {
        return this.pmc_pleaseCheckDataError;
    }

    public String getPmc_enterValMobNumHint() {
        return this.pmc_enterValMobNumHint;
    }

    public String getPmc_registerButtonText() {
        return this.pmc_registerButtonText;
    }

    public String getPmc_registrationToolbarText() {
        return this.pmc_registrationToolbarText;
    }

    public String getPmc_haveToEnterErrorText() {
        return this.pmc_haveToEnterErrorText;
    }

    public String getPmc_charactersInPWError() {
        return this.pmc_charactersInPWError;
    }

    public String getPmc_notValidMobNumError() {
        return this.pmc_notValidMobNumError;
    }

    public String getPmc_mobNumEnterWrongError() {
        return this.pmc_mobNumEnterWrongError;
    }

    public String getPmc_enteredWrongMobNumError() {
        return this.pmc_enteredWrongMobNumError;
    }

    public String getPmc_noResRecFromServerError() {
        return this.pmc_noResRecFromServerError;
    }

    public String getPmc_userAlreadyMapped() {
        return this.pmc_userAlreadyMapped;
    }

    public String getPmc_userDetailsDialogText() {
        return this.pmc_userDetailsDialogText;
    }

    public String getPmc_userNameInUDetText() {
        return this.pmc_userNameInUDetText;
    }

    public String getPmc_passwordInUDetText() {
        return this.pmc_passwordInUDetText;
    }

    public String getPmc_enterSomeDataError() {
        return this.pmc_enterSomeDataError;
    }

    public String getPmc_notDoneText() {
        return this.pmc_notDoneText;
    }

    public String getPmc_discardText() {
        return this.pmc_discardText;
    }

    public String getPmc_closeText() {
        return this.pmc_closeText;
    }

    public String getPmc_visitDetNotAvailText() {
        return this.pmc_visitDetNotAvailText;
    }

    public String getPmc_oneCropMandateText() {
        return this.pmc_oneCropMandateText;
    }

    public String getPmc_pendActivities() {
        return this.pmc_pendActivities;
    }

    public String getPmc_confirmDelActivityDialog() {
        return this.pmc_confirmDelActivityDialog;
    }

    public String getPmc_copyRightsText() {
        return this.pmc_copyRightsText;
    }

    public String getPmc_pmcVsTrainingText() {
        return this.pmc_pmcVsTrainingText;
    }

    public String getPmc_pmcVsLiveText() {
        return this.pmc_pmcVsLiveText;
    }

    public String getPmc_iConceptTrainingText() {
        return this.pmc_iConceptTrainingText;
    }

    public String getPmc_visitCompletedText() {
        return this.pmc_visitCompletedText;
    }

    public String getPmc_draftsHint() {
        return this.pmc_draftsHint;
    }

    public String getPmc_pendingDataHint() {
        return this.pmc_pendingDataHint;
    }

    public String getPmc_fieldVisitText() {
        return this.pmc_fieldVisitText;
    }

    public String getPmc_lp() {
        return this.pmc_lp;
    }

    public String getPmc_fieldDemoText() {
        return this.pmc_fieldDemoText;
    }

    public String getPmc_selectDateText() {
        return this.pmc_selectDateText;
    }

    public String getPmc_configPMCPWprogressDialog() {
        return this.pmc_configPMCPWprogressDialog;
    }

    public String getPmc_farmerSegText() {
        return this.pmc_farmerSegText;
    }

    public String getPmc_assignActCannotDelAlert() {
        return this.pmc_assignActCannotDelAlert;
    }

    public String getPmc_selectDOSowingToast() {
        return this.pmc_selectDOSowingToast;
    }

    public String getPmc_noItemsAvailableAlert() {
        return this.pmc_noItemsAvailableAlert;
    }

    public String getPmc_gpsEnabledAlert() {
        return this.pmc_gpsEnabledAlert;
    }

    public String getPmc_notAbleCaptureGPSAlert() {
        return this.pmc_notAbleCaptureGPSAlert;
    }

    public String getPmc_gpsTurnedOffAlert() {
        return this.pmc_gpsTurnedOffAlert;
    }

    public String getPmc_gpsOKButton() {
        return this.pmc_gpsOKButton;
    }

    public String getPmc_gpsCancelButton() {
        return this.pmc_gpsCancelButton;
    }

    public String getPmc_gettLocationPWDialog() {
        return this.pmc_gettLocationPWDialog;
    }

    public String getPmc_noPendDataToServerToast() {
        return this.pmc_noPendDataToServerToast;
    }

    public String getPmc_sendDataPicToServerFailedAlert() {
        return this.pmc_sendDataPicToServerFailedAlert;
    }

    public String getPmc_internetIsTurnedOffToast() {
        return this.pmc_internetIsTurnedOffToast;
    }

    public String getPmc_pleaseSelectToast() {
        return this.pmc_pleaseSelectToast;
    }

    public String getPmc_locationText() {
        return this.pmc_locationText;
    }

    public String getPmc_latestAppAvailAlert() {
        return this.pmc_latestAppAvailAlert;
    }

    public String getPmc_reLoginText() {
        return this.pmc_reLoginText;
    }

    public String getPmc_laterText() {
        return this.pmc_laterText;
    }

    public String getPmc_latestAppDataAvailAlert() {
        return this.pmc_latestAppDataAvailAlert;
    }

    public String getPmc_checkForNewMasterSyncPW() {
        return this.pmc_checkForNewMasterSyncPW;
    }

    public String getPmc_pwUpdatingPatchDialog() {
        return this.pmc_pwUpdatingPatchDialog;
    }

    public String getPmc_downloadingNewAppPW() {
        return this.pmc_downloadingNewAppPW;
    }

    public String getPmc_pleaseWaitDialog() {
        return this.pmc_pleaseWaitDialog;
    }

    public String getPmc_captureImageText() {
        return this.pmc_captureImageText;
    }

    public String getPmc_totalPercentageLimitAlert() {
        return this.pmc_totalPercentageLimitAlert;
    }

    public String getPmc_noPendFarmersNActivities() {
        return this.pmc_noPendFarmersNActivities;
    }

    public String getPmc_beInOnlineforNewData() {
        return this.pmc_beInOnlineforNewData;
    }

    public String getPmc_enterValidCropAcrAlert() {
        return this.pmc_enterValidCropAcrAlert;
    }

    public String getPmc_acreagesText() {
        return this.pmc_acreagesText;
    }

    public String getPmc_rejectText() {
        return this.pmc_rejectText;
    }

    public String getPmc_approveText() {
        return this.pmc_approveText;
    }

    public String getPmc_supervisorDescText() {
        return this.pmc_supervisorDescText;
    }

    public String getPmc_foVisitDesc() {
        return this.pmc_foVisitDesc;
    }

    public String getPmc_sendingAckApprovalDetailsDialog() {
        return this.pmc_sendingAckApprovalDetailsDialog;
    }

    public String getPmc_storeFarmNActivitiesForAssing() {
        return this.pmc_storeFarmNActivitiesForAssing;
    }

    public String getPmc_getFarmNActivitiesForAssign() {
        return this.pmc_getFarmNActivitiesForAssign;
    }

    public String getPmc_storefarmerPendApprval() {
        return this.pmc_storefarmerPendApprval;
    }

    public String getPmc_getFarmPendApprvl() {
        return this.pmc_getFarmPendApprvl;
    }

    public String getPmc_selAtleastOneFarmer() {
        return this.pmc_selAtleastOneFarmer;
    }

    public String getPmc_farmersPendCount() {
        return this.pmc_farmersPendCount;
    }

    public String getPmc_activitiesPendCount() {
        return this.pmc_activitiesPendCount;
    }

    public String getPmc_noVillagesToast() {
        return this.pmc_noVillagesToast;
    }

    public String getPmc_noFieldOfficersToast() {
        return this.pmc_noFieldOfficersToast;
    }

    public String getPmc_noMarketsToast() {
        return this.pmc_noMarketsToast;
    }

    public String getPmc_unableStoreActvtDetToast() {
        return this.pmc_unableStoreActvtDetToast;
    }

    public String getPmc_noDataFound() {
        return this.pmc_noDataFound;
    }

    public String getPmc_statusVillages() {
        return this.pmc_statusVillages;
    }

    public String getPmc_plsSelFO() {
        return this.pmc_plsSelFO;
    }

    public String getPmc_noInternetWantToContinue() {
        return this.pmc_noInternetWantToContinue;
    }

    public String getPmc_noRecordsFound() {
        return this.pmc_noRecordsFound;
    }

    public String getPmc_companyTabText() {
        return this.pmc_companyTabText;
    }

    public String getPmc_selectMarketText() {
        return this.pmc_selectMarketText;
    }

    public String getPmc_selectTerritoryText() {
        return this.pmc_selectTerritoryText;
    }

    public String getPmc_selfAssignModuleText() {
        return this.pmc_selfAssignModuleText;
    }

    public String getPmc_addSales() {
        return this.pmc_addSales;
    }

    public String getPmc_addAcreages() {
        return this.pmc_addAcreages;
    }

    public String getPmc_addHybrid() {
        return this.pmc_addHybrid;
    }

    public String getPmc_addSeason() {
        return this.pmc_addSeason;
    }

    public String getPmc_irrigation() {
        return this.pmc_irrigation;
    }

    public void setPmc_addSeason(String str) {
        this.pmc_addSeason = str;
    }

    public String getPmc_enterSalesDetailsToast() {
        return this.pmc_enterSalesDetailsToast;
    }

    public String getPmc_pleaseSelectCompany() {
        return this.pmc_pleaseSelectCompany;
    }

    public String getPmc_pwDataSaving() {
        return this.pmc_pwDataSaving;
    }

    public String getPmc_numberText() {
        return this.pmc_numberText;
    }

    public String getPmc_enterValidToast() {
        return this.pmc_enterValidToast;
    }

    public String getPmc_mobileExistsToast() {
        return this.pmc_mobileExistsToast;
    }

    public String getPmc_selectProperDate() {
        return this.pmc_selectProperDate;
    }

    public String getPmc_enterPropAcreToast() {
        return this.pmc_enterPropAcreToast;
    }

    public String getPmc_enterCropDOSToast() {
        return this.pmc_enterCropDOSToast;
    }

    public String getPmc_enterCropSeasomToast() {
        return this.pmc_enterCropSeasomToast;
    }

    public String getPmc_enterCropIrrigationToast() {
        return this.pmc_enterCropIrrigationToast;
    }

    public String getPmc_pleaseSelectCropToast() {
        return this.pmc_pleaseSelectCropToast;
    }

    public String getPmc_selectText() {
        return this.pmc_selectText;
    }

    public String getPmc_selectOneDropDownTitle() {
        return this.pmc_selectOneDropDownTitle;
    }

    public String getPmc_changeLanguage() {
        return this.pmc_changeLanguage;
    }

    public String getPmc_fileUploadSuccessDialog() {
        return this.pmc_fileUploadSuccessDialog;
    }

    public String getPmc_dataSendBGToast() {
        return this.pmc_dataSendBGToast;
    }

    public String getPmc_companyFilterHint() {
        return this.pmc_companyFilterHint;
    }

    public String getPmc_addFarmerText() {
        return this.pmc_addFarmerText;
    }

    public String getPmc_addFarmerTotal() {
        return this.pmc_addFarmerTotal;
    }

    public String getPmc_addFarmerPend() {
        return this.pmc_addFarmerPend;
    }

    public String getPmc_addRetailerText() {
        return this.pmc_addRetailerText;
    }

    public String getPmc_addRetailerTotal() {
        return this.pmc_addRetailerTotal;
    }

    public String getPmc_addRetailerPend() {
        return this.pmc_addRetailerPend;
    }

    public String getPmc_addVillageText() {
        return this.pmc_addVillageText;
    }

    public String getPmc_toDoText() {
        return this.pmc_toDoText;
    }

    public String getPmc_todoPendText() {
        return this.pmc_todoPendText;
    }

    public String getPmc_draftTabText() {
        return this.pmc_draftTabText;
    }

    public String getPmc_notSentTabText() {
        return this.pmc_notSentTabText;
    }

    public String getPmc_sentTabText() {
        return this.pmc_sentTabText;
    }

    public String getPmc_sentTabText_farmer() {
        return this.pmc_sentTabText_farmer;
    }

    public void setPmc_sentTabText_farmer(String str) {
        this.pmc_sentTabText_farmer = str;
    }

    public String getPmc_allTabText() {
        return this.pmc_allTabText;
    }

    public String getPmc_cropFilterText() {
        return this.pmc_cropFilterText;
    }

    public String getPmc_stateFilterText() {
        return this.pmc_stateFilterText;
    }

    public String getPmc_districtFilterText() {
        return this.pmc_districtFilterText;
    }

    public String getPmc_talukaFilterText() {
        return this.pmc_talukaFilterText;
    }

    public String getPmc_villageFilterText() {
        return this.pmc_villageFilterText;
    }

    public String getPmc_radiusFilterText() {
        return this.pmc_radiusFilterText;
    }

    public String getPmc_goFilterText() {
        return this.pmc_goFilterText;
    }

    public String getPmc_clearFilterText() {
        return this.pmc_clearFilterText;
    }

    public String getPmc_addFarmerDetailsText() {
        return this.pmc_addFarmerDetailsText;
    }

    public String getPmc_draftFarmerText() {
        return this.pmc_draftFarmerText;
    }

    public String getPmc_latitudeText() {
        return this.pmc_latitudeText;
    }

    public String getPmc_longitudeText() {
        return this.pmc_longitudeText;
    }

    public String getPmc_acresValueText() {
        return this.pmc_acresValueText;
    }

    public String getPmc_addCropText() {
        return this.pmc_addCropText;
    }

    public String getPmc_addLandText() {
        return this.pmc_addLandText;
    }

    public String getPmc_selectDropdownText() {
        return this.pmc_selectDropdownText;
    }

    public String getPmc_saveText() {
        return this.pmc_saveText;
    }

    public String getPmc_remarksText() {
        return this.pmc_remarksText;
    }

    public String getPmc_enterRemarksText() {
        return this.pmc_enterRemarksText;
    }

    public String getPmc_personalTabText() {
        return this.pmc_personalTabText;
    }

    public String getPmc_LandTabText() {
        return this.pmc_LandTabText;
    }

    public void setPmc_LandTabText(String str) {
        this.pmc_LandTabText = str;
    }

    public String getPmc_acreageTabText() {
        return this.pmc_acreageTabText;
    }

    public String getPmc_othersTabText() {
        return this.pmc_othersTabText;
    }

    public String getPmc_validationToast() {
        return this.pmc_validationToast;
    }

    public String getPmc_emptyEditText() {
        return this.pmc_emptyEditText;
    }

    public String getPmc_invalidNumberText() {
        return this.pmc_invalidNumberText;
    }

    public String getPmc_homeText() {
        return this.pmc_homeText;
    }

    public String getPmc_addRetailersDetailsText() {
        return this.pmc_addRetailersDetailsText;
    }

    public String getPmc_retailerDetailsText() {
        return this.pmc_retailerDetailsText;
    }

    public String getPmc_districtText() {
        return this.pmc_districtText;
    }

    public String getPmc_mandalsText() {
        return this.pmc_mandalsText;
    }

    public String getPmc_villageText() {
        return this.pmc_villageText;
    }

    public String getPmc_stateText() {
        return this.pmc_stateText;
    }

    public String getPmc_thereIsNoText() {
        return this.pmc_thereIsNoText;
    }

    public String getPmc_companiesText() {
        return this.pmc_companiesText;
    }

    public String getPmc_salesValueText() {
        return this.pmc_salesValueText;
    }

    public String getPmc_addCompanyText() {
        return this.pmc_addCompanyText;
    }

    public String getPmc_selfAssignText() {
        return this.pmc_selfAssignText;
    }

    public String getPmc_selectAsignTypeText() {
        return this.pmc_selectAsignTypeText;
    }

    public String getPmc_farmerText() {
        return this.pmc_farmerText;
    }

    public String getPmc_retailerText() {
        return this.pmc_retailerText;
    }

    public String getPmc_territoryText() {
        return this.pmc_territoryText;
    }

    public String getPmc_selectFarmerText() {
        return this.pmc_selectFarmerText;
    }

    public String getPmc_selectRetailerText() {
        return this.pmc_selectRetailerText;
    }

    public String getPmc_selectVillageText() {
        return this.pmc_selectVillageText;
    }

    public String getPmc_selectActivityText() {
        return this.pmc_selectActivityText;
    }

    public String getPmc_searchHereText() {
        return this.pmc_searchHereText;
    }

    public String getPmc_geoTabText() {
        return this.pmc_geoTabText;
    }

    public String getPmc_calendarTabText() {
        return this.pmc_calendarTabText;
    }

    public String getPmc_contactsTabText() {
        return this.pmc_contactsTabText;
    }

    public String getPmc_villageColumnText() {
        return this.pmc_villageColumnText;
    }

    public String getPmc_tbvColumnText() {
        return this.pmc_tbvColumnText;
    }

    public String getPmc_pdColumnText() {
        return this.pmc_pdColumnText;
    }

    public String getPmc_onExitToastText() {
        return this.pmc_onExitToastText;
    }

    public String getPmc_sendingDataWaitText() {
        return this.pmc_sendingDataWaitText;
    }

    public String getPmc_sentSuccessfullDialogText() {
        return this.pmc_sentSuccessfullDialogText;
    }

    public String getPmc_okText() {
        return this.pmc_okText;
    }

    public String getPmc_homeNav() {
        return this.pmc_homeNav;
    }

    public String getPmc_masterSyncNav() {
        return this.pmc_masterSyncNav;
    }

    public String getPmc_applicationPatchNav() {
        return this.pmc_applicationPatchNav;
    }

    public String getPmc_aboutPMCNav() {
        return this.pmc_aboutPMCNav;
    }

    public String getPmc_uploadNav() {
        return this.pmc_uploadNav;
    }

    public String getPmc_clearDataNav() {
        return this.pmc_clearDataNav;
    }

    public String getPmc_functionalStateNav() {
        return this.pmc_functionalStateNav;
    }

    public String getPmc_syncMasterPWText() {
        return this.pmc_syncMasterPWText;
    }

    public String getPmc_buildVersionText() {
        return this.pmc_buildVersionText;
    }

    public String getPmc_appVersionText() {
        return this.pmc_appVersionText;
    }

    public String getPmc_pwDatabaseUploadingPB() {
        return this.pmc_pwDatabaseUploadingPB;
    }

    public String getPmc_passwordCleardata() {
        return this.pmc_passwordCleardata;
    }

    public String getPmc_yesText() {
        return this.pmc_yesText;
    }

    public String getPmc_noText() {
        return this.pmc_noText;
    }

    public String getPmc_downloadFunStateButtonText() {
        return this.pmc_downloadFunStateButtonText;
    }

    public String getPmc_todoFarmerAssignAlertText() {
        return this.pmc_todoFarmerAssignAlertText;
    }

    public String getPmc_tbvScrollText() {
        return this.pmc_tbvScrollText;
    }

    public String getPmc_pdScrolltext() {
        return this.pmc_pdScrolltext;
    }

    public String getPmc_pfuscrolltext() {
        return this.pmc_pfuscrolltext;
    }

    public String getPmc_CannotSyncAlertText() {
        return this.pmc_CannotSyncAlertText;
    }

    public String getPmc_problemInSendingFileAlert() {
        return this.pmc_problemInSendingFileAlert;
    }

    public String getPmc_pleaseSelectStateToastInFS() {
        return this.pmc_pleaseSelectStateToastInFS;
    }

    public String getPmc_tryAgainDialogButtonText() {
        return this.pmc_tryAgainDialogButtonText;
    }

    public String getPmc_cancelDialogButtonText() {
        return this.pmc_cancelDialogButtonText;
    }

    public String getPmc_maxImagesToast() {
        return this.pmc_maxImagesToast;
    }

    public String getPmc_dataSavedSuccessfullyDialog() {
        return this.pmc_dataSavedSuccessfullyDialog;
    }

    public String getMo_progressText() {
        return this.mo_progressText;
    }

    public void setMo_progressText(String str) {
        this.mo_progressText = str;
    }

    public String getMo_FoName() {
        return this.mo_FoName;
    }

    public void setMo_FoName(String str) {
        this.mo_FoName = str;
    }

    public String getMo_hintPassword() {
        return this.mo_hintPassword;
    }

    public void setMo_hintPassword(String str) {
        this.mo_hintPassword = str;
    }

    public String getMo_btnLogin() {
        return this.mo_btnLogin;
    }

    public void setMo_btnLogin(String str) {
        this.mo_btnLogin = str;
    }

    public String getMo_labelFrgtPwd() {
        return this.mo_labelFrgtPwd;
    }

    public void setMo_labelFrgtPwd(String str) {
        this.mo_labelFrgtPwd = str;
    }

    public String getMo_copyRights() {
        return this.mo_copyRights;
    }

    public void setMo_copyRights(String str) {
        this.mo_copyRights = str;
    }

    public String getMo_trainingLiveText() {
        return this.mo_trainingLiveText;
    }

    public void setMo_trainingLiveText(String str) {
        this.mo_trainingLiveText = str;
    }

    public String getMo_LiveText() {
        return this.mo_LiveText;
    }

    public void setMo_LiveText(String str) {
        this.mo_LiveText = str;
    }

    public String getMo_trainingText() {
        return this.mo_trainingText;
    }

    public void setMo_trainingText(String str) {
        this.mo_trainingText = str;
    }

    public String getPmc_plsSelectImageToast() {
        return this.pmc_plsSelectImageToast;
    }

    public void setPmc_plsSelectImageToast(String str) {
        this.pmc_plsSelectImageToast = str;
    }

    public String getPmc_addVillageDetailsText() {
        return this.pmc_addVillageDetailsText;
    }

    public void setPmc_addVillageDetailsText(String str) {
        this.pmc_addVillageDetailsText = str;
    }

    public String getPmc_settingsToolbarText() {
        return this.pmc_settingsToolbarText;
    }

    public void setPmc_settingsToolbarText(String str) {
        this.pmc_settingsToolbarText = str;
    }

    public String getPmc_addSales1() {
        return this.pmc_addSales1;
    }

    public void setPmc_addSales1(String str) {
        this.pmc_addSales1 = str;
    }

    public String getPmc_sales2016() {
        return this.pmc_sales2016;
    }

    public void setPmc_sales2016(String str) {
        this.pmc_sales2016 = str;
    }

    public String getPmc_sales2017() {
        return this.pmc_sales2017;
    }

    public void setPmc_sales2017(String str) {
        this.pmc_sales2017 = str;
    }

    public String getPmc_addCropText1() {
        return this.pmc_addCropText1;
    }

    public void setPmc_addCropText1(String str) {
        this.pmc_addCropText1 = str;
    }

    public String getPmc_EditDistributorText() {
        return this.pmc_EditDistributorText;
    }

    public void setPmc_EditDistributorText(String str) {
        this.pmc_EditDistributorText = str;
    }
}
