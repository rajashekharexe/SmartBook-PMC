package com.conceptglobal.pmc.promotions.common;

import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class Queries {
    private static Queries instance;
    private String selectPMCTSTAssignmentActivityDetails = "select distinct  ad.detailsID, ad.ActivitySegmentId , ad.ActivityMasterId , ad.attributeValue, ad.isDone, ad.createdBy , ad.createddate, ad.updatedBy , ad.updatedDate ,   ad.isPlanned , ad.pdaId , ad.notdoneRemark, ad.ActivitySegmentValue, ad.ActivityAssignmentId , ad.ActivityAttributeId , ad.ActivitySegmentName, ad.TransId , ad.PairId ,  ad.isTransactionDone , ad.ActivityExecutionSegmentId ,  ad.ActivityExecutionSegmentValue ,  ad.ExecutionDate ,  ad.AttributeId , ad.AssignmentId , ad.ChildLevelId , ad.territoryId  from  PMCTSTAssignmentActivityDetails as ad  where ad.serverUpdatedStatus='false' and ad.isTransactionDone = 1";

    public static Queries getInstance() {
        if (instance == null) {
            instance = new Queries();
        }
        return instance;
    }

    public String getDownloadedContents(int i, int i2) {
        if (i <= 0) {
            return "SELECT * from ContentMaster where IsActive='true' and ContextId = " + i2 + " and ContentDeviceLocation NOT NULL AND ContentDeviceLocation !=''  order by  CreatedDate desc";
        }
        if (i == 1) {
            return "SELECT * from ContentMaster where IsActive='true' and ContextId = " + i2 + " and ContentDeviceLocation NOT NULL AND ContentDeviceLocation !='' and ContentType = " + i + " or ContentType =8 order by  CreatedDate desc";
        }
        return "SELECT * from ContentMaster where IsActive='true' and ContextId = " + i2 + " and ContentDeviceLocation NOT NULL AND ContentDeviceLocation !='' and ContentType = " + i + " order by  CreatedDate desc";
    }

    public String getRevokedContents() {
        return "SELECT * from ContentMaster where IsDeleted = 1 and ContentDeviceLocation NOT NULL AND ContentDeviceLocation !='' ";
    }

    public String getExpiredContents() {
        return "SELECT * from ContentMaster where (ActiveEndDate<>'' and ActiveEndDate<strftime('%Y-%m-%d %H:%M:%f','now')) and ContentDeviceLocation NOT NULL AND ContentDeviceLocation !='' ";
    }

    public String getDeleteRevokedContents() {
        return "Delete  from ContentMaster where IsDeleted = 1 ";
    }

    public String getDeleteExpiredContents() {
        return "Delete  from ContentMaster where (ActiveEndDate<>'' and ActiveEndDate<strftime('%Y-%m-%d %H:%M:%f','now'))";
    }

    public String getFavouriteContents(int i, int i2) {
        if (i <= 0) {
            return "SELECT *,cf.ISFavourite from ContentMaster cm inner join ContentFaourites cf on cf.ContentId=cm.ContentId  and cf.ISFavourite=1 where IsActive='true' and ContextId = " + i2 + " group by cm.ContentID  order by  CreatedDate desc";
        }
        if (i == 1) {
            return "SELECT *,cf.ISFavourite from ContentMaster cm inner join ContentFaourites cf on cf.ContentId=cm.ContentId  and cf.ISFavourite=1 where IsActive='true' and ContextId = " + i2 + " and ContentType = " + i + " or ContentType= 8   group by cm.ContentID order by  CreatedDate desc";
        }
        return "SELECT *,cf.ISFavourite from ContentMaster cm inner join ContentFaourites cf on cf.ContentId=cm.ContentId  and cf.ISFavourite=1 where IsActive='true' and ContextId = " + i2 + " and ContentType = " + i + "  group by cm.ContentID order by  CreatedDate desc";
    }

    public String getContentsRecentlyViewd(int i) {
        return "SELECT * from ContentMaster cm  INNER JOIN UsageDetails ud on ud.ContentId =cm.ContentId where cm.IsActive='true' and cm.ContextId = " + i + " group by cm.ContentId  order by  ud.UsageDateTime desc limit 15";
    }

    public String getFavouriteStatus(String str) {
        return "select ISFavourite from ContentFaourites where ContentID= '" + str + "'";
    }

    public String getContentDeviceLocation(String str) {
        return "select ContentDeviceLocation from ContentMaster where ContentID= '" + str + "'";
    }

    public String getSearchContentQuery(String str, String str2, String str3, int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append("SELECT cm.*  from ContentMaster cm INNER JOIN ContentCategoryMapping ccm on cm.ContentId =ccm.ContentId INNER JOIN CategoryMaster cat on ccm.CategoryId=cat.CategoryId INNER JOIN ContentTypeMaster ctm on cm.ContentType=ctm.ContentTypeId ");
            sb.append("where cm.IsActive='true' and cm.ContextId = " + i3 + " ");
            if (!TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                sb.append("and (cat.ParentCategoryID in " + str + " or ccm.CategoryId in " + str + ") ");
            } else if (!TextUtils.isEmpty(str2) && TextUtils.isEmpty(str)) {
                sb.append("and cm.ContentType in " + str2 + " ");
            } else if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                sb.append("and (cat.ParentCategoryID in " + str + " or ccm.CategoryId in " + str + " or cm.ContentType in " + str2 + ") ");
            }
            sb.append("group by cm.ContentId  UNION ");
        }
        sb.append(" SELECT cm.*  from ContentMaster cm where (SearchKeys like '%" + str3 + "%' or ContentName like '%" + str3 + "%' ) and cm.IsActive='true' and cm.ContextId = " + i3 + "    group by cm.ContentId");
        if (str3 == null) {
            sb.append("  limit " + i + " offset " + i2);
        }
        return sb.toString();
    }

    public String getRelatedContentQuery(String str, ArrayList<String> arrayList, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("select cm.* From Contentmaster cm where ContentId IN (select contentId from ContentCategoryMapping WHERE CategoryId IN (select CategoryId From ContentCategoryMapping WHERE ContentId = '" + str + "')) AND ContentId<> '" + str + "' and cm.IsActive='true' and cm.ContextId = " + i + " group by cm.ContentId");
        if (arrayList.size() > 0) {
            sb.append(" UNION  SELECT cm.*  from ContentMaster cm where (");
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                sb.append("SearchKeys like '%" + arrayList.get(i2) + "%'");
                if (i2 < arrayList.size() - 1) {
                    sb.append(" or ");
                }
            }
            sb.append(") and cm.IsActive='true' and cm.ContextId = " + i + " group by cm.ContentId");
        }
        return sb.toString();
    }

    public String getSelectPMCTSTAssignmentActivityDetails() {
        return this.selectPMCTSTAssignmentActivityDetails;
    }

    public String getDownLoadFileDetailsDeleteQry(String str) {
        return "delete from DownLoadFileDetails where ContentID = '" + str + "'";
    }

    public String getContextIDQry(int i) {
        return "select ContextId from ContentMaster where ContentID = '" + i + "'";
    }
}
