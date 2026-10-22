package com.conceptglobal.pmc.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import android.widget.EditText;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.NeoCampaignConstants;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.model.ApplyLeaveModel;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.AttendanceModel;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.ComplaintAssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.DealerCompanyMapping;
import com.conceptglobal.pmc.model.DealerCropMapping;
import com.conceptglobal.pmc.model.DealerLandDetails;
import com.conceptglobal.pmc.model.DealerMaster;
import com.conceptglobal.pmc.model.Districts;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.ExpensesAssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.FBFActivityResolveTrackModel;
import com.conceptglobal.pmc.model.FOPendingStatus;
import com.conceptglobal.pmc.model.FarmerCollection;
import com.conceptglobal.pmc.model.FarmerCropCollection;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.model.FarmerDetails;
import com.conceptglobal.pmc.model.FarmerLandDetails;
import com.conceptglobal.pmc.model.FarmerMaster;
import com.conceptglobal.pmc.model.FarmerMultiAttributeDetails;
import com.conceptglobal.pmc.model.GetSegmentationDetails;
import com.conceptglobal.pmc.model.GetUserDetailsModel;
import com.conceptglobal.pmc.model.I2VAttendanceDetails;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LastVisitModel;
import com.conceptglobal.pmc.model.Mandals;
import com.conceptglobal.pmc.model.PMCAttendanceModel;
import com.conceptglobal.pmc.model.PictureReportingData;
import com.conceptglobal.pmc.model.PmcRetailersModel;
import com.conceptglobal.pmc.model.ResignationDetails;
import com.conceptglobal.pmc.model.ResignationStatusDetails;
import com.conceptglobal.pmc.model.RetailerMultiAttributeDetails;
import com.conceptglobal.pmc.model.SDTV;
import com.conceptglobal.pmc.model.SendAckList;
import com.conceptglobal.pmc.model.SendAckSdtv;
import com.conceptglobal.pmc.model.States;
import com.conceptglobal.pmc.model.StatusActivityModel;
import com.conceptglobal.pmc.model.SurveyAssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.TableBean;
import com.conceptglobal.pmc.model.VillageCollection;
import com.conceptglobal.pmc.model.Villages;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class InsertDataIntoDB {
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();

    public static synchronized void insertCropSelectionDetails(FarmerCropMapping farmerCropMapping) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO FarmerCropDetails(FarmerID ,CropID,Acreages,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,pdaid,productId,RespondentNo,dos,SeasonID,IrrigationType,AcreageType,AcreageValue,IsActive) VALUES(" + farmerCropMapping.getFarmerId() + ", " + farmerCropMapping.getCropId() + ", '" + farmerCropMapping.getAcreages() + "', 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','" + farmerCropMapping.getHybridId() + "','" + farmerCropMapping.getRespondentNo() + "','" + farmerCropMapping.getDos() + "', " + farmerCropMapping.getSeasonID() + ", '" + farmerCropMapping.getIrrigationType() + "'," + farmerCropMapping.getAcreagetype() + ",'" + farmerCropMapping.getAcreagevalue() + "',1)");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertPlotDetails(DealerLandDetails dealerLandDetails) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO DealerLandDetails(contactId ,LandName,Acreages,Address,Latitude,Longitude,IsOnField,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaID,GPSTimeStamp,IsActive) VALUES(" + dealerLandDetails.getContactid() + ", '" + dealerLandDetails.getLandname() + "', '" + dealerLandDetails.getAcreages() + "', '" + dealerLandDetails.getAddress() + "', '" + dealerLandDetails.getLatitude() + "', '" + dealerLandDetails.getLongitude() + "', '" + dealerLandDetails.getOnField() + "', 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','" + dealerLandDetails.getGPSTimeStamp() + "',1)");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updateCropSelectionDetails(FarmerCropMapping farmerCropMapping) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT OR REPLACE INTO FarmerCropDetails(DetailsID ,FarmerID ,CropID,Acreages,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,pdaid,productId,RespondentNo,dos,SeasonID,IrrigationType,AcreageType,AcreageValue,IsActive) VALUES(" + farmerCropMapping.getMappingId() + ", " + farmerCropMapping.getFarmerId() + ", " + farmerCropMapping.getCropId() + ", '" + farmerCropMapping.getAcreages() + "', 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','" + farmerCropMapping.getHybridId() + "','" + farmerCropMapping.getRespondentNo() + "','" + farmerCropMapping.getDos() + "', " + farmerCropMapping.getSeasonID() + ", '" + farmerCropMapping.getIrrigationType() + "'," + farmerCropMapping.getAcreagetype() + ",'" + farmerCropMapping.getAcreagevalue() + "',1)");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updateDeletedCropSelectionDetails(FarmerCropMapping farmerCropMapping) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT OR REPLACE INTO FarmerCropDetails(DetailsID ,FarmerID ,CropID,Acreages,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,pdaid,productId,RespondentNo,dos,SeasonID,IrrigationType,IsActive) VALUES(" + farmerCropMapping.getMappingId() + ", " + farmerCropMapping.getFarmerId() + ", " + farmerCropMapping.getCropId() + ", '" + farmerCropMapping.getAcreages() + "', 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','" + farmerCropMapping.getHybridId() + "','" + farmerCropMapping.getRespondentNo() + "','" + farmerCropMapping.getDos() + "', " + farmerCropMapping.getSeasonID() + ", '" + farmerCropMapping.getIrrigationType() + "',0)");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updatePlotDetails(FarmerLandDetails farmerLandDetails) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT OR REPLACE INTO FarmerLandDetails(DetailsID ,FarmerID ,LandName,Acreages,Address,Latitude,Longitude,IsOnField,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaID,RespondentNo,IsActive) VALUES(" + farmerLandDetails.getMappingId() + ", " + farmerLandDetails.getFarmerId() + ", '" + farmerLandDetails.getLandname() + "', '" + farmerLandDetails.getAcreages() + "', '" + farmerLandDetails.getAddress() + "', '" + farmerLandDetails.getLatitude() + "', '" + farmerLandDetails.getLongitude() + "', '" + farmerLandDetails.getOnField() + "', 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','" + farmerLandDetails.getRespondentNo() + "','1')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updateDealerPlotDetails(DealerLandDetails dealerLandDetails) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT OR REPLACE INTO DealerLandDetails(DetailsID ,ContactId ,LandName,Acreages,Address,Latitude,Longitude,IsOnField,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaID,IsActive) VALUES(" + dealerLandDetails.getMappingId() + ", " + dealerLandDetails.getContactid() + ", '" + dealerLandDetails.getLandname() + "', '" + dealerLandDetails.getAcreages() + "', '" + dealerLandDetails.getAddress() + "', '" + dealerLandDetails.getLatitude() + "', '" + dealerLandDetails.getLongitude() + "', '" + dealerLandDetails.getOnField() + "', 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','1')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updatePlotDetailsWithGstTimeStamp(FarmerLandDetails farmerLandDetails) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT OR REPLACE INTO FarmerLandDetails(DetailsID ,FarmerID ,LandName,Acreages,Address,Latitude,Longitude,IsOnField,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaID,GPSTimeStamp,RespondentNo,IsActive) VALUES(" + farmerLandDetails.getMappingId() + ", " + farmerLandDetails.getFarmerId() + ", '" + farmerLandDetails.getLandname() + "', '" + farmerLandDetails.getAcreages() + "', '" + farmerLandDetails.getAddress() + "', '" + farmerLandDetails.getLatitude() + "', '" + farmerLandDetails.getLongitude() + "', '" + farmerLandDetails.getOnField() + "', 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','" + farmerLandDetails.getGPSTimeStamp() + "','" + farmerLandDetails.getRespondentNo() + "','1')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updateDealerPlotDetailsWithGstTimeStamp(DealerLandDetails dealerLandDetails) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT OR REPLACE INTO FarmerLandDetails(DetailsID ,ContactId ,LandName,Acreages,Address,Latitude,Longitude,IsOnField,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaID,GPSTimeStamp,IsActive) VALUES(" + dealerLandDetails.getMappingId() + ", " + dealerLandDetails.getContactid() + ", '" + dealerLandDetails.getLandname() + "', '" + dealerLandDetails.getAcreages() + "', '" + dealerLandDetails.getAddress() + "', '" + dealerLandDetails.getLatitude() + "', '" + dealerLandDetails.getLongitude() + "', '" + dealerLandDetails.getOnField() + "', 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','" + dealerLandDetails.getGPSTimeStamp() + "','1')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertCompanySelectionDetails(DealerCompanyMapping dealerCompanyMapping) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                dealerCompanyMapping.setMappingId(Math.round(getRecordCount("SELECT max(MappingId) from DealerCompanyMapping")) + 1);
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO DealerCompanyMapping(MappingId,ContactId,CompanyId,CompanySales,ServerUpdatedStatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaId) VALUES(" + dealerCompanyMapping.getMappingId() + ",'" + dealerCompanyMapping.getContactId() + "'," + dealerCompanyMapping.getCompanyId() + ",'" + dealerCompanyMapping.getCompanySales() + "','false'," + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ",'" + UtilDeclarations.getDateTime() + "'," + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ",'" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertCropSelectionDetails(DealerCropMapping dealerCropMapping) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                if (dealerCropMapping.getMappingId() == 0) {
                    dealerCropMapping.setMappingId(Math.round(getRecordCount("SELECT max(MappingId) from DealerCropMapping")) + 1);
                }
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT OR Replace INTO DealerCropMapping(MappingId,ContactId,CropId,CropName,CropSales,status,ServerUpdatedStatus,CompanyHybridSaleBrandId1,CompanyHybridSaleBrandId2,CompetitonHybridSaleBrandId1,CompetitonHybridSaleBrandId2,CompanySale1,CompanyHybridSale1,CompanyHybridSale2,CompetitonHybridSale1,CompetitonHybridSale2,CompanyId1,CompanyId2,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate) VALUES(" + dealerCropMapping.getMappingId() + ",'" + dealerCropMapping.getContactId() + "'," + dealerCropMapping.getCropId() + ",'" + dealerCropMapping.getCropName() + "','" + dealerCropMapping.getCropSales() + "',1,'false','" + dealerCropMapping.getCompanyHybridSaleBrandId1() + "','" + dealerCropMapping.getCompanyHybridSaleBrandId2() + "','" + dealerCropMapping.getCompetitonHybridSaleBrandId1() + "','" + dealerCropMapping.getCompetitonHybridSaleBrandId2() + "','" + dealerCropMapping.getCompanySale1() + "','" + dealerCropMapping.getCompanyHybridSale1() + "','" + dealerCropMapping.getCompanyHybridSale2() + "','" + dealerCropMapping.getCompetitonHybridSale1() + "','" + dealerCropMapping.getCompetitonHybridSale2() + "','" + dealerCropMapping.getCompetitonCompany1() + "','" + dealerCropMapping.getCompetitonCompany2() + "'," + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ",'" + UtilDeclarations.getDateTime() + "'," + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ",'" + UtilDeclarations.getDateTime() + "')");
            } catch (Exception e) {
                PLog.e("DealerCropDetaisl", e);
                throw e;
            }
        }
    }

    public static synchronized void insertFarmerActivityDetailsWithSequenceId(List<AttributeModel> list, String str, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7) throws Exception {
        long insert;
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        for (int i8 = 0; i8 < list.size(); i8++) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("ActivitySegmentValue", str);
                            contentValues.put("ActivitySegmentId", Integer.valueOf(i6));
                            contentValues.put("ActivityMasterId", Integer.valueOf(i));
                            contentValues.put("AttributeId", Integer.valueOf(list.get(i8).getAttributeId()));
                            contentValues.put("attributeValue", list.get(i8).getAttributeValue());
                            contentValues.put("serverUpdatedStatus", "false");
                            contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("createddate", UtilDeclarations.getDateTime());
                            contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                            contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                            contentValues.put("isPlanned", Integer.valueOf(i2));
                            contentValues.put("isDone", Integer.valueOf(i3));
                            contentValues.put("TransId", Long.valueOf(j));
                            contentValues.put("AssignmentId", Integer.valueOf(i4));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("PairId", list.get(i8).getSequenceId());
                            contentValues.put("ChildLevelId", list.get(i8).getChildLevelId());
                            contentValues.put("ActivityAttributeId", Integer.valueOf(list.get(i8).getActivityAttributeId()));
                            contentValues.put("isActive", (Integer) 1);
                            if (list.get(i8).getDetailsId() != 0 && String.valueOf(list.get(i8).getDetailsId()) != null) {
                                contentValues.put("detailsID", Integer.valueOf(list.get(i8).getDetailsId()));
                                insert = openDatabase.update("pmcAssignmentActivityDetails", contentValues, "detailsID =" + list.get(i8).getDetailsId(), null);
                                Log.i("insertchildvalues", insert + "");
                            }
                            insert = openDatabase.insert("pmcAssignmentActivityDetails", null, contentValues);
                            Log.i("insertchildvalues", insert + "");
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertFarmerActivityDetailsImage(ImageDetails imageDetails, boolean z) throws Exception {
        long insert;
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("AssignmentId", Integer.valueOf(imageDetails.getAssignmentId()));
                        contentValues.put("ActivityId", Integer.valueOf(imageDetails.getActivityId()));
                        contentValues.put("PicturePath", imageDetails.getPicturePath());
                        contentValues.put("Comments", imageDetails.getComments());
                        contentValues.put("SubJect", imageDetails.getSubject());
                        contentValues.put("ServerStatus", "false");
                        contentValues.put("PDAID", Integer.valueOf(imageDetails.getPdaID()));
                        contentValues.put("AttributeId", Integer.valueOf(imageDetails.getAttributeId()));
                        contentValues.put("CreatedBy", imageDetails.getCreatedBy());
                        contentValues.put("CreatedDate", imageDetails.getCtreatedDate());
                        contentValues.put("UpdatedBy", imageDetails.getUpdatedBy());
                        contentValues.put("UpdatedDate", imageDetails.getUpdatedDate());
                        contentValues.put("Remarks", imageDetails.getRemarks());
                        contentValues.put("ResField1", "");
                        contentValues.put("pdaCreatedDate", UtilDeclarations.getDateTime());
                        contentValues.put("ReferenceType", imageDetails.getReferenceType());
                        contentValues.put("ReferenceID", imageDetails.getReferenceId());
                        contentValues.put("EventTypeId", Integer.valueOf(imageDetails.getEventTypeId()));
                        contentValues.put("ContentTypeId", Integer.valueOf(imageDetails.getContentTypeId()));
                        if (z) {
                            insert = openDatabase.update("ActivityImageDetails", contentValues, "ImageId =" + imageDetails.getImageId(), null);
                        } else {
                            contentValues.put("ImageId", Long.valueOf(System.currentTimeMillis()));
                            insert = openDatabase.insert("ActivityImageDetails", null, contentValues);
                        }
                        Log.e("dbimage", insert + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertFarmerActivityDetailsVideo(ImageDetails imageDetails, boolean z) throws Exception {
        long insert;
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("AssignmentId", Integer.valueOf(imageDetails.getAssignmentId()));
                        contentValues.put("ActivityId", Integer.valueOf(imageDetails.getActivityId()));
                        contentValues.put("PicturePath", imageDetails.getPicturePath());
                        contentValues.put("Comments", imageDetails.getComments());
                        contentValues.put("SubJect", imageDetails.getSubject());
                        contentValues.put("ServerStatus", "false");
                        contentValues.put("PDAID", Integer.valueOf(imageDetails.getPdaID()));
                        contentValues.put("AttributeId", Integer.valueOf(imageDetails.getAttributeId()));
                        contentValues.put("CreatedBy", imageDetails.getCreatedBy());
                        contentValues.put("CreatedDate", imageDetails.getCtreatedDate());
                        contentValues.put("UpdatedBy", imageDetails.getUpdatedBy());
                        contentValues.put("UpdatedDate", imageDetails.getUpdatedDate());
                        contentValues.put("Remarks", imageDetails.getRemarks());
                        contentValues.put("ResField1", "");
                        contentValues.put("pdaCreatedDate", UtilDeclarations.getDateTime());
                        contentValues.put("ReferenceType", imageDetails.getReferenceType());
                        contentValues.put("ReferenceID", imageDetails.getReferenceId());
                        contentValues.put("EventTypeId", Integer.valueOf(imageDetails.getEventTypeId()));
                        contentValues.put("ContentTypeId", Integer.valueOf(imageDetails.getContentTypeId()));
                        contentValues.put("IsCompressed", Boolean.valueOf(imageDetails.isCompressed()));
                        if (z) {
                            insert = openDatabase.update("ActivityImageDetails", contentValues, "ImageId =" + imageDetails.getImageId(), null);
                        } else {
                            contentValues.put("ImageId", Long.valueOf(imageDetails.getImageId()));
                            insert = openDatabase.insert("ActivityImageDetails", null, contentValues);
                        }
                        Log.e("dbimage", insert + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertStatusActivityDetails(List<StatusActivityModel> list) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue("select Max(statusid) from pmcStatusDetails");
                for (int i = 0; i < list.size(); i++) {
                    GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO pmcStatusDetails(marketname ,statename ,districtname,talukaname,activityname,fopendingcount ,approvependingcount ,villageid ,villagename,foid,foname,createddate) VALUES('" + list.get(i).getMarketname() + "','" + list.get(i).getStatename() + "','" + list.get(i).getDistrictname() + "','" + list.get(i).getTalukaname() + "','" + list.get(i).getActivityname() + "','" + list.get(i).getFopendingcount() + "','" + list.get(i).getApprovedcount() + "','" + list.get(i).getVillageid() + "','" + list.get(i).getVillagename() + "','" + list.get(i).getFoid() + "','" + list.get(i).getFoname() + "','" + UtilDeclarations.getDate() + "')");
                }
                GetDataFromDB.getInstance().executeRawQueryInDB("delete from pmcStatusDetails where statusid <=" + stringValue);
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertAssignFarmerActivityPendingCountDetails(List<FOPendingStatus> list) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue("select Max(pendingid) from pmcAssignPendingCounts");
                for (int i = 0; i < list.size(); i++) {
                    GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO pmcAssignPendingCounts(fopdaid ,farmerpendingcount ,activitypendingcount) VALUES('" + list.get(i).getFOPDAID() + "','" + list.get(i).getFarmerPendingCount() + "','" + list.get(i).getActivityPendingCount() + "')");
                }
                GetDataFromDB.getInstance().executeRawQueryInDB("delete from pmcAssignPendingCounts where pendingid <=" + stringValue);
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void UpdateFarmerFavouriteDetails(ContentValues contentValues, String str, String str2) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        if (openDatabase.update("FavouriteFarmer", contentValues, str + " = " + str2, null) <= 0) {
                            openDatabase.insert("FavouriteFarmer", null, contentValues);
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void UpdateRetailerFavouriteDetails(ContentValues contentValues, String str, String str2) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        if (openDatabase.update("FavouriteRetailer", contentValues, str + " = " + str2, null) <= 0) {
                            openDatabase.insert("FavouriteRetailer", null, contentValues);
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertAssignPendingDetails(int i, int i2, int i3) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO pmcAssignPendingCounts(fopdaid, farmerpendingcount, activitypendingcount) values('" + i + "','" + i3 + "','" + i2 + "')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static int getRecordCount(String str) throws Exception {
        Cursor cursor = null;
        try {
            try {
                cursor = dbInstance.openDatabase().rawQuery(str, null);
                int i = 0;
                if (cursor != null && cursor.moveToFirst()) {
                    do {
                        try {
                            i = cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue());
                        } catch (Exception unused) {
                        }
                    } while (cursor.moveToNext());
                }
                return i;
            } catch (Exception e) {
                throw e;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            dbInstance.closeDatabase();
        }
    }

    public static synchronized void insertUserDetails(GetUserDetailsModel getUserDetailsModel, String str) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO pmcUserDetails(lineId, userId, userName, password, firstName, mobile,pdauser ,pdaID,active,createdBy,createdDate,updatedBy,updatedDate,city,roleid,address3,NotificationStatus,HomeLatitude,HomeLongitude,HomeAddress,homelocationupdateddate,isCampaignRequired) values(1," + getUserDetailsModel.getUserid() + ",'" + getUserDetailsModel.getUsername() + "','" + getUserDetailsModel.getPassword() + "','" + getUserDetailsModel.getFirstName() + "','" + str + "','1','" + getUserDetailsModel.getDeviceid() + "','" + getUserDetailsModel.getActive() + "'," + getUserDetailsModel.getUserid() + ", '" + UtilDeclarations.getDateTime() + "', " + getUserDetailsModel.getUserid() + ", '" + UtilDeclarations.getDateTime() + "','" + getUserDetailsModel.getTerritoryID() + "','" + getUserDetailsModel.getUserType() + "','" + getUserDetailsModel.getGeoDisplayName() + "','" + getUserDetailsModel.getNotificationStatus() + "','" + getUserDetailsModel.getHomeLatitude() + "','" + getUserDetailsModel.getHomeLongitude() + "','" + getUserDetailsModel.getHomeAddress() + "','" + getUserDetailsModel.getHomelocationupdateddate() + "'," + getUserDetailsModel.getIsCampaignRequired() + ")");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void UpdateUserDetails(GetUserDetailsModel getUserDetailsModel, String str) throws Exception {
        SQLiteDatabase sQLiteDatabase;
        DataBaseHandler dataBaseHandler;
        synchronized (InsertDataIntoDB.class) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("userId", Integer.valueOf(getUserDetailsModel.getUserid()));
                contentValues.put(NeoCampaignConstants.USER_NAME, getUserDetailsModel.getUsername());
                contentValues.put(NeoCampaignConstants.PASSWORD, getUserDetailsModel.getPassword());
                contentValues.put("firstName", getUserDetailsModel.getFirstName());
                contentValues.put("mobile", str);
                contentValues.put("pdauser", (Integer) 1);
                contentValues.put("pdaID", getUserDetailsModel.getDeviceid());
                contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, getUserDetailsModel.getActive());
                contentValues.put("createdBy", Integer.valueOf(getUserDetailsModel.getUserid()));
                contentValues.put("updatedBy", Integer.valueOf(getUserDetailsModel.getUserid()));
                contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                contentValues.put("city", getUserDetailsModel.getTerritoryID());
                contentValues.put("roleid", Integer.valueOf(getUserDetailsModel.getUserType()));
                contentValues.put("address3", getUserDetailsModel.getGeoDisplayName());
                contentValues.put("HomeLatitude", getUserDetailsModel.getHomeLatitude());
                contentValues.put("HomeLongitude", getUserDetailsModel.getHomeLongitude());
                contentValues.put("HomeAddress", getUserDetailsModel.getHomeAddress());
                contentValues.put("homelocationupdateddate", getUserDetailsModel.getHomelocationupdateddate());
                contentValues.put("isCampaignRequired", Integer.valueOf(getUserDetailsModel.getIsCampaignRequired()));
                try {
                    try {
                        SQLiteDatabase openDatabase = dbInstance.openDatabase();
                        if (openDatabase != null) {
                            try {
                                long update = openDatabase.update("pmcUserDetails", contentValues, "pdaID = " + getUserDetailsModel.getDeviceid(), null);
                                Log.d("Log", "insertuserDetails: " + update);
                                if (update == 0) {
                                    openDatabase.insert("pmcAssignmentActivityDetails", null, contentValues);
                                }
                            } catch (Exception e) {
                                e = e;
                                sQLiteDatabase = openDatabase;
                                try {
                                    sQLiteDatabase.rawQuery(Queries.getInstance().insertIntoSyncErrorLog("UserId", getUserDetailsModel.getDeviceid() + "", "pmcFarmerActivityDetails", e, "jkddh", "pmcFarmerActivityDetails"), null);
                                } catch (Exception unused) {
                                    PLog.e("Insertion Error : ", e);
                                }
                                PLog.e("Insertion Error : ", e);
                                dataBaseHandler = dbInstance;
                                dataBaseHandler.closeDatabase();
                            }
                        }
                        dataBaseHandler = dbInstance;
                    } catch (Exception e2) {
                        e = e2;
                        sQLiteDatabase = null;
                    }
                    dataBaseHandler.closeDatabase();
                } catch (Throwable th) {
                    dbInstance.closeDatabase();
                    throw th;
                }
            } catch (Exception e3) {
                throw e3;
            }
        }
    }

    public static synchronized void UpdateUserDetailsFOHomeLocation(ContentValues contentValues, String str) throws Exception {
        SQLiteDatabase sQLiteDatabase;
        DataBaseHandler dataBaseHandler;
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    try {
                        SQLiteDatabase openDatabase = dbInstance.openDatabase();
                        if (openDatabase != null) {
                            try {
                                openDatabase.update("pmcUserDetails", contentValues, "pdaID = " + str, null);
                            } catch (Exception e) {
                                e = e;
                                sQLiteDatabase = openDatabase;
                                try {
                                    sQLiteDatabase.rawQuery(Queries.getInstance().insertIntoSyncErrorLog("UserId", str + "", "pmcUserDetails", e, "jkddh", "pmcUserDetails"), null);
                                } catch (Exception unused) {
                                    PLog.e("Insertion Error : ", e);
                                }
                                PLog.e("Insertion Error : ", e);
                                dataBaseHandler = dbInstance;
                                dataBaseHandler.closeDatabase();
                            }
                        }
                        dataBaseHandler = dbInstance;
                    } catch (Exception e2) {
                        e = e2;
                        sQLiteDatabase = null;
                    }
                    dataBaseHandler.closeDatabase();
                } catch (Throwable th) {
                    dbInstance.closeDatabase();
                    throw th;
                }
            } catch (Exception e3) {
                throw e3;
            }
        }
    }

    public static synchronized SendAckList insertRetailerList(List<PmcRetailersModel> list, SendAckList sendAckList) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                int size = list.size();
                ArrayList arrayList = new ArrayList();
                for (int i = size - 1; i >= 0; i--) {
                    PmcRetailersModel pmcRetailersModel = list.get(i);
                    String str = "Insert or replace into pmcRetailers(contactId,contactName,stateId,districtId,mandalId,villageId,mobileNumber,retailerShopName,marketName,contactCode,pType,longitude,latitude,pdaid,retailerCode,serverUpdatedStatus,createdBy,createdDate,updatedBy,updatedDate) VALUES ('" + pmcRetailersModel.getContactId() + "','" + pmcRetailersModel.getContactName() + "','" + pmcRetailersModel.getStateId() + "','" + pmcRetailersModel.getDistrictId() + "','" + pmcRetailersModel.getMandalId() + "','" + pmcRetailersModel.getVillageId() + "','" + pmcRetailersModel.getMobileNumber() + "','" + pmcRetailersModel.getRetailerShopName() + "','" + pmcRetailersModel.getMarketName() + "','" + pmcRetailersModel.getContactCode() + "','" + pmcRetailersModel.getpType() + "','" + pmcRetailersModel.getLongitude() + "','" + pmcRetailersModel.getLatitude() + "','" + ConstantsPMC.getInstance().getDeviceID().toString() + "', '" + pmcRetailersModel.getRetailercode() + "','true','" + ConstantsPMC.getInstance().getUserId().toString() + "', '" + UtilDeclarations.getDateTime() + "', '" + ConstantsPMC.getInstance().getUserId().toString() + "', '" + UtilDeclarations.getDateTime() + "')";
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(str);
                        arrayList.add(pmcRetailersModel.getContactId());
                    } catch (Exception e) {
                        try {
                            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().insertIntoSyncErrorLog("contactId", pmcRetailersModel.getContactId() + "", "pmcRetailers", e, str, "Retailer Sync"));
                        } catch (Exception unused) {
                            PLog.e("Insertion Error : ", e);
                        }
                        PLog.e("Insertion Error : ", e);
                    }
                }
                sendAckList.getAckList().setPmcRetailers(arrayList);
            } catch (Exception e2) {
                throw e2;
            }
        }
        return sendAckList;
    }

    public static synchronized SendAckList insertFarmersList(GetSegmentationDetails getSegmentationDetails, SendAckList sendAckList) throws Exception {
        DataBaseHandler dataBaseHandler;
        Exception exc;
        SQLiteDatabase sQLiteDatabase;
        DataBaseHandler dataBaseHandler2;
        Exception exc2;
        SQLiteDatabase sQLiteDatabase2;
        DataBaseHandler dataBaseHandler3;
        Exception exc3;
        SQLiteDatabase sQLiteDatabase3;
        DataBaseHandler dataBaseHandler4;
        Exception exc4;
        SQLiteDatabase sQLiteDatabase4;
        DataBaseHandler dataBaseHandler5;
        Iterator it;
        Exception exc5;
        SQLiteDatabase sQLiteDatabase5;
        DataBaseHandler dataBaseHandler6;
        synchronized (InsertDataIntoDB.class) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
            new LinkedHashMap();
            if (getSegmentationDetails != null) {
                try {
                    int i = 1;
                    if (getSegmentationDetails.getFarmerCollection() != null && getSegmentationDetails.getFarmerCollection().size() > 0) {
                        for (int size = getSegmentationDetails.getFarmerCollection().size() - 1; size >= 0; size--) {
                            FarmerCollection farmerCollection = getSegmentationDetails.getFarmerCollection().get(size);
                            String str = "Insert or replace into pmcFarmerDetails(farmerId, farmerName,surName,fatherName,mobile,landline,coNumber,pinCode,landMark,latitude,longitude,emailAddress,education,annualHouseholdIncome,noofFamilyMembers,respondentNo,stateName,districtName,mandalName,villageName,respondentName,gender,segment,acreagesOwned,leasedIn,leasedOut,cultivated,serverUpdatedStatus,createdBy,createdDate,updatedBy,updatedDate,villageid,pdaId, isVisited,retailerId,totalLandHolding, Address,Field2,ismba) values (" + farmerCollection.getFarmerId() + ",'" + farmerCollection.getFarmerName() + "','" + farmerCollection.getSurName() + "','" + farmerCollection.getFatherName() + "','" + farmerCollection.getMobile() + "','" + farmerCollection.getLandline() + "','" + farmerCollection.getCONumber() + "','" + farmerCollection.getPincode() + "','" + farmerCollection.getLandMark() + "','" + farmerCollection.getLatitude() + "','" + farmerCollection.getLongitude() + "','" + farmerCollection.getEmailAddress() + "','" + farmerCollection.getEducation() + "','" + farmerCollection.getAnnualHouseholdIncome() + "','" + farmerCollection.getNoofFamilyMembers() + "','" + farmerCollection.getRespondentNo() + "','" + farmerCollection.getStateName() + "','" + farmerCollection.getDistrictName() + "','" + farmerCollection.getMandalName() + "','" + farmerCollection.getVillageName() + "','" + farmerCollection.getRespondentName() + "','" + farmerCollection.getGender() + "','" + farmerCollection.getSegment() + "','" + farmerCollection.getAcreagesOwned() + "','" + farmerCollection.getLeasedIn() + "','" + farmerCollection.getLeasedOut() + "','" + farmerCollection.getCultivated() + "','','" + ConstantsPMC.getInstance().getUserId().toString() + "', '" + UtilDeclarations.getDateTime() + "', '" + ConstantsPMC.getInstance().getUserId().toString() + "', '" + UtilDeclarations.getDateTime() + "','" + farmerCollection.getVillageID() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','false','" + farmerCollection.getRetailerId() + "','" + farmerCollection.getTotalLandHolding() + "','" + farmerCollection.getAddress() + "','" + farmerCollection.getFieldtwo() + "','" + farmerCollection.getIsMBA() + "')";
                            try {
                                GetDataFromDB.getInstance().executeRawQueryInDB(str);
                                sendAckList.getAckList().getPmcFarmerDetails().add(Integer.toString(farmerCollection.getFarmerId()));
                                if (farmerCollection.getIsMBA() == 1) {
                                    sendAckList.getAckList().getMBAAssignmentids().add(Integer.toString(farmerCollection.getFarmerId()));
                                }
                            } catch (Exception e) {
                                try {
                                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().insertIntoSyncErrorLog("VillageId", farmerCollection.getVillageID(), "pmcFarmerDetails", e, str, "pmcFarmerDetails"));
                                } catch (Exception unused) {
                                    PLog.e("Insertion Error : ", e);
                                }
                                PLog.e("Insertion Error : ", e);
                            }
                        }
                    }
                    if (getSegmentationDetails.getLastVisitActivityAttributes() != null && getSegmentationDetails.getLastVisitActivityAttributes().size() > 0) {
                        try {
                            for (int size2 = getSegmentationDetails.getLastVisitActivityAttributes().size() - 1; size2 >= 0; size2--) {
                                LastVisitModel lastVisitModel = getSegmentationDetails.getLastVisitActivityAttributes().get(size2);
                                String str2 = "Insert into pmcLastVisitDetails (lastVisitDate,ActivitySegmentvalue,activityName,visitDescription,createdBy,createdDate,updatedBy,updatedDate,person1,person2,location1,location2,ActivitySegmentId,AttributeId,AttributeName,AttributeValue,previousActivityAssignmentId,ActivityAssignmentId,FOName,Latitude,Longitude) values( '" + lastVisitModel.getLastVisitDate() + "','" + lastVisitModel.getActivitySegmentValue() + "','" + lastVisitModel.getActivityName() + "','" + lastVisitModel.getVisitDescription() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "', '" + UtilDeclarations.getDateTime() + "', '" + lastVisitModel.getPerson1() + "','" + lastVisitModel.getPerson2() + "','" + lastVisitModel.getLocation1() + "','" + lastVisitModel.getLocation1() + "', '" + lastVisitModel.getActivitySegmentId() + "', '" + lastVisitModel.getAttributeId() + "', '" + lastVisitModel.getAttributeName() + "', '" + lastVisitModel.getAttributeValue() + "', '" + lastVisitModel.getPreviousActivityAssignmentId() + "', '" + lastVisitModel.getActivityAssignmentId() + "', '" + lastVisitModel.getFOName() + "', '" + lastVisitModel.getLatitude() + "', '" + lastVisitModel.getLongitude() + "')";
                                try {
                                    GetDataFromDB.getInstance().executeRawQueryInDB(str2);
                                    sendAckList.getAckList().getPmcFarmerLastVisitDetails().add(lastVisitModel.getActivitySegmentValue());
                                } catch (Exception e2) {
                                    try {
                                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().insertIntoSyncErrorLog("farmerId", lastVisitModel.getActivitySegmentValue() + "", "pmcLastVisitDetails", e2, str2, "pmcLastVisitDetails"));
                                    } catch (Exception unused2) {
                                        PLog.e("Insertion Error : ", e2);
                                    }
                                    PLog.e("Insertion Error : ", e2);
                                }
                            }
                        } catch (Exception e3) {
                            PLog.e("Insertion Error : ", e3);
                        }
                    }
                    int i2 = 3;
                    String[] strArr = null;
                    if (getSegmentationDetails.getFarmerActivityCollection() != null && getSegmentationDetails.getFarmerActivityCollection().size() > 0) {
                        for (int i3 = 0; i3 < getSegmentationDetails.getFarmerActivityCollection().size(); i3++) {
                            try {
                                if (linkedHashMap.get(Integer.valueOf(getSegmentationDetails.getFarmerActivityCollection().get(i3).getActivityAssignmentId())) == null) {
                                    linkedHashMap.put(Integer.valueOf(getSegmentationDetails.getFarmerActivityCollection().get(i3).getActivityAssignmentId()), new ArrayList());
                                    ((List) linkedHashMap.get(Integer.valueOf(getSegmentationDetails.getFarmerActivityCollection().get(i3).getActivityAssignmentId()))).add(getSegmentationDetails.getFarmerActivityCollection().get(i3));
                                } else {
                                    ((List) linkedHashMap.get(Integer.valueOf(getSegmentationDetails.getFarmerActivityCollection().get(i3).getActivityAssignmentId()))).add(getSegmentationDetails.getFarmerActivityCollection().get(i3));
                                }
                            } catch (Exception e4) {
                                PLog.e("Insertion Error : ", e4);
                            }
                        }
                        Iterator it2 = linkedHashMap.entrySet().iterator();
                        while (it2.hasNext()) {
                            Map.Entry entry = (Map.Entry) it2.next();
                            int intValue = ((Integer) entry.getKey()).intValue();
                            List list = (List) entry.getValue();
                            if (!GetDataFromDB.getInstance().isAssignmentTransactionDoneDetail(Queries.getInstance().getAssignmentStatus(intValue))) {
                                try {
                                    GetDataFromDB.getInstance().executeRawQueryForExpiry("Delete from pmcAssignmentActivityDetails where ActivityAssignmentId =" + entry.getKey());
                                    int size3 = list.size() - i;
                                    while (size3 >= 0) {
                                        AssignmentActivityDetailsModel assignmentActivityDetailsModel = (AssignmentActivityDetailsModel) list.get(size3);
                                        if (assignmentActivityDetailsModel.getIsTransactionDone() != i2) {
                                            ContentValues contentValues = new ContentValues();
                                            contentValues.put("ActivitySegmentId", Integer.valueOf(assignmentActivityDetailsModel.getActivitySegmentId()));
                                            contentValues.put("ActivityMasterId", Integer.valueOf(assignmentActivityDetailsModel.getActivityMasterId()));
                                            contentValues.put("attributeValue", assignmentActivityDetailsModel.getAttributeValue());
                                            contentValues.put("isDone", assignmentActivityDetailsModel.getIsDone());
                                            contentValues.put("createdBy", Integer.valueOf(assignmentActivityDetailsModel.getCreatedBy()));
                                            contentValues.put("createddate", assignmentActivityDetailsModel.getCreateddate());
                                            contentValues.put("updatedBy", Integer.valueOf(assignmentActivityDetailsModel.getUpdatedBy()));
                                            contentValues.put("updatedDate", assignmentActivityDetailsModel.getUpdatedDate());
                                            contentValues.put("serverUpdatedStatus", assignmentActivityDetailsModel.getServerUpdatedStatus());
                                            contentValues.put("isPlanned", assignmentActivityDetailsModel.getIsPlanned());
                                            contentValues.put("pdaId", assignmentActivityDetailsModel.getPdaId());
                                            contentValues.put("notdoneRemark", assignmentActivityDetailsModel.getNotdoneRemark());
                                            contentValues.put("ActivitySegmentValue", assignmentActivityDetailsModel.getActivitySegmentValue());
                                            contentValues.put("ActivityAssignmentId", Integer.valueOf(assignmentActivityDetailsModel.getActivityAssignmentId()));
                                            contentValues.put("ActivityAttributeId", Integer.valueOf(assignmentActivityDetailsModel.getActivityAttributeId()));
                                            contentValues.put("ActivitySegmentName", assignmentActivityDetailsModel.getActivitySegmentName());
                                            contentValues.put("TransId", Long.valueOf(assignmentActivityDetailsModel.getTransId()));
                                            contentValues.put("PairId", assignmentActivityDetailsModel.getPairId());
                                            contentValues.put("isTransactionDone", Integer.valueOf(assignmentActivityDetailsModel.getIsTransactionDone()));
                                            contentValues.put("ActivityExecutionSegmentId", Integer.valueOf(assignmentActivityDetailsModel.getActivityExecutionSegmentId()));
                                            contentValues.put("ActivityExecutionSegmentValue", assignmentActivityDetailsModel.getActivityExecutionSegmentValue());
                                            contentValues.put("ExecutionDate", assignmentActivityDetailsModel.getExecutionDate());
                                            contentValues.put("AttributeId", Integer.valueOf(assignmentActivityDetailsModel.getAttributeId()));
                                            contentValues.put("AssignmentId", Integer.valueOf(assignmentActivityDetailsModel.getAssignmentId()));
                                            contentValues.put("StartDate", assignmentActivityDetailsModel.getStartDate());
                                            contentValues.put("EndDate", assignmentActivityDetailsModel.getEndDate());
                                            contentValues.put("Person1", assignmentActivityDetailsModel.getPerson1());
                                            contentValues.put("Person2", assignmentActivityDetailsModel.getPerson2());
                                            contentValues.put("Location1", assignmentActivityDetailsModel.getLocation1());
                                            contentValues.put("Location2", assignmentActivityDetailsModel.getLocation2());
                                            contentValues.put("ContactNumber", assignmentActivityDetailsModel.getContactNumber());
                                            contentValues.put("PackageId", Integer.valueOf(assignmentActivityDetailsModel.getPackageId()));
                                            contentValues.put("isActive", Integer.valueOf(assignmentActivityDetailsModel.getIsActive()));
                                            contentValues.put("PackageName", assignmentActivityDetailsModel.getPackageName());
                                            contentValues.put("latitude", assignmentActivityDetailsModel.getLatitude());
                                            contentValues.put("longitude", assignmentActivityDetailsModel.getLongitude());
                                            contentValues.put("isExpensesSubmited", Integer.valueOf(assignmentActivityDetailsModel.getIsExpensesSubmited()));
                                            contentValues.put("isApproved", Integer.valueOf(assignmentActivityDetailsModel.getIsApproved()));
                                            try {
                                                try {
                                                    sQLiteDatabase5 = dbInstance.openDatabase();
                                                    if (sQLiteDatabase5 != null) {
                                                        try {
                                                            long update = sQLiteDatabase5.update("pmcAssignmentActivityDetails", contentValues, "ActivityAttributeId = " + assignmentActivityDetailsModel.getActivityAttributeId(), strArr);
                                                            StringBuilder sb = new StringBuilder();
                                                            it = it2;
                                                            try {
                                                                try {
                                                                    sb.append("insertFarmersList: ");
                                                                    sb.append(update);
                                                                    Log.d("Log", sb.toString());
                                                                    if (update == 0) {
                                                                        sQLiteDatabase5.insert("pmcAssignmentActivityDetails", null, contentValues);
                                                                    }
                                                                } catch (Exception e5) {
                                                                    e = e5;
                                                                    exc5 = e;
                                                                    try {
                                                                        sQLiteDatabase5.rawQuery(Queries.getInstance().insertIntoSyncErrorLog("farmerId", assignmentActivityDetailsModel.getActivitySegmentValue() + "", "pmcFarmerActivityDetails", exc5, "jkddh", "pmcFarmerActivityDetails"), null);
                                                                    } catch (Exception unused3) {
                                                                        PLog.e("Insertion Error : ", exc5);
                                                                    }
                                                                    PLog.e("Insertion Error : ", exc5);
                                                                    dataBaseHandler6 = dbInstance;
                                                                    dataBaseHandler6.closeDatabase();
                                                                    size3--;
                                                                    it2 = it;
                                                                    i2 = 3;
                                                                    strArr = null;
                                                                }
                                                            } catch (Throwable th) {
                                                                th = th;
                                                                Throwable th2 = th;
                                                                dbInstance.closeDatabase();
                                                                throw th2;
                                                            }
                                                        } catch (Exception e6) {
                                                            e = e6;
                                                            it = it2;
                                                        }
                                                    } else {
                                                        it = it2;
                                                    }
                                                    sendAckList.getAckList().getPmcAssignmentActivityDetails().add(Integer.toString(assignmentActivityDetailsModel.getActivityAttributeId()));
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    it = it2;
                                                    Throwable th22 = th;
                                                    dbInstance.closeDatabase();
                                                    throw th22;
                                                }
                                            } catch (Exception e7) {
                                                it = it2;
                                                exc5 = e7;
                                                sQLiteDatabase5 = null;
                                            }
                                            try {
                                                dataBaseHandler6 = dbInstance;
                                                dataBaseHandler6.closeDatabase();
                                            } catch (Exception e8) {
                                                e = e8;
                                                PLog.e("Assignments", e.toString());
                                                it2 = it;
                                                i = 1;
                                                i2 = 3;
                                                strArr = null;
                                            }
                                        } else {
                                            it = it2;
                                            sendAckList.getAckList().getPmcAssignmentActivityDetails().add(Integer.toString(assignmentActivityDetailsModel.getActivityAttributeId()));
                                        }
                                        size3--;
                                        it2 = it;
                                        i2 = 3;
                                        strArr = null;
                                    }
                                } catch (Exception e9) {
                                    e = e9;
                                    it = it2;
                                }
                            }
                            it = it2;
                            it2 = it;
                            i = 1;
                            i2 = 3;
                            strArr = null;
                        }
                        linkedHashMap.clear();
                    }
                    if (getSegmentationDetails.getExpensesFarmerActivityCollection() != null && getSegmentationDetails.getExpensesFarmerActivityCollection().size() > 0) {
                        for (int i4 = 0; i4 < getSegmentationDetails.getExpensesFarmerActivityCollection().size(); i4++) {
                            try {
                                if (linkedHashMap2.get(Integer.valueOf(getSegmentationDetails.getExpensesFarmerActivityCollection().get(i4).getActivityAssignmentId())) == null) {
                                    linkedHashMap2.put(Integer.valueOf(getSegmentationDetails.getExpensesFarmerActivityCollection().get(i4).getActivityAssignmentId()), new ArrayList());
                                    ((List) linkedHashMap2.get(Integer.valueOf(getSegmentationDetails.getExpensesFarmerActivityCollection().get(i4).getActivityAssignmentId()))).add(getSegmentationDetails.getExpensesFarmerActivityCollection().get(i4));
                                } else {
                                    ((List) linkedHashMap2.get(Integer.valueOf(getSegmentationDetails.getExpensesFarmerActivityCollection().get(i4).getActivityAssignmentId()))).add(getSegmentationDetails.getExpensesFarmerActivityCollection().get(i4));
                                }
                            } catch (Exception e10) {
                                PLog.e("Insertion Error : ", e10);
                            }
                        }
                        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                            int intValue2 = ((Integer) entry2.getKey()).intValue();
                            List list2 = (List) entry2.getValue();
                            if (!GetDataFromDB.getInstance().isAssignmentTransactionDoneDetail(Queries.getInstance().getAssignmentStatus(intValue2))) {
                                try {
                                    GetDataFromDB.getInstance().executeRawQueryForExpiry("Delete from pmcAssignmentActivityDetails where ActivityAssignmentId =" + entry2.getKey());
                                    for (int size4 = list2.size() - 1; size4 >= 0; size4--) {
                                        ExpensesAssignmentActivityDetailsModel expensesAssignmentActivityDetailsModel = (ExpensesAssignmentActivityDetailsModel) list2.get(size4);
                                        if (expensesAssignmentActivityDetailsModel.getIsTransactionDone() != 3) {
                                            ContentValues contentValues2 = new ContentValues();
                                            contentValues2.put("ActivitySegmentId", Integer.valueOf(expensesAssignmentActivityDetailsModel.getActivitySegmentId()));
                                            contentValues2.put("ActivityMasterId", Integer.valueOf(expensesAssignmentActivityDetailsModel.getActivityMasterId()));
                                            contentValues2.put("attributeValue", expensesAssignmentActivityDetailsModel.getAttributeValue());
                                            contentValues2.put("isDone", expensesAssignmentActivityDetailsModel.getIsDone());
                                            contentValues2.put("createdBy", Integer.valueOf(expensesAssignmentActivityDetailsModel.getCreatedBy()));
                                            contentValues2.put("createddate", expensesAssignmentActivityDetailsModel.getCreateddate());
                                            contentValues2.put("updatedBy", Integer.valueOf(expensesAssignmentActivityDetailsModel.getUpdatedBy()));
                                            contentValues2.put("updatedDate", expensesAssignmentActivityDetailsModel.getUpdatedDate());
                                            contentValues2.put("serverUpdatedStatus", expensesAssignmentActivityDetailsModel.getServerUpdatedStatus());
                                            contentValues2.put("isPlanned", expensesAssignmentActivityDetailsModel.getIsPlanned());
                                            contentValues2.put("pdaId", expensesAssignmentActivityDetailsModel.getPdaId());
                                            contentValues2.put("notdoneRemark", expensesAssignmentActivityDetailsModel.getNotdoneRemark());
                                            contentValues2.put("ActivitySegmentValue", expensesAssignmentActivityDetailsModel.getActivitySegmentValue());
                                            contentValues2.put("ActivityAssignmentId", Integer.valueOf(expensesAssignmentActivityDetailsModel.getActivityAssignmentId()));
                                            contentValues2.put("ActivityAttributeId", Integer.valueOf(expensesAssignmentActivityDetailsModel.getActivityAttributeId()));
                                            contentValues2.put("ActivitySegmentName", expensesAssignmentActivityDetailsModel.getActivitySegmentName());
                                            contentValues2.put("TransId", Long.valueOf(expensesAssignmentActivityDetailsModel.getTransId()));
                                            contentValues2.put("PairId", expensesAssignmentActivityDetailsModel.getPairId());
                                            contentValues2.put("isTransactionDone", Integer.valueOf(expensesAssignmentActivityDetailsModel.getIsTransactionDone()));
                                            contentValues2.put("ActivityExecutionSegmentId", Integer.valueOf(expensesAssignmentActivityDetailsModel.getActivityExecutionSegmentId()));
                                            contentValues2.put("ActivityExecutionSegmentValue", expensesAssignmentActivityDetailsModel.getActivityExecutionSegmentValue());
                                            contentValues2.put("ExecutionDate", expensesAssignmentActivityDetailsModel.getExecutionDate());
                                            contentValues2.put("AttributeId", Integer.valueOf(expensesAssignmentActivityDetailsModel.getAttributeId()));
                                            contentValues2.put("AssignmentId", Integer.valueOf(expensesAssignmentActivityDetailsModel.getAssignmentId()));
                                            contentValues2.put("StartDate", expensesAssignmentActivityDetailsModel.getStartDate());
                                            contentValues2.put("EndDate", expensesAssignmentActivityDetailsModel.getEndDate());
                                            contentValues2.put("Person1", expensesAssignmentActivityDetailsModel.getPerson1());
                                            contentValues2.put("Person2", expensesAssignmentActivityDetailsModel.getPerson2());
                                            contentValues2.put("Location1", expensesAssignmentActivityDetailsModel.getLocation1());
                                            contentValues2.put("Location2", expensesAssignmentActivityDetailsModel.getLocation2());
                                            contentValues2.put("ContactNumber", expensesAssignmentActivityDetailsModel.getContactNumber());
                                            contentValues2.put("PackageId", Integer.valueOf(expensesAssignmentActivityDetailsModel.getPackageId()));
                                            contentValues2.put("isActive", Integer.valueOf(expensesAssignmentActivityDetailsModel.getIsActive()));
                                            contentValues2.put("PackageName", expensesAssignmentActivityDetailsModel.getPackageName());
                                            contentValues2.put("latitude", expensesAssignmentActivityDetailsModel.getLatitude());
                                            contentValues2.put("longitude", expensesAssignmentActivityDetailsModel.getLongitude());
                                            contentValues2.put("ActivityCode", expensesAssignmentActivityDetailsModel.getActivityCode());
                                            contentValues2.put("ParentActivityAssignmentID", expensesAssignmentActivityDetailsModel.getParentActivityAssignmentID());
                                            contentValues2.put("ParentActivityTransID", expensesAssignmentActivityDetailsModel.getParentActivityTransID());
                                            contentValues2.put("isExpensesSubmited", Integer.valueOf(expensesAssignmentActivityDetailsModel.getIsExpensesSubmited()));
                                            contentValues2.put("ApprovalStatus", Integer.valueOf(expensesAssignmentActivityDetailsModel.getApprovalStatus()));
                                            contentValues2.put("ApprovedBy", Integer.valueOf(expensesAssignmentActivityDetailsModel.getApprovedBy()));
                                            contentValues2.put("isApproved", Integer.valueOf(expensesAssignmentActivityDetailsModel.getIsApproved()));
                                            try {
                                                try {
                                                    sQLiteDatabase4 = dbInstance.openDatabase();
                                                    if (sQLiteDatabase4 != null) {
                                                        try {
                                                            long update2 = sQLiteDatabase4.update("pmcExpenseAssignmentActivityDetails", contentValues2, "ActivityAttributeId = " + expensesAssignmentActivityDetailsModel.getActivityAttributeId(), null);
                                                            Log.d("Log", "insertFarmersList: " + update2);
                                                            if (update2 == 0) {
                                                                sQLiteDatabase4.insert("pmcExpenseAssignmentActivityDetails", null, contentValues2);
                                                            }
                                                        } catch (Exception e11) {
                                                            exc4 = e11;
                                                            try {
                                                                sQLiteDatabase4.rawQuery(Queries.getInstance().insertIntoSyncErrorLog("farmerId", expensesAssignmentActivityDetailsModel.getActivitySegmentValue() + "", "pmcExpenseAssignmentActivityDetails", exc4, "jkddh", "pmcExpenseAssignmentActivityDetails"), null);
                                                            } catch (Exception unused4) {
                                                                PLog.e("Insertion Error : ", exc4);
                                                            }
                                                            PLog.e("Insertion Error : ", exc4);
                                                            dataBaseHandler5 = dbInstance;
                                                            dataBaseHandler5.closeDatabase();
                                                        }
                                                    }
                                                    sendAckList.getAckList().getPmcExpenseAssignmentActivityDetails().add(Integer.toString(expensesAssignmentActivityDetailsModel.getActivityAttributeId()));
                                                    dataBaseHandler5 = dbInstance;
                                                } catch (Exception e12) {
                                                    exc4 = e12;
                                                    sQLiteDatabase4 = null;
                                                }
                                                dataBaseHandler5.closeDatabase();
                                            } catch (Throwable th4) {
                                                dbInstance.closeDatabase();
                                                throw th4;
                                            }
                                        } else {
                                            sendAckList.getAckList().getPmcExpenseAssignmentActivityDetails().add(Integer.toString(expensesAssignmentActivityDetailsModel.getActivityAttributeId()));
                                        }
                                    }
                                } catch (Exception e13) {
                                    PLog.e("Assignments", e13.toString());
                                }
                            }
                        }
                        linkedHashMap.clear();
                    }
                    if (getSegmentationDetails.getSurveyAssignmentActivityCollection() != null && getSegmentationDetails.getSurveyAssignmentActivityCollection().size() > 0) {
                        for (int i5 = 0; i5 < getSegmentationDetails.getSurveyAssignmentActivityCollection().size(); i5++) {
                            try {
                                if (linkedHashMap3.get(Integer.valueOf(getSegmentationDetails.getSurveyAssignmentActivityCollection().get(i5).getActivityAssignmentId())) == null) {
                                    linkedHashMap3.put(Integer.valueOf(getSegmentationDetails.getSurveyAssignmentActivityCollection().get(i5).getActivityAssignmentId()), new ArrayList());
                                    ((List) linkedHashMap3.get(Integer.valueOf(getSegmentationDetails.getSurveyAssignmentActivityCollection().get(i5).getActivityAssignmentId()))).add(getSegmentationDetails.getSurveyAssignmentActivityCollection().get(i5));
                                } else {
                                    ((List) linkedHashMap3.get(Integer.valueOf(getSegmentationDetails.getSurveyAssignmentActivityCollection().get(i5).getActivityAssignmentId()))).add(getSegmentationDetails.getSurveyAssignmentActivityCollection().get(i5));
                                }
                            } catch (Exception e14) {
                                PLog.e("Insertion Error : ", e14);
                            }
                        }
                        for (Map.Entry entry3 : linkedHashMap3.entrySet()) {
                            int intValue3 = ((Integer) entry3.getKey()).intValue();
                            List list3 = (List) entry3.getValue();
                            if (!GetDataFromDB.getInstance().isAssignmentTransactionDoneDetail(Queries.getInstance().getSurveyAssignmentStatus(intValue3))) {
                                try {
                                    GetDataFromDB.getInstance().executeRawQueryForExpiry("Delete from pmcSurveyAssignmentActivityDetails where ActivityAssignmentId =" + entry3.getKey());
                                    for (int size5 = list3.size() - 1; size5 >= 0; size5--) {
                                        SurveyAssignmentActivityDetailsModel surveyAssignmentActivityDetailsModel = (SurveyAssignmentActivityDetailsModel) list3.get(size5);
                                        if (surveyAssignmentActivityDetailsModel.getIsTransactionDone() != 3) {
                                            ContentValues contentValues3 = new ContentValues();
                                            contentValues3.put("ActivitySegmentId", Integer.valueOf(surveyAssignmentActivityDetailsModel.getActivitySegmentId()));
                                            contentValues3.put("ActivityMasterId", Integer.valueOf(surveyAssignmentActivityDetailsModel.getActivityMasterId()));
                                            contentValues3.put("attributeValue", surveyAssignmentActivityDetailsModel.getAttributeValue());
                                            contentValues3.put("isDone", surveyAssignmentActivityDetailsModel.getIsDone());
                                            contentValues3.put("createdBy", Integer.valueOf(surveyAssignmentActivityDetailsModel.getCreatedBy()));
                                            contentValues3.put("createddate", surveyAssignmentActivityDetailsModel.getCreateddate());
                                            contentValues3.put("updatedBy", Integer.valueOf(surveyAssignmentActivityDetailsModel.getUpdatedBy()));
                                            contentValues3.put("updatedDate", surveyAssignmentActivityDetailsModel.getUpdatedDate());
                                            contentValues3.put("serverUpdatedStatus", surveyAssignmentActivityDetailsModel.getServerUpdatedStatus());
                                            contentValues3.put("isPlanned", surveyAssignmentActivityDetailsModel.getIsPlanned());
                                            contentValues3.put("pdaId", surveyAssignmentActivityDetailsModel.getPdaId());
                                            contentValues3.put("notdoneRemark", surveyAssignmentActivityDetailsModel.getNotdoneRemark());
                                            contentValues3.put("ActivitySegmentValue", surveyAssignmentActivityDetailsModel.getActivitySegmentValue());
                                            contentValues3.put("ActivityAssignmentId", Integer.valueOf(surveyAssignmentActivityDetailsModel.getActivityAssignmentId()));
                                            contentValues3.put("ActivityAttributeId", Integer.valueOf(surveyAssignmentActivityDetailsModel.getActivityAttributeId()));
                                            contentValues3.put("ActivitySegmentName", surveyAssignmentActivityDetailsModel.getActivitySegmentName());
                                            contentValues3.put("TransId", Long.valueOf(surveyAssignmentActivityDetailsModel.getTransId()));
                                            contentValues3.put("PairId", surveyAssignmentActivityDetailsModel.getPairId());
                                            contentValues3.put("isTransactionDone", Integer.valueOf(surveyAssignmentActivityDetailsModel.getIsTransactionDone()));
                                            contentValues3.put("ActivityExecutionSegmentId", Integer.valueOf(surveyAssignmentActivityDetailsModel.getActivityExecutionSegmentId()));
                                            contentValues3.put("ActivityExecutionSegmentValue", surveyAssignmentActivityDetailsModel.getActivityExecutionSegmentValue());
                                            contentValues3.put("ExecutionDate", surveyAssignmentActivityDetailsModel.getExecutionDate());
                                            contentValues3.put("AttributeId", Integer.valueOf(surveyAssignmentActivityDetailsModel.getAttributeId()));
                                            contentValues3.put("AssignmentId", Integer.valueOf(surveyAssignmentActivityDetailsModel.getAssignmentId()));
                                            contentValues3.put("StartDate", surveyAssignmentActivityDetailsModel.getStartDate());
                                            contentValues3.put("EndDate", surveyAssignmentActivityDetailsModel.getEndDate());
                                            contentValues3.put("Person1", surveyAssignmentActivityDetailsModel.getPerson1());
                                            contentValues3.put("Person2", surveyAssignmentActivityDetailsModel.getPerson2());
                                            contentValues3.put("Location1", surveyAssignmentActivityDetailsModel.getLocation1());
                                            contentValues3.put("Location2", surveyAssignmentActivityDetailsModel.getLocation2());
                                            contentValues3.put("ContactNumber", surveyAssignmentActivityDetailsModel.getContactNumber());
                                            contentValues3.put("PackageId", Integer.valueOf(surveyAssignmentActivityDetailsModel.getPackageId()));
                                            contentValues3.put("isActive", Integer.valueOf(surveyAssignmentActivityDetailsModel.getIsActive()));
                                            contentValues3.put("PackageName", surveyAssignmentActivityDetailsModel.getPackageName());
                                            contentValues3.put("latitude", surveyAssignmentActivityDetailsModel.getLatitude());
                                            contentValues3.put("longitude", surveyAssignmentActivityDetailsModel.getLongitude());
                                            try {
                                                try {
                                                    sQLiteDatabase3 = dbInstance.openDatabase();
                                                    if (sQLiteDatabase3 != null) {
                                                        try {
                                                            long update3 = sQLiteDatabase3.update("pmcSurveyAssignmentActivityDetails", contentValues3, "ActivityAttributeId = " + surveyAssignmentActivityDetailsModel.getActivityAttributeId(), null);
                                                            Log.d("Log", "insertFarmersList: " + update3);
                                                            if (update3 == 0) {
                                                                sQLiteDatabase3.insert("pmcSurveyAssignmentActivityDetails", null, contentValues3);
                                                            }
                                                        } catch (Exception e15) {
                                                            exc3 = e15;
                                                            try {
                                                                sQLiteDatabase3.rawQuery(Queries.getInstance().insertIntoSyncErrorLog("farmerId", surveyAssignmentActivityDetailsModel.getActivitySegmentValue() + "", "pmcSurveyActivityDetails", exc3, "jkddh", "pmcFarmerActivityDetails"), null);
                                                            } catch (Exception unused5) {
                                                                PLog.e("Insertion Error : ", exc3);
                                                            }
                                                            PLog.e("Insertion Error : ", exc3);
                                                            dataBaseHandler4 = dbInstance;
                                                            dataBaseHandler4.closeDatabase();
                                                        }
                                                    }
                                                    sendAckList.getAckList().getPmcSurveyAssignmentActivityDetails().add(Integer.toString(surveyAssignmentActivityDetailsModel.getActivityAttributeId()));
                                                    dataBaseHandler4 = dbInstance;
                                                } catch (Throwable th5) {
                                                    dbInstance.closeDatabase();
                                                    throw th5;
                                                }
                                            } catch (Exception e16) {
                                                exc3 = e16;
                                                sQLiteDatabase3 = null;
                                            }
                                            dataBaseHandler4.closeDatabase();
                                        } else {
                                            sendAckList.getAckList().getPmcSurveyAssignmentActivityDetails().add(Integer.toString(surveyAssignmentActivityDetailsModel.getActivityAttributeId()));
                                        }
                                    }
                                } catch (Exception e17) {
                                    PLog.e("Assignments", e17.toString());
                                }
                            }
                        }
                        linkedHashMap3.clear();
                    }
                    if (getSegmentationDetails.getComplaintAssignmentActivityCollection() != null && getSegmentationDetails.getComplaintAssignmentActivityCollection().size() > 0) {
                        for (int i6 = 0; i6 < getSegmentationDetails.getComplaintAssignmentActivityCollection().size(); i6++) {
                            try {
                                if (linkedHashMap4.get(Long.valueOf(getSegmentationDetails.getComplaintAssignmentActivityCollection().get(i6).getTransId())) == null) {
                                    linkedHashMap4.put(Long.valueOf(getSegmentationDetails.getComplaintAssignmentActivityCollection().get(i6).getTransId()), new ArrayList());
                                    ((List) linkedHashMap4.get(Long.valueOf(getSegmentationDetails.getComplaintAssignmentActivityCollection().get(i6).getTransId()))).add(getSegmentationDetails.getComplaintAssignmentActivityCollection().get(i6));
                                } else {
                                    ((List) linkedHashMap4.get(Long.valueOf(getSegmentationDetails.getComplaintAssignmentActivityCollection().get(i6).getTransId()))).add(getSegmentationDetails.getComplaintAssignmentActivityCollection().get(i6));
                                }
                            } catch (Exception e18) {
                                PLog.e("Insertion Error : ", e18);
                            }
                        }
                        for (Map.Entry entry4 : linkedHashMap4.entrySet()) {
                            ((Long) entry4.getKey()).longValue();
                            List list4 = (List) entry4.getValue();
                            try {
                                GetDataFromDB.getInstance().executeRawQueryForExpiry("Delete from pmcFBFAssignmentActivityDetails where TransId =" + entry4.getKey());
                                for (int size6 = list4.size() - 1; size6 >= 0; size6--) {
                                    ComplaintAssignmentActivityDetailsModel complaintAssignmentActivityDetailsModel = (ComplaintAssignmentActivityDetailsModel) list4.get(size6);
                                    if (complaintAssignmentActivityDetailsModel.getIsTransactionDone() != 3) {
                                        try {
                                            ContentValues contentValues4 = new ContentValues();
                                            contentValues4.put("ActivitySegmentId", Integer.valueOf(complaintAssignmentActivityDetailsModel.getActivitySegmentId()));
                                            contentValues4.put("ActivityMasterId", Integer.valueOf(complaintAssignmentActivityDetailsModel.getActivityMasterId()));
                                            contentValues4.put("attributeValue", complaintAssignmentActivityDetailsModel.getAttributeValue());
                                            contentValues4.put("isDone", complaintAssignmentActivityDetailsModel.getIsDone());
                                            contentValues4.put("createdBy", Integer.valueOf(complaintAssignmentActivityDetailsModel.getCreatedBy()));
                                            contentValues4.put("createddate", complaintAssignmentActivityDetailsModel.getCreateddate());
                                            contentValues4.put("updatedBy", Integer.valueOf(complaintAssignmentActivityDetailsModel.getUpdatedBy()));
                                            contentValues4.put("updatedDate", complaintAssignmentActivityDetailsModel.getUpdatedDate());
                                            contentValues4.put("serverUpdatedStatus", complaintAssignmentActivityDetailsModel.getServerUpdatedStatus());
                                            contentValues4.put("isPlanned", complaintAssignmentActivityDetailsModel.getIsPlanned());
                                            contentValues4.put("pdaId", complaintAssignmentActivityDetailsModel.getPdaId());
                                            contentValues4.put("notdoneRemark", complaintAssignmentActivityDetailsModel.getNotdoneRemark());
                                            contentValues4.put("ActivitySegmentValue", complaintAssignmentActivityDetailsModel.getActivitySegmentValue());
                                            contentValues4.put("ActivityAssignmentId", Integer.valueOf(complaintAssignmentActivityDetailsModel.getActivityAssignmentId()));
                                            contentValues4.put("ActivityAttributeId", Integer.valueOf(complaintAssignmentActivityDetailsModel.getActivityAttributeId()));
                                            contentValues4.put("ActivitySegmentName", complaintAssignmentActivityDetailsModel.getActivitySegmentName());
                                            contentValues4.put("TransId", Long.valueOf(complaintAssignmentActivityDetailsModel.getTransId()));
                                            contentValues4.put("PairId", complaintAssignmentActivityDetailsModel.getPairId());
                                            contentValues4.put("isTransactionDone", Integer.valueOf(complaintAssignmentActivityDetailsModel.getIsTransactionDone()));
                                            contentValues4.put("ActivityExecutionSegmentId", Integer.valueOf(complaintAssignmentActivityDetailsModel.getActivityExecutionSegmentId()));
                                            contentValues4.put("ActivityExecutionSegmentValue", complaintAssignmentActivityDetailsModel.getActivityExecutionSegmentValue());
                                            contentValues4.put("ExecutionDate", complaintAssignmentActivityDetailsModel.getExecutionDate());
                                            contentValues4.put("AttributeId", Integer.valueOf(complaintAssignmentActivityDetailsModel.getAttributeId()));
                                            contentValues4.put("AssignmentId", Integer.valueOf(complaintAssignmentActivityDetailsModel.getAssignmentId()));
                                            contentValues4.put("StartDate", complaintAssignmentActivityDetailsModel.getStartDate());
                                            contentValues4.put("EndDate", complaintAssignmentActivityDetailsModel.getEndDate());
                                            contentValues4.put("Person1", complaintAssignmentActivityDetailsModel.getPerson1());
                                            contentValues4.put("Person2", complaintAssignmentActivityDetailsModel.getPerson2());
                                            contentValues4.put("Location1", complaintAssignmentActivityDetailsModel.getLocation1());
                                            contentValues4.put("Location2", complaintAssignmentActivityDetailsModel.getLocation2());
                                            contentValues4.put("ContactNumber", complaintAssignmentActivityDetailsModel.getContactNumber());
                                            contentValues4.put("PackageId", Integer.valueOf(complaintAssignmentActivityDetailsModel.getPackageId()));
                                            contentValues4.put("isActive", Integer.valueOf(complaintAssignmentActivityDetailsModel.getIsActive()));
                                            contentValues4.put("PackageName", complaintAssignmentActivityDetailsModel.getPackageName());
                                            contentValues4.put("latitude", complaintAssignmentActivityDetailsModel.getLatitude());
                                            contentValues4.put("longitude", complaintAssignmentActivityDetailsModel.getLongitude());
                                            try {
                                                try {
                                                    sQLiteDatabase2 = dbInstance.openDatabase();
                                                    if (sQLiteDatabase2 != null) {
                                                        try {
                                                            long update4 = sQLiteDatabase2.update("pmcFBFAssignmentActivityDetails", contentValues4, "ActivityAttributeId = " + complaintAssignmentActivityDetailsModel.getActivityAttributeId(), null);
                                                            Log.d("Log", "pmcFBFAssignmentActivityDetails: " + update4);
                                                            if (update4 == 0) {
                                                                sQLiteDatabase2.insert("pmcFBFAssignmentActivityDetails", null, contentValues4);
                                                            }
                                                        } catch (Exception e19) {
                                                            exc2 = e19;
                                                            try {
                                                                sQLiteDatabase2.rawQuery(Queries.getInstance().insertIntoSyncErrorLog("farmerId", complaintAssignmentActivityDetailsModel.getActivitySegmentValue() + "", "pmcFarmerActivityDetails", exc2, "jkddh", "pmcFarmerActivityDetails"), null);
                                                            } catch (Exception unused6) {
                                                                PLog.e("Insertion Error : ", exc2);
                                                            }
                                                            PLog.e("Insertion Error : ", exc2);
                                                            dataBaseHandler3 = dbInstance;
                                                            dataBaseHandler3.closeDatabase();
                                                        }
                                                    }
                                                    sendAckList.getAckList().getFBFAssignmentActivityDetails().add(Integer.toString(complaintAssignmentActivityDetailsModel.getActivityAttributeId()));
                                                    dataBaseHandler3 = dbInstance;
                                                } catch (Exception e20) {
                                                    exc2 = e20;
                                                    sQLiteDatabase2 = null;
                                                }
                                                dataBaseHandler3.closeDatabase();
                                            } catch (Throwable th6) {
                                                dbInstance.closeDatabase();
                                                throw th6;
                                            }
                                        } catch (Exception e21) {
                                            e = e21;
                                            PLog.e("Assignments", e.toString());
                                        }
                                    } else {
                                        sendAckList.getAckList().getFBFAssignmentActivityDetails().add(Integer.toString(complaintAssignmentActivityDetailsModel.getActivityAttributeId()));
                                    }
                                }
                            } catch (Exception e22) {
                                e = e22;
                            }
                        }
                        linkedHashMap4.clear();
                    }
                    if (getSegmentationDetails.getVillageCollection() != null && getSegmentationDetails.getVillageCollection().size() > 0) {
                        try {
                            for (int size7 = getSegmentationDetails.getVillageCollection().size() - 1; size7 >= 0; size7--) {
                                VillageCollection villageCollection = getSegmentationDetails.getVillageCollection().get(size7);
                                String str3 = "Insert or replace into pmcVillages (villageId,villageName,mandalId,createdBy,createdDate,updatedBy,updatedDate,mandalName,districtName,ismba) values( " + villageCollection.getVillageId() + ",'" + villageCollection.getVillageName() + "','" + villageCollection.getMandalId() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "', '" + UtilDeclarations.getDateTime() + "', '" + ConstantsPMC.getInstance().getUserId().toString() + "', '" + UtilDeclarations.getDateTime() + "','" + villageCollection.getMandalName() + "','" + villageCollection.getDistrictName() + "'," + villageCollection.getIsMBA() + ")";
                                try {
                                    GetDataFromDB.getInstance().executeRawQueryInDB(str3);
                                    sendAckList.getAckList().getPmcVillages().add(Integer.toString(villageCollection.getVillageId()));
                                } catch (Exception e23) {
                                    try {
                                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().insertIntoSyncErrorLog("villageId", villageCollection.getVillageId() + "", "pmcVillages", e23, str3, "pmcVillages"));
                                    } catch (Exception unused7) {
                                        PLog.e("Insertion Error : ", e23);
                                    }
                                    PLog.e("Insertion Error : ", e23);
                                }
                            }
                        } catch (Exception e24) {
                            PLog.e("Insertion Error : ", e24);
                        }
                    }
                    if (getSegmentationDetails.getFarmerCropCollection() != null && getSegmentationDetails.getFarmerCropCollection().size() > 0) {
                        try {
                            for (int size8 = getSegmentationDetails.getFarmerCropCollection().size() - 1; size8 >= 0; size8--) {
                                FarmerCropCollection farmerCropCollection = getSegmentationDetails.getFarmerCropCollection().get(size8);
                                farmerCropCollection.setMappingID(Math.round(getRecordCount("SELECT max(mappingId) from pmcFarmerCropMapping")) + 1);
                                String str4 = "INSERT INTO pmcFarmerCropMapping(mappingId ,farmerId ,cropId ,acreages ,serverUpdatedStatus ,createdBy ,createddate ,updatedBy ,updatedDate,pdaId,dos) VALUES(" + farmerCropCollection.getMappingID() + ", " + farmerCropCollection.getFarmerId() + ", " + farmerCropCollection.getCropId() + ", " + farmerCropCollection.getAcreages() + ", 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','" + farmerCropCollection.getDos() + "')";
                                try {
                                    GetDataFromDB.getInstance().executeRawQueryInDB(str4);
                                    sendAckList.getAckList().getPmcFarmerCropMapping().add(Integer.toString(farmerCropCollection.getMappingID()));
                                } catch (Exception e25) {
                                    try {
                                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().insertIntoSyncErrorLog("MappingId", farmerCropCollection.getMappingID() + "", "pmcFarmerCropMapping", e25, str4, "pmcFarmerCropMapping"));
                                    } catch (Exception unused8) {
                                        PLog.e("Insertion Error : ", e25);
                                    }
                                    PLog.e("Insertion Error : ", e25);
                                }
                            }
                        } catch (Exception e26) {
                            PLog.e("Insertion Error : ", e26);
                        }
                    }
                    if (getSegmentationDetails.getPmcAttendanceModels() != null && getSegmentationDetails.getPmcAttendanceModels().size() > 0) {
                        List<PMCAttendanceModel> pmcAttendanceModels = getSegmentationDetails.getPmcAttendanceModels();
                        for (int i7 = 0; i7 < pmcAttendanceModels.size(); i7++) {
                            PMCAttendanceModel pMCAttendanceModel = pmcAttendanceModels.get(i7);
                            try {
                                ContentValues contentValues5 = new ContentValues();
                                contentValues5.put("TransId", pMCAttendanceModel.getTransId());
                                contentValues5.put("FoUserId", pMCAttendanceModel.getFoUserId());
                                contentValues5.put("SVUserId", pMCAttendanceModel.getSVUserId());
                                contentValues5.put("IsSelfAttendance", pMCAttendanceModel.getIsSelfAttendance());
                                contentValues5.put("OnLeave", pMCAttendanceModel.getOnLeave());
                                contentValues5.put("AttendanceDate", pMCAttendanceModel.getAttendanceDate());
                                contentValues5.put("FoTravel", pMCAttendanceModel.getFoTravel());
                                contentValues5.put("FoNightHalt", pMCAttendanceModel.getFoNightHalt());
                                contentValues5.put("SVApprovedTravel", pMCAttendanceModel.getSVApprovedTravel());
                                contentValues5.put("SVApprovedNightHalt", pMCAttendanceModel.getSVApprovedNightHalt());
                                contentValues5.put("SVApprovedDate", pMCAttendanceModel.getSVApprovedDate());
                                contentValues5.put("IsApproved", pMCAttendanceModel.getIsApproved());
                                contentValues5.put("Latitude", pMCAttendanceModel.getLatitude());
                                contentValues5.put("Longitude", pMCAttendanceModel.getLongitude());
                                contentValues5.put("Comments", pMCAttendanceModel.getComments());
                                contentValues5.put("PdaId", pMCAttendanceModel.getPdaId());
                                contentValues5.put("IsProcessed", pMCAttendanceModel.getIsProcessed());
                                try {
                                    try {
                                        sQLiteDatabase = dbInstance.openDatabase();
                                        if (sQLiteDatabase != null) {
                                            try {
                                                long update5 = sQLiteDatabase.update("PMCAttendanceDetails", contentValues5, "TransId = " + pMCAttendanceModel.getTransId(), null);
                                                Log.d("Log", "insertFarmersList: " + update5);
                                                if (update5 == 0) {
                                                    try {
                                                        try {
                                                            sQLiteDatabase.insert("PMCAttendanceDetails", null, contentValues5);
                                                        } catch (Exception e27) {
                                                            e = e27;
                                                            exc = e;
                                                            try {
                                                                sQLiteDatabase.rawQuery(Queries.getInstance().insertIntoSyncErrorLog("TransId", pMCAttendanceModel.getTransId() + "", "PMCAttendanceDetails", exc, "jkddh", "pmcFarmerActivityDetails"), null);
                                                            } catch (Exception unused9) {
                                                                PLog.e("Insertion Error : ", exc);
                                                            }
                                                            PLog.e("Insertion Error : ", exc);
                                                            dataBaseHandler2 = dbInstance;
                                                            dataBaseHandler2.closeDatabase();
                                                        }
                                                    } catch (Throwable th7) {
                                                        th = th7;
                                                        throw th;
                                                    }
                                                }
                                            } catch (Exception e28) {
                                                e = e28;
                                                exc = e;
                                                sQLiteDatabase.rawQuery(Queries.getInstance().insertIntoSyncErrorLog("TransId", pMCAttendanceModel.getTransId() + "", "PMCAttendanceDetails", exc, "jkddh", "pmcFarmerActivityDetails"), null);
                                                PLog.e("Insertion Error : ", exc);
                                                dataBaseHandler2 = dbInstance;
                                                dataBaseHandler2.closeDatabase();
                                            }
                                        }
                                        sendAckList.getAckList().getPmcAttendanceDetails().add(pMCAttendanceModel.getTransId());
                                    } catch (Exception e29) {
                                        exc = e29;
                                        sQLiteDatabase = null;
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                    throw th;
                                }
                            } catch (Exception e30) {
                                e = e30;
                            }
                            try {
                                dataBaseHandler2 = dbInstance;
                                dataBaseHandler2.closeDatabase();
                            } catch (Exception e31) {
                                e = e31;
                                PLog.e("Assignments", e.toString());
                            }
                        }
                    }
                    if (getSegmentationDetails.getFBFActivityTrack() != null && getSegmentationDetails.getFBFActivityTrack().size() > 0) {
                        try {
                            ArrayList arrayList = new ArrayList();
                            for (int size9 = getSegmentationDetails.getFBFActivityTrack().size() - 1; size9 >= 0; size9--) {
                                FBFActivityResolveTrackModel fBFActivityResolveTrackModel = getSegmentationDetails.getFBFActivityTrack().get(size9);
                                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteFBFResolveTrackActDetails(Long.parseLong(fBFActivityResolveTrackModel.getTransId())));
                                ContentValues contentValues6 = new ContentValues();
                                if (fBFActivityResolveTrackModel.getActivityResolveId() != 0) {
                                    contentValues6.put("ActivityResolveId", Integer.valueOf(fBFActivityResolveTrackModel.getActivityResolveId()));
                                }
                                if (fBFActivityResolveTrackModel.getActivityAssignmentId() != null && !fBFActivityResolveTrackModel.getActivityAssignmentId().equalsIgnoreCase("")) {
                                    contentValues6.put("ActivityAssignmentId", fBFActivityResolveTrackModel.getActivityAssignmentId());
                                } else {
                                    contentValues6.put("ActivityAssignmentId", "");
                                }
                                if (fBFActivityResolveTrackModel.getResolvedBy() != null && !fBFActivityResolveTrackModel.getResolvedBy().equalsIgnoreCase("")) {
                                    contentValues6.put("ResolvedBy", Integer.valueOf(Integer.parseInt(fBFActivityResolveTrackModel.getResolvedBy().toString())));
                                } else {
                                    contentValues6.put("ResolvedBy", "");
                                }
                                if (fBFActivityResolveTrackModel.getTransId() != null && !fBFActivityResolveTrackModel.getTransId().equalsIgnoreCase("")) {
                                    contentValues6.put("TransId", fBFActivityResolveTrackModel.getTransId());
                                } else {
                                    contentValues6.put("TransId", "");
                                }
                                if (fBFActivityResolveTrackModel.getResolveName() != null && !fBFActivityResolveTrackModel.getResolveName().equalsIgnoreCase("")) {
                                    contentValues6.put("ResolveName", fBFActivityResolveTrackModel.getResolveName().toString());
                                } else {
                                    contentValues6.put("ResolveName", "");
                                }
                                if (fBFActivityResolveTrackModel.getResolveRemarks() != null && !fBFActivityResolveTrackModel.getResolveRemarks().equalsIgnoreCase("")) {
                                    contentValues6.put("ResolveRemarks", fBFActivityResolveTrackModel.getResolveRemarks().toString());
                                } else {
                                    contentValues6.put("ResolveRemarks", "");
                                }
                                if (fBFActivityResolveTrackModel.getResolvedStatus() != null && !fBFActivityResolveTrackModel.getResolvedStatus().equalsIgnoreCase("")) {
                                    contentValues6.put("ResolvedStatus", Integer.valueOf(Integer.parseInt(fBFActivityResolveTrackModel.getResolvedStatus().toString())));
                                } else {
                                    contentValues6.put("ResolvedStatus", "");
                                }
                                if (fBFActivityResolveTrackModel.getResolvedStatus() != null && !fBFActivityResolveTrackModel.getResolvedStatus().equalsIgnoreCase("")) {
                                    if (Integer.parseInt(fBFActivityResolveTrackModel.getResolvedStatus()) == 1) {
                                        contentValues6.put("serverUpdatedStatus", "true");
                                    } else {
                                        contentValues6.put("serverUpdatedStatus", "");
                                    }
                                } else {
                                    contentValues6.put("serverUpdatedStatus", "");
                                }
                                contentValues6.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                                contentValues6.put("CreatedDate", UtilDeclarations.getDateTime());
                                contentValues6.put("UpdatedBy", ConstantsPMC.getInstance().getUserId().toString());
                                contentValues6.put("UpdatedDate", UtilDeclarations.getDateTime());
                                contentValues6.put("IsSMSRequired", fBFActivityResolveTrackModel.getIsSMSRequired());
                                arrayList.add(contentValues6);
                            }
                            if (arrayList.size() != 0) {
                                for (int i8 = 0; i8 < arrayList.size(); i8++) {
                                    try {
                                        try {
                                            SQLiteDatabase openDatabase = dbInstance.openDatabase();
                                            if (openDatabase != null) {
                                                openDatabase.insert("FBFActivityResolveTrack", null, (ContentValues) arrayList.get(i8));
                                            }
                                        } finally {
                                            dbInstance.closeDatabase();
                                        }
                                    } catch (Exception e32) {
                                        PLog.e("Insertion Error : ", e32);
                                        dataBaseHandler = dbInstance;
                                    }
                                }
                                dataBaseHandler = dbInstance;
                                dataBaseHandler.closeDatabase();
                            }
                        } catch (Exception e33) {
                            PLog.e("Insertion Error : ", e33);
                        }
                    }
                } catch (Exception e34) {
                    throw e34;
                }
            }
        }
        return sendAckList;
    }

    public static synchronized void insertFarmerRecordSave(FarmerDetails farmerDetails) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("Insert or replace into pmcFarmerDetails (farmerId, farmerName,surName,fatherName,mobile,landline,coNumber,pinCode,landMark,latitude,longitude,emailAddress,education,annualHouseholdIncome,noofFamilyMembers,respondentNo,stateName,districtName,mandalName,villageName,respondentName,gender,segment,acreagesOwned,leasedIn,leasedOut,cultivated,retailerId,serverUpdatedStatus,createdBy,createdDate,updatedBy,updatedDate,isVisited,pdaId,villageId,visitDescription,ismba,totalLandHolding) values (" + farmerDetails.getFarmerId() + ",'" + Encryption.encrypt(farmerDetails.getFarmerName()) + "','" + farmerDetails.getSurName() + "','" + farmerDetails.getFatherName() + "','" + Encryption.encrypt(farmerDetails.getMobile()) + "','" + Encryption.encrypt(farmerDetails.getLandline()) + "','" + farmerDetails.getCoNumber() + "','" + farmerDetails.getPinCode() + "','" + farmerDetails.getLandMark() + "','" + farmerDetails.getLatitude() + "','" + farmerDetails.getLongitude() + "','" + farmerDetails.getEmailAddress() + "','" + farmerDetails.getEducation() + "','" + farmerDetails.getAnnualHouseholdIncome() + "','" + farmerDetails.getNoofFamilyMembers() + "','" + farmerDetails.getRespondentNo() + "','" + farmerDetails.getStateName() + "','" + farmerDetails.getDistrictName() + "','" + farmerDetails.getMandalName() + "','" + farmerDetails.getVillageName() + "','" + farmerDetails.getRespondentName() + "','" + farmerDetails.getGender() + "','" + farmerDetails.getSegment() + "','" + farmerDetails.getAcreagesOwned() + "','" + farmerDetails.getLeasedIn() + "','" + farmerDetails.getLeasedOut() + "','" + farmerDetails.getCultivated() + "','" + farmerDetails.getRetailerId() + "','false','" + ConstantsPMC.getInstance().getUserId().toString() + "', '" + UtilDeclarations.getDateTime() + "', '" + ConstantsPMC.getInstance().getUserId().toString() + "', '" + UtilDeclarations.getDateTime() + "', '" + farmerDetails.getIsVisited() + "','" + ConstantsPMC.getInstance().getDeviceID() + "'," + farmerDetails.getVillageID() + ",'" + farmerDetails.getVisitDescription() + "','" + farmerDetails.getIsMBA() + "','" + farmerDetails.getTotalLandHolding() + "')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertErrorLog(String str) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB(str);
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updatearmer(String str) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB(str);
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updateCropAcerageDetails(String str) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB(str);
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertFarmerAttributeDetails(int i, String str, String str2) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO pmcFarmerActivityDetails(detailsID ,farmerId ,activityId ,attributeId,attributeValue,serverUpdatedStatus,createdBy ,createddate ,updatedBy ,updatedDate,pdaId,isPlanned,isDone,assignmentID) VALUES(" + (getRecordCount("SELECT max(detailsID) from pmcFarmerActivityDetails") + 1) + "," + i + "," + str + "," + str2 + ",'','','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','0','','0')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertTSTAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("Insert into pmcTSTAssignmentVisit (assignmentId, visitDescription,createdDate,createdBy,updatedDate,updatedBy,serverUpdatedStatus,pdaId,farmerId,latitude,longitude,remarks,activityAssignmentId,GPSTimeStamp,TransactionId) values ('" + i + "','" + str2 + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + str5 + "','" + ConstantsPMC.getInstance().getDeviceID().toString() + "','" + str + "','" + str3 + "','" + str4 + "','" + str6 + "','" + i2 + "','" + str7 + "','" + j + "')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertFBFAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("Insert into pmcFBFAssignmentVisit (assignmentId, visitDescription,createdDate,createdBy,updatedDate,updatedBy,serverUpdatedStatus,pdaId,farmerId,latitude,longitude,remarks,activityAssignmentId,GPSTimeStamp,TransactionId) values ('" + i + "','" + str2 + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + str5 + "','" + ConstantsPMC.getInstance().getDeviceID().toString() + "','" + str + "','" + str3 + "','" + str4 + "','" + str6 + "','" + i2 + "','" + str7 + "','" + j + "')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7, String str8, String str9) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("Insert into pmcAssignmentVisit (assignmentId, visitDescription,createdDate,createdBy,updatedDate,updatedBy,serverUpdatedStatus,pdaId,farmerId,latitude,longitude,remarks,activityAssignmentId,GPSTimeStamp,TransactionId,CampaignID,Address) values ('" + i + "','" + str2 + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + str5 + "','" + ConstantsPMC.getInstance().getDeviceID().toString() + "','" + str + "','" + str3 + "','" + str4 + "','" + str6 + "','" + i2 + "','" + str7 + "','" + j + "','" + str8 + "','" + str9 + "')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("Insert into pmcAssignmentVisit (assignmentId, visitDescription,createdDate,createdBy,updatedDate,updatedBy,serverUpdatedStatus,pdaId,farmerId,latitude,longitude,remarks,activityAssignmentId,GPSTimeStamp,TransactionId,StartTimeDevice,StopTimeDevice,StartTimeGPS,StopTimeGPS,CampaignID,Address) values ('" + i + "','" + str2 + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + str5 + "','" + ConstantsPMC.getInstance().getDeviceID().toString() + "','" + str + "','" + str3 + "','" + str4 + "','" + str6 + "','" + i2 + "','" + str7 + "','" + j + "','" + str8 + "','" + str9 + "','" + str10 + "','" + str11 + "','" + str12 + "','" + str13 + "')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertSurveyAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("Insert into pmcSurveyAssignmentVisit (assignmentId, visitDescription,createdDate,createdBy,updatedDate,updatedBy,serverUpdatedStatus,pdaId,farmerId,latitude,longitude,remarks,activityAssignmentId,GPSTimeStamp,TransactionId) values ('" + i + "','" + str2 + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + str5 + "','" + ConstantsPMC.getInstance().getDeviceID().toString() + "','" + str + "','" + str3 + "','" + str4 + "','" + str6 + "','" + i2 + "','" + str7 + "','" + j + "')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void UpdateAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7, String str8, String str9) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                if (openDatabase != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("assignmentId", Integer.valueOf(i));
                    contentValues.put("visitDescription", str2);
                    contentValues.put("createdDate", UtilDeclarations.getDateTime());
                    contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("serverUpdatedStatus", str5);
                    contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                    contentValues.put("farmerId", str);
                    contentValues.put("latitude", str3);
                    contentValues.put("longitude", str4);
                    contentValues.put("GPSTimeStamp", str7);
                    contentValues.put("remarks", str6);
                    contentValues.put("activityAssignmentId", Integer.valueOf(i2));
                    contentValues.put("TransactionId", Long.valueOf(j));
                    contentValues.put("CampaignID", str8);
                    contentValues.put("Address", str9);
                    openDatabase.update("pmcAssignmentVisit", contentValues, "activityAssignmentId = " + i2 + " AND TransactionId = " + j, null);
                }
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void UpdateAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                if (openDatabase != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("assignmentId", Integer.valueOf(i));
                    contentValues.put("visitDescription", str2);
                    contentValues.put("createdDate", UtilDeclarations.getDateTime());
                    contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("serverUpdatedStatus", str5);
                    contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                    contentValues.put("farmerId", str);
                    contentValues.put("latitude", str3);
                    contentValues.put("longitude", str4);
                    contentValues.put("GPSTimeStamp", str7);
                    contentValues.put("remarks", str6);
                    contentValues.put("activityAssignmentId", Integer.valueOf(i2));
                    contentValues.put("TransactionId", Long.valueOf(j));
                    contentValues.put("StartTimeDevice", str8);
                    contentValues.put("StopTimeDevice", str9);
                    contentValues.put("StartTimeGPS", str10);
                    contentValues.put("StopTimeGPS", str11);
                    contentValues.put("CampaignID", str12);
                    contentValues.put("Address", str13);
                    openDatabase.update("pmcAssignmentVisit", contentValues, "activityAssignmentId = " + i2 + " AND TransactionId = " + j, null);
                }
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void UpdateSurveyAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                if (openDatabase != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("assignmentId", Integer.valueOf(i));
                    contentValues.put("visitDescription", str2);
                    contentValues.put("createdDate", UtilDeclarations.getDateTime());
                    contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("serverUpdatedStatus", str5);
                    contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                    contentValues.put("farmerId", str);
                    contentValues.put("latitude", str3);
                    contentValues.put("longitude", str4);
                    contentValues.put("GPSTimeStamp", str7);
                    contentValues.put("remarks", str6);
                    contentValues.put("activityAssignmentId", Integer.valueOf(i2));
                    contentValues.put("TransactionId", Long.valueOf(j));
                    openDatabase.update("pmcSurveyAssignmentVisit", contentValues, "activityAssignmentId = " + i2 + " AND TransactionId = " + j, null);
                }
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void UpdateTSTAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                if (openDatabase != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("assignmentId", Integer.valueOf(i));
                    contentValues.put("visitDescription", str2);
                    contentValues.put("createdDate", UtilDeclarations.getDateTime());
                    contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("serverUpdatedStatus", str5);
                    contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                    contentValues.put("farmerId", str);
                    contentValues.put("latitude", str3);
                    contentValues.put("longitude", str4);
                    contentValues.put("GPSTimeStamp", str7);
                    contentValues.put("remarks", str6);
                    contentValues.put("activityAssignmentId", Integer.valueOf(i2));
                    contentValues.put("TransactionId", Long.valueOf(j));
                    openDatabase.update("pmcTSTAssignmentVisit", contentValues, "activityAssignmentId = " + i2 + " AND TransactionId = " + j, null);
                }
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void UpdateFBFAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                if (openDatabase != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("assignmentId", Integer.valueOf(i));
                    contentValues.put("visitDescription", str2);
                    contentValues.put("createdDate", UtilDeclarations.getDateTime());
                    contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("serverUpdatedStatus", str5);
                    contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                    contentValues.put("farmerId", str);
                    contentValues.put("latitude", str3);
                    contentValues.put("longitude", str4);
                    contentValues.put("GPSTimeStamp", str7);
                    contentValues.put("remarks", str6);
                    contentValues.put("activityAssignmentId", Integer.valueOf(i2));
                    contentValues.put("TransactionId", Long.valueOf(j));
                    openDatabase.update("pmcFBFAssignmentVisit", contentValues, "activityAssignmentId = " + i2 + " AND TransactionId = " + j, null);
                }
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updateApproveDetails(int i, int i2, String str, String str2, String str3, String str4, String str5, String str6, int i3) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("update pmcSVFarmerDetails set Mobile = " + str + " ,AcreagesOwned = " + str2 + ", LeasedIn = " + str3 + ", LeasedOut = " + str4 + ", cultivated = " + str5 + ",Approvalstatus = " + i3 + ", svdescription ='" + str6 + "',CreatedBy =" + ConstantsPMC.getInstance().getUserId().toString() + ",Createddate = '" + UtilDeclarations.getDateTime() + "',UpdatedBy=" + ConstantsPMC.getInstance().getUserId().toString() + ",UpdatedDate ='" + UtilDeclarations.getDateTime() + "',serverUpdatedStatus ='false' where farmerId = " + i + " and recordFlag = 2");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updateApproveDetailswithLandAndCo(int i, int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i3) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("update pmcSVFarmerDetails set Mobile = '" + str + "' ,Landline = '" + str2 + "',CONumber = '" + str3 + "',AcreagesOwned = " + str4 + ", LeasedIn = " + str5 + ", LeasedOut = " + str6 + ", cultivated = " + str7 + ",Approvalstatus = " + i3 + ", svdescription ='" + str8 + "',CreatedBy =" + ConstantsPMC.getInstance().getDeviceID().toString() + ",Createddate = '" + UtilDeclarations.getDateTime() + "',UpdatedBy=" + ConstantsPMC.getInstance().getDeviceID().toString() + ",UpdatedDate ='" + UtilDeclarations.getDateTime() + "',serverUpdatedStatus ='false' where farmerId = " + i + " and recordFlag = 2");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updateApproveDetailsForOldRecords(int i, int i2, int i3, String str) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("update pmcSVFarmerDetails set Approvalstatus = " + i3 + ", serverUpdatedStatus ='false',svdescription = '" + str + "' where farmerId = " + i + " and recordFlag = " + i2);
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static void insertUserRoleMapping(GetUserDetailsModel getUserDetailsModel) throws Exception {
        for (int i = 0; i < getUserDetailsModel.getUserrolemapping().size(); i++) {
            GetDataFromDB.getInstance().executeRawQueryInDB("insert into pmcUserRolemapping(RoleId,FunctionId,CreatedDate,UpdatedDate)values(" + getUserDetailsModel.getUserrolemapping().get(i).getRoleId() + "," + getUserDetailsModel.getUserrolemapping().get(i).getFunctionId() + ",'" + UtilDeclarations.getDateTime() + "','" + UtilDeclarations.getDateTime() + "')");
        }
    }

    public static void insertTerritoryList(GetUserDetailsModel getUserDetailsModel) throws Exception {
        for (int i = 0; i < getUserDetailsModel.getTerritoryList().size(); i++) {
            GetDataFromDB.getInstance().executeRawQueryInDB("insert into TerritoryMaster(territoryId,territoryName,regionId,IsActive) values(" + getUserDetailsModel.getTerritoryList().get(i).getTerritoryId() + ",'" + getUserDetailsModel.getTerritoryList().get(i).getTerritoryName() + "','" + getUserDetailsModel.getTerritoryList().get(i).getRegionId() + "','" + getUserDetailsModel.getTerritoryList().get(i).getIsActive() + "')");
        }
    }

    public static synchronized void insertFarmerDetails(FarmerMaster farmerMaster, ArrayList<DynamicFields> arrayList, ArrayList<EditText> arrayList2, ArrayList<EditText> arrayList3) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            StringBuilder sb = new StringBuilder();
            try {
                sb.append("insert  into FarmerMaster ( ");
                for (int i = 0; i < arrayList.size(); i++) {
                    sb.append(arrayList.get(i).getDbColumnName() + ",");
                }
                sb.append("FarmerID,");
                sb.append("RespondentNo,");
                sb.append("FarmerTypeId,");
                sb.append("TypeofFarmer,");
                sb.append("StateID,");
                sb.append("StateName,");
                sb.append("DistrictID,");
                sb.append("DistrictName,");
                sb.append("MandalID,");
                sb.append("MandalName,");
                sb.append("VillageId,");
                sb.append("VillageName,");
                sb.append("Latitude,");
                sb.append("Longitude,");
                sb.append("isNew,");
                sb.append("serverupdatedstatus,");
                sb.append("pdaid,");
                sb.append("Status,");
                sb.append("isActive,");
                sb.append("CreatedBy, ");
                sb.append("CreatedDate, ");
                sb.append("UpdatedBy, ");
                sb.append("UpdatedDate, ");
                sb.append("HasProfileImage, ");
                if (farmerMaster.getStatus() == 1) {
                    sb.append("Column3,");
                }
                sb.append("GPSTimeStamp, ");
                sb.append("Sanitized) ");
                sb.append("values ( ");
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (arrayList.get(i2).getControlType().equalsIgnoreCase("Dropdown")) {
                        sb.append("'" + arrayList3.get(i2).getText().toString() + "',");
                    } else {
                        if (!arrayList.get(i2).getDbColumnName().contains("Mobile") && !arrayList.get(i2).getDbColumnName().contains("FarmerName")) {
                            sb.append("'" + arrayList2.get(i2).getText().toString() + "',");
                        }
                        sb.append("'" + Encryption.encrypt(arrayList2.get(i2).getText().toString()).trim() + "',");
                    }
                }
                sb.append("'" + farmerMaster.getFarmerID() + "',");
                sb.append("'" + farmerMaster.getRespondentNo() + "',");
                sb.append("'" + farmerMaster.getFarmerTypeId() + "',");
                sb.append("'" + farmerMaster.getTypeofFarmer() + "',");
                sb.append("'" + farmerMaster.getStateID() + "',");
                sb.append("'" + farmerMaster.getStateName() + "',");
                sb.append("'" + farmerMaster.getDistrictID() + "',");
                sb.append("'" + farmerMaster.getDistrictName() + "',");
                sb.append("'" + farmerMaster.getMandalID() + "',");
                sb.append("'" + farmerMaster.getMandalName() + "',");
                sb.append("'" + farmerMaster.getVillageId() + "',");
                sb.append("'" + farmerMaster.getVillageName() + "',");
                sb.append("'" + farmerMaster.getLatitude() + "',");
                sb.append("'" + farmerMaster.getLongitude() + "',");
                sb.append("'" + farmerMaster.getisNew() + "',");
                sb.append("'" + farmerMaster.getServerupdatedstatus() + "',");
                sb.append("'" + farmerMaster.getPdaid() + "',");
                sb.append("'" + farmerMaster.getStatus() + "',");
                sb.append("'" + farmerMaster.isIsActive() + "',");
                sb.append("'" + farmerMaster.getPdaid() + "',");
                sb.append("'" + UtilDeclarations.getDateTime() + "',");
                sb.append("'" + farmerMaster.getPdaid() + "',");
                sb.append("'" + UtilDeclarations.getDateTime() + "',");
                sb.append("'" + farmerMaster.getProfilePicCaptured() + "',");
                if (farmerMaster.getStatus() == 1) {
                    sb.append("'" + farmerMaster.getColumn3() + "',");
                }
                sb.append("'" + farmerMaster.getGPSTimeStamp() + "',");
                sb.append("'1')");
                GetDataFromDB.getInstance().executeRawQueryInDB(sb.toString());
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertAudianceFarmerDetails(FarmerMaster farmerMaster, ArrayList<String> arrayList, ArrayList<String> arrayList2) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList3 = new ArrayList();
            try {
                sb.append("insert  into FarmerMaster (");
                for (int i = 0; i < arrayList.size(); i++) {
                    sb.append(arrayList.get(i) + ",");
                    if (arrayList.get(i).contains("Mobile") || arrayList.get(i).contains("FarmerName")) {
                        arrayList3.add(Integer.valueOf(i));
                    }
                }
                sb.append("RespondentNo,Status,pdaid,TypeofFarmer,farmerTypeId,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,IsActive,Audiencefarmer,Sanitized,Column5,serverupdatedstatus) values ('");
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (arrayList3.contains(Integer.valueOf(i2))) {
                        sb.append(Encryption.encryptRemovenewLine(arrayList2.get(i2)) + "','");
                    } else {
                        sb.append(arrayList2.get(i2) + "','");
                    }
                }
                sb.append(farmerMaster.getRespondentNo() + "'," + farmerMaster.getStatus() + ",'" + farmerMaster.getPdaid() + "','" + farmerMaster.getTypeofFarmer() + "','" + farmerMaster.getFarmerTypeId() + "','" + farmerMaster.getPdaid() + "', '" + UtilDeclarations.getDateTime() + "', '" + farmerMaster.getPdaid() + "', '" + UtilDeclarations.getDateTime() + "', '" + farmerMaster.isIsActive() + "', '" + farmerMaster.getAudiencefarmer() + "', 1,'" + farmerMaster.getColumn5() + "', '" + farmerMaster.getServerupdatedstatus() + "')");
                GetDataFromDB.getInstance().executeRawQueryInDB(sb.toString());
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertAudianceFarmerCropDetails(FarmerCropMapping farmerCropMapping, ArrayList<String> arrayList, ArrayList<String> arrayList2) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            StringBuilder sb = new StringBuilder();
            try {
                sb.append("INSERT INTO FarmerCropDetails(");
                for (int i = 0; i < arrayList.size(); i++) {
                    sb.append(arrayList.get(i) + ",");
                }
                sb.append("RespondentNo,FarmerID ,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,IsActive,pdaid) VALUES('");
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    sb.append(arrayList2.get(i2) + "','");
                }
                sb.append(farmerCropMapping.getRespondentNo() + "'," + farmerCropMapping.getFarmerId() + ", 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','True','" + ConstantsPMC.getInstance().getDeviceID() + "')");
                GetDataFromDB.getInstance().executeRawQueryInDB(sb.toString());
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertAudianceRetailerDetails(DealerMaster dealerMaster, ArrayList<String> arrayList, ArrayList<String> arrayList2) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList3 = new ArrayList();
            try {
                sb.append("insert  into DealerMaster (");
                for (int i = 0; i < arrayList.size(); i++) {
                    sb.append(arrayList.get(i) + ",");
                    if (arrayList.get(i).contains("MobileNumber") || arrayList.get(i).contains("RetailerShopName")) {
                        arrayList3.add(Integer.valueOf(i));
                    }
                }
                sb.append("ContactId,PDAId,CustomerTypeID,ServerUpdatedStatus,isNew,StatusReason,isActive,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate) values ('");
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (arrayList3.contains(Integer.valueOf(i2))) {
                        sb.append(Encryption.encryptRemovenewLine(arrayList2.get(i2)) + "','");
                    } else {
                        sb.append(arrayList2.get(i2) + "','");
                    }
                }
                sb.append(dealerMaster.getContactId() + "','" + dealerMaster.getPDAId() + "'," + dealerMaster.getCustomerTypeID() + ",'false','" + dealerMaster.isNew() + "','" + dealerMaster.getStatusReason() + "','True', '" + dealerMaster.getPDAId() + "', '" + UtilDeclarations.getDateTime() + "', '" + dealerMaster.getPDAId() + "', '" + UtilDeclarations.getDateTime() + "')");
                GetDataFromDB.getInstance().executeRawQueryInDB(sb.toString());
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updateFarmerDetails(FarmerMaster farmerMaster, ArrayList<DynamicFields> arrayList, ArrayList<EditText> arrayList2, String str, int i, ArrayList<EditText> arrayList3) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            int i2 = 0;
            if (i == 1) {
                StringBuilder sb = new StringBuilder();
                try {
                    sb.append("Update FarmerMaster set ");
                    while (i2 < arrayList.size()) {
                        if (arrayList.get(i2).getControlType().equalsIgnoreCase("Dropdown") && arrayList3.get(i2).getText().toString().length() > 0) {
                            sb.append(arrayList.get(i2).getDbColumnName() + "=");
                            sb.append("'" + arrayList3.get(i2).getText().toString() + "',");
                        } else {
                            if (!arrayList.get(i2).getDbColumnName().contains("Mobile") && !arrayList.get(i2).getDbColumnName().contains("FarmerName")) {
                                sb.append(arrayList.get(i2).getDbColumnName() + "=");
                                sb.append("'" + arrayList2.get(i2).getText().toString() + "',");
                            }
                            sb.append(arrayList.get(i2).getDbColumnName() + "=");
                            sb.append("'" + Encryption.encrypt(arrayList2.get(i2).getText().toString()).trim() + "',");
                        }
                        i2++;
                    }
                    sb.append("serverupdatedstatus='" + farmerMaster.getServerupdatedstatus() + "',");
                    sb.append("RespondentNo='" + farmerMaster.getRespondentNo() + "',");
                    sb.append("Status='" + farmerMaster.getStatus() + "', ");
                    sb.append("pdaid='" + farmerMaster.getPdaid() + "',");
                    sb.append("HasProfileImage='" + farmerMaster.getProfilePicCaptured() + "', ");
                    if (farmerMaster.getStatus() == 1) {
                        sb.append("Column3='" + farmerMaster.getColumn3() + "', ");
                    }
                    sb.append("UpdatedBy='" + farmerMaster.getPdaid() + "', ");
                    if (farmerMaster.getGPSTimeStamp() != null && !farmerMaster.getGPSTimeStamp().equals("")) {
                        sb.append("GPSTimeStamp='" + farmerMaster.getGPSTimeStamp() + "', ");
                    }
                    sb.append("UpdatedDate='" + UtilDeclarations.getDateTime() + "' ");
                    sb.append(" WHERE RespondentNo  ='" + str + "' ");
                    GetDataFromDB.getInstance().executeRawQueryInDB(sb.toString());
                } catch (Exception e) {
                    throw e;
                }
            } else {
                StringBuilder sb2 = new StringBuilder();
                try {
                    sb2.append("Update FarmerMaster set ");
                    while (i2 < arrayList.size()) {
                        if (arrayList.get(i2).getControlType().equalsIgnoreCase("Dropdown") && arrayList3.get(i2).getText().toString().length() > 0) {
                            sb2.append(arrayList.get(i2).getDbColumnName() + "=");
                            sb2.append("'" + arrayList3.get(i2).getText().toString() + "',");
                        } else {
                            if (!arrayList.get(i2).getDbColumnName().contains("Mobile") && !arrayList.get(i2).getDbColumnName().contains("FarmerName")) {
                                sb2.append(arrayList.get(i2).getDbColumnName() + "=");
                                sb2.append("'" + arrayList2.get(i2).getText().toString() + "',");
                            }
                            sb2.append(arrayList.get(i2).getDbColumnName() + "=");
                            sb2.append("'" + Encryption.encrypt(arrayList2.get(i2).getText().toString()).trim() + "',");
                        }
                        i2++;
                    }
                    sb2.append("RespondentNo ='" + farmerMaster.getRespondentNo() + "',");
                    sb2.append("StateID ='" + farmerMaster.getStateID() + "',");
                    sb2.append("StateName='" + farmerMaster.getStateName() + "',");
                    sb2.append("DistrictID='" + farmerMaster.getDistrictID() + "',");
                    sb2.append("DistrictName='" + farmerMaster.getDistrictName() + "',");
                    sb2.append("MandalID='" + farmerMaster.getMandalID() + "',");
                    sb2.append("MandalName='" + farmerMaster.getMandalName() + "',");
                    sb2.append("VillageId='" + farmerMaster.getVillageId() + "',");
                    sb2.append("VillageName='" + farmerMaster.getVillageName() + "',");
                    sb2.append("Latitude='" + farmerMaster.getLatitude() + "',");
                    sb2.append("Longitude='" + farmerMaster.getLongitude() + "',");
                    sb2.append("isNew='" + farmerMaster.getStatus() + "',");
                    sb2.append("serverupdatedstatus='" + farmerMaster.getServerupdatedstatus() + "',");
                    sb2.append("pdaid='" + farmerMaster.getPdaid() + "',");
                    sb2.append("Status='" + farmerMaster.getStatus() + "', ");
                    if (farmerMaster.getGPSTimeStamp() != null && !farmerMaster.getGPSTimeStamp().equals("")) {
                        sb2.append("GPSTimeStamp='" + farmerMaster.getGPSTimeStamp() + "', ");
                    }
                    sb2.append("HasProfileImage='" + farmerMaster.getProfilePicCaptured() + "', ");
                    if (farmerMaster.getStatus() == 1) {
                        sb2.append("Column3='" + farmerMaster.getColumn3() + "', ");
                    }
                    sb2.append("UpdatedBy='" + farmerMaster.getPdaid() + "', ");
                    sb2.append("UpdatedDate='" + UtilDeclarations.getDateTime() + "'");
                    sb2.append(" WHERE RespondentNo  ='" + farmerMaster.getRespondentNo() + "' ");
                    GetDataFromDB.getInstance().executeRawQueryInDB(sb2.toString());
                } catch (Exception e2) {
                    throw e2;
                }
            }
        }
    }

    public static synchronized void insertRetailerDetails(DealerMaster dealerMaster, ArrayList<DynamicFields> arrayList, ArrayList<EditText> arrayList2, ArrayList<EditText> arrayList3) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            StringBuilder sb = new StringBuilder();
            try {
                sb.append("insert  into DealerMaster ( ");
                for (int i = 0; i < arrayList.size(); i++) {
                    sb.append(arrayList.get(i).getDbColumnName() + ",");
                }
                sb.append("PDAId,");
                sb.append("ContactId,");
                sb.append("StateId,");
                sb.append("StateName,");
                sb.append("DistrictId,");
                sb.append("DistrictName,");
                sb.append("MandalId,");
                sb.append("MandalName,");
                sb.append("VillageId,");
                sb.append("VillageName,");
                sb.append("Latitude,");
                sb.append("Longitude,");
                sb.append("CustomerTypeID,");
                sb.append("ServerUpdatedStatus,");
                sb.append("isNew,");
                sb.append("StatusReason, ");
                sb.append("isActive, ");
                sb.append("Column3, ");
                if (dealerMaster.getHasProfilePicture() != null && dealerMaster.getHasProfilePicture().equals("1")) {
                    sb.append("HasProfilePicture, ");
                }
                sb.append("AadharRawData,");
                sb.append("CreatedBy, ");
                sb.append("GPSTimeStamp, ");
                sb.append("CreatedDate, ");
                sb.append("UpdatedBy, ");
                sb.append("UpdatedDate) ");
                sb.append("values ( ");
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (arrayList.get(i2).getControlType().equalsIgnoreCase("Dropdown")) {
                        sb.append("'" + arrayList3.get(i2).getText().toString() + "',");
                    } else {
                        if (!arrayList.get(i2).getDbColumnName().contains("Mobile") && !arrayList.get(i2).getDbColumnName().contains("ContactName") && !arrayList.get(i2).getDbColumnName().contains("RetailerShopName")) {
                            sb.append("'" + arrayList2.get(i2).getText().toString() + "',");
                        }
                        sb.append("'" + Encryption.encrypt(arrayList2.get(i2).getText().toString()).trim() + "',");
                    }
                }
                sb.append("'" + dealerMaster.getPDAId() + "',");
                sb.append("'" + dealerMaster.getContactId() + "',");
                sb.append("'" + dealerMaster.getStateId() + "',");
                sb.append("'" + dealerMaster.getStateName() + "',");
                sb.append("'" + dealerMaster.getDistrictId() + "',");
                sb.append("'" + dealerMaster.getDistrictName() + "',");
                sb.append("'" + dealerMaster.getMandalId() + "',");
                sb.append("'" + dealerMaster.getMandalName() + "',");
                sb.append("'" + dealerMaster.getVillageId() + "',");
                sb.append("'" + dealerMaster.getVillageName() + "',");
                sb.append("'" + dealerMaster.getLatitude() + "',");
                sb.append("'" + dealerMaster.getLongitude() + "',");
                sb.append("'" + dealerMaster.getCustomerTypeID() + "',");
                sb.append("'" + dealerMaster.isServerUpdatedStatus() + "',");
                sb.append("'" + dealerMaster.isNew() + "',");
                sb.append("'" + dealerMaster.getStatusReason() + "',");
                sb.append("'" + dealerMaster.isActive() + "',");
                sb.append("'" + dealerMaster.getColumn3() + "',");
                if (dealerMaster.getHasProfilePicture() != null && dealerMaster.getHasProfilePicture().equals("1")) {
                    sb.append("'" + dealerMaster.getHasProfilePicture() + "',");
                }
                sb.append("'" + dealerMaster.getAadharRawData() + "',");
                sb.append("'" + dealerMaster.getPDAId() + "',");
                sb.append("'" + dealerMaster.getGPSTimeStamp() + "',");
                sb.append("'" + UtilDeclarations.getDateTime() + "',");
                sb.append("'" + dealerMaster.getPDAId() + "',");
                sb.append("'" + UtilDeclarations.getDateTime() + "')");
                GetDataFromDB.getInstance().executeRawQueryInDB(sb.toString());
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void updateRetailerDetails(DealerMaster dealerMaster, ArrayList<DynamicFields> arrayList, ArrayList<EditText> arrayList2, String str, int i, ArrayList<EditText> arrayList3) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            if (i == 1) {
                try {
                    sb.append("Update DealerMaster set ");
                    while (i2 < arrayList.size()) {
                        if (arrayList.get(i2).getIsTransactionEditable() == 1) {
                            if (arrayList.get(i2).getControlType().equalsIgnoreCase("Dropdown") && arrayList3.get(i2).getText().toString().length() > 0) {
                                sb.append(arrayList.get(i2).getDbColumnName() + "=");
                                sb.append("'" + arrayList3.get(i2).getText().toString() + "',");
                            } else {
                                if (!arrayList.get(i2).getDbColumnName().contains("Mobile") && !arrayList.get(i2).getDbColumnName().contains("ContactName") && !arrayList.get(i2).getDbColumnName().contains("RetailerShopName")) {
                                    sb.append(arrayList.get(i2).getDbColumnName() + "=");
                                    sb.append("'" + arrayList2.get(i2).getText().toString() + "',");
                                }
                                sb.append(arrayList.get(i2).getDbColumnName() + "=");
                                sb.append("'" + Encryption.encrypt(arrayList2.get(i2).getText().toString()).trim() + "',");
                            }
                        }
                        i2++;
                    }
                    sb.append("pdaid='" + dealerMaster.getPDAId() + "',");
                    if (dealerMaster.getAadharRawData() != null && dealerMaster.getAadharRawData().length() > 0) {
                        sb.append("AadharRawData='" + dealerMaster.getAadharRawData() + "', ");
                    }
                    sb.append("ServerUpdatedStatus='" + dealerMaster.isServerUpdatedStatus() + "',");
                    sb.append("StatusReason='" + dealerMaster.getStatusReason() + "', ");
                    sb.append("UpdatedBy='" + dealerMaster.getPDAId() + "', ");
                    if (dealerMaster.getGPSTimeStamp() != null && !dealerMaster.getGPSTimeStamp().equals("")) {
                        sb.append("GPSTimeStamp='" + dealerMaster.getGPSTimeStamp() + "', ");
                    }
                    sb.append("HasProfilePicture='" + dealerMaster.getHasProfilePicture() + "', ");
                    if (dealerMaster.getStatusReason().equals("1")) {
                        sb.append("Column3='" + dealerMaster.getColumn3() + "', ");
                    }
                    sb.append("UpdatedDate='" + UtilDeclarations.getDateTime() + "' ");
                    sb.append(" WHERE ContactId  ='" + str + "' ");
                    GetDataFromDB.getInstance().executeRawQueryInDB(sb.toString());
                } catch (Exception e) {
                    throw e;
                }
            } else {
                try {
                    sb.append("Update DealerMaster set ");
                    while (i2 < arrayList.size()) {
                        if (arrayList.get(i2).getControlType().equalsIgnoreCase("Dropdown") && arrayList3.get(i2).getText().toString().length() > 0) {
                            sb.append(arrayList.get(i2).getDbColumnName() + "=");
                            sb.append("'" + arrayList3.get(i2).getText().toString() + "',");
                        } else {
                            if (!arrayList.get(i2).getDbColumnName().contains("Mobile") && !arrayList.get(i2).getDbColumnName().contains("ContactName") && !arrayList.get(i2).getDbColumnName().contains("RetailerShopName")) {
                                sb.append(arrayList.get(i2).getDbColumnName() + "=");
                                sb.append("'" + arrayList2.get(i2).getText().toString() + "',");
                            }
                            sb.append(arrayList.get(i2).getDbColumnName() + "=");
                            sb.append("'" + Encryption.encrypt(arrayList2.get(i2).getText().toString()).trim() + "',");
                        }
                        i2++;
                    }
                    sb.append("pdaid='" + dealerMaster.getPDAId() + "',");
                    sb.append("StateId='" + dealerMaster.getStateId() + "',");
                    sb.append("StateName='" + dealerMaster.getStateName() + "',");
                    sb.append("DistrictId='" + dealerMaster.getDistrictId() + "',");
                    sb.append("DistrictName='" + dealerMaster.getDistrictName() + "',");
                    sb.append("MandalId='" + dealerMaster.getMandalId() + "',");
                    sb.append("MandalName='" + dealerMaster.getMandalName() + "',");
                    sb.append("VillageId='" + dealerMaster.getVillageId() + "',");
                    sb.append("VillageName='" + dealerMaster.getVillageName() + "',");
                    sb.append("Latitude='" + dealerMaster.getLatitude() + "',");
                    sb.append("Longitude='" + dealerMaster.getLongitude() + "',");
                    sb.append("ServerUpdatedStatus='" + dealerMaster.isServerUpdatedStatus() + "',");
                    sb.append("isNew='" + dealerMaster.isNew() + "',");
                    sb.append("StatusReason='" + dealerMaster.getStatusReason() + "', ");
                    sb.append("UpdatedBy='" + dealerMaster.getPDAId() + "', ");
                    sb.append("UpdatedDate='" + UtilDeclarations.getDateTime() + "', ");
                    if (dealerMaster.getGPSTimeStamp() != null && !dealerMaster.getGPSTimeStamp().equals("")) {
                        sb.append("GPSTimeStamp='" + dealerMaster.getGPSTimeStamp() + "', ");
                    }
                    sb.append("HasProfilePicture='" + dealerMaster.getHasProfilePicture() + "', ");
                    if (dealerMaster.getStatusReason().equals("1")) {
                        sb.append("Column3='" + dealerMaster.getColumn3() + "', ");
                    }
                    sb.append("AadharRawData='" + dealerMaster.getAadharRawData() + "' ");
                    sb.append(" WHERE ContactId  ='" + str + "' ");
                    GetDataFromDB.getInstance().executeRawQueryInDB(sb.toString());
                } catch (Exception e2) {
                    throw e2;
                }
            }
        }
    }

    public static synchronized void insertCustomerAttributeDetails(String str, String str2, String str3, int i, int i2, long j, int i3) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO pmcAssignmentActivityDetails(detailsID ,ActivitySegmentValue,ActivityMasterId,AttributeId,attributeValue,serverUpdatedStatus,createdBy ,createddate ,updatedBy ,updatedDate,pdaId,isPlanned,isDone,AssignmentId,ActivitySegmentId,TransId,isActive) VALUES(" + (getRecordCount("SELECT max(detailsID) from pmcAssignmentActivityDetails") + 1) + ",'" + str + "'," + str2 + "," + str3 + ",'','','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','0','0','" + i2 + "','" + i + "','" + j + "'," + i3 + ")");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertFarmerActivityDetailsUpdate(List<AttributeModel> list, String str, int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, AssignmentActivityDetailsModel assignmentActivityDetailsModel, int i8) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        int i9 = 0;
                        int i10 = 0;
                        while (i10 < list.size()) {
                            ContentValues contentValues = new ContentValues();
                            String dateTime = UtilDeclarations.getDateTime();
                            contentValues.put("ActivitySegmentValue", str);
                            contentValues.put("ActivitySegmentId", Integer.valueOf(i5));
                            contentValues.put("ActivityMasterId", Integer.valueOf(i));
                            contentValues.put("AttributeId", Integer.valueOf(list.get(i10).getAttributeId()));
                            contentValues.put("attributeValue", list.get(i10).getAttributeValue());
                            contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("createddate", dateTime);
                            contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("updatedDate", dateTime);
                            contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                            contentValues.put("isPlanned", Integer.valueOf(i2));
                            contentValues.put("isDone", Integer.valueOf(i3));
                            contentValues.put("TransId", Long.valueOf(j));
                            contentValues.put("AssignmentId", Integer.valueOf(i4));
                            contentValues.put("isTransactionDone", Integer.valueOf(i6));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("ActivityAttributeId", Integer.valueOf(list.get(i10).getActivityAttributeId()));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("isActive", (Integer) 1);
                            contentValues.put("PackageId", Integer.valueOf(i8));
                            contentValues.put("isApproved", Integer.valueOf(i9));
                            if (j == 0) {
                                contentValues.put("StartDate", assignmentActivityDetailsModel.getStartDate() + "");
                                contentValues.put("EndDate", assignmentActivityDetailsModel.getEndDate() + "");
                                contentValues.put("Person1", assignmentActivityDetailsModel.getPerson1() + "");
                                contentValues.put("Person2", assignmentActivityDetailsModel.getPerson2() + "");
                                contentValues.put("Location1", assignmentActivityDetailsModel.getLocation1() + "");
                                contentValues.put("Location2", assignmentActivityDetailsModel.getLocation2() + "");
                                contentValues.put("ContactNumber", assignmentActivityDetailsModel.getContactNumber() + "");
                                contentValues.put("PackageName", assignmentActivityDetailsModel.getPackageName() + "");
                            }
                            if (i6 == 1) {
                                contentValues.put("serverUpdatedStatus", "false");
                            }
                            list.get(i10).setDetailsId(Math.round(getRecordCount("SELECT max(detailsID) from pmcAssignmentActivityDetails")) + 1);
                            contentValues.put("detailsID", Integer.valueOf(list.get(i10).getDetailsId()));
                            long insert = openDatabase.insert("pmcAssignmentActivityDetails", null, contentValues);
                            ContentValues contentValues2 = new ContentValues();
                            contentValues2.put("createddate", dateTime);
                            contentValues2.put("updatedDate", dateTime);
                            if (j == 0) {
                                openDatabase.update("pmcAssignmentActivityDetails", contentValues2, "ActivityAssignmentId = " + i7, null);
                            } else {
                                openDatabase.update("pmcAssignmentActivityDetails", contentValues2, "TransId = " + j, null);
                            }
                            Log.i("insertvalues", insert + "");
                            i10++;
                            i9 = 0;
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertTSTFarmerActivityDetailsUpdate(List<AttributeModel> list, String str, int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, AssignmentActivityDetailsModel assignmentActivityDetailsModel, int i8) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        for (int i9 = 0; i9 < list.size(); i9++) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("ActivitySegmentValue", str);
                            contentValues.put("ActivitySegmentId", Integer.valueOf(i5));
                            contentValues.put("ActivityMasterId", Integer.valueOf(i));
                            contentValues.put("AttributeId", Integer.valueOf(list.get(i9).getAttributeId()));
                            contentValues.put("attributeValue", list.get(i9).getAttributeValue());
                            contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("createddate", UtilDeclarations.getDateTime());
                            contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                            contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                            contentValues.put("isPlanned", Integer.valueOf(i2));
                            contentValues.put("isDone", Integer.valueOf(i3));
                            contentValues.put("TransId", Long.valueOf(j));
                            contentValues.put("AssignmentId", Integer.valueOf(i4));
                            contentValues.put("isTransactionDone", Integer.valueOf(i6));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("ActivityAttributeId", Integer.valueOf(list.get(i9).getActivityAttributeId()));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("isActive", (Integer) 1);
                            contentValues.put("PackageId", Integer.valueOf(i8));
                            if (j == 0) {
                                contentValues.put("StartDate", assignmentActivityDetailsModel.getStartDate() + "");
                                contentValues.put("EndDate", assignmentActivityDetailsModel.getEndDate() + "");
                                contentValues.put("Person1", assignmentActivityDetailsModel.getPerson1() + "");
                                contentValues.put("Person2", assignmentActivityDetailsModel.getPerson2() + "");
                                contentValues.put("Location1", assignmentActivityDetailsModel.getLocation1() + "");
                                contentValues.put("Location2", assignmentActivityDetailsModel.getLocation2() + "");
                                contentValues.put("ContactNumber", assignmentActivityDetailsModel.getContactNumber() + "");
                            }
                            if (i6 == 1) {
                                contentValues.put("serverUpdatedStatus", "false");
                            }
                            list.get(i9).setDetailsId(Math.round(getRecordCount("SELECT max(detailsID) from pmcTSTAssignmentActivityDetails")) + 1);
                            contentValues.put("detailsID", Integer.valueOf(list.get(i9).getDetailsId()));
                            Log.i("insertvalues", openDatabase.insert("pmcTSTAssignmentActivityDetails", null, contentValues) + "");
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertSurveyActivityDetailsUpdate(List<AttributeModel> list, String str, int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, AssignmentActivityDetailsModel assignmentActivityDetailsModel, int i8) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        for (int i9 = 0; i9 < list.size(); i9++) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("ActivitySegmentValue", str);
                            contentValues.put("ActivitySegmentId", Integer.valueOf(i5));
                            contentValues.put("ActivityMasterId", Integer.valueOf(i));
                            contentValues.put("AttributeId", Integer.valueOf(list.get(i9).getAttributeId()));
                            contentValues.put("attributeValue", list.get(i9).getAttributeValue());
                            contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("createddate", UtilDeclarations.getDateTime());
                            contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                            contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                            contentValues.put("isPlanned", Integer.valueOf(i2));
                            contentValues.put("isDone", Integer.valueOf(i3));
                            contentValues.put("TransId", Long.valueOf(j));
                            contentValues.put("AssignmentId", Integer.valueOf(i4));
                            contentValues.put("isTransactionDone", Integer.valueOf(i6));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("ActivityAttributeId", Integer.valueOf(list.get(i9).getActivityAttributeId()));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("isActive", (Integer) 1);
                            contentValues.put("PackageId", Integer.valueOf(i8));
                            if (j == 0) {
                                contentValues.put("StartDate", assignmentActivityDetailsModel.getStartDate() + "");
                                contentValues.put("EndDate", assignmentActivityDetailsModel.getEndDate() + "");
                                contentValues.put("Person1", assignmentActivityDetailsModel.getPerson1() + "");
                                contentValues.put("Person2", assignmentActivityDetailsModel.getPerson2() + "");
                                contentValues.put("Location1", assignmentActivityDetailsModel.getLocation1() + "");
                                contentValues.put("Location2", assignmentActivityDetailsModel.getLocation2() + "");
                                contentValues.put("ContactNumber", assignmentActivityDetailsModel.getContactNumber() + "");
                            }
                            if (i6 == 1) {
                                contentValues.put("serverUpdatedStatus", "false");
                            }
                            list.get(i9).setDetailsId(Math.round(getRecordCount("SELECT max(detailsID) from pmcSurveyAssignmentActivityDetails")) + 1);
                            contentValues.put("detailsID", Integer.valueOf(list.get(i9).getDetailsId()));
                            Log.i("insertvalues", openDatabase.insert("pmcSurveyAssignmentActivityDetails", null, contentValues) + "");
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void UpdateAssignmentActivitiesCustomerDetails(String str, int i, int i2, long j, String str2) throws Exception {
        int update;
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("ActivityExecutionSegmentValue", str);
                        contentValues.put("ActivityExecutionSegmentId", Integer.valueOf(i));
                        contentValues.put("territoryId", str2);
                        if (j == 0) {
                            update = openDatabase.update("pmcAssignmentActivityDetails", contentValues, "ActivityAssignmentId = " + i2, null);
                        } else {
                            update = openDatabase.update("pmcAssignmentActivityDetails", contentValues, "TransId = " + j, null);
                        }
                        Log.i("updatevalues", update + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void UpdateTSTAssignmentActivitiesCustomerDetails(String str, int i, int i2, long j, String str2) throws Exception {
        int update;
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("ActivityExecutionSegmentValue", str);
                        contentValues.put("ActivityExecutionSegmentId", Integer.valueOf(i));
                        contentValues.put("territoryId", str2);
                        if (j == 0) {
                            update = openDatabase.update("pmcTSTAssignmentActivityDetails", contentValues, "ActivityAssignmentId = " + i2, null);
                        } else {
                            update = openDatabase.update("pmcTSTAssignmentActivityDetails", contentValues, "TransId = " + j, null);
                        }
                        Log.i("updatevalues", update + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void UpdateFBFAssignmentActivitiesCustomerDetails(String str, int i, int i2, long j, String str2) throws Exception {
        int update;
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("ActivityExecutionSegmentValue", str);
                        contentValues.put("ActivityExecutionSegmentId", Integer.valueOf(i));
                        contentValues.put("territoryId", str2);
                        if (j == 0) {
                            update = openDatabase.update("pmcFBFAssignmentActivityDetails", contentValues, "ActivityAssignmentId = " + i2, null);
                        } else {
                            update = openDatabase.update("pmcFBFAssignmentActivityDetails", contentValues, "TransId = " + j, null);
                        }
                        Log.i("updatevalues", update + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void UpdateSurveyAssignmentActivitiesCustomerDetails(String str, int i, int i2, long j, String str2) throws Exception {
        int update;
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("ActivityExecutionSegmentValue", str);
                        contentValues.put("ActivityExecutionSegmentId", Integer.valueOf(i));
                        contentValues.put("territoryId", str2);
                        if (j == 0) {
                            update = openDatabase.update("pmcSurveyAssignmentActivityDetails", contentValues, "ActivityAssignmentId = " + i2, null);
                        } else {
                            update = openDatabase.update("pmcSurveyAssignmentActivityDetails", contentValues, "TransId = " + j, null);
                        }
                        Log.i("updatevalues", update + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static int getMaxCount(String str) throws Exception {
        Cursor cursor = null;
        try {
            try {
                cursor = dbInstance.openDatabase().rawQuery(str, null);
                int i = 0;
                if (cursor != null && cursor.moveToFirst()) {
                    do {
                        try {
                            i = cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue());
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } while (cursor.moveToNext());
                }
                return i;
            } catch (Exception e2) {
                throw e2;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            dbInstance.closeDatabase();
        }
    }

    public static synchronized void insertPictureDetails(PictureReportingData pictureReportingData, Context context) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT OR REPLACE INTO ActivityImageDetails (ImageId,AssignmentId, ActivityId, AttributeId,SubJect,Comments,Remarks,PicturePath,ResField1,pdaCreatedDate, ServerStatus,PDAID,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,ReferenceType,ReferenceID) values(" + pictureReportingData.getImageId() + ",'" + pictureReportingData.getAssignmentId() + "','" + pictureReportingData.getActivityId() + "','" + pictureReportingData.getAttributeId() + "','" + pictureReportingData.getSubJect() + "','" + pictureReportingData.getComments() + "','" + pictureReportingData.getRemarks() + "','" + pictureReportingData.getPicturePath() + "','" + pictureReportingData.getResField1() + "','" + pictureReportingData.getPdaCreatedDate() + "','" + pictureReportingData.getServerStatus() + "','" + pictureReportingData.getPDAID() + "','" + pictureReportingData.getCreatedBy() + "','" + pictureReportingData.getCreatedDate() + "','" + pictureReportingData.getUpdatedBy() + "','" + pictureReportingData.getUpdatedDate() + "','" + pictureReportingData.getReferenceType() + "','" + pictureReportingData.getReferenceID() + "')");
            } catch (Exception e) {
                try {
                    e.printStackTrace();
                } catch (Exception e2) {
                    throw e2;
                }
            }
        }
    }

    public static synchronized SendAckSdtv insertDtdv(SDTV sdtv, SendAckSdtv sendAckSdtv) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            if (sdtv != null) {
                try {
                    if (sdtv.getStateList() != null && sdtv.getStateList().size() > 0) {
                        try {
                            for (int size = sdtv.getStateList().size() - 1; size >= 0; size--) {
                                States states = sdtv.getStateList().get(size);
                                String str = "Insert or replace into  StateMaster (StateId,StateName,StateShortCode,ETLCode,IsActive) values('" + states.getStateId() + "','" + states.getStateName() + "','" + states.getStateShortCode() + "','" + states.getETLCode() + "','" + states.getIsActive() + "')";
                                try {
                                    GetDataFromDB.getInstance().executeRawQueryInDB(str);
                                    sendAckSdtv.getAckList().getStateIds().add(Integer.toString(states.getStateId()));
                                } catch (Exception e) {
                                    try {
                                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().insertIntoSyncErrorLog("villageId", states.getStateId() + "", "StateMaster", e, str, "VillageMaster"));
                                    } catch (Exception unused) {
                                        PLog.e("Insertion Error : ", e);
                                    }
                                    PLog.e("Insertion Error : ", e);
                                }
                            }
                        } catch (Exception e2) {
                            PLog.e("Insertion Error : ", e2);
                        }
                    }
                    if (sdtv.getDistrictList() != null && sdtv.getDistrictList().size() > 0) {
                        try {
                            for (int size2 = sdtv.getDistrictList().size() - 1; size2 >= 0; size2--) {
                                Districts districts = sdtv.getDistrictList().get(size2);
                                String str2 = "Insert or replace into  DistrictMaster (DistrictId,DistrictName,DistrictShortCode,StateId,Pincode,ETLCode,IsActive) values('" + districts.getDistrictId() + "','" + districts.getDistrictName() + "','" + districts.getDistrictShortCode() + "','" + districts.getStateId() + "','" + districts.getPincode() + "','" + districts.getETLCode() + "','" + districts.getIsActive() + "')";
                                try {
                                    GetDataFromDB.getInstance().executeRawQueryInDB(str2);
                                    sendAckSdtv.getAckList().getDistrictIds().add(Integer.toString(districts.getDistrictId()));
                                } catch (Exception e3) {
                                    try {
                                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().insertIntoSyncErrorLog("villageId", districts.getDistrictId() + "", "VillageMaster", e3, str2, "VillageMaster"));
                                    } catch (Exception unused2) {
                                        PLog.e("Insertion Error : ", e3);
                                    }
                                    PLog.e("Insertion Error : ", e3);
                                }
                            }
                        } catch (Exception e4) {
                            PLog.e("Insertion Error : ", e4);
                        }
                    }
                    if (sdtv.getMandalList() != null && sdtv.getMandalList().size() > 0) {
                        for (int size3 = sdtv.getMandalList().size() - 1; size3 >= 0; size3--) {
                            Mandals mandals = sdtv.getMandalList().get(size3);
                            String str3 = "Insert or replace into MandalMaster(MandalId, MandalName,Mandalshortcode,Districtid,Pincode,ETLCode,IsActive)values (" + mandals.getMandalId() + ",'" + mandals.getMandalName() + "','" + mandals.getMandalshortcode() + "','" + mandals.getDistrictid() + "','" + mandals.getPincode() + "','" + mandals.getETLCode() + "','" + mandals.isActive() + "')";
                            try {
                                if (mandals.getMandalId() != 0) {
                                    GetDataFromDB.getInstance().executeRawQueryInDB(str3);
                                }
                                if (sendAckSdtv != null) {
                                    sendAckSdtv.getAckList().getMandalIds().add("" + mandals.getMandalId());
                                }
                            } catch (Exception e5) {
                                try {
                                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().insertIntoSyncErrorLog("MandalId", "" + mandals.getMandalId(), "MandalMaster", e5, str3, "MandalMaster"));
                                } catch (Exception unused3) {
                                    PLog.e("Insertion Error : ", e5);
                                }
                                PLog.e("Insertion Error : ", e5);
                            }
                        }
                    }
                    if (sdtv.getVillageList() != null && sdtv.getVillageList().size() > 0) {
                        try {
                            for (int size4 = sdtv.getVillageList().size() - 1; size4 >= 0; size4--) {
                                Villages villages = sdtv.getVillageList().get(size4);
                                String str4 = "Insert or replace into  VillageMaster (VillageID,VillageName,MandalID,IsActive) values('" + villages.getVillageID() + "','" + villages.getVillageName() + "','" + villages.getMandalID() + "','" + villages.isActive() + "')";
                                try {
                                    if (villages.getVillageID() != 0) {
                                        GetDataFromDB.getInstance().executeRawQueryInDB(str4);
                                    }
                                    sendAckSdtv.getAckList().getVillageIds().add(Integer.toString(villages.getVillageID()));
                                } catch (Exception e6) {
                                    try {
                                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().insertIntoSyncErrorLog("villageId", villages.getVillageID() + "", "VillageMaster", e6, str4, "VillageMaster"));
                                    } catch (Exception unused4) {
                                        PLog.e("Insertion Error : ", e6);
                                    }
                                    PLog.e("Insertion Error : ", e6);
                                }
                            }
                        } catch (Exception e7) {
                            PLog.e("Insertion Error : ", e7);
                        }
                    }
                } catch (Exception e8) {
                    throw e8;
                }
            }
        }
        return sendAckSdtv;
    }

    public static void insertFirstDayFOTrackerHeader() throws Exception {
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                if (openDatabase != null) {
                    ContentValues contentValues = new ContentValues();
                    String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getPdaId());
                    contentValues.put("UserId", Integer.valueOf(Integer.parseInt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getUseridFoeUserDetails(Integer.parseInt(stringValue))))));
                    contentValues.put("PdaId", Integer.valueOf(Integer.parseInt(stringValue)));
                    contentValues.put("StartDate", UtilDeclarations.getDateTime());
                    contentValues.put("CreatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("UpdatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("IsProcessed", (Integer) 0);
                    openDatabase.insert("FoTrackerHeader", null, contentValues);
                }
            } catch (Exception e) {
                throw e;
            }
        } finally {
            dbInstance.closeDatabase();
        }
    }

    public static synchronized void UpdateImageServerStatus(long j) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("ServerStatus", "false");
                        long j2 = 0;
                        if (j != 0) {
                            j2 = openDatabase.update("ActivityImageDetails", contentValues, "ImageId = " + j, null);
                        }
                        Log.i("updatevalues", j2 + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void UpdateVideoServerStatus(long j) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("ServerStatus", "");
                        long j2 = 0;
                        if (j != 0) {
                            j2 = openDatabase.update("ActivityImageDetails", contentValues, "ImageId = " + j, null);
                        }
                        Log.i("updatevalues", j2 + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertData(String str, List<HashMap> list) {
        synchronized (InsertDataIntoDB.class) {
            for (int i = 0; i < list.size(); i++) {
                try {
                    try {
                        ArrayList<Map.Entry> arrayList = new ArrayList(list.get(i).entrySet());
                        String str2 = "insert into " + str;
                        StringBuffer stringBuffer = new StringBuffer();
                        StringBuffer stringBuffer2 = new StringBuffer();
                        for (Map.Entry entry : arrayList) {
                            stringBuffer2.append(entry.getKey());
                            stringBuffer2.append(",");
                            stringBuffer.append("'");
                            stringBuffer.append(entry.getValue());
                            stringBuffer.append("'");
                            stringBuffer.append(",");
                        }
                        GetDataFromDB.getInstance().executeRawQueryInDB(str2 + ("(" + stringBuffer2.deleteCharAt(stringBuffer2.length() - 1).toString() + ")") + "values" + ("(" + stringBuffer.deleteCharAt(stringBuffer.length() - 1).toString() + ")"));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void insertLog4Trace(String str, String str2, String str3, String str4, String str5, boolean z) throws Exception {
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                if (openDatabase != null) {
                    ContentValues contentValues = new ContentValues();
                    String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getPdaId());
                    contentValues.put("UserId", Integer.valueOf(Integer.parseInt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getUseridFoeUserDetails(Integer.parseInt(stringValue))))));
                    contentValues.put("PdaId", Integer.valueOf(Integer.parseInt(stringValue)));
                    contentValues.put("CreatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("ScreenName", str);
                    contentValues.put("Action", str5);
                    contentValues.put("ActivityID", (String) null);
                    contentValues.put("serverUpdateStatus", "false");
                    openDatabase.insert("Log4Trace", null, contentValues);
                }
            } catch (Exception e) {
                throw e;
            }
        } finally {
            dbInstance.closeDatabase();
        }
    }

    public static synchronized void insertProfileImage(String str) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("itemKey", "ProfileImage");
                        contentValues.put("itemType", "Picture");
                        contentValues.put("itemValue", str);
                        contentValues.put("createdBy", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                        contentValues.put("createdDate", UtilDeclarations.getDateTime());
                        contentValues.put("updatedBy", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                        contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                        contentValues.put("isActive", "false");
                        if (GetDataFromDB.getInstance().getIsRecordExists("SELECT itemvalue from ConfigurableLookup where itemKey='ProfileImage'")) {
                            Log.e("Image", "ProfileImg updated");
                            openDatabase.update("ConfigurableLookup", contentValues, "itemKey ='ProfileImage'", null);
                        } else {
                            Log.e("Image", "ProfileImg inserted");
                            openDatabase.insert("ConfigurableLookup", null, contentValues);
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0035 A[Catch: all -> 0x002c, Exception -> 0x002f, TRY_LEAVE, TryCatch #4 {Exception -> 0x002f, all -> 0x002c, blocks: (B:25:0x001b, B:27:0x0021, B:8:0x0035), top: B:24:0x001b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void updateCloseDayFOTrackerHeader() {
        /*
            java.lang.String r0 = "TrackId = "
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.InsertDataIntoDB.dbInstance     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            com.conceptglobal.pmc.common.Queries r3 = com.conceptglobal.pmc.common.Queries.getInstance()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            java.lang.String r3 = r3.getTrackId()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            r4 = r1
            java.lang.String[] r4 = (java.lang.String[]) r4     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            android.database.Cursor r3 = r2.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            r4 = 0
            if (r3 == 0) goto L32
            boolean r5 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            if (r5 == 0) goto L32
            java.lang.String r5 = "TrackId"
            int r5 = r3.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            int r5 = r3.getInt(r5)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            goto L33
        L2c:
            r0 = move-exception
            r1 = r3
            goto L6f
        L2f:
            r0 = move-exception
            r1 = r3
            goto L6e
        L32:
            r5 = 0
        L33:
            if (r2 == 0) goto L60
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            r6.<init>()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            java.lang.String r7 = "EndDate"
            java.lang.String r8 = com.conceptglobal.pmc.utils.UtilDeclarations.getDateTime()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            r6.put(r7, r8)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            java.lang.String r7 = "IsProcessed"
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            r6.put(r7, r4)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            java.lang.String r4 = "FoTrackerHeader"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            r7.<init>(r0)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            r7.append(r5)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            java.lang.String r0 = r7.toString()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            r5 = r1
            java.lang.String[] r5 = (java.lang.String[]) r5     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            r2.update(r4, r6, r0, r1)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
        L60:
            if (r3 == 0) goto L65
            r3.close()
        L65:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.InsertDataIntoDB.dbInstance
            r0.closeDatabase()
            return
        L6b:
            r0 = move-exception
            goto L6f
        L6d:
            r0 = move-exception
        L6e:
            throw r0     // Catch: java.lang.Throwable -> L6b
        L6f:
            if (r1 == 0) goto L74
            r1.close()
        L74:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.InsertDataIntoDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.InsertDataIntoDB.updateCloseDayFOTrackerHeader():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x003d A[Catch: all -> 0x00ae, Exception -> 0x00b0, TRY_LEAVE, TryCatch #1 {Exception -> 0x00b0, blocks: (B:3:0x0003, B:7:0x0035, B:9:0x003d), top: B:2:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insertCoordinates(java.lang.Double r8, java.lang.Double r9) throws java.lang.Exception {
        /*
            java.lang.String r0 = " "
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.InsertDataIntoDB.dbInstance     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            com.conceptglobal.pmc.common.Queries r3 = com.conceptglobal.pmc.common.Queries.getInstance()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r3 = r3.getTrackId()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            r4 = r1
            java.lang.String[] r4 = (java.lang.String[]) r4     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            android.database.Cursor r2 = r2.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r3 = "TrackId"
            r4 = 0
            if (r2 == 0) goto L34
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L30
            if (r5 == 0) goto L34
            int r5 = r2.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L30
            int r2 = r2.getInt(r5)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L30
            goto L35
        L2c:
            r8 = move-exception
            r1 = r2
            goto Lb2
        L30:
            r8 = move-exception
            r1 = r2
            goto Lb1
        L34:
            r2 = 0
        L35:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.InsertDataIntoDB.dbInstance     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            android.database.sqlite.SQLiteDatabase r5 = r5.openDatabase()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            if (r5 == 0) goto La8
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            r6.<init>()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r7 = "Latitude"
            r6.put(r7, r8)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r8 = "Longitude"
            r6.put(r8, r9)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            com.conceptglobal.pmc.database.GetDataFromDB r8 = com.conceptglobal.pmc.database.GetDataFromDB.getInstance()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            com.conceptglobal.pmc.common.Queries r9 = com.conceptglobal.pmc.common.Queries.getInstance()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r9 = r9.getPdaId()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r8 = r8.getStringValue(r9)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r9 = "PdaId"
            r6.put(r9, r8)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r8 = "CreatedDate"
            java.lang.String r9 = com.conceptglobal.pmc.utils.UtilDeclarations.getDateTime()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            r6.put(r8, r9)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r8 = "UpdatedDate"
            java.lang.String r9 = com.conceptglobal.pmc.utils.UtilDeclarations.getDateTime()     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            r6.put(r8, r9)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r8 = "CreatedBy"
            r6.put(r8, r0)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r8 = "UpdatedBy"
            r6.put(r8, r0)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.Integer r8 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            r6.put(r3, r8)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r8 = "SyncStatus"
            java.lang.Integer r9 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            r6.put(r8, r9)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r8 = "IsProcessed"
            java.lang.Integer r9 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            r6.put(r8, r9)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r8 = "FoTrackerDetails"
            r9 = r1
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            long r8 = r5.insert(r8, r1, r6)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            java.lang.String r0 = "InsertCoordinates"
            java.lang.String r8 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
            android.util.Log.d(r0, r8)     // Catch: java.lang.Throwable -> Lae java.lang.Exception -> Lb0
        La8:
            com.conceptglobal.pmc.database.DataBaseHandler r8 = com.conceptglobal.pmc.database.InsertDataIntoDB.dbInstance
            r8.closeDatabase()
            return
        Lae:
            r8 = move-exception
            goto Lb2
        Lb0:
            r8 = move-exception
        Lb1:
            throw r8     // Catch: java.lang.Throwable -> Lae
        Lb2:
            if (r1 == 0) goto Lb7
            r1.close()
        Lb7:
            com.conceptglobal.pmc.database.DataBaseHandler r9 = com.conceptglobal.pmc.database.InsertDataIntoDB.dbInstance
            r9.closeDatabase()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.InsertDataIntoDB.insertCoordinates(java.lang.Double, java.lang.Double):void");
    }

    public static void insertAttendanceDetails(I2VAttendanceDetails i2VAttendanceDetails) {
        try {
            i2VAttendanceDetails.setAttendanceID(Math.round(getRecordCount("SELECT max(AttendanceID) from I2VAttendanceDetails")) + 1);
            GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO I2VAttendanceDetails(AttendanceID, Date, DistanceTravelled, NightHalt, FOName, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate) VALUES('" + i2VAttendanceDetails.getAttendanceID() + "','" + i2VAttendanceDetails.getDate() + "','" + i2VAttendanceDetails.getDistanceTravelled() + "','" + i2VAttendanceDetails.getNightHalt() + "','" + i2VAttendanceDetails.getFOName() + "','" + i2VAttendanceDetails.getCreatedBy() + "','" + i2VAttendanceDetails.getCreatedDate() + "','" + i2VAttendanceDetails.getUpdatedBy() + "','" + i2VAttendanceDetails.getUpdatedDate() + "')");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static synchronized void insertFarmerActivityDetailsUpdateTST(List<AttributeModel> list, String str, int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, AssignmentActivityDetailsModel assignmentActivityDetailsModel, int i8) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        for (int i9 = 0; i9 < list.size(); i9++) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("ActivitySegmentValue", str);
                            contentValues.put("ActivitySegmentId", Integer.valueOf(i5));
                            contentValues.put("ActivityMasterId", Integer.valueOf(i));
                            contentValues.put("AttributeId", Integer.valueOf(list.get(i9).getAttributeId()));
                            contentValues.put("attributeValue", list.get(i9).getAttributeValue());
                            contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("createddate", UtilDeclarations.getDateTime());
                            contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                            contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                            contentValues.put("isPlanned", Integer.valueOf(i2));
                            contentValues.put("isDone", Integer.valueOf(i3));
                            contentValues.put("TransId", Long.valueOf(j));
                            contentValues.put("AssignmentId", Integer.valueOf(i4));
                            contentValues.put("isTransactionDone", Integer.valueOf(i6));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("ActivityAttributeId", Integer.valueOf(list.get(i9).getActivityAttributeId()));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("isActive", (Integer) 1);
                            contentValues.put("PackageId", Integer.valueOf(i8));
                            if (j == 0) {
                                contentValues.put("StartDate", assignmentActivityDetailsModel.getStartDate() + "");
                                contentValues.put("EndDate", assignmentActivityDetailsModel.getEndDate() + "");
                                contentValues.put("Person1", assignmentActivityDetailsModel.getPerson1() + "");
                                contentValues.put("Person2", assignmentActivityDetailsModel.getPerson2() + "");
                                contentValues.put("Location1", assignmentActivityDetailsModel.getLocation1() + "");
                                contentValues.put("Location2", assignmentActivityDetailsModel.getLocation2() + "");
                                contentValues.put("ContactNumber", assignmentActivityDetailsModel.getContactNumber() + "");
                            }
                            if (i6 == 1) {
                                contentValues.put("serverUpdatedStatus", "false");
                            }
                            list.get(i9).setDetailsId(Math.round(getRecordCount("SELECT max(detailsID) from pmcTSTAssignmentActivityDetails")) + 1);
                            contentValues.put("detailsID", Integer.valueOf(list.get(i9).getDetailsId()));
                            Log.i("insertvalues", openDatabase.insert("pmcTSTAssignmentActivityDetails", null, contentValues) + "");
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertFarmerActivityDetailsUpdateFBF(List<AttributeModel> list, String str, int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, AssignmentActivityDetailsModel assignmentActivityDetailsModel, int i8) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        for (int i9 = 0; i9 < list.size(); i9++) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("ActivitySegmentValue", str);
                            contentValues.put("ActivitySegmentId", Integer.valueOf(i5));
                            contentValues.put("ActivityMasterId", Integer.valueOf(i));
                            contentValues.put("AttributeId", Integer.valueOf(list.get(i9).getAttributeId()));
                            contentValues.put("attributeValue", list.get(i9).getAttributeValue());
                            contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("createddate", UtilDeclarations.getDateTime());
                            contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                            contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                            contentValues.put("isPlanned", Integer.valueOf(i2));
                            contentValues.put("isDone", Integer.valueOf(i3));
                            contentValues.put("TransId", Long.valueOf(j));
                            contentValues.put("AssignmentId", Integer.valueOf(i4));
                            contentValues.put("isTransactionDone", Integer.valueOf(i6));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("ActivityAttributeId", Integer.valueOf(list.get(i9).getActivityAttributeId()));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("isActive", (Integer) 1);
                            contentValues.put("PackageId", Integer.valueOf(i8));
                            if (j == 0) {
                                contentValues.put("StartDate", assignmentActivityDetailsModel.getStartDate() + "");
                                contentValues.put("EndDate", assignmentActivityDetailsModel.getEndDate() + "");
                                contentValues.put("Person1", assignmentActivityDetailsModel.getPerson1() + "");
                                contentValues.put("Person2", assignmentActivityDetailsModel.getPerson2() + "");
                                contentValues.put("Location1", assignmentActivityDetailsModel.getLocation1() + "");
                                contentValues.put("Location2", assignmentActivityDetailsModel.getLocation2() + "");
                                contentValues.put("ContactNumber", assignmentActivityDetailsModel.getContactNumber() + "");
                            }
                            if (i6 == 1) {
                                contentValues.put("serverUpdatedStatus", "false");
                            }
                            list.get(i9).setDetailsId(Math.round(getRecordCount("SELECT max(detailsID) from pmcFBFAssignmentActivityDetails")) + 1);
                            contentValues.put("detailsID", Integer.valueOf(list.get(i9).getDetailsId()));
                            Log.i("insertvalues", openDatabase.insert("pmcFBFAssignmentActivityDetails", null, contentValues) + "");
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertFarmerMultiAttributeDetails(List<FarmerMultiAttributeDetails> list) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        for (int i = 0; i < list.size(); i++) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("FarmerId", list.get(i).getFarmerId());
                            contentValues.put("RespondentNo", list.get(i).getRespondentNo());
                            contentValues.put("ColumnMappingId", list.get(i).getColumnMappingId());
                            contentValues.put("AttributeValue", list.get(i).getAttributeValue());
                            contentValues.put("AttributeTypeName", list.get(i).getAttributeTypeName());
                            contentValues.put("PdaId", list.get(i).getPdaId());
                            contentValues.put("IsProcessed", "");
                            contentValues.put("ServerUpdatedStatus", "false");
                            contentValues.put("ServerUpdatedDate", "");
                            contentValues.put("CreatedBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("CreatedDate", UtilDeclarations.getDateTime());
                            contentValues.put("UpdatedBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("UpdatedDate", UtilDeclarations.getDateTime());
                            Log.i("insertvalues", openDatabase.insert("FarmerMultiAttributeDetails", null, contentValues) + "");
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    PLog.e("FarmerMultiAttributeDetails", e);
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertDealerMultiAttributeDetails(List<RetailerMultiAttributeDetails> list) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        for (int i = 0; i < list.size(); i++) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("ContactID", list.get(i).getContactID());
                            contentValues.put("ColumnMappingID", list.get(i).getColumnMappingId());
                            contentValues.put("AttributeValue", list.get(i).getAttributeValue());
                            contentValues.put("AttributeTypeName", list.get(i).getAttributeTypeName());
                            contentValues.put("pdaId", list.get(i).getPdaId());
                            contentValues.put("IsProcessed", "");
                            contentValues.put("ServerUpdatedStatus", "false");
                            contentValues.put("ServerUpdatedDate", "");
                            contentValues.put("CreatedBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("CreatedDate", UtilDeclarations.getDateTime());
                            contentValues.put("UpdatedBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("UpdatedDate", UtilDeclarations.getDateTime());
                            Log.i("insertvalues", openDatabase.insert("DealerMultiAttributeDetails", null, contentValues) + "");
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static void insertMadiPricesIntoDb(List<TableBean> list) {
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                if (openDatabase != null) {
                    for (int i = 0; i < list.size(); i++) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("LineId", Integer.valueOf(list.get(i).getLineId()));
                        contentValues.put("State", list.get(i).getState());
                        contentValues.put("District", list.get(i).getDistrict());
                        contentValues.put("Market", list.get(i).getMarket());
                        contentValues.put("Commodity", list.get(i).getCommodity());
                        contentValues.put("Variety", list.get(i).getVariety());
                        contentValues.put("ArrivaleDate", list.get(i).getArrival_date());
                        contentValues.put("MinPrice", list.get(i).getMin_price());
                        contentValues.put("MaxPrice", list.get(i).getMax_price());
                        contentValues.put("MondalPrice", list.get(i).getModal_price());
                        openDatabase.insert("PricesDisplay", null, contentValues);
                    }
                }
            } catch (Exception e) {
                e.getMessage();
            }
        } finally {
            dbInstance.closeDatabase();
        }
    }

    public static void insertResolutionDataIntoDb(String str, String str2, String str3, String str4, String str5, String str6, long j, int i, int i2, int i3) {
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                if (openDatabase != null) {
                    String stringValue = GetDataFromDB.getInstance().getStringValue("select Max(ActivityResolveId) from FBFActivityResolveTrack");
                    String stringValue2 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getPdaId());
                    int parseInt = Integer.parseInt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getUseridFoeUserDetails(Integer.parseInt(stringValue2))));
                    int parseInt2 = Integer.parseInt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getUserNameFoeUserDetails(Integer.parseInt(stringValue2))));
                    ContentValues contentValues = new ContentValues();
                    if (str != null && !str.equalsIgnoreCase("")) {
                        contentValues.put("ActivityResolveId", str);
                    } else if (stringValue == null || stringValue.equalsIgnoreCase("")) {
                        contentValues.put("ActivityResolveId", Integer.valueOf(Integer.valueOf("0").intValue() + 1));
                    } else {
                        contentValues.put("ActivityResolveId", Integer.valueOf(Integer.valueOf(stringValue).intValue() + 1));
                    }
                    if (str2 != null && !str2.equalsIgnoreCase("")) {
                        contentValues.put("ActivityAssignmentId", str2);
                    } else {
                        contentValues.put("ActivityAssignmentId", "");
                    }
                    if (str3 == null || str3.equalsIgnoreCase("")) {
                        contentValues.put("ResolvedBy", Integer.valueOf(parseInt));
                    } else {
                        contentValues.put("ResolvedBy", str3);
                    }
                    if (str4 == null || str4.equalsIgnoreCase("")) {
                        contentValues.put("ResolveName", String.valueOf(parseInt2));
                    } else {
                        contentValues.put("ResolveName", str4);
                    }
                    contentValues.put("ResolveRemarks", str5);
                    contentValues.put("CreatedBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("CreatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("TransId", String.valueOf(j));
                    contentValues.put("ResolvedStatus", Integer.valueOf(i));
                    contentValues.put("UpdatedBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("UpdatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("IsSMSRequired", Integer.valueOf(i2));
                    if (i3 != 1) {
                        contentValues.put("ServerUpdatedStatus", "false");
                    } else {
                        contentValues.put("ServerUpdatedStatus", "");
                    }
                    openDatabase.insert("FBFActivityResolveTrack", null, contentValues);
                }
            } catch (Exception e) {
                e.getMessage();
            }
        } finally {
            dbInstance.closeDatabase();
        }
    }

    public static void saveErrorLog(String str) {
        DataBaseHandler dataBaseHandler = DataBaseHandler.getInstance();
        try {
            try {
                SQLiteDatabase openDatabase = dataBaseHandler.openDatabase();
                if (openDatabase != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("ErrorMessage", str);
                    contentValues.put("CreatedDate", com.conceptglobal.pmc.fotracker.util.UtilDeclarations.getDateTime());
                    contentValues.put("PDAID", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getDeviceID())));
                    contentValues.put("ServerStatus", (Integer) 0);
                    openDatabase.insert("ErrorLogger", null, contentValues);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            dataBaseHandler.closeDatabase();
        }
    }

    public static synchronized void insertFarmerActivityDetailsImageAttendance(ImageDetails imageDetails, boolean z) throws Exception {
        long insert;
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("AssignmentId", Integer.valueOf(imageDetails.getAssignmentId()));
                        contentValues.put("ActivityId", Integer.valueOf(imageDetails.getActivityId()));
                        contentValues.put("PicturePath", imageDetails.getPicturePath());
                        contentValues.put("Comments", imageDetails.getComments());
                        contentValues.put("SubJect", imageDetails.getSubject());
                        contentValues.put("PDAID", Integer.valueOf(imageDetails.getPdaID()));
                        contentValues.put("AttributeId", Integer.valueOf(imageDetails.getAttributeId()));
                        contentValues.put("CreatedBy", imageDetails.getCreatedBy());
                        contentValues.put("CreatedDate", imageDetails.getCtreatedDate());
                        contentValues.put("UpdatedBy", imageDetails.getUpdatedBy());
                        contentValues.put("UpdatedDate", imageDetails.getUpdatedDate());
                        contentValues.put("Remarks", imageDetails.getRemarks());
                        contentValues.put("ResField1", "");
                        contentValues.put("pdaCreatedDate", UtilDeclarations.getDateTime());
                        contentValues.put("ReferenceType", imageDetails.getReferenceType());
                        contentValues.put("ReferenceID", imageDetails.getReferenceId());
                        contentValues.put("EventTypeId", Integer.valueOf(imageDetails.getEventTypeId()));
                        contentValues.put("ContentTypeId", Integer.valueOf(imageDetails.getContentTypeId()));
                        if (z) {
                            insert = openDatabase.update("ActivityImageDetails", contentValues, "ImageId =" + imageDetails.getImageId(), null);
                        } else {
                            contentValues.put("ImageId", Long.valueOf(System.currentTimeMillis()));
                            insert = openDatabase.insert("ActivityImageDetails", null, contentValues);
                        }
                        Log.e("dbimage", insert + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertAttendanceDataDraft(AttendanceModel attendanceModel) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT OR REPLACE INTO AttendanceDetails(AttendanceID ,Fromdate ,ToDate,LeaveType,NoOfDays,Remarks,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaID,TransId,ReasonType,StartLatitude,StartLongitude,EndLatitude,EndLongitude,StartLocationTime,EndLocationTime,StartLocationAddress,EndLocationAddress,StartKM,EndKM,Status) VALUES(" + attendanceModel.getAttendanceID() + ", '" + attendanceModel.getFromDate() + "', '" + attendanceModel.getToDate() + "', '" + attendanceModel.getLeaveType() + "', '" + attendanceModel.getNoOfDays() + "', '" + attendanceModel.getRemarks() + "', 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','" + attendanceModel.getTransId() + "','" + attendanceModel.getReasonType() + "','" + attendanceModel.getStartLatitude() + "','" + attendanceModel.getStartLongitude() + "','" + attendanceModel.getEndLatitude() + "','" + attendanceModel.getEndLongitude() + "','" + attendanceModel.getStartLocationTime() + "','" + attendanceModel.getEndLocationTime() + "','" + attendanceModel.getStartLocationAddress() + "','" + attendanceModel.getEndLocationAddress() + "','" + attendanceModel.getStartKM() + "','" + attendanceModel.getEndKM() + "','0')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertAttendanceData(AttendanceModel attendanceModel) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                attendanceModel.setAttendanceID(Math.round(getRecordCount("SELECT max(AttendanceID) from AttendanceDetails")) + 1);
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO AttendanceDetails(AttendanceID ,Fromdate ,ToDate,LeaveType,NoOfDays,Remarks,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaID,TransId,ReasonType,StartLatitude,StartLongitude,EndLatitude,EndLongitude,StartLocationTime,EndLocationTime,StartLocationAddress,EndLocationAddress,StartKM,EndKM,Status) VALUES(" + attendanceModel.getAttendanceID() + ", '" + attendanceModel.getFromDate() + "', '" + attendanceModel.getToDate() + "', '" + attendanceModel.getLeaveType() + "', " + attendanceModel.getNoOfDays() + ", '" + attendanceModel.getRemarks() + "', 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getDeviceID() + "','" + attendanceModel.getTransId() + "','" + attendanceModel.getReasonType() + "','" + attendanceModel.getStartLatitude() + "','" + attendanceModel.getStartLongitude() + "','" + attendanceModel.getEndLatitude() + "','" + attendanceModel.getEndLongitude() + "','" + attendanceModel.getStartLocationTime() + "','" + attendanceModel.getEndLocationTime() + "','" + attendanceModel.getStartLocationAddress() + "','" + attendanceModel.getEndLocationAddress() + "','" + attendanceModel.getStartKM() + "','" + attendanceModel.getEndKM() + "',1)");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertResignationData(ResignationDetails resignationDetails, boolean z) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        int recordCount = getRecordCount("SELECT max(ID) from ResignedUsers");
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("pdaid", ConstantsPMC.getInstance().getDeviceID());
                        contentValues.put("applieddate", resignationDetails.getApplieddate());
                        contentValues.put("reason", resignationDetails.getReason());
                        contentValues.put("description", resignationDetails.getDescription());
                        contentValues.put("lastworkingdate", resignationDetails.getLastworkingdate());
                        if (!z) {
                            contentValues.put("ServerUpdatedStatus", "false");
                        }
                        if (recordCount == 0) {
                            contentValues.put("ID", Integer.valueOf(recordCount + 1));
                            contentValues.put("createdby", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId())));
                            contentValues.put("createddate", UtilDeclarations.getDateTime());
                            openDatabase.insert("ResignedUsers", null, contentValues);
                        } else {
                            contentValues.put("ID", Integer.valueOf(recordCount));
                            contentValues.put("updatedby", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId())));
                            contentValues.put("updateddate", UtilDeclarations.getDateTime());
                            openDatabase.update("ResignedUsers", contentValues, "ID = " + recordCount, null);
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                DataBaseHandler dataBaseHandler = dbInstance;
                if (dataBaseHandler != null) {
                    dataBaseHandler.closeDatabase();
                }
            }
        }
    }

    public static synchronized void UpdateResignationData(ResignationStatusDetails resignationStatusDetails) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        int recordCount = getRecordCount("SELECT max(ID) from ResignedUsers");
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("resignationstatus", Integer.valueOf(resignationStatusDetails.getResignationstatus()));
                        contentValues.put("reviweddate", resignationStatusDetails.getReviweddate());
                        contentValues.put("reviewedbyname", resignationStatusDetails.getReviewedbyname());
                        openDatabase.update("ResignedUsers", contentValues, "ID = " + recordCount, null);
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                DataBaseHandler dataBaseHandler = dbInstance;
                if (dataBaseHandler != null) {
                    dataBaseHandler.closeDatabase();
                }
            }
        }
    }

    public static synchronized void insertLeaveData(ApplyLeaveModel applyLeaveModel) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                applyLeaveModel.setAttendanceID(Math.round(getRecordCount("SELECT max(AttendanceID) from ApplyLeave")) + 1);
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO ApplyLeave(AttendanceID ,Fromdate ,ToDate,LeaveType,NoOfDays,Remarks,serverupdatedstatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,PdaID,ReasonType) VALUES(" + applyLeaveModel.getAttendanceID() + ", '" + applyLeaveModel.getFromDate() + "', '" + applyLeaveModel.getToDate() + "', '" + applyLeaveModel.getLeaveType() + "', " + applyLeaveModel.getNoOfDays() + ", '" + applyLeaveModel.getRemarks() + "', 'false', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + ", '" + UtilDeclarations.getDateTime() + "', '" + ConstantsPMC.getInstance().getDeviceID() + "','" + applyLeaveModel.getReasonType() + "')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void UpdateExpenseAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                if (openDatabase != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("assignmentId", Integer.valueOf(i));
                    contentValues.put("visitDescription", str2);
                    contentValues.put("createdDate", UtilDeclarations.getDateTime());
                    contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                    contentValues.put("serverUpdatedStatus", str5);
                    contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                    contentValues.put("farmerId", str);
                    contentValues.put("latitude", str3);
                    contentValues.put("longitude", str4);
                    contentValues.put("GPSTimeStamp", str7);
                    contentValues.put("remarks", str6);
                    contentValues.put("activityAssignmentId", Integer.valueOf(i2));
                    contentValues.put("TransactionId", Long.valueOf(j));
                    openDatabase.update("pmcExpenseAssignmentVisit", contentValues, "activityAssignmentId = " + i2 + " AND TransactionId = " + j, null);
                }
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void insertExpenseAssignmentVisistDetails(int i, String str, String str2, String str3, String str4, int i2, long j, String str5, String str6, String str7) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("Insert into pmcExpenseAssignmentVisit (assignmentId, visitDescription,createdDate,createdBy,updatedDate,updatedBy,serverUpdatedStatus,pdaId,farmerId,latitude,longitude,remarks,activityAssignmentId,GPSTimeStamp,TransactionId) values ('" + i + "','" + str2 + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + UtilDeclarations.getDateTime() + "','" + ConstantsPMC.getInstance().getUserId().toString() + "','" + str5 + "','" + ConstantsPMC.getInstance().getDeviceID().toString() + "','" + str + "','" + str3 + "','" + str4 + "','" + str6 + "','" + i2 + "','" + str7 + "','" + j + "')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static synchronized void UpdateExpenseAssignmentActivitiesCustomerDetails(String str, int i, int i2, long j, String str2) throws Exception {
        int update;
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("ActivityExecutionSegmentValue", str);
                        contentValues.put("ActivityExecutionSegmentId", Integer.valueOf(i));
                        contentValues.put("territoryId", str2);
                        if (j == 0) {
                            update = openDatabase.update("pmcExpenseAssignmentActivityDetails", contentValues, "ActivityAssignmentId = " + i2, null);
                        } else {
                            update = openDatabase.update("pmcExpenseAssignmentActivityDetails", contentValues, "TransId = " + j, null);
                        }
                        Log.i("updatevalues", update + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void insertExpensesFarmerActivityDetailsUpdate(List<AttributeModel> list, String str, int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, AssignmentActivityDetailsModel assignmentActivityDetailsModel, int i8, String str2, int i9, long j2) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        for (int i10 = 0; i10 < list.size(); i10++) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("ActivitySegmentValue", str);
                            contentValues.put("ActivitySegmentId", Integer.valueOf(i5));
                            contentValues.put("ActivityMasterId", Integer.valueOf(i));
                            contentValues.put("AttributeId", Integer.valueOf(list.get(i10).getAttributeId()));
                            contentValues.put("attributeValue", list.get(i10).getAttributeValue());
                            contentValues.put("createdBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("createddate", UtilDeclarations.getDateTime());
                            contentValues.put("updatedBy", ConstantsPMC.getInstance().getUserId().toString());
                            contentValues.put("updatedDate", UtilDeclarations.getDateTime());
                            contentValues.put("pdaId", ConstantsPMC.getInstance().getDeviceID().toString());
                            contentValues.put("isPlanned", Integer.valueOf(i2));
                            contentValues.put("isDone", Integer.valueOf(i3));
                            contentValues.put("TransId", Long.valueOf(j));
                            contentValues.put("AssignmentId", Integer.valueOf(i4));
                            contentValues.put("isTransactionDone", Integer.valueOf(i6));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("ActivityAttributeId", Integer.valueOf(list.get(i10).getActivityAttributeId()));
                            contentValues.put("ActivityAssignmentId", Integer.valueOf(i7));
                            contentValues.put("isActive", (Integer) 1);
                            contentValues.put("PackageId", Integer.valueOf(i8));
                            contentValues.put("ActivityCode", str2);
                            contentValues.put("ParentActivityTransID", Long.valueOf(j2));
                            contentValues.put("ParentActivityAssignmentID", Integer.valueOf(i9));
                            contentValues.put("isExpensesSubmited", (Integer) 1);
                            if (j == 0 && assignmentActivityDetailsModel != null) {
                                contentValues.put("StartDate", assignmentActivityDetailsModel.getStartDate() + "");
                                contentValues.put("EndDate", assignmentActivityDetailsModel.getEndDate() + "");
                                contentValues.put("Person1", assignmentActivityDetailsModel.getPerson1() + "");
                                contentValues.put("Person2", assignmentActivityDetailsModel.getPerson2() + "");
                                contentValues.put("Location1", assignmentActivityDetailsModel.getLocation1() + "");
                                contentValues.put("Location2", assignmentActivityDetailsModel.getLocation2() + "");
                                contentValues.put("ContactNumber", assignmentActivityDetailsModel.getContactNumber() + "");
                            }
                            if (i6 == 1) {
                                contentValues.put("serverUpdatedStatus", "false");
                            }
                            list.get(i10).setDetailsId(Math.round(getRecordCount("SELECT max(detailsID) from pmcExpenseAssignmentActivityDetails")) + 1);
                            contentValues.put("detailsID", Integer.valueOf(list.get(i10).getDetailsId()));
                            Log.i("insertvalues", openDatabase.insert("pmcExpenseAssignmentActivityDetails", null, contentValues) + "");
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void UpdateExpenseSubmitStatusDetails(long j, long j2, int i) throws Exception {
        int update;
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("isExpensesSubmited", Integer.valueOf(i));
                        if (j2 == 0) {
                            update = openDatabase.update("pmcAssignmentActivityDetails", contentValues, "ActivityAssignmentId = " + j, null);
                        } else {
                            update = openDatabase.update("pmcAssignmentActivityDetails", contentValues, "TransId = " + j2, null);
                        }
                        Log.i("updatevalues", update + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }

    public static synchronized void UpdateImageServerStatusVisitDone(long j) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                try {
                    SQLiteDatabase openDatabase = dbInstance.openDatabase();
                    if (openDatabase != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("ServerStatus", "");
                        long j2 = 0;
                        if (j != 0) {
                            j2 = openDatabase.update("ActivityImageDetails", contentValues, "ImageId = " + j, null);
                        }
                        Log.i("updatevalues", j2 + "");
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
    }
}
