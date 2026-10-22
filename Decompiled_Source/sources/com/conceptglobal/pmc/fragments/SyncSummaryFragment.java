package com.conceptglobal.pmc.fragments;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class SyncSummaryFragment extends Fragment {
    private Context con;
    private Context context;
    private TextView lblAssignmentActivity;
    private TextView lblAssignmentVisitModel;
    private TextView lblFarmerCropDetails;
    private TextView lblFarmerMaster;
    private TextView lblImages;
    private TextView lblPendActivities;
    private TextView lblPendFarmer;
    private TextView lblPendImages;
    private TextView lblPendRetailers;
    private TextView lblPendVideos;
    private TextView lblRetailerCompany;
    private TextView lblRetailerCrop;
    private TextView lblRetailerMaster;
    private TextView lblVideos;
    private TextView pendActivities;
    private TextView pendFarmers;
    private TextView pendImages;
    private TextView pendRetailers;
    private TextView pendVideos;
    View rootView;
    private LinearLayout tab1;
    private LinearLayout tab3;
    private TabHost tabHost;
    private TextView tblAssignmentActivity;
    private TextView tblAssignmentVisitModel;
    private TextView tblFarmerCropDetails;
    private TextView tblFarmerMaster;
    private TextView tblImages;
    private TextView tblRetailerCompany;
    private TextView tblRetailerCrop;
    private TextView tblRetailerMaster;
    private TextView tblVideos;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.con = layoutInflater.getContext();
        this.rootView = layoutInflater.inflate(R.layout.sync_summery, viewGroup, false);
        initialization();
        settingTabs();
        bindValues();
        return this.rootView;
    }

    private void bindValues() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getDealerDetailsSecondTab());
            this.pendFarmers.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountFarmerMaster));
            this.pendRetailers.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofDealerMaster));
            this.pendActivities.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getActivityCount));
            this.pendImages.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getPictureCount));
            this.pendVideos.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getVideosCount));
            this.tblFarmerMaster.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountFarmerMaster));
            this.tblFarmerCropDetails.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofPMCFarmerCropping));
            this.tblRetailerMaster.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofDealerMaster));
            this.tblRetailerCrop.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofDealerCrops));
            this.tblRetailerCompany.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofDealerCompanies));
            this.tblImages.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getPictureCount));
            this.tblVideos.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getVideosCount));
            this.tblAssignmentVisitModel.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofAssignmentVisit));
            this.tblAssignmentActivity.setText("" + GetDataFromDB.getInstance().getcount(Queries.getInstance().getCountofActivityAssignments));
            if (singleValue.equalsIgnoreCase("Crops")) {
                this.tblRetailerCompany.setVisibility(8);
                this.lblRetailerCompany.setVisibility(8);
            } else {
                this.tblRetailerCrop.setVisibility(8);
                this.lblRetailerCrop.setVisibility(8);
            }
        } catch (Exception e) {
            PLog.e("SyncPendFragment", e);
        }
    }

    private void initialization() {
        this.tabHost = (TabHost) this.rootView.findViewById(R.id.tabhostsummary);
        this.tab1 = (LinearLayout) this.rootView.findViewById(R.id.totalSummary);
        this.tab3 = (LinearLayout) this.rootView.findViewById(R.id.tablewiseSummary);
        TextView textView = (TextView) this.tabHost.findViewById(R.id.txt_farmerPendings);
        this.lblPendFarmer = textView;
        textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_farmerMasterTable()));
        TextView textView2 = (TextView) this.tabHost.findViewById(R.id.txt_retailerPendings);
        this.lblPendRetailers = textView2;
        textView2.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerMasterTable()));
        TextView textView3 = (TextView) this.tabHost.findViewById(R.id.txt_assignmentPendings);
        this.lblPendActivities = textView3;
        textView3.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_assignActivitiesTable()));
        TextView textView4 = (TextView) this.tabHost.findViewById(R.id.txt_picturePendings);
        this.lblPendImages = textView4;
        textView4.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_imagesTable()));
        TextView textView5 = (TextView) this.tabHost.findViewById(R.id.txt_videosPendings);
        this.lblPendVideos = textView5;
        textView5.setText("ActivityVideos");
        TextView textView6 = (TextView) this.tabHost.findViewById(R.id.txt_farmerTable);
        this.lblFarmerMaster = textView6;
        textView6.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_farmerMasterTable()));
        TextView textView7 = (TextView) this.tabHost.findViewById(R.id.txt_retailerTable);
        this.lblRetailerMaster = textView7;
        textView7.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerMasterTable()));
        TextView textView8 = (TextView) this.tabHost.findViewById(R.id.txt_farmerCropTable);
        this.lblFarmerCropDetails = textView8;
        textView8.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_farmerCropTable()));
        TextView textView9 = (TextView) this.tabHost.findViewById(R.id.txt_retailerCropTable);
        this.lblRetailerCrop = textView9;
        textView9.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerCropTable()));
        TextView textView10 = (TextView) this.tabHost.findViewById(R.id.txt_retailerCompTable);
        this.lblRetailerCompany = textView10;
        textView10.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerCompanyTable()));
        TextView textView11 = (TextView) this.tabHost.findViewById(R.id.txt_assignmentActivitiesTable);
        this.lblAssignmentActivity = textView11;
        textView11.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_assignActivitiesTable()));
        TextView textView12 = (TextView) this.tabHost.findViewById(R.id.txt_assignmentVisitTable);
        this.lblAssignmentVisitModel = textView12;
        textView12.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_assignVisitsTable()));
        TextView textView13 = (TextView) this.tabHost.findViewById(R.id.txt_pictureTable);
        this.lblImages = textView13;
        textView13.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_imagesTable()));
        TextView textView14 = (TextView) this.tabHost.findViewById(R.id.txt_videoTable);
        this.lblVideos = textView14;
        textView14.setText("ActivityVideos");
        this.pendFarmers = (TextView) this.tabHost.findViewById(R.id.tv_farmersCount);
        this.pendRetailers = (TextView) this.tabHost.findViewById(R.id.tv_retailersCount);
        this.pendActivities = (TextView) this.tabHost.findViewById(R.id.tv_assignmentCount);
        this.pendImages = (TextView) this.tabHost.findViewById(R.id.tv_imagesCount);
        this.pendVideos = (TextView) this.tabHost.findViewById(R.id.tv_videosCount);
        this.tblFarmerMaster = (TextView) this.tabHost.findViewById(R.id.tv_farmersTableCount);
        this.tblFarmerCropDetails = (TextView) this.tabHost.findViewById(R.id.tv_farmersCropTableCount);
        this.tblRetailerMaster = (TextView) this.tabHost.findViewById(R.id.tv_retailersTableCount);
        this.tblRetailerCrop = (TextView) this.tabHost.findViewById(R.id.tv_retailersCropTableCount);
        this.tblRetailerCompany = (TextView) this.tabHost.findViewById(R.id.tv_retailersCompTableCount);
        this.tblImages = (TextView) this.tabHost.findViewById(R.id.tv_imagesTableCount);
        this.tblVideos = (TextView) this.tabHost.findViewById(R.id.tv_videosTableCount);
        this.tblAssignmentVisitModel = (TextView) this.tabHost.findViewById(R.id.tv_assignmentVisitTableCount);
        this.tblAssignmentActivity = (TextView) this.tabHost.findViewById(R.id.tv_assignmentActTableCount);
    }

    private void settingTabs() {
        this.tabHost.setup();
        addTab("TotalPending", R.drawable.ic_action_person_wight, getResources().getString(R.string.pmc_tag1));
        addTab("TableWise", R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag5));
    }

    private void addTab(String str, int i, String str2) {
        TabHost.TabSpec newTabSpec = this.tabHost.newTabSpec(str);
        View inflate = LayoutInflater.from(this.con).inflate(R.layout.tab_indicator, (ViewGroup) this.tabHost.getTabWidget(), false);
        ((TextView) inflate.findViewById(R.id.title_tab_indicator)).setText(str);
        ((ImageView) inflate.findViewById(R.id.icon_tab_indicator)).setImageResource(i);
        newTabSpec.setIndicator(inflate);
        if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag1))) {
            newTabSpec.setContent(R.id.totaltab);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag5))) {
            newTabSpec.setContent(R.id.tablewisetab);
        } else {
            newTabSpec.setContent(R.id.totaltab);
        }
        this.tabHost.addTab(newTabSpec);
    }
}
