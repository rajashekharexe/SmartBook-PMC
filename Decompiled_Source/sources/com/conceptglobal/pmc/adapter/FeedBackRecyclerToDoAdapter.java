package com.conceptglobal.pmc.adapter;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.MainHomePageActivity;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fo.SAAttributeActivity_FBF_Resolution;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.FBFActivityResolveTrackModel;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class FeedBackRecyclerToDoAdapter extends RecyclerView.Adapter<SelectionTODOHolder> implements Filterable, View.OnClickListener {
    private Context context;
    private List<AssignmentActivityDetailsModel> customerList;
    private boolean isCalendarView;
    private String isFrom;
    View itemView;
    private LayoutInflater mInflater;
    private List<AssignmentActivityDetailsModel> mOriginalNames;
    String mobile;
    private int lastPosition = -1;
    private String searchString = "";
    private int packageId = 0;

    public FeedBackRecyclerToDoAdapter(Context context, ArrayList<AssignmentActivityDetailsModel> arrayList, boolean z, String str) {
        this.context = context;
        this.customerList = arrayList;
        this.mOriginalNames = arrayList;
        this.isCalendarView = z;
        this.isFrom = str;
        this.mInflater = LayoutInflater.from(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public SelectionTODOHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        this.itemView = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_customeractivitylist_item_fbf, viewGroup, false);
        this.lastPosition = i;
        return new SelectionTODOHolder(this.itemView);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0120 A[Catch: Exception -> 0x049b, TryCatch #1 {Exception -> 0x049b, blocks: (B:3:0x001b, B:7:0x0047, B:9:0x007f, B:11:0x0086, B:13:0x008d, B:16:0x0096, B:17:0x0116, B:19:0x0120, B:20:0x022f, B:22:0x0235, B:23:0x025d, B:25:0x0263, B:28:0x026d, B:29:0x02e8, B:30:0x033f, B:32:0x036f, B:33:0x0388, B:39:0x03ce, B:40:0x02ab, B:41:0x02fd, B:43:0x0305, B:44:0x0338, B:45:0x031f, B:46:0x0247, B:47:0x014b, B:49:0x0173, B:50:0x0181, B:52:0x01b0, B:53:0x01ce, B:55:0x01f4, B:56:0x0212, B:57:0x017b, B:58:0x00a4, B:60:0x00ab, B:62:0x00b1, B:63:0x00b4, B:64:0x00c2, B:66:0x00c9, B:68:0x00eb, B:69:0x00ee, B:70:0x00fc, B:72:0x0106, B:73:0x0109, B:74:0x03d1, B:76:0x03d9, B:77:0x041e, B:79:0x0424, B:81:0x042a, B:83:0x0438, B:85:0x0446, B:86:0x0459, B:88:0x0467, B:90:0x0475, B:123:0x0488, B:124:0x0450, B:125:0x03fc, B:36:0x0394), top: B:2:0x001b, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0235 A[Catch: Exception -> 0x049b, TryCatch #1 {Exception -> 0x049b, blocks: (B:3:0x001b, B:7:0x0047, B:9:0x007f, B:11:0x0086, B:13:0x008d, B:16:0x0096, B:17:0x0116, B:19:0x0120, B:20:0x022f, B:22:0x0235, B:23:0x025d, B:25:0x0263, B:28:0x026d, B:29:0x02e8, B:30:0x033f, B:32:0x036f, B:33:0x0388, B:39:0x03ce, B:40:0x02ab, B:41:0x02fd, B:43:0x0305, B:44:0x0338, B:45:0x031f, B:46:0x0247, B:47:0x014b, B:49:0x0173, B:50:0x0181, B:52:0x01b0, B:53:0x01ce, B:55:0x01f4, B:56:0x0212, B:57:0x017b, B:58:0x00a4, B:60:0x00ab, B:62:0x00b1, B:63:0x00b4, B:64:0x00c2, B:66:0x00c9, B:68:0x00eb, B:69:0x00ee, B:70:0x00fc, B:72:0x0106, B:73:0x0109, B:74:0x03d1, B:76:0x03d9, B:77:0x041e, B:79:0x0424, B:81:0x042a, B:83:0x0438, B:85:0x0446, B:86:0x0459, B:88:0x0467, B:90:0x0475, B:123:0x0488, B:124:0x0450, B:125:0x03fc, B:36:0x0394), top: B:2:0x001b, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0263 A[Catch: Exception -> 0x049b, TRY_LEAVE, TryCatch #1 {Exception -> 0x049b, blocks: (B:3:0x001b, B:7:0x0047, B:9:0x007f, B:11:0x0086, B:13:0x008d, B:16:0x0096, B:17:0x0116, B:19:0x0120, B:20:0x022f, B:22:0x0235, B:23:0x025d, B:25:0x0263, B:28:0x026d, B:29:0x02e8, B:30:0x033f, B:32:0x036f, B:33:0x0388, B:39:0x03ce, B:40:0x02ab, B:41:0x02fd, B:43:0x0305, B:44:0x0338, B:45:0x031f, B:46:0x0247, B:47:0x014b, B:49:0x0173, B:50:0x0181, B:52:0x01b0, B:53:0x01ce, B:55:0x01f4, B:56:0x0212, B:57:0x017b, B:58:0x00a4, B:60:0x00ab, B:62:0x00b1, B:63:0x00b4, B:64:0x00c2, B:66:0x00c9, B:68:0x00eb, B:69:0x00ee, B:70:0x00fc, B:72:0x0106, B:73:0x0109, B:74:0x03d1, B:76:0x03d9, B:77:0x041e, B:79:0x0424, B:81:0x042a, B:83:0x0438, B:85:0x0446, B:86:0x0459, B:88:0x0467, B:90:0x0475, B:123:0x0488, B:124:0x0450, B:125:0x03fc, B:36:0x0394), top: B:2:0x001b, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x036f A[Catch: Exception -> 0x049b, TryCatch #1 {Exception -> 0x049b, blocks: (B:3:0x001b, B:7:0x0047, B:9:0x007f, B:11:0x0086, B:13:0x008d, B:16:0x0096, B:17:0x0116, B:19:0x0120, B:20:0x022f, B:22:0x0235, B:23:0x025d, B:25:0x0263, B:28:0x026d, B:29:0x02e8, B:30:0x033f, B:32:0x036f, B:33:0x0388, B:39:0x03ce, B:40:0x02ab, B:41:0x02fd, B:43:0x0305, B:44:0x0338, B:45:0x031f, B:46:0x0247, B:47:0x014b, B:49:0x0173, B:50:0x0181, B:52:0x01b0, B:53:0x01ce, B:55:0x01f4, B:56:0x0212, B:57:0x017b, B:58:0x00a4, B:60:0x00ab, B:62:0x00b1, B:63:0x00b4, B:64:0x00c2, B:66:0x00c9, B:68:0x00eb, B:69:0x00ee, B:70:0x00fc, B:72:0x0106, B:73:0x0109, B:74:0x03d1, B:76:0x03d9, B:77:0x041e, B:79:0x0424, B:81:0x042a, B:83:0x0438, B:85:0x0446, B:86:0x0459, B:88:0x0467, B:90:0x0475, B:123:0x0488, B:124:0x0450, B:125:0x03fc, B:36:0x0394), top: B:2:0x001b, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0394 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x02fd A[Catch: Exception -> 0x049b, TryCatch #1 {Exception -> 0x049b, blocks: (B:3:0x001b, B:7:0x0047, B:9:0x007f, B:11:0x0086, B:13:0x008d, B:16:0x0096, B:17:0x0116, B:19:0x0120, B:20:0x022f, B:22:0x0235, B:23:0x025d, B:25:0x0263, B:28:0x026d, B:29:0x02e8, B:30:0x033f, B:32:0x036f, B:33:0x0388, B:39:0x03ce, B:40:0x02ab, B:41:0x02fd, B:43:0x0305, B:44:0x0338, B:45:0x031f, B:46:0x0247, B:47:0x014b, B:49:0x0173, B:50:0x0181, B:52:0x01b0, B:53:0x01ce, B:55:0x01f4, B:56:0x0212, B:57:0x017b, B:58:0x00a4, B:60:0x00ab, B:62:0x00b1, B:63:0x00b4, B:64:0x00c2, B:66:0x00c9, B:68:0x00eb, B:69:0x00ee, B:70:0x00fc, B:72:0x0106, B:73:0x0109, B:74:0x03d1, B:76:0x03d9, B:77:0x041e, B:79:0x0424, B:81:0x042a, B:83:0x0438, B:85:0x0446, B:86:0x0459, B:88:0x0467, B:90:0x0475, B:123:0x0488, B:124:0x0450, B:125:0x03fc, B:36:0x0394), top: B:2:0x001b, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0247 A[Catch: Exception -> 0x049b, TryCatch #1 {Exception -> 0x049b, blocks: (B:3:0x001b, B:7:0x0047, B:9:0x007f, B:11:0x0086, B:13:0x008d, B:16:0x0096, B:17:0x0116, B:19:0x0120, B:20:0x022f, B:22:0x0235, B:23:0x025d, B:25:0x0263, B:28:0x026d, B:29:0x02e8, B:30:0x033f, B:32:0x036f, B:33:0x0388, B:39:0x03ce, B:40:0x02ab, B:41:0x02fd, B:43:0x0305, B:44:0x0338, B:45:0x031f, B:46:0x0247, B:47:0x014b, B:49:0x0173, B:50:0x0181, B:52:0x01b0, B:53:0x01ce, B:55:0x01f4, B:56:0x0212, B:57:0x017b, B:58:0x00a4, B:60:0x00ab, B:62:0x00b1, B:63:0x00b4, B:64:0x00c2, B:66:0x00c9, B:68:0x00eb, B:69:0x00ee, B:70:0x00fc, B:72:0x0106, B:73:0x0109, B:74:0x03d1, B:76:0x03d9, B:77:0x041e, B:79:0x0424, B:81:0x042a, B:83:0x0438, B:85:0x0446, B:86:0x0459, B:88:0x0467, B:90:0x0475, B:123:0x0488, B:124:0x0450, B:125:0x03fc, B:36:0x0394), top: B:2:0x001b, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014b A[Catch: Exception -> 0x049b, TryCatch #1 {Exception -> 0x049b, blocks: (B:3:0x001b, B:7:0x0047, B:9:0x007f, B:11:0x0086, B:13:0x008d, B:16:0x0096, B:17:0x0116, B:19:0x0120, B:20:0x022f, B:22:0x0235, B:23:0x025d, B:25:0x0263, B:28:0x026d, B:29:0x02e8, B:30:0x033f, B:32:0x036f, B:33:0x0388, B:39:0x03ce, B:40:0x02ab, B:41:0x02fd, B:43:0x0305, B:44:0x0338, B:45:0x031f, B:46:0x0247, B:47:0x014b, B:49:0x0173, B:50:0x0181, B:52:0x01b0, B:53:0x01ce, B:55:0x01f4, B:56:0x0212, B:57:0x017b, B:58:0x00a4, B:60:0x00ab, B:62:0x00b1, B:63:0x00b4, B:64:0x00c2, B:66:0x00c9, B:68:0x00eb, B:69:0x00ee, B:70:0x00fc, B:72:0x0106, B:73:0x0109, B:74:0x03d1, B:76:0x03d9, B:77:0x041e, B:79:0x0424, B:81:0x042a, B:83:0x0438, B:85:0x0446, B:86:0x0459, B:88:0x0467, B:90:0x0475, B:123:0x0488, B:124:0x0450, B:125:0x03fc, B:36:0x0394), top: B:2:0x001b, inners: #0 }] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(com.conceptglobal.pmc.adapter.FeedBackRecyclerToDoAdapter.SelectionTODOHolder r17, final int r18) {
        /*
            Method dump skipped, instructions count: 1490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.adapter.FeedBackRecyclerToDoAdapter.onBindViewHolder(com.conceptglobal.pmc.adapter.FeedBackRecyclerToDoAdapter$SelectionTODOHolder, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendComplaint(final Context context, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage("Are you sure,Do you want to Forward this Complaint ?").setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.FeedBackRecyclerToDoAdapter.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                try {
                    long transId = ((AssignmentActivityDetailsModel) FeedBackRecyclerToDoAdapter.this.customerList.get(i)).getTransId();
                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteFBFResolveTrackActDetails(((AssignmentActivityDetailsModel) FeedBackRecyclerToDoAdapter.this.customerList.get(i)).getTransId()));
                    InsertDataIntoDB.insertResolutionDataIntoDb(null, null, null, null, "", "", transId, 2, 1, 0);
                    if (UtilDeclarations.isOnline(context) && !UtilDeclarations.isServiceRunning(context, SyncDataService.class)) {
                        Toast.makeText(context, "Service initiated", 0);
                        new SendDataServiceUtil(context).startService();
                    }
                    Intent intent = new Intent(context, (Class<?>) MainHomePageActivity.class);
                    intent.addFlags(268468224);
                    context.startActivity(intent);
                } catch (Exception e) {
                    e.getMessage();
                }
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.FeedBackRecyclerToDoAdapter.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.customerList.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.adapter.FeedBackRecyclerToDoAdapter.6
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                FeedBackRecyclerToDoAdapter.this.customerList = (ArrayList) filterResults.values;
                FeedBackRecyclerToDoAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                try {
                    ArrayList arrayList = new ArrayList();
                    if (FeedBackRecyclerToDoAdapter.this.customerList == null || FeedBackRecyclerToDoAdapter.this.customerList.size() != FeedBackRecyclerToDoAdapter.this.mOriginalNames.size()) {
                        FeedBackRecyclerToDoAdapter feedBackRecyclerToDoAdapter = FeedBackRecyclerToDoAdapter.this;
                        feedBackRecyclerToDoAdapter.customerList = feedBackRecyclerToDoAdapter.mOriginalNames;
                    }
                    if (charSequence != null && charSequence.length() != 0) {
                        String lowerCase = charSequence.toString().toLowerCase();
                        for (int i = 0; i < FeedBackRecyclerToDoAdapter.this.customerList.size(); i++) {
                            FeedBackRecyclerToDoAdapter.this.searchString = lowerCase.toString();
                            AssignmentActivityDetailsModel assignmentActivityDetailsModel = (AssignmentActivityDetailsModel) FeedBackRecyclerToDoAdapter.this.customerList.get(i);
                            if (assignmentActivityDetailsModel.getPerson1() != null && assignmentActivityDetailsModel.getPerson1().toLowerCase().contains(FeedBackRecyclerToDoAdapter.this.searchString)) {
                                arrayList.add(assignmentActivityDetailsModel);
                            } else if (assignmentActivityDetailsModel.getContactNumber() == null || !assignmentActivityDetailsModel.getContactNumber().toString().toLowerCase().contains(FeedBackRecyclerToDoAdapter.this.searchString)) {
                                if (GetDataFromDB.getInstance().getActiviyName(assignmentActivityDetailsModel.getActivityMasterId()).toLowerCase().contains(FeedBackRecyclerToDoAdapter.this.searchString)) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                } else if (assignmentActivityDetailsModel.getPerson2() != null && assignmentActivityDetailsModel.getPerson2().toString().contains(FeedBackRecyclerToDoAdapter.this.searchString)) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                } else if (assignmentActivityDetailsModel.getLocation1() != null && assignmentActivityDetailsModel.getLocation1().toLowerCase().contains(FeedBackRecyclerToDoAdapter.this.searchString)) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                } else if (assignmentActivityDetailsModel.getLocation2() != null && assignmentActivityDetailsModel.getLocation2().toLowerCase().contains(FeedBackRecyclerToDoAdapter.this.searchString)) {
                                    arrayList.add(assignmentActivityDetailsModel);
                                }
                            } else {
                                arrayList.add(assignmentActivityDetailsModel);
                            }
                        }
                        filterResults.count = arrayList.size();
                        filterResults.values = arrayList;
                        return filterResults;
                    }
                    filterResults.count = FeedBackRecyclerToDoAdapter.this.customerList.size();
                    FeedBackRecyclerToDoAdapter.this.searchString = "";
                    filterResults.values = FeedBackRecyclerToDoAdapter.this.customerList;
                    return filterResults;
                } catch (Exception e) {
                    PLog.e("Filter", e);
                    filterResults.count = FeedBackRecyclerToDoAdapter.this.customerList.size();
                    FeedBackRecyclerToDoAdapter.this.searchString = "";
                    filterResults.values = FeedBackRecyclerToDoAdapter.this.customerList;
                    return filterResults;
                }
            }
        };
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent;
        int intValue = ((Integer) view.getTag()).intValue();
        int id = view.getId();
        if (id != R.id.CustomerTypeMainLayout) {
            if (id != R.id.imageViewSegmentType) {
                if (id != R.id.latlongs) {
                    return;
                }
                this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://maps.google.com/maps?daddr=" + this.customerList.get(intValue).getLatitude() + "," + this.customerList.get(intValue).getLongitude() + "&saddr=Current%20Location")));
                return;
            }
            if (this.customerList.get(intValue).getContactNumber() == null || this.customerList.get(intValue).getContactNumber().trim().length() <= 0 || this.mobile.equalsIgnoreCase("")) {
                Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_mobileNumNAToast()), 0).show();
                return;
            }
            Intent intent2 = new Intent();
            intent2.setAction("android.intent.action.DIAL");
            intent2.setData(Uri.parse("tel:" + this.customerList.get(intValue).getContactNumber()));
            this.context.startActivity(intent2);
            return;
        }
        if (GetDataFromDB.getInstance().getSegmentType(this.customerList.get(intValue).getActivitySegmentId()) == 3) {
            Log.d("timer", "start getSegmentType " + System.currentTimeMillis());
            String str = this.isFrom;
            if (str == null || !str.equalsIgnoreCase("FeedBack")) {
                intent = null;
            } else {
                intent = new Intent(this.context, (Class<?>) SAAttributeActivity_FBF_Resolution.class);
                intent.putExtra("TRANSID", this.customerList.get(intValue).getTransId());
                intent.putExtra("isCompleted", "1");
            }
            intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.customerList.get(intValue).getActivitySegmentValue());
            intent.putExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), this.customerList.get(intValue).getActivitySegmentValue());
            intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.customerList.get(intValue).getActivityMasterId());
            intent.putExtra("ACTIVITYID", this.customerList.get(intValue).getActivityMasterId());
            intent.putExtra("SEGMENTID", this.customerList.get(intValue).getActivitySegmentId());
            intent.putExtra("ACTIVITYNAME", GetDataFromDB.getInstance().getFBFActiviyName(this.customerList.get(intValue).getActivityMasterId()));
            intent.putExtra("AssignmentId", this.customerList.get(intValue).getAssignmentId());
            intent.putExtra("ActivityAssignmentId", this.customerList.get(intValue).getActivityAssignmentId());
            intent.putExtra("PackageId", this.customerList.get(intValue).getPackageId());
            intent.putExtra("isFromResolution", true);
            Bundle bundle = new Bundle();
            bundle.putParcelable("MODELCLASS", this.customerList.get(intValue));
            intent.putExtras(bundle);
            intent.addFlags(67108864);
            this.context.startActivity(intent.addFlags(131072).addFlags(67108864));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showResolutionDailog(Context context, int i) {
        String str;
        String str2;
        Date date;
        ViewGroup viewGroup = (ViewGroup) this.itemView.findViewById(android.R.id.content);
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setView(LayoutInflater.from(context).inflate(R.layout.dialog_resolution_display, viewGroup, false));
        final AlertDialog create = builder.create();
        create.show();
        create.getWindow().setLayout(-2, -2);
        FBFActivityResolveTrackModel resolvedNameAndData = GetDataFromDB.getInstance().getResolvedNameAndData(Queries.getInstance().getResolvedNameAndDetails(String.valueOf(this.customerList.get(i).getTransId())));
        TextView textView = (TextView) create.findViewById(R.id.txt_resolvedName);
        TextView textView2 = (TextView) create.findViewById(R.id.txt_resolvedRemarks);
        TextView textView3 = (TextView) create.findViewById(R.id.txt_resolvedDate);
        if (resolvedNameAndData == null || resolvedNameAndData.getResolveName() == null || resolvedNameAndData.getResolveName().equalsIgnoreCase("")) {
            str = "";
        } else {
            str = resolvedNameAndData.getResolveName();
        }
        if (resolvedNameAndData == null || resolvedNameAndData.getResolveRemarks() == null || resolvedNameAndData.getResolveRemarks().equalsIgnoreCase("")) {
            str2 = "";
        } else {
            str2 = resolvedNameAndData.getResolveRemarks();
        }
        if (resolvedNameAndData != null && resolvedNameAndData.getCreatedDate() != null) {
            try {
                date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss").parse(resolvedNameAndData.getCreatedDate());
            } catch (Exception e) {
                e.printStackTrace();
                date = null;
            }
            textView3.setText("Resolved Date :" + new SimpleDateFormat("dd MMM yyyy").format(date) + "");
        }
        textView2.setMovementMethod(new ScrollingMovementMethod());
        textView.setText(str);
        textView2.setText(str2);
        ((Button) create.findViewById(R.id.btnclose)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.FeedBackRecyclerToDoAdapter.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                create.dismiss();
            }
        });
    }

    public static class SelectionTODOHolder extends RecyclerView.ViewHolder {
        Button btnResloutionView;
        Button btn_forward;
        protected CardView cardview;
        protected String id;
        private ImageView ivSave;
        private ImageView ivSegmentType;
        private RelativeLayout llView;
        private ImageView mapView;
        private TextView tvActvityAssigned;
        private TextView tvDaysRemaining;
        private TextView tvFarmerName;
        private TextView tvFarmerNumber;
        private TextView tvFromDate;
        private TextView tvParentSegmentValue;
        private TextView tvToDate;
        private TextView tvassignmentId;
        private TextView txtResolutionstatus;

        public SelectionTODOHolder(View view) {
            super(view);
            this.cardview = (CardView) view.findViewById(R.id.cardViewSegmentTypeNameTODO);
            this.ivSave = (ImageView) view.findViewById(R.id.iv_status_farmer_namess);
            this.llView = (RelativeLayout) view.findViewById(R.id.CustomerTypeMainLayout);
            this.tvFarmerName = (TextView) view.findViewById(R.id.textiv_status_farmer_Name);
            this.tvFarmerNumber = (TextView) view.findViewById(R.id.textCustomerTypePhoneNo);
            this.tvActvityAssigned = (TextView) view.findViewById(R.id.textCustomerActivityName);
            this.ivSegmentType = (ImageView) view.findViewById(R.id.imageViewSegmentType);
            this.tvParentSegmentValue = (TextView) view.findViewById(R.id.textCustomerTypeParentName);
            this.tvDaysRemaining = (TextView) view.findViewById(R.id.textViewDaysLeft);
            this.tvFromDate = (TextView) view.findViewById(R.id.textFromDate);
            this.tvToDate = (TextView) view.findViewById(R.id.textToDate);
            this.tvassignmentId = (TextView) view.findViewById(R.id.textCustomerAssingmentID);
            this.mapView = (ImageView) view.findViewById(R.id.latlongs);
            this.txtResolutionstatus = (TextView) view.findViewById(R.id.txtResolutionstatus);
            this.btnResloutionView = (Button) view.findViewById(R.id.btn_resolution);
            this.btn_forward = (Button) view.findViewById(R.id.btn_forward);
        }
    }

    public void setIsCalenderView(boolean z, ArrayList<AssignmentActivityDetailsModel> arrayList) {
        this.isCalendarView = z;
        this.customerList = arrayList;
        notifyDataSetChanged();
    }
}
