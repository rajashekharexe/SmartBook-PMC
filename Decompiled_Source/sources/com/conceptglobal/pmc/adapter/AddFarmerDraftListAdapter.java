package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.ifastscroll.SectionTitleProvider;
import com.conceptglobal.pmc.ReportViewActivity;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.CustomPhoneNumbersDialog;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fo.ListSelectionActivity;
import com.conceptglobal.pmc.fo.SAAttributeActivityCopy;
import com.conceptglobal.pmc.fragments.AddFarmer;
import com.conceptglobal.pmc.fragments.AddRetailer;
import com.conceptglobal.pmc.fragments.FarmersSearchFragment;
import com.conceptglobal.pmc.fragments.ValueChainPartner;
import com.conceptglobal.pmc.interfaces.OnVerifyOTPListener;
import com.conceptglobal.pmc.model.AToZSorter;
import com.conceptglobal.pmc.model.DashboardListModel;
import com.conceptglobal.pmc.model.FarmerTotalSalesLowToHighSorter;
import com.conceptglobal.pmc.model.FarmerTotalSalesSorter;
import com.conceptglobal.pmc.model.SegmentLowToHighSorter;
import com.conceptglobal.pmc.model.SegmentSorter;
import com.conceptglobal.pmc.model.ZToASorter;
import com.conceptglobal.pmc.model.otp.GetOTP;
import com.conceptglobal.pmc.model.otp.GetOTPResponse;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.textdrawable.ColorGenerator;
import com.conceptglobal.pmc.textdrawable.TextDrawable;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.OTPVerificationDialog;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.StringUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class AddFarmerDraftListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements Filterable, SectionTitleProvider, OnVerifyOTPListener {
    private static final String TAG = "AFDraftListAdapter";
    private static final int VIEWTYPE_ITEM = 1;
    private static final int VIEWTYPE_ITEM_DISTRIBUTOR = 3;
    private static final int VIEWTYPE_LOADER = 2;
    private final Context context;
    private String draftStatus;
    private String dynamicColumns;
    private List<DashboardListModel> filterDraftListOriginalData;
    private FarmersSearchFragment fragment;
    private String from;
    private String isFrom;
    private boolean isFromFeedBack;
    private boolean isFromSelfAssignment;
    private boolean isFromSurvey;
    private boolean isFromTestmonial;
    private int isFromTodo;
    private String mOTP;
    private String mSelectedMobile;
    private String mSelectedName;
    private int mSelectedPosition;
    private String mSelectedRespondentNo;
    List<String> model;
    private List<DashboardListModel> originalDraftList;
    private OTPVerificationDialog otpVerificationDialog;
    private int segmentId;
    protected boolean showLoader;
    private String strVal;
    String value;
    private String searchString = "";
    private int lastPosition = -1;
    private ColorGenerator mColorGenerator = ColorGenerator.MATERIAL;
    boolean isEligibletoUpdate = true;
    boolean isDistributerEligibletoUpdate = true;
    private GetDataFromDB getDataFromDB = GetDataFromDB.getInstance();
    private TextDrawable.IBuilder mDrawableBuilder = TextDrawable.builder().round();

    public AddFarmerDraftListAdapter(Context context, List<DashboardListModel> list, String str, String str2, String str3, int i, boolean z, boolean z2, boolean z3, boolean z4) {
        this.filterDraftListOriginalData = new ArrayList();
        this.context = context;
        this.originalDraftList = list;
        this.filterDraftListOriginalData = list;
        this.from = str;
        this.draftStatus = str2;
        this.isFrom = str3;
        this.segmentId = i;
        this.isFromSelfAssignment = z;
        this.isFromTestmonial = z2;
        this.isFromFeedBack = z3;
        this.isFromSurvey = z4;
        if (i == 2) {
            this.dynamicColumns = GetDataFromDB.getInstance().getModuleMandatoryColumns(Queries.getInstance().getDynamicColumnNamesQuery("Dealer"));
        }
        if (i == 1) {
            this.dynamicColumns = GetDataFromDB.getInstance().getModuleMandatoryColumns(Queries.getInstance().getDynamicColumnNamesQuery(ConstantsPMC.TYPE_FARMER));
        }
        if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            validateRetailerUpdateStatus();
        }
        if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor)) {
            validateDistributerUpdateStatus();
        }
    }

    public AddFarmerDraftListAdapter(Context context, List<DashboardListModel> list, String str, String str2, String str3, int i, boolean z, boolean z2, boolean z3, boolean z4, int i2, FarmersSearchFragment farmersSearchFragment) {
        this.filterDraftListOriginalData = new ArrayList();
        this.context = context;
        this.originalDraftList = list;
        this.filterDraftListOriginalData = list;
        this.from = str;
        this.draftStatus = str2;
        this.isFrom = str3;
        this.segmentId = i;
        this.isFromSelfAssignment = z;
        this.isFromTestmonial = z2;
        this.isFromFeedBack = z3;
        this.isFromSurvey = z4;
        this.isFromTodo = i2;
        if (i == 2) {
            this.dynamicColumns = GetDataFromDB.getInstance().getModuleMandatoryColumns(Queries.getInstance().getDynamicColumnNamesQuery("Dealer"));
        }
        if (i == 1) {
            this.dynamicColumns = GetDataFromDB.getInstance().getModuleMandatoryColumns(Queries.getInstance().getDynamicColumnNamesQuery(ConstantsPMC.TYPE_FARMER));
        }
        if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            validateRetailerUpdateStatus();
        }
        if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor)) {
            validateDistributerUpdateStatus();
        }
    }

    public AddFarmerDraftListAdapter(Context context, List<DashboardListModel> list, String str, String str2, String str3, int i, boolean z, boolean z2, boolean z3, boolean z4, FarmersSearchFragment farmersSearchFragment) {
        this.filterDraftListOriginalData = new ArrayList();
        this.context = context;
        this.originalDraftList = list;
        this.filterDraftListOriginalData = list;
        this.from = str;
        this.draftStatus = str2;
        this.isFrom = str3;
        this.segmentId = i;
        this.isFromSelfAssignment = z;
        this.isFromTestmonial = z2;
        this.isFromFeedBack = z3;
        this.isFromSurvey = z4;
        this.fragment = farmersSearchFragment;
        if (i == 2) {
            this.dynamicColumns = GetDataFromDB.getInstance().getModuleMandatoryColumns(Queries.getInstance().getDynamicColumnNamesQuery("Dealer"));
        }
        if (i == 1) {
            this.dynamicColumns = GetDataFromDB.getInstance().getModuleMandatoryColumns(Queries.getInstance().getDynamicColumnNamesQuery(ConstantsPMC.TYPE_FARMER));
        }
        if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            validateRetailerUpdateStatus();
        }
        if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor)) {
            validateDistributerUpdateStatus();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<DashboardListModel> list = this.filterDraftListOriginalData;
        if (list == null || list.size() == 0) {
            return 0;
        }
        return this.filterDraftListOriginalData.size() + 1;
    }

    public String getItem(int i) {
        return this.filterDraftListOriginalData.get(i).getData().get(0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == 0 || i != getItemCount() - 1) {
            return (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || this.from.equalsIgnoreCase("Dealer")) ? 3 : 1;
        }
        return 2;
    }

    public void showLoading(boolean z) {
        this.showLoader = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
        if (viewHolder instanceof LoaderViewHolder) {
            LoaderViewHolder loaderViewHolder = (LoaderViewHolder) viewHolder;
            if (this.showLoader) {
                loaderViewHolder.mProgressBar.setVisibility(0);
                return;
            } else {
                loaderViewHolder.mProgressBar.setVisibility(8);
                return;
            }
        }
        final DraftListViewHolder draftListViewHolder = (DraftListViewHolder) viewHolder;
        final DashboardListModel dashboardListModel = this.filterDraftListOriginalData.get(i);
        if (this.isFrom.equalsIgnoreCase("ALL")) {
            if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                draftListViewHolder.lloutstand.setVisibility(8);
                draftListViewHolder.llbalance.setVisibility(0);
                draftListViewHolder.tvblncpnts.setText(String.format("%.2f", Double.valueOf(dashboardListModel.getBalance_Points())));
                draftListViewHolder.llRstr.setVisibility(0);
                draftListViewHolder.llRstr.setClickable(false);
                draftListViewHolder.iv_web.setVisibility(0);
                draftListViewHolder.iv_web.setImageResource(R.drawable.web_rtl);
                draftListViewHolder.ivRaisingstar.setVisibility(8);
            }
            if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || this.from.equalsIgnoreCase("Dealer")) {
                draftListViewHolder.lloutstand.setVisibility(0);
                draftListViewHolder.llbalance.setVisibility(8);
                double outStandingValue = dashboardListModel.getOutStandingValue();
                DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.ENGLISH);
                decimalFormatSymbols.setGroupingSeparator(',');
                draftListViewHolder.tvoutstnd.setText(new DecimalFormat("##,##,##0.00", decimalFormatSymbols).format(outStandingValue));
                draftListViewHolder.llRstr.setVisibility(0);
                draftListViewHolder.llRstr.setClickable(false);
                draftListViewHolder.iv_web.setVisibility(0);
                draftListViewHolder.iv_web.setImageResource(R.drawable.ic_rtl_web);
                draftListViewHolder.ivRaisingstar.setClickable(false);
                if (dashboardListModel.isRisingStar()) {
                    draftListViewHolder.ivRaisingstar.setVisibility(0);
                } else {
                    draftListViewHolder.ivRaisingstar.setVisibility(8);
                }
            }
            if (dashboardListModel.getLangitude() != null && dashboardListModel.getLangitude().length() > 0 && dashboardListModel.getLatitude() != null && dashboardListModel.getLatitude().length() > 0) {
                draftListViewHolder.gps.setVisibility(0);
            } else {
                draftListViewHolder.gps.setVisibility(8);
            }
            if ((this.from.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER) || this.from.equalsIgnoreCase("UnVerifiedFarmer")) && dashboardListModel.getField3() != null) {
                if (dashboardListModel.getField3().equals("0")) {
                    draftListViewHolder.tvUnverifiedLabel.setVisibility(8);
                    draftListViewHolder.verifyWithOTP.setVisibility(8);
                    if (validateFarmerWithOTP()) {
                        if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER) || this.from.equalsIgnoreCase("UnVerifiedFarmer")) {
                            draftListViewHolder.cardview.setCardBackgroundColor(this.context.getResources().getColor(R.color.unverifiedFarmer));
                            draftListViewHolder.tvVerify.setVisibility(0);
                        } else {
                            draftListViewHolder.cardview.setCardBackgroundColor(this.context.getResources().getColor(R.color.white));
                            draftListViewHolder.tvVerify.setVisibility(8);
                        }
                    } else {
                        draftListViewHolder.tvVerify.setVisibility(8);
                    }
                } else {
                    draftListViewHolder.cardview.setCardBackgroundColor(this.context.getResources().getColor(R.color.white));
                    draftListViewHolder.tvUnverifiedLabel.setVisibility(8);
                    draftListViewHolder.verifyWithOTP.setVisibility(8);
                    draftListViewHolder.tvVerify.setVisibility(8);
                }
            }
            if ((this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer) || this.from.equalsIgnoreCase("UnVerifiedRetailer")) && dashboardListModel.getField3() != null) {
                if (dashboardListModel.getField3().equals("0")) {
                    draftListViewHolder.tvUnverifiedLabel.setVisibility(8);
                    draftListViewHolder.verifyWithOTP.setVisibility(8);
                    if (validateRetailerWithOTP()) {
                        if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer) || this.from.equalsIgnoreCase("UnVerifiedRetailer")) {
                            draftListViewHolder.cardview.setCardBackgroundColor(this.context.getResources().getColor(R.color.unverifiedFarmer));
                            draftListViewHolder.tvVerify.setVisibility(0);
                        } else {
                            draftListViewHolder.cardview.setCardBackgroundColor(this.context.getResources().getColor(R.color.white));
                            draftListViewHolder.tvVerify.setVisibility(8);
                        }
                    } else {
                        draftListViewHolder.tvVerify.setVisibility(8);
                    }
                } else {
                    draftListViewHolder.cardview.setCardBackgroundColor(this.context.getResources().getColor(R.color.white));
                    draftListViewHolder.tvUnverifiedLabel.setVisibility(8);
                    draftListViewHolder.verifyWithOTP.setVisibility(8);
                    draftListViewHolder.tvVerify.setVisibility(8);
                }
            }
        }
        if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
            if (dashboardListModel.getIsSaarthie() != null && dashboardListModel.getIsSaarthie().equalsIgnoreCase("YES")) {
                draftListViewHolder.tvRightView.setVisibility(0);
                draftListViewHolder.tvRightView.setText("S\nA\nA\nR\nT\nH\nI\nE");
                draftListViewHolder.llFellowFarmerDetails.setVisibility(0);
                try {
                    draftListViewHolder.tvFellowCount.setText(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getFelloFarmerCount(dashboardListModel.getSaarthieFarmerID())));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (dashboardListModel.getIsFellowFarmer() != null && (dashboardListModel.getIsFellowFarmer().equalsIgnoreCase("YES") || dashboardListModel.getIsFellowFarmer().equalsIgnoreCase("1"))) {
                draftListViewHolder.tvRightView.setVisibility(0);
                draftListViewHolder.tvRightView.setText("F\nE\nL\nL\nO\nW");
                draftListViewHolder.llFellowFarmerDetails.setVisibility(8);
            } else if (dashboardListModel.getSegmentationValue() == 1) {
                draftListViewHolder.tvRightView.setVisibility(0);
                draftListViewHolder.tvRightView.setText("T\nG\n");
                draftListViewHolder.llFellowFarmerDetails.setVisibility(8);
            } else {
                draftListViewHolder.tvRightView.setVisibility(8);
                draftListViewHolder.llFellowFarmerDetails.setVisibility(8);
            }
            if (dashboardListModel.getIsCropHero() != null && dashboardListModel.getIsCropHero().equalsIgnoreCase("YES")) {
                draftListViewHolder.ivHNF.setVisibility(0);
            } else {
                draftListViewHolder.ivHNF.setVisibility(8);
            }
        } else {
            draftListViewHolder.tvRightView.setVisibility(8);
            draftListViewHolder.ivHNF.setVisibility(8);
        }
        if (this.from.equalsIgnoreCase("Village")) {
            draftListViewHolder.phonedail.setVisibility(8);
            draftListViewHolder.sms.setVisibility(8);
            draftListViewHolder.llFellowFarmerDetails.setVisibility(8);
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        ArrayList arrayList = (ArrayList) dashboardListModel.getData();
        if (arrayList.get(0) != null && ((String) arrayList.get(0)).trim().length() > 0) {
            draftListViewHolder.profile_image.setImageDrawable(this.mDrawableBuilder.build(String.valueOf(((String) arrayList.get(0)).charAt(0)).toUpperCase(Locale.getDefault()), this.mColorGenerator.getRandomColor()));
        } else {
            draftListViewHolder.profile_image.setImageDrawable(this.context.getResources().getDrawable(R.drawable.ic_user_pic));
        }
        final ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            String str = (String) arrayList.get(i2);
            this.strVal = str;
            if (str != null && str.trim().length() > 0) {
                if (i2 == 0 || i2 == 2) {
                    sb2.append(this.strVal.toUpperCase());
                    sb2.append("<br>");
                } else {
                    sb.append(this.strVal);
                    sb.append("<br>");
                }
                arrayList2.addAll(StringUtils.getNumbersFromString(this.strVal, 7));
            }
        }
        if (this.isFrom.equalsIgnoreCase("DRAFT") || (this.isFrom.equalsIgnoreCase("Sent") && dashboardListModel.getUpdatedDate() != null && dashboardListModel.getUpdatedDate().length() > 0)) {
            sb.append("Draft since \"" + UtilDeclarations.getNoOfDaysDiff(dashboardListModel.getUpdatedDate()) + "\" days");
        }
        try {
            if ((TextUtils.isEmpty(this.filterDraftListOriginalData.get(i).getLastVisitedDate()) || this.filterDraftListOriginalData.get(i).getLastVisitedDate().length() < 2) && this.isFromSelfAssignment) {
                draftListViewHolder.rlBorderVoew.setBackgroundColor(this.context.getResources().getColor(R.color.red_light_bg));
            } else if (!TextUtils.isEmpty(this.filterDraftListOriginalData.get(i).getLastVisitedDate()) && this.isFromSelfAssignment) {
                long lookupValue = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("OutletVisitDuration"));
                long findDifference = UtilDeclarations.findDifference(this.filterDraftListOriginalData.get(i).getLastVisitedDate(), UtilDeclarations.getDateTime());
                sb.append("Last Visited Date " + this.filterDraftListOriginalData.get(i).getLastVisitedDate());
                if (findDifference > lookupValue) {
                    draftListViewHolder.rlBorderVoew.setBackgroundColor(this.context.getResources().getColor(R.color.red_light_bg));
                } else {
                    draftListViewHolder.rlBorderVoew.setBackgroundColor(this.context.getResources().getColor(R.color.white));
                }
            }
        } catch (Exception unused) {
        }
        try {
            sb2.delete(sb2.length() - 4, sb2.length());
            sb.delete(sb.length() - 4, sb.length());
        } catch (Exception unused2) {
        }
        draftListViewHolder.profTextView.setText(Html.fromHtml(sb2.toString()));
        draftListViewHolder.profTextView2.setText(Html.fromHtml(sb.toString()));
        draftListViewHolder.id = this.filterDraftListOriginalData.get(i).getDraftId();
        if (draftListViewHolder.ivFavourite != null) {
            draftListViewHolder.ivFavourite.setVisibility(8);
        }
        if (this.from.equalsIgnoreCase("Village")) {
            draftListViewHolder.ivFavourite.setVisibility(0);
            draftListViewHolder.ivFavourite.setClickable(false);
        }
        if (this.from.equalsIgnoreCase("Village")) {
            if (dashboardListModel.getFavouriteStatus() == 1) {
                draftListViewHolder.ivFavourite.setImageDrawable(this.context.getResources().getDrawable(R.drawable.btn_star_big_on));
            } else {
                draftListViewHolder.ivFavourite.setImageDrawable(this.context.getResources().getDrawable(R.drawable.btn_star_big_off));
            }
        }
        draftListViewHolder.delete.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AlertDialog.Builder builder = new AlertDialog.Builder(AddFarmerDraftListAdapter.this.context);
                builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_confirmDeletionFarmerDialog()) + " " + AddFarmerDraftListAdapter.this.from + "?");
                builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_yesText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        String draftId = ((DashboardListModel) AddFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getDraftId();
                        boolean z = true;
                        if (!AddFarmerDraftListAdapter.this.from.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER) && !AddFarmerDraftListAdapter.this.from.equalsIgnoreCase("Planter") && !AddFarmerDraftListAdapter.this.from.equalsIgnoreCase("Village")) {
                            if (AddFarmerDraftListAdapter.this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer) || AddFarmerDraftListAdapter.this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor)) {
                                try {
                                    GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().deleteDraftRecords("DealerMaster", "ContactId", draftId));
                                    GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().deleteDraftRecords("DealerCompanyMapping", "ContactId", draftId));
                                    z = GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().deleteDraftRecords("DealerCropMapping", "ContactId", draftId));
                                } catch (Exception e2) {
                                    PLog.e("AddFarmerDraftListAdapter", e2);
                                    e2.printStackTrace();
                                }
                            }
                        } else {
                            try {
                                GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().deleteDraftRecords("FarmerMaster", "RespondentNo", draftId));
                                z = GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().deleteDraftRecords("FarmerCropDetails", "RespondentNo", draftId));
                            } catch (Exception e3) {
                                PLog.e("AddFarmerDraftListAdapter", e3);
                                e3.printStackTrace();
                            }
                        }
                        if (z) {
                            AddFarmerDraftListAdapter.this.filterDraftListOriginalData.remove(i);
                            AddFarmerDraftListAdapter.this.notifyDataSetChanged();
                        }
                    }
                });
                builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.1.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        dialogInterface.dismiss();
                    }
                });
                AlertDialog show = builder.show();
                if (UtilDeclarations.isTablet(AddFarmerDraftListAdapter.this.context)) {
                    UtilDeclarations.makeTabletDialogTextlarge(show);
                }
            }
        });
        draftListViewHolder.gps.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AddFarmerDraftListAdapter.this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://maps.google.com/maps?daddr=" + ((DashboardListModel) AddFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getLatitude() + "," + ((DashboardListModel) AddFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getLangitude() + "&saddr=Current%20Location")));
            }
        });
        draftListViewHolder.tvFellowCount.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AddFarmerDraftListAdapter.this.fragment instanceof FarmersSearchFragment) {
                    AddFarmerDraftListAdapter.this.fragment.loadFelloFarmerData(dashboardListModel.getSaarthieFarmerID());
                }
            }
        });
        draftListViewHolder.cardview.setTag(draftListViewHolder);
        draftListViewHolder.phonedail.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new CustomPhoneNumbersDialog(AddFarmerDraftListAdapter.this.context).showDialog(arrayList2, 1);
            }
        });
        draftListViewHolder.iv_web.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) ReportViewActivity.class);
                intent.putExtra(Constants.MessagePayloadKeys.FROM, "Retailer details");
                intent.putExtra("activityName", "Details");
                intent.putExtra("activityID", Long.valueOf(dashboardListModel.getDraftId()));
                intent.putExtra("ContactID", Long.valueOf(dashboardListModel.getDraftId()));
                AddFarmerDraftListAdapter.this.context.startActivity(intent.addFlags(67108864));
            }
        });
        draftListViewHolder.sms.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new CustomPhoneNumbersDialog(AddFarmerDraftListAdapter.this.context).showDialog(arrayList2, 2);
            }
        });
        if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER) || this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            draftListViewHolder.ivFavourite.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Integer num;
                    if (!AddFarmerDraftListAdapter.this.from.equals(ConstantsPMC.TYPE_FARMER)) {
                        if (AddFarmerDraftListAdapter.this.from.equals(ConstantsPMC.TYPE_Retailer)) {
                            try {
                                String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValueFromConfigurableLookup("RRORoleID"));
                                String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleQuery());
                                if (singleValue == null || !singleValue.equalsIgnoreCase(singleValue2)) {
                                    num = 1;
                                } else {
                                    num = 1;
                                    if (dashboardListModel.getFavouriteStatus() == 1) {
                                        Toast.makeText(AddFarmerDraftListAdapter.this.context, "You Can't mark as UnFavourite.", 1).show();
                                        return;
                                    }
                                }
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("ContactId", ((DashboardListModel) AddFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getDraftId());
                                contentValues.put("ServerUpdatedStatus", "false");
                                contentValues.put("PdaId", GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().geetingPdaid()));
                                contentValues.put("UserId", ConstantsPMC.getInstance().getUserId());
                                contentValues.put("RoleId", GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleQuery()));
                                contentValues.put("CreatedBy", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                                contentValues.put("CreatedDate", UtilDeclarations.getDateTime());
                                contentValues.put("UpdatedBy", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                                contentValues.put("UpdatedDate", UtilDeclarations.getDateTime());
                                if (dashboardListModel.getFavouriteStatus() == 1) {
                                    dashboardListModel.setFavouriteStatus(0);
                                    contentValues.put("IsFavourite", (Integer) 0);
                                    draftListViewHolder.ivFavourite.setImageDrawable(AddFarmerDraftListAdapter.this.context.getResources().getDrawable(R.drawable.btn_star_big_off));
                                    Toast.makeText(AddFarmerDraftListAdapter.this.context, "Retailer unmarked as favourite.", 1).show();
                                    if (singleValue != null && singleValue.equalsIgnoreCase(singleValue2)) {
                                        ContentValues contentValues2 = new ContentValues();
                                        contentValues2.put("ContactId", ((DashboardListModel) AddFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getDraftId());
                                        contentValues2.put("IsROP", (Integer) 0);
                                        draftListViewHolder.cardview.setCardBackgroundColor(AddFarmerDraftListAdapter.this.context.getResources().getColor(R.color.white));
                                        AddFarmerDraftListAdapter.this.notifyDataSetChanged();
                                    }
                                } else {
                                    dashboardListModel.setFavouriteStatus(1);
                                    Integer num2 = num;
                                    contentValues.put("IsFavourite", num2);
                                    draftListViewHolder.ivFavourite.setImageDrawable(AddFarmerDraftListAdapter.this.context.getResources().getDrawable(R.drawable.btn_star_big_on));
                                    Toast.makeText(AddFarmerDraftListAdapter.this.context, "Retailer marked as favourite.", 1).show();
                                    if (singleValue != null && singleValue.equalsIgnoreCase(singleValue2)) {
                                        ContentValues contentValues3 = new ContentValues();
                                        contentValues3.put("ContactId", ((DashboardListModel) AddFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getDraftId());
                                        contentValues3.put("IsROP", num2);
                                        draftListViewHolder.cardview.setCardBackgroundColor(AddFarmerDraftListAdapter.this.context.getResources().getColor(R.color.rro_bg));
                                        AddFarmerDraftListAdapter.this.notifyDataSetChanged();
                                    }
                                }
                                InsertDataIntoDB.UpdateRetailerFavouriteDetails(contentValues, "ContactId", ((DashboardListModel) AddFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getDraftId());
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    } else {
                        try {
                            ContentValues contentValues4 = new ContentValues();
                            contentValues4.put("RespondentNo", ((DashboardListModel) AddFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getDraftId());
                            contentValues4.put("ServerUpdatedStatus", "false");
                            contentValues4.put("PdaId", GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().geetingPdaid()));
                            contentValues4.put("UserId", ConstantsPMC.getInstance().getUserId());
                            contentValues4.put("RoleId", GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleQuery()));
                            contentValues4.put("CreatedBy", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                            contentValues4.put("CreatedDate", UtilDeclarations.getDateTime());
                            contentValues4.put("UpdatedBy", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                            contentValues4.put("UpdatedDate", UtilDeclarations.getDateTime());
                            if (dashboardListModel.getFavouriteStatus() != 1) {
                                draftListViewHolder.ivFavourite.setImageDrawable(AddFarmerDraftListAdapter.this.context.getResources().getDrawable(R.drawable.btn_star_big_on));
                                dashboardListModel.setFavouriteStatus(1);
                                contentValues4.put("IsFavourite", (Integer) 1);
                                Toast.makeText(AddFarmerDraftListAdapter.this.context, "Farmer marked as favourite.", 1).show();
                            } else {
                                dashboardListModel.setFavouriteStatus(0);
                                draftListViewHolder.ivFavourite.setImageDrawable(AddFarmerDraftListAdapter.this.context.getResources().getDrawable(R.drawable.btn_star_big_off));
                                contentValues4.put("IsFavourite", (Integer) 0);
                                Toast.makeText(AddFarmerDraftListAdapter.this.context, "Farmer unmarked as favourite.", 1).show();
                            }
                            InsertDataIntoDB.UpdateFarmerFavouriteDetails(contentValues4, "RespondentNo", ((DashboardListModel) AddFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getDraftId());
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                    AddFarmerDraftListAdapter.this.SyncData();
                }
            });
        }
        draftListViewHolder.tvVerify.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AddFarmerDraftListAdapter.this.mSelectedPosition = i;
                AddFarmerDraftListAdapter addFarmerDraftListAdapter = AddFarmerDraftListAdapter.this;
                addFarmerDraftListAdapter.mSelectedName = ((DashboardListModel) addFarmerDraftListAdapter.filterDraftListOriginalData.get(i)).getData().get(0);
                AddFarmerDraftListAdapter addFarmerDraftListAdapter2 = AddFarmerDraftListAdapter.this;
                addFarmerDraftListAdapter2.mSelectedMobile = ((DashboardListModel) addFarmerDraftListAdapter2.filterDraftListOriginalData.get(i)).getData().get(2);
                AddFarmerDraftListAdapter addFarmerDraftListAdapter3 = AddFarmerDraftListAdapter.this;
                addFarmerDraftListAdapter3.mSelectedRespondentNo = ((DashboardListModel) addFarmerDraftListAdapter3.filterDraftListOriginalData.get(i)).getDraftId();
                if (UtilDeclarations.isOnline(AddFarmerDraftListAdapter.this.context)) {
                    AddFarmerDraftListAdapter.this.callOTPAsync();
                    AddFarmerDraftListAdapter addFarmerDraftListAdapter4 = AddFarmerDraftListAdapter.this;
                    Context context = AddFarmerDraftListAdapter.this.context;
                    String str2 = AddFarmerDraftListAdapter.this.mSelectedMobile;
                    String str3 = AddFarmerDraftListAdapter.this.mSelectedName;
                    AddFarmerDraftListAdapter addFarmerDraftListAdapter5 = AddFarmerDraftListAdapter.this;
                    addFarmerDraftListAdapter4.otpVerificationDialog = new OTPVerificationDialog(context, str2, str3, addFarmerDraftListAdapter5, addFarmerDraftListAdapter5.from);
                    AddFarmerDraftListAdapter.this.otpVerificationDialog.showDialog();
                    return;
                }
                AddFarmerDraftListAdapter addFarmerDraftListAdapter6 = AddFarmerDraftListAdapter.this;
                addFarmerDraftListAdapter6.showOTPVerifyDialog(addFarmerDraftListAdapter6.context);
            }
        });
        draftListViewHolder.cardview.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AddFarmerDraftListAdapter.this.isFromTodo != 1) {
                    if (AddFarmerDraftListAdapter.this.isFromSelfAssignment) {
                        if (AddFarmerDraftListAdapter.this.segmentId != 2 || TextUtils.isEmpty(AddFarmerDraftListAdapter.this.dynamicColumns) || !GetDataFromDB.getInstance().getAllMandatoryFieldsInformation(Queries.getInstance().getDealerDataQry(AddFarmerDraftListAdapter.this.dynamicColumns, dashboardListModel.getDraftId()))) {
                            if (AddFarmerDraftListAdapter.this.segmentId != 1 || TextUtils.isEmpty(AddFarmerDraftListAdapter.this.dynamicColumns) || !GetDataFromDB.getInstance().getAllMandatoryFieldsInformation(Queries.getInstance().getFarmerDataQry(AddFarmerDraftListAdapter.this.dynamicColumns, dashboardListModel.getDraftId()))) {
                                if (AddFarmerDraftListAdapter.this.segmentId == 2 || AddFarmerDraftListAdapter.this.segmentId == 3) {
                                    try {
                                        int intValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getLocationApproveStatusQry(dashboardListModel.getDraftId()));
                                        if (intValue != 2) {
                                            if (intValue == 0) {
                                                AddFarmerDraftListAdapter.this.showUpdateRetailerAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_geo_not_update_Text()), dashboardListModel);
                                                return;
                                            } else if (intValue == 1) {
                                                AddFarmerDraftListAdapter.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_geo_approval_pending_Text()));
                                                return;
                                            } else {
                                                if (intValue == 3) {
                                                    AddFarmerDraftListAdapter.this.showUpdateRetailerAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_geo_rejected_Text()), dashboardListModel);
                                                    return;
                                                }
                                                return;
                                            }
                                        }
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                if (AddFarmerDraftListAdapter.this.segmentId == 4 && AddFarmerDraftListAdapter.this.isFromSelfAssignment) {
                                    try {
                                        String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getVillagePrifileUpdatedDate(dashboardListModel.getDraftId()));
                                        if (TextUtils.isEmpty(stringValue)) {
                                            AddFarmerDraftListAdapter.this.showProfileUpdateDeniedDialog(dashboardListModel);
                                            return;
                                        }
                                        long lookupValue2 = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("VillageProfileUpdateDuration"));
                                        if (lookupValue2 == 0) {
                                            lookupValue2 = 60;
                                        }
                                        if (UtilDeclarations.findDifference(stringValue, UtilDeclarations.getDateTime()) > lookupValue2) {
                                            AddFarmerDraftListAdapter.this.showProfileUpdateDeniedDialog(dashboardListModel);
                                            return;
                                        } else if (!TextUtils.isEmpty(((DashboardListModel) AddFarmerDraftListAdapter.this.filterDraftListOriginalData.get(i)).getLastVisitedDate())) {
                                            boolean unused3 = AddFarmerDraftListAdapter.this.isFromSelfAssignment;
                                        }
                                    } catch (Exception e3) {
                                        e3.printStackTrace();
                                    }
                                }
                                Intent intent = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) ListSelectionActivity.class);
                                intent.putExtra("FarmerId", dashboardListModel.getDraftId());
                                if (AddFarmerDraftListAdapter.this.segmentId == 4) {
                                    try {
                                        intent.putExtra("FarmerId", GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getVillageIdFromRespondenrNumber(dashboardListModel.getDraftId())));
                                    } catch (Exception e4) {
                                        e4.printStackTrace();
                                    }
                                }
                                intent.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(AddFarmerDraftListAdapter.this.segmentId));
                                ((Activity) AddFarmerDraftListAdapter.this.context).startActivityForResult(intent, 2);
                                return;
                            }
                            AddFarmerDraftListAdapter addFarmerDraftListAdapter = AddFarmerDraftListAdapter.this;
                            addFarmerDraftListAdapter.showMandatoryDataEmptyMsgFarmer(addFarmerDraftListAdapter.context, dashboardListModel);
                            return;
                        }
                        AddFarmerDraftListAdapter addFarmerDraftListAdapter2 = AddFarmerDraftListAdapter.this;
                        addFarmerDraftListAdapter2.showMandatoryDataEmptyMsg(addFarmerDraftListAdapter2.context, dashboardListModel);
                        return;
                    }
                    if (!AddFarmerDraftListAdapter.this.isFromTestmonial) {
                        if (!AddFarmerDraftListAdapter.this.isFromSurvey) {
                            if (AddFarmerDraftListAdapter.this.isFromFeedBack) {
                                Intent intent2 = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) ListSelectionActivity.class);
                                intent2.putExtra("FarmerId", dashboardListModel.getDraftId());
                                intent2.putExtra("segmentId", AddFarmerDraftListAdapter.this.segmentId);
                                intent2.putExtra("isFrom", AddFarmerDraftListAdapter.this.isFromFeedBack);
                                intent2.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getFBFActivtiesListBySegment(AddFarmerDraftListAdapter.this.segmentId));
                                ((Activity) AddFarmerDraftListAdapter.this.context).startActivityForResult(intent2, 2);
                                return;
                            }
                            AddFarmerDraftListAdapter.this.value = "" + draftListViewHolder.id;
                            if ((!AddFarmerDraftListAdapter.this.draftStatus.equalsIgnoreCase("0") && !AddFarmerDraftListAdapter.this.draftStatus.equalsIgnoreCase("5")) || !AddFarmerDraftListAdapter.this.from.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
                                if (!AddFarmerDraftListAdapter.this.draftStatus.equalsIgnoreCase("0") || !AddFarmerDraftListAdapter.this.from.equalsIgnoreCase("Planter")) {
                                    if (!AddFarmerDraftListAdapter.this.draftStatus.equalsIgnoreCase("0") || !AddFarmerDraftListAdapter.this.from.equalsIgnoreCase("Village")) {
                                        if (!AddFarmerDraftListAdapter.this.draftStatus.equalsIgnoreCase("0") || !AddFarmerDraftListAdapter.this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                                            if (!AddFarmerDraftListAdapter.this.draftStatus.equalsIgnoreCase("0") || !AddFarmerDraftListAdapter.this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor)) {
                                                if (!AddFarmerDraftListAdapter.this.draftStatus.equalsIgnoreCase("0") || !AddFarmerDraftListAdapter.this.from.equalsIgnoreCase("ValueChain")) {
                                                    if (AddFarmerDraftListAdapter.this.draftStatus.equalsIgnoreCase("0") && AddFarmerDraftListAdapter.this.from.equalsIgnoreCase("CropExpert")) {
                                                        Intent intent3 = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) ValueChainPartner.class);
                                                        Bundle bundle = new Bundle();
                                                        if (AddFarmerDraftListAdapter.this.value.trim().length() != 0 && AddFarmerDraftListAdapter.this.value != null) {
                                                            bundle.putString("farmerId", AddFarmerDraftListAdapter.this.value);
                                                            bundle.putString("farmerType", AddFarmerDraftListAdapter.this.from);
                                                            intent3.putExtras(bundle);
                                                        }
                                                        AddFarmerDraftListAdapter.this.context.startActivity(intent3);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                Intent intent4 = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) ValueChainPartner.class);
                                                Bundle bundle2 = new Bundle();
                                                if (AddFarmerDraftListAdapter.this.value.trim().length() != 0 && AddFarmerDraftListAdapter.this.value != null) {
                                                    bundle2.putString("farmerId", AddFarmerDraftListAdapter.this.value);
                                                    bundle2.putString("farmerType", AddFarmerDraftListAdapter.this.from);
                                                    intent4.putExtras(bundle2);
                                                }
                                                AddFarmerDraftListAdapter.this.context.startActivity(intent4);
                                                return;
                                            }
                                            if (!AddFarmerDraftListAdapter.this.isDistributerEligibletoUpdate) {
                                                AddFarmerDraftListAdapter.this.showAccessDeniedDialog();
                                                return;
                                            }
                                            Intent intent5 = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) AddRetailer.class);
                                            Bundle bundle3 = new Bundle();
                                            if (AddFarmerDraftListAdapter.this.value.trim().length() != 0 && AddFarmerDraftListAdapter.this.value != null) {
                                                bundle3.putString("farmerId", AddFarmerDraftListAdapter.this.value);
                                                bundle3.putString("farmerType", AddFarmerDraftListAdapter.this.from);
                                                intent5.putExtras(bundle3);
                                            }
                                            AddFarmerDraftListAdapter.this.context.startActivity(intent5);
                                            return;
                                        }
                                        if (!AddFarmerDraftListAdapter.this.isEligibletoUpdate) {
                                            AddFarmerDraftListAdapter.this.showAccessDeniedDialog();
                                            return;
                                        }
                                        Intent intent6 = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) AddRetailer.class);
                                        Bundle bundle4 = new Bundle();
                                        if (AddFarmerDraftListAdapter.this.value.trim().length() != 0 && AddFarmerDraftListAdapter.this.value != null) {
                                            bundle4.putString("farmerId", AddFarmerDraftListAdapter.this.value);
                                            bundle4.putString("farmerType", AddFarmerDraftListAdapter.this.from);
                                            bundle4.putString("isFraom", AddFarmerDraftListAdapter.this.isFrom);
                                            intent6.putExtras(bundle4);
                                        }
                                        AddFarmerDraftListAdapter.this.context.startActivity(intent6);
                                        return;
                                    }
                                    try {
                                        Intent intent7 = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) AddFarmer.class);
                                        Bundle bundle5 = new Bundle();
                                        if (AddFarmerDraftListAdapter.this.value.trim().length() != 0 && AddFarmerDraftListAdapter.this.value != null) {
                                            bundle5.putString("farmerId", AddFarmerDraftListAdapter.this.value);
                                            bundle5.putString("farmerType", AddFarmerDraftListAdapter.this.from);
                                            intent7.putExtras(bundle5);
                                        }
                                        AddFarmerDraftListAdapter.this.context.startActivity(intent7);
                                        return;
                                    } catch (Exception e5) {
                                        e5.printStackTrace();
                                        return;
                                    }
                                }
                                Intent intent8 = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) AddFarmer.class);
                                Bundle bundle6 = new Bundle();
                                if (AddFarmerDraftListAdapter.this.value.trim().length() != 0 && AddFarmerDraftListAdapter.this.value != null) {
                                    bundle6.putString("farmerId", AddFarmerDraftListAdapter.this.value);
                                    bundle6.putString("farmerType", AddFarmerDraftListAdapter.this.from);
                                    intent8.putExtras(bundle6);
                                }
                                AddFarmerDraftListAdapter.this.context.startActivity(intent8);
                                return;
                            }
                            Intent intent9 = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) AddFarmer.class);
                            Bundle bundle7 = new Bundle();
                            if (AddFarmerDraftListAdapter.this.value.trim().length() != 0 && AddFarmerDraftListAdapter.this.value != null) {
                                bundle7.putString("farmerId", AddFarmerDraftListAdapter.this.value);
                                bundle7.putString("farmerType", AddFarmerDraftListAdapter.this.from);
                                bundle7.putString("isFraom", AddFarmerDraftListAdapter.this.isFrom);
                                intent9.putExtras(bundle7);
                            }
                            AddFarmerDraftListAdapter.this.context.startActivity(intent9);
                            return;
                        }
                        Intent intent10 = new Intent();
                        intent10.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), dashboardListModel.getDraftId());
                        intent10.putExtra("SEGMENTID", AddFarmerDraftListAdapter.this.segmentId);
                        intent10.putExtra("isfrom", AddFarmerDraftListAdapter.this.isFromSurvey);
                        ((Activity) AddFarmerDraftListAdapter.this.context).setResult(-1, intent10);
                        ((Activity) AddFarmerDraftListAdapter.this.context).finish();
                        return;
                    }
                    Intent intent11 = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) SAAttributeActivityCopy.class);
                    intent11.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), dashboardListModel.getDraftId());
                    intent11.putExtra("SEGMENTID", AddFarmerDraftListAdapter.this.segmentId);
                    intent11.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(AddFarmerDraftListAdapter.this.segmentId));
                    ((Activity) AddFarmerDraftListAdapter.this.context).startActivityForResult(intent11, 2);
                    return;
                }
                Intent intent12 = new Intent();
                intent12.putExtra("FarmerId", dashboardListModel.getDraftId());
                intent12.putExtra("SegmentId", AddFarmerDraftListAdapter.this.segmentId);
                try {
                    intent12.putExtra("FarmerName", (String) ((ArrayList) dashboardListModel.getData()).get(0));
                } catch (Exception unused4) {
                }
                ((Activity) AddFarmerDraftListAdapter.this.context).setResult(-1, intent12);
                ((Activity) AddFarmerDraftListAdapter.this.context).finish();
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 2) {
            return new LoaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_footer, viewGroup, false));
        }
        if (i == 1) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.draft_list_row_new, viewGroup, false);
            this.lastPosition = i;
            return new DraftListViewHolder(inflate);
        }
        if (i == 3) {
            View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.draft_list_row_new, viewGroup, false);
            this.lastPosition = i;
            return new DraftListViewHolder(inflate2);
        }
        throw new IllegalArgumentException("Invalid ViewType: " + i);
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.10
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                AddFarmerDraftListAdapter.this.filterDraftListOriginalData = (ArrayList) filterResults.values;
                AddFarmerDraftListAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (charSequence == null || charSequence.length() == 0) {
                    filterResults.count = AddFarmerDraftListAdapter.this.originalDraftList.size();
                    AddFarmerDraftListAdapter.this.searchString = "";
                    filterResults.values = AddFarmerDraftListAdapter.this.originalDraftList;
                } else {
                    if (AddFarmerDraftListAdapter.this.originalDraftList.size() > 0) {
                        AddFarmerDraftListAdapter.this.searchString = charSequence.toString().toLowerCase(Locale.getDefault());
                        for (int i = 0; i < AddFarmerDraftListAdapter.this.originalDraftList.size(); i++) {
                            DashboardListModel dashboardListModel = (DashboardListModel) AddFarmerDraftListAdapter.this.originalDraftList.get(i);
                            AddFarmerDraftListAdapter.this.model = dashboardListModel.getData();
                            boolean z = false;
                            for (int i2 = 0; i2 < AddFarmerDraftListAdapter.this.model.size(); i2++) {
                                String str = AddFarmerDraftListAdapter.this.model.get(i2);
                                if (str != null && str.toLowerCase(Locale.getDefault()).contains(AddFarmerDraftListAdapter.this.searchString)) {
                                    z = true;
                                }
                            }
                            if (z) {
                                arrayList.add(dashboardListModel);
                            }
                        }
                    }
                    filterResults.count = arrayList.size();
                    filterResults.values = arrayList;
                }
                return filterResults;
            }
        };
    }

    @Override // com.conceptglobal.ifastscroll.SectionTitleProvider
    public String getSectionTitle(int i) {
        try {
            if (i > this.filterDraftListOriginalData.size() - 1) {
                return null;
            }
            ArrayList arrayList = (ArrayList) this.filterDraftListOriginalData.get(i).getData();
            if (arrayList.get(0) == null || ((String) arrayList.get(0)).trim().length() <= 0) {
                return null;
            }
            return String.valueOf(((String) arrayList.get(0)).charAt(0)).toUpperCase(Locale.getDefault());
        } catch (Exception e) {
            PLog.e("AddFarmerDraftListAdapter", e);
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onSubmitOTP(String str) {
        if (this.mOTP.equals(str)) {
            try {
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
            if (!this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer) && !this.from.equalsIgnoreCase("UnVerifiedRetailer")) {
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerOTPVerificationQuery(this.mSelectedRespondentNo, "1"));
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerServerStatus(this.mSelectedRespondentNo));
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerStatus(this.mSelectedRespondentNo));
                Toast.makeText(this.context, "Verification is done successfully.", 1).show();
                this.otpVerificationDialog.dismissDialog();
                startService();
                if (!this.from.equalsIgnoreCase("UnVerifiedFarmer") || this.from.equalsIgnoreCase("UnVerifiedRetailer")) {
                    this.filterDraftListOriginalData.remove(this.mSelectedPosition);
                } else {
                    this.filterDraftListOriginalData.get(this.mSelectedPosition).setField3("1");
                }
                notifyDataSetChanged();
                return;
            }
            this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateRetailerOTPVerificationQuery(this.mSelectedRespondentNo, "1"));
            Toast.makeText(this.context, "Verification is done successfully.", 1).show();
            this.otpVerificationDialog.dismissDialog();
            startService();
            if (!this.from.equalsIgnoreCase("UnVerifiedFarmer")) {
            }
            this.filterDraftListOriginalData.remove(this.mSelectedPosition);
            notifyDataSetChanged();
            return;
        }
        Toast.makeText(this.context, "Invalid Verification Code. Please try again!", 1).show();
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onResendOTP() {
        this.mOTP = "";
        if (UtilDeclarations.isOnline(this.context)) {
            Toast.makeText(this.context, "Verification code  has been sent to your mobile number.", 1).show();
            callOTPAsync();
        } else {
            showOTPVerifyDialog(this.context);
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onVerifyLater() {
        try {
            if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateRetailerOTPVerificationQuery(this.mSelectedRespondentNo, "0"));
            } else {
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerOTPVerificationQuery(this.mSelectedRespondentNo, "0"));
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerServerStatus(this.mSelectedRespondentNo));
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onClose() {
        try {
            if (this.from.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateRetailerOTPVerificationQuery(this.mSelectedRespondentNo, "0"));
            } else {
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerOTPVerificationQuery(this.mSelectedRespondentNo, "0"));
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerServerStatus(this.mSelectedRespondentNo));
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    private void startService() {
        if (!UtilDeclarations.isOnline(this.context) || UtilDeclarations.isServiceRunning(this.context, SyncDataService.class)) {
            return;
        }
        Toast.makeText(this.context, "Service initiated", 0);
        new SendDataServiceUtil(this.context).startService();
    }

    public static class DraftListViewHolder extends RecyclerView.ViewHolder {
        protected CardView cardview;
        protected ImageView delete;
        protected ImageView gps;
        protected String id;
        protected ImageView ivFavourite;
        protected ImageView ivHNF;
        protected ImageView ivRaisingstar;
        protected ImageView iv_web;
        protected LinearLayout ll;
        protected LinearLayout llFellowFarmerDetails;
        protected LinearLayout llRstr;
        protected LinearLayout llbalance;
        protected LinearLayout lloutstand;
        protected ImageView phonedail;
        protected TextView profTextView;
        protected TextView profTextView2;
        protected ImageView profile_image;
        protected RelativeLayout rlBorderVoew;
        protected ImageView sms;
        protected TextView tvFellowCount;
        protected TextView tvRightView;
        protected TextView tvUnverifiedLabel;
        protected TextView tvVerify;
        protected TextView tvblncpnts;
        protected TextView tvoutstnd;
        protected ImageView verifyWithOTP;

        public DraftListViewHolder(View view) {
            super(view);
            this.cardview = (CardView) view.findViewById(R.id.cardview);
            this.ll = (LinearLayout) view.findViewById(R.id.addingdynamicdrafts);
            this.lloutstand = (LinearLayout) view.findViewById(R.id.lloutstand);
            this.llbalance = (LinearLayout) view.findViewById(R.id.llbalance);
            this.llRstr = (LinearLayout) view.findViewById(R.id.wallent_ll);
            this.rlBorderVoew = (RelativeLayout) view.findViewById(R.id.rlBorderView);
            this.profile_image = (ImageView) view.findViewById(R.id.profile_image);
            this.phonedail = (ImageView) view.findViewById(R.id.phonedail);
            this.profTextView = (TextView) view.findViewById(R.id.tv_textview_display);
            this.profTextView2 = (TextView) view.findViewById(R.id.tv_textview_display2);
            this.delete = (ImageView) view.findViewById(R.id.deleteRecord);
            this.gps = (ImageView) view.findViewById(R.id.latlongs);
            this.sms = (ImageView) view.findViewById(R.id.sms);
            this.ivFavourite = (ImageView) view.findViewById(R.id.ivFavourite);
            this.ivRaisingstar = (ImageView) view.findViewById(R.id.ivRaisingstar);
            this.ivHNF = (ImageView) view.findViewById(R.id.ivHNF);
            this.iv_web = (ImageView) view.findViewById(R.id.iv_web);
            this.tvRightView = (TextView) view.findViewById(R.id.right_layout);
            this.tvUnverifiedLabel = (TextView) view.findViewById(R.id.tvUnverifiedLabel);
            this.verifyWithOTP = (ImageView) view.findViewById(R.id.verifyWithOTP);
            this.tvVerify = (TextView) view.findViewById(R.id.tv_textview_verify);
            this.tvoutstnd = (TextView) view.findViewById(R.id.tvValue1);
            this.tvblncpnts = (TextView) view.findViewById(R.id.tvValue2);
            this.llFellowFarmerDetails = (LinearLayout) view.findViewById(R.id.ll_fellowdetails);
            this.tvFellowCount = (TextView) view.findViewById(R.id.tvFellowFarmerCount);
        }
    }

    public class LoaderViewHolder extends RecyclerView.ViewHolder {
        ProgressBar mProgressBar;

        public LoaderViewHolder(View view) {
            super(view);
            this.mProgressBar = (ProgressBar) view.findViewById(R.id.progressbar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void SyncData() {
        if (!UtilDeclarations.isOnline(this.context) || UtilDeclarations.isServiceRunning(this.context, SyncDataService.class)) {
            return;
        }
        new SendDataServiceUtil(this.context).startService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callOTPAsync() {
        try {
            new OTPAsync().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private class OTPAsync extends AsyncTask<Void, String, String> {
        private OTPAsync() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            AddFarmerDraftListAdapter.this.getOTPDetails();
            return "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute((OTPAsync) str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getOTPDetails() {
        String str = null;
        try {
            PLog.i(TAG, "getOTPDetails");
            GetOTP getOTP = new GetOTP();
            getOTP.setRespondentNo(this.mSelectedRespondentNo);
            getOTP.setMobileNo(this.mSelectedMobile);
            getOTP.setFarmerName(this.mSelectedName);
            getOTP.setPdaid(ConstantsPMC.getInstance().getDeviceID());
            Gson gson = new Gson();
            String json = gson.toJson(getOTP);
            Log.i(TAG, "OTP Request jsonObj ::::::::::::: " + json);
            str = WebService.getInstance().sendRequest(json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSendFarmerOTP());
            if (str != null && !str.isEmpty()) {
                Log.i(TAG, str + "");
                GetOTPResponse getOTPResponse = (GetOTPResponse) gson.fromJson(str, GetOTPResponse.class);
                if (getOTPResponse.getStatus().equalsIgnoreCase("Success")) {
                    this.mOTP = getOTPResponse.getData().getOTP();
                    Log.i(TAG, "mOTP ::::::::::::: " + this.mOTP);
                } else {
                    Toast.makeText(this.context, getOTPResponse.getStatusMessage(), 1).show();
                }
            }
        } catch (Exception e) {
            PLog.e(TAG, e.toString(), "getOTPDetails", str);
        }
    }

    private boolean validateFarmerWithOTP() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("FarmerOTPRoleId"));
            String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
            if (singleValue == null || singleValue.length() <= 0) {
                return false;
            }
            for (String str : singleValue.split(",")) {
                if (str.equals(singleValue2)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean validateRetailerWithOTP() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("RetailerOTPRoleId"));
            String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
            if (singleValue == null || singleValue.length() <= 0) {
                return false;
            }
            for (String str : singleValue.split(",")) {
                if (str.equals(singleValue2)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOTPVerifyDialog(Context context) {
        AlertDialog create = new AlertDialog.Builder(context).create();
        create.setCanceledOnTouchOutside(false);
        create.setMessage("As you don't have internet connection now. Please verify the farmer later.");
        create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.11
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMandatoryDataEmptyMsg(Context context, final DashboardListModel dashboardListModel) {
        AlertDialog create = new AlertDialog.Builder(context).create();
        create.setCanceledOnTouchOutside(false);
        create.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_missedretailerprofiledata()));
        create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) AddRetailer.class);
                Bundle bundle = new Bundle();
                bundle.putString("farmerId", dashboardListModel.getDraftId());
                bundle.putString("farmerType", AddFarmerDraftListAdapter.this.from);
                bundle.putString("isFraom", AddFarmerDraftListAdapter.this.isFrom);
                bundle.putString("farmerUpdate", "MandatoryFrm");
                bundle.putInt("SegmentId", AddFarmerDraftListAdapter.this.segmentId);
                intent.putExtras(bundle);
                AddFarmerDraftListAdapter.this.context.startActivity(intent);
                dialogInterface.dismiss();
            }
        });
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMandatoryDataEmptyMsgFarmer(Context context, final DashboardListModel dashboardListModel) {
        AlertDialog create = new AlertDialog.Builder(context).create();
        create.setCanceledOnTouchOutside(false);
        create.setMessage("To perform activity, Please fill all mandatory information of the farmer from Add Farmer Module. ");
        create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) AddFarmer.class);
                Bundle bundle = new Bundle();
                bundle.putString("farmerId", dashboardListModel.getDraftId());
                bundle.putString("farmerType", AddFarmerDraftListAdapter.this.from);
                bundle.putString("isFraom", AddFarmerDraftListAdapter.this.isFrom);
                bundle.putString("farmerUpdate", "MandatoryFrm");
                bundle.putInt("SegmentId", AddFarmerDraftListAdapter.this.segmentId);
                intent.putExtras(bundle);
                AddFarmerDraftListAdapter.this.context.startActivity(intent);
                dialogInterface.dismiss();
            }
        });
        create.show();
    }

    private void validateRetailerUpdateStatus() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("RetailerNonUpdateRoleIDs"));
            String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
            if (singleValue == null || singleValue.length() <= 0) {
                return;
            }
            for (String str : singleValue.split(",")) {
                if (str.equals(singleValue2)) {
                    this.isEligibletoUpdate = false;
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void validateDistributerUpdateStatus() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("DistributerNonUpdateRoleIDs"));
            String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
            if (singleValue == null || singleValue.length() <= 0) {
                return;
            }
            for (String str : singleValue.split(",")) {
                if (str.equals(singleValue2)) {
                    this.isDistributerEligibletoUpdate = false;
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAccessDeniedDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_accessDeniedDialog())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.14
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.15
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUpdateRetailerAlertDialog(String str, final DashboardListModel dashboardListModel) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.16
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                Intent intent = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) AddRetailer.class);
                Bundle bundle = new Bundle();
                bundle.putString("farmerId", dashboardListModel.getDraftId());
                bundle.putString("farmerType", AddFarmerDraftListAdapter.this.from);
                bundle.putString("isFraom", AddFarmerDraftListAdapter.this.isFrom);
                bundle.putBoolean("isLocationUpdate", true);
                intent.putExtras(bundle);
                AddFarmerDraftListAdapter.this.context.startActivity(intent);
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProfileUpdateDeniedDialog(final DashboardListModel dashboardListModel) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_updateVilageDialog())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter.17
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent(AddFarmerDraftListAdapter.this.context, (Class<?>) AddFarmer.class);
                Bundle bundle = new Bundle();
                if (dashboardListModel.getDraftId() != null) {
                    try {
                        bundle.putString("farmerId", dashboardListModel.getDraftId());
                        bundle.putString("farmerType", AddFarmerDraftListAdapter.this.from);
                        intent.putExtras(bundle);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                AddFarmerDraftListAdapter.this.context.startActivity(intent);
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    public void onSortItemSelected(int i, String str) {
        switch (i) {
            case 1:
                Collections.sort(this.filterDraftListOriginalData, new SegmentLowToHighSorter(str));
                break;
            case 2:
                Collections.sort(this.filterDraftListOriginalData, new SegmentSorter(str));
                break;
            case 3:
                Collections.sort(this.filterDraftListOriginalData, new FarmerTotalSalesLowToHighSorter(str));
                break;
            case 4:
                Collections.sort(this.filterDraftListOriginalData, new FarmerTotalSalesSorter(str));
                break;
            case 5:
                Collections.sort(this.filterDraftListOriginalData, new FarmerTotalSalesSorter(str));
                break;
            case 6:
                Collections.sort(this.filterDraftListOriginalData, new FarmerTotalSalesLowToHighSorter(str));
                break;
            case 7:
                Collections.sort(this.filterDraftListOriginalData, new AToZSorter());
                break;
            case 8:
                Collections.sort(this.filterDraftListOriginalData, new ZToASorter());
                break;
        }
        notifyDataSetChanged();
    }
}
