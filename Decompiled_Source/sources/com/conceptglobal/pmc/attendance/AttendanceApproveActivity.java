package com.conceptglobal.pmc.attendance;

import android.app.Dialog;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.promotions.downloadmanager.Log;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class AttendanceApproveActivity extends BaseActivity implements OnListItemClickListener, View.OnClickListener {
    private static final String Tag = "AttendanceApproveActivity";
    private AttendanceApproveAdapter attendanceApproveAdapter;
    private Button btnApprove;
    private Button btnApproveAndSave;
    private Button btnCancel;
    private Button btnReject;
    private Context context;
    private EditText etDistance;
    private EditText etFONoghtHalt;
    private EditText etFoDistance;
    private EditText etNightHalt;
    private RecyclerView rvAttendance;
    private TextView tvFoNightHaltId;
    private TextView tvNightHaltID;
    private HashMap<String, List<AttendanceItem>> approveMap = new HashMap<>();
    private ArrayList<ApproveListItem> approveListItems = new ArrayList<>();

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_attendance_approve);
        CustomActionBar.initActionBar(this, "Attendance Approval(" + UtilDeclarations.getApplicationVersion(this) + ")");
        this.context = this;
        init();
        loadData(true);
        this.rvAttendance.setLayoutManager(new LinearLayoutManager(getApplicationContext()));
        this.rvAttendance.setItemAnimator(new DefaultItemAnimator());
        setAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadData(boolean z) {
        this.approveMap = GetDataFromDB.getInstance().getApprovalsList(Queries.getInstance().getApprovedListQry(), true);
        prepareGroupData();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void prepareGroupData() {
        this.approveListItems.clear();
        for (String str : this.approveMap.keySet()) {
            HeaderItem headerItem = new HeaderItem();
            headerItem.setHeader(str);
            this.approveListItems.add(headerItem);
            for (AttendanceItem attendanceItem : this.approveMap.get(str)) {
                ContentItem contentItem = new ContentItem();
                contentItem.setAttendanceItem(attendanceItem);
                this.approveListItems.add(contentItem);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdapter() {
        AttendanceApproveAdapter attendanceApproveAdapter = this.attendanceApproveAdapter;
        if (attendanceApproveAdapter == null) {
            AttendanceApproveAdapter attendanceApproveAdapter2 = new AttendanceApproveAdapter(getApplicationContext(), this.approveListItems, true, this);
            this.attendanceApproveAdapter = attendanceApproveAdapter2;
            this.rvAttendance.setAdapter(attendanceApproveAdapter2);
            return;
        }
        attendanceApproveAdapter.notifyDataSetChanged();
    }

    private void init() {
        this.rvAttendance = (RecyclerView) findViewById(R.id.rvAttendanceApproveList);
        Button button = (Button) findViewById(R.id.btn_approve);
        this.btnApprove = button;
        button.setOnClickListener(this);
        Button button2 = (Button) findViewById(R.id.btn_reject);
        this.btnReject = button2;
        button2.setOnClickListener(this);
    }

    private void showAttendanceDialog(final AttendanceItem attendanceItem) {
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_attendance_approve);
        this.etFoDistance = (EditText) dialog.findViewById(R.id.etFoDistance);
        this.etDistance = (EditText) dialog.findViewById(R.id.etTravelledDistance);
        this.etFONoghtHalt = (EditText) dialog.findViewById(R.id.etFoNightHalt);
        this.etNightHalt = (EditText) dialog.findViewById(R.id.etNightHalt);
        this.tvNightHaltID = (TextView) dialog.findViewById(R.id.tvNightHaltID);
        this.tvFoNightHaltId = (TextView) dialog.findViewById(R.id.tvFoNightHaltID);
        this.btnApproveAndSave = (Button) dialog.findViewById(R.id.btn_save_and_approve);
        this.btnCancel = (Button) dialog.findViewById(R.id.btn_cancel_alert);
        this.etFoDistance.setText(attendanceItem.getDistance());
        this.etFoDistance.setEnabled(false);
        if (attendanceItem.getNighthalt() != null && attendanceItem.getNighthalt().equalsIgnoreCase("1")) {
            this.etFONoghtHalt.setText("Yes");
        } else {
            this.etFONoghtHalt.setText("No");
        }
        this.etFONoghtHalt.setEnabled(false);
        this.etNightHalt.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.attendance.AttendanceApproveActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(AttendanceApproveActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()), Queries.getInstance().gettingYesorNoDropdownValues(4), view, AttendanceApproveActivity.this.tvNightHaltID);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                } catch (Exception e) {
                    PLog.e(AttendanceApproveActivity.Tag, e);
                }
            }
        });
        this.btnApproveAndSave.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.attendance.AttendanceApproveActivity.2
            private FarmerCropMapping farmerCropMapping;

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (!TextUtils.isEmpty(AttendanceApproveActivity.this.etDistance.getText().toString())) {
                    if (TextUtils.isEmpty(AttendanceApproveActivity.this.etFONoghtHalt.getText().toString())) {
                        Toast.makeText(AttendanceApproveActivity.this.getApplicationContext(), "Please enter Fo Night Halt", 1).show();
                        return;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("SVApprovedTravel", AttendanceApproveActivity.this.etDistance.getText().toString());
                    if (AttendanceApproveActivity.this.etNightHalt.getText().toString().equalsIgnoreCase("yes")) {
                        contentValues.put("SVApprovedNightHalt", (Integer) 1);
                    } else {
                        contentValues.put("SVApprovedNightHalt", (Integer) 2);
                    }
                    contentValues.put("IsApproved", (Integer) 1);
                    contentValues.put("SVUserId", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                    contentValues.put("SVApprovedDate", UtilDeclarations.getDateInDDMMYYYY());
                    contentValues.put("PdaId", GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().geetingPdaid()));
                    contentValues.put("serverUpdatedStatus", "false");
                    contentValues.put("UpdatedBy", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                    contentValues.put("UpdatedDate", UtilDeclarations.getDateTime());
                    Log.d(AttendanceApproveActivity.Tag, DataBaseHandler.getInstance().openDatabase().update("PMCAttendanceDetails", contentValues, "TransId = ?", new String[]{attendanceItem.getTransID() + ""}) + "");
                    AttendanceApproveActivity.this.loadData(true);
                    AttendanceApproveActivity.this.setAdapter();
                    AttendanceApproveActivity.this.sendDataToServer();
                    dialog.dismiss();
                    return;
                }
                Toast.makeText(AttendanceApproveActivity.this.getApplicationContext(), "Please enter Fo Travell Distance.", 1).show();
            }
        });
        this.btnCancel.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.attendance.AttendanceApproveActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendDataToServer() {
        if (!UtilDeclarations.isOnline(this.context) || UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
            return;
        }
        Toast.makeText(getBaseContext(), "Service initiated", 1);
        new SendDataServiceUtil(this).startService();
    }

    @Override // com.conceptglobal.pmc.attendance.OnListItemClickListener
    public void onListitemClicked(int i) {
        try {
            showAttendanceDialog(((ContentItem) this.approveListItems.get(i)).getAttendanceItem());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateStaus(int r10) {
        /*
            r9 = this;
            java.lang.String r0 = ""
            r1 = 0
            r2 = 0
        L4:
            r3 = 1
            java.util.ArrayList<com.conceptglobal.pmc.attendance.ApproveListItem> r4 = r9.approveListItems     // Catch: java.lang.Exception -> Ldf
            int r4 = r4.size()     // Catch: java.lang.Exception -> Ldf
            if (r1 >= r4) goto Le3
            java.util.ArrayList<com.conceptglobal.pmc.attendance.ApproveListItem> r4 = r9.approveListItems     // Catch: java.lang.Exception -> Ldf
            java.lang.Object r4 = r4.get(r1)     // Catch: java.lang.Exception -> Ldf
            com.conceptglobal.pmc.attendance.ApproveListItem r4 = (com.conceptglobal.pmc.attendance.ApproveListItem) r4     // Catch: java.lang.Exception -> Ldf
            int r4 = r4.getType()     // Catch: java.lang.Exception -> Ldf
            if (r4 != r3) goto Ldb
            java.util.ArrayList<com.conceptglobal.pmc.attendance.ApproveListItem> r4 = r9.approveListItems     // Catch: java.lang.Exception -> Ldf
            java.lang.Object r4 = r4.get(r1)     // Catch: java.lang.Exception -> Ldf
            com.conceptglobal.pmc.attendance.ContentItem r4 = (com.conceptglobal.pmc.attendance.ContentItem) r4     // Catch: java.lang.Exception -> Ldf
            com.conceptglobal.pmc.attendance.AttendanceItem r4 = r4.getAttendanceItem()     // Catch: java.lang.Exception -> Ldf
            boolean r5 = r4.isChecked()     // Catch: java.lang.Exception -> Ldf
            if (r5 == 0) goto Ldb
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: java.lang.Exception -> Ld8
            r2.<init>()     // Catch: java.lang.Exception -> Ld8
            java.lang.String r5 = "IsApproved"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Exception -> Ld8
            r2.put(r5, r6)     // Catch: java.lang.Exception -> Ld8
            java.lang.String r5 = "SVUserId"
            com.conceptglobal.pmc.common.ConstantsPMC r6 = com.conceptglobal.pmc.common.ConstantsPMC.getInstance()     // Catch: java.lang.Exception -> Ld8
            java.lang.String r6 = r6.getUserId()     // Catch: java.lang.Exception -> Ld8
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Exception -> Ld8
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Exception -> Ld8
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Exception -> Ld8
            r2.put(r5, r6)     // Catch: java.lang.Exception -> Ld8
            java.lang.String r5 = "serverUpdatedStatus"
            java.lang.String r6 = "false"
            r2.put(r5, r6)     // Catch: java.lang.Exception -> Ld8
            java.lang.String r5 = "SVApprovedDate"
            java.lang.String r6 = com.conceptglobal.pmc.utils.UtilDeclarations.getDateInDDMMYYYY()     // Catch: java.lang.Exception -> Ld8
            r2.put(r5, r6)     // Catch: java.lang.Exception -> Ld8
            java.lang.String r5 = "PdaId"
            com.conceptglobal.pmc.database.GetDataFromDB r6 = com.conceptglobal.pmc.database.GetDataFromDB.getInstance()     // Catch: java.lang.Exception -> Ld8
            com.conceptglobal.pmc.common.Queries r7 = com.conceptglobal.pmc.common.Queries.getInstance()     // Catch: java.lang.Exception -> Ld8
            java.lang.String r7 = r7.geetingPdaid()     // Catch: java.lang.Exception -> Ld8
            java.lang.String r6 = r6.getSingleValue(r7)     // Catch: java.lang.Exception -> Ld8
            r2.put(r5, r6)     // Catch: java.lang.Exception -> Ld8
            java.lang.String r5 = "UpdatedBy"
            com.conceptglobal.pmc.common.ConstantsPMC r6 = com.conceptglobal.pmc.common.ConstantsPMC.getInstance()     // Catch: java.lang.Exception -> Ld8
            java.lang.String r6 = r6.getUserId()     // Catch: java.lang.Exception -> Ld8
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Exception -> Ld8
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Exception -> Ld8
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Exception -> Ld8
            r2.put(r5, r6)     // Catch: java.lang.Exception -> Ld8
            java.lang.String r5 = "UpdatedDate"
            java.lang.String r6 = com.conceptglobal.pmc.utils.UtilDeclarations.getDateTime()     // Catch: java.lang.Exception -> Ld8
            r2.put(r5, r6)     // Catch: java.lang.Exception -> Ld8
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.DataBaseHandler.getInstance()     // Catch: java.lang.Exception -> Ld8
            android.database.sqlite.SQLiteDatabase r5 = r5.openDatabase()     // Catch: java.lang.Exception -> Ld8
            java.lang.String r6 = "PMCAttendanceDetails"
            java.lang.String r7 = "TransId = ?"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Ld8
            r8.<init>()     // Catch: java.lang.Exception -> Ld8
            java.lang.String r4 = r4.getTransID()     // Catch: java.lang.Exception -> Ld8
            r8.append(r4)     // Catch: java.lang.Exception -> Ld8
            r8.append(r0)     // Catch: java.lang.Exception -> Ld8
            java.lang.String r4 = r8.toString()     // Catch: java.lang.Exception -> Ld8
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Exception -> Ld8
            int r2 = r5.update(r6, r2, r7, r4)     // Catch: java.lang.Exception -> Ld8
            java.lang.String r4 = "AttendanceApproveActivity"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Ld8
            r5.<init>()     // Catch: java.lang.Exception -> Ld8
            r5.append(r2)     // Catch: java.lang.Exception -> Ld8
            r5.append(r0)     // Catch: java.lang.Exception -> Ld8
            java.lang.String r2 = r5.toString()     // Catch: java.lang.Exception -> Ld8
            com.conceptglobal.pmc.promotions.downloadmanager.Log.d(r4, r2)     // Catch: java.lang.Exception -> Ld8
            r2 = 1
            goto Ldb
        Ld8:
            r10 = move-exception
            r2 = 1
            goto Le0
        Ldb:
            int r1 = r1 + 1
            goto L4
        Ldf:
            r10 = move-exception
        Le0:
            r10.printStackTrace()
        Le3:
            if (r2 == 0) goto Lef
            r9.sendDataToServer()
            r9.loadData(r3)
            r9.setAdapter()
            goto Lf8
        Lef:
            java.lang.String r10 = "Please select atleast one record"
            android.widget.Toast r10 = android.widget.Toast.makeText(r9, r10, r3)
            r10.show()
        Lf8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.attendance.AttendanceApproveActivity.updateStaus(int):void");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btn_approve) {
            ArrayList<ApproveListItem> arrayList = this.approveListItems;
            if (arrayList != null && arrayList.size() > 0) {
                updateStaus(1);
                return;
            } else {
                Toast.makeText(this, "No data to Approve", 1).show();
                return;
            }
        }
        if (id != R.id.btn_reject) {
            return;
        }
        ArrayList<ApproveListItem> arrayList2 = this.approveListItems;
        if (arrayList2 != null && arrayList2.size() > 0) {
            updateStaus(2);
        } else {
            Toast.makeText(this, "No data to Reject", 1).show();
        }
    }
}
