package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.utils.Search;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FarmerSelectionForTodoAdapter extends BaseAdapter implements View.OnClickListener {
    private Context context;
    private List<AssignmentActivityDetailsModel> customerList;
    private boolean isCalendarView;
    private LayoutInflater mInflater;
    private String searchString = "";
    private ViewHolder holder = new ViewHolder();

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public FarmerSelectionForTodoAdapter(Context context, ArrayList<AssignmentActivityDetailsModel> arrayList, boolean z) {
        this.context = context;
        this.customerList = arrayList;
        this.isCalendarView = z;
        this.mInflater = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.customerList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.customerList.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.view_customeractivitylist_item, viewGroup, false);
            this.holder = new ViewHolder();
            init(view, i);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        this.holder.tvFarmerName.setText(Search.getString(this.searchString, "Farmer Name " + i));
        this.holder.tvFarmerNumber.setText(Search.getString(this.searchString, "901234322" + i));
        this.holder.tvActvityAssigned.setText(Search.getString(this.searchString, "Demo Activity" + i));
        this.holder.tvParentSegmentValue.setText(Search.getString(this.searchString, "Village" + i));
        this.holder.tvFromDate.setText(Search.getString(this.searchString, "From: 13/12/2015"));
        this.holder.tvToDate.setText(Search.getString(this.searchString, "From: 17/01/2016"));
        this.holder.tvDaysRemaining.setText(Search.getString(this.searchString, "6 Days Remaining"));
        if (!this.isCalendarView) {
            this.holder.tvDaysRemaining.setVisibility(8);
        } else {
            this.holder.tvDaysRemaining.setVisibility(0);
        }
        if (i % 2 == 0) {
            this.holder.ivSave.setVisibility(8);
        }
        this.holder.llView.setOnClickListener(this);
        return view;
    }

    private void init(View view, int i) {
        this.holder.ivSave = (ImageView) view.findViewById(R.id.iv_status_farmer_namess);
        this.holder.llView = (RelativeLayout) view.findViewById(R.id.CustomerTypeMainLayout);
        this.holder.tvFarmerName = (TextView) view.findViewById(R.id.textiv_status_farmer_Name);
        this.holder.tvFarmerNumber = (TextView) view.findViewById(R.id.textCustomerTypePhoneNo);
        this.holder.tvActvityAssigned = (TextView) view.findViewById(R.id.textCustomerActivityName);
        this.holder.ivSegmentType = (ImageView) view.findViewById(R.id.imageViewSegmentType);
        this.holder.tvParentSegmentValue = (TextView) view.findViewById(R.id.textCustomerTypeParentName);
        this.holder.tvDaysRemaining = (TextView) view.findViewById(R.id.textViewDaysLeft);
        this.holder.tvFromDate = (TextView) view.findViewById(R.id.textFromDate);
        this.holder.tvToDate = (TextView) view.findViewById(R.id.textToDate);
    }

    private class ViewHolder {
        private ImageView ivSave;
        private ImageView ivSegmentType;
        private RelativeLayout llView;
        private TextView tvActvityAssigned;
        private TextView tvDaysRemaining;
        private TextView tvFarmerName;
        private TextView tvFarmerNumber;
        private TextView tvFromDate;
        private TextView tvParentSegmentValue;
        private TextView tvToDate;

        private ViewHolder() {
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ((Integer) view.getTag()).intValue();
        view.getId();
    }

    public void setIsCalenderView(boolean z, ArrayList<AssignmentActivityDetailsModel> arrayList) {
        this.isCalendarView = z;
        this.customerList = arrayList;
        notifyDataSetChanged();
    }

    public void swapItems(ArrayList<AssignmentActivityDetailsModel> arrayList) {
        this.customerList = arrayList;
    }
}
