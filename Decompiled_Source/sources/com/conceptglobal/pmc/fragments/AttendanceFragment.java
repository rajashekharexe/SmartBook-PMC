package com.conceptglobal.pmc.fragments;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.conceptglobal.pmc.MainHomePageActivity;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.model.AttendanceModel;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* loaded from: classes.dex */
public class AttendanceFragment extends Fragment implements View.OnClickListener {
    private static final int DATEDIALOGID = 0;
    private Button btnSave;
    private Context con;
    private EditText etFromDate;
    private EditText etLeaveType;
    private EditText etNoOfdays;
    private EditText etRemarks;
    private EditText etSelected;
    private EditText etToDate;
    private int mDay;
    private int mMonth;
    private int mYear;
    View rootView;
    private TextView tvLeave;
    private TextView tvLeaveType;
    private TextView tvNoOfDays;
    private TextView tvReason;
    private TextView tvToDate;
    private TextView tvfromDate;
    private String mFiledStr = "";
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fragments.AttendanceFragment.1
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AttendanceFragment.this.mYear = i;
            AttendanceFragment.this.mMonth = i2;
            AttendanceFragment.this.mDay = i3;
            try {
                new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3);
                new Date();
                AttendanceFragment.this.updateDisplay();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.con = layoutInflater.getContext();
        this.rootView = layoutInflater.inflate(R.layout.activity_attendance, viewGroup, false);
        initialization();
        return this.rootView;
    }

    private void initialization() {
        this.tvLeaveType = (TextView) this.rootView.findViewById(R.id.tvLeaveType);
        this.tvfromDate = (TextView) this.rootView.findViewById(R.id.tvfromDate);
        this.tvToDate = (TextView) this.rootView.findViewById(R.id.tvToDate);
        this.tvNoOfDays = (TextView) this.rootView.findViewById(R.id.tvNoOfDays);
        EditText editText = (EditText) this.rootView.findViewById(R.id.etLeaveType);
        this.etLeaveType = editText;
        editText.setOnClickListener(this);
        EditText editText2 = (EditText) this.rootView.findViewById(R.id.etFromDate);
        this.etFromDate = editText2;
        editText2.setOnClickListener(this);
        EditText editText3 = (EditText) this.rootView.findViewById(R.id.etToDate);
        this.etToDate = editText3;
        editText3.setOnClickListener(this);
        this.etNoOfdays = (EditText) this.rootView.findViewById(R.id.etNoOfDays);
        Button button = (Button) this.rootView.findViewById(R.id.btn_save);
        this.btnSave = button;
        button.setOnClickListener(this);
        this.tvLeave = (TextView) this.rootView.findViewById(R.id.tvLeaveTypeID);
        this.tvReason = (TextView) this.rootView.findViewById(R.id.tvReasonTypeID);
        Calendar calendar = Calendar.getInstance();
        this.mDay = calendar.get(5);
        this.mMonth = calendar.get(2);
        this.mYear = calendar.get(1);
        this.tvLeaveType.setText(Html.fromHtml(this.tvLeaveType.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvfromDate.setText(Html.fromHtml(this.tvfromDate.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvToDate.setText(Html.fromHtml(this.tvToDate.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.etFromDate.setText(UtilDeclarations.getDateInDDMMYYYY());
        this.etToDate.setText(UtilDeclarations.getDateInDDMMYYYY());
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
            setNoOfDays(simpleDateFormat.parse(this.etFromDate.getText().toString()), simpleDateFormat.parse(this.etToDate.getText().toString()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.etNoOfdays.setBackgroundDrawable(getResources().getDrawable(R.drawable.card_layout_back_desable));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_save /* 2131296431 */:
                insertData();
                break;
            case R.id.etFromDate /* 2131296621 */:
                this.etSelected = this.etFromDate;
                new DatePickerDialog(this.con, this.mDateSetListener, this.mYear, this.mMonth, this.mDay).show();
                break;
            case R.id.etLeaveType /* 2131296626 */:
                UtilDeclarations.hideInputKeyboard(this.con);
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(this.con, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().getDropdownValuesBasedItemType("AttendanceType"), view, this.tvLeave);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception unused) {
                    return;
                }
            case R.id.etToDate /* 2131296640 */:
                if (this.etFromDate.getText().toString().equals(null) || this.etFromDate.getText().toString().length() == 0) {
                    Toast.makeText(getActivity(), "Please select from date", 1).getClass();
                    break;
                } else {
                    this.etSelected = this.etToDate;
                    new DatePickerDialog(this.con, this.mDateSetListener, this.mYear, this.mMonth, this.mDay).show();
                    break;
                }
                break;
        }
    }

    private void insertData() {
        if (this.etLeaveType.getText().toString().isEmpty()) {
            this.etLeaveType.setError("Select Leave type");
            return;
        }
        if (this.etFromDate.getText().toString().isEmpty()) {
            this.etFromDate.setError("Select from date");
            return;
        }
        if (this.etToDate.getText().toString().isEmpty()) {
            this.etToDate.setError("Select to date");
            return;
        }
        AttendanceModel attendanceModel = new AttendanceModel();
        attendanceModel.setFromDate(this.etFromDate.getText().toString());
        attendanceModel.setToDate(this.etToDate.getText().toString());
        attendanceModel.setLeaveType(this.etLeaveType.getText().toString());
        attendanceModel.setNoOfDays(this.etNoOfdays.getText().toString());
        attendanceModel.setRemarks(this.etRemarks.getText().toString());
        try {
            InsertDataIntoDB.insertAttendanceData(attendanceModel);
        } catch (Exception unused) {
        }
        Toast.makeText(getActivity(), "Data saved successfully", 1).show();
        ((MainHomePageActivity) getActivity()).displayView(0);
    }

    public Dialog onCreateDialog(int i) {
        if (i != 0) {
            return null;
        }
        return new DatePickerDialog(getActivity(), this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDisplay() {
        this.mFiledStr = new StringBuffer().append(this.mDay).append("-").append(this.mMonth + 1).append("-").append(this.mYear).toString();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
        try {
            simpleDateFormat.parse(this.mFiledStr);
            this.etSelected.setText(this.mFiledStr);
            if (this.etFromDate.getText().toString().length() <= 0 || this.etToDate.getText().toString().length() <= 0) {
                return;
            }
            setNoOfDays(simpleDateFormat.parse(this.etFromDate.getText().toString()), simpleDateFormat.parse(this.etToDate.getText().toString()));
        } catch (ParseException unused) {
        }
    }

    public void setNoOfDays(Date date, Date date2) {
        try {
            long time = ((date2.getTime() - date.getTime()) / 86400000) + 1;
            if (time <= 0) {
                this.etToDate.setText("");
                this.etNoOfdays.setText("0");
                Toast.makeText(getActivity(), "Please select proper to date", 1).show();
            } else {
                this.etNoOfdays.setText(time + "");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
