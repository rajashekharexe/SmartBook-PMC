package com.conceptglobal.pmc.attendance;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AttendanceApproveAdapter extends RecyclerView.Adapter {
    private ArrayList<ApproveListItem> approveListItems;
    private boolean isHeaderName;
    private OnListItemClickListener onListItemClickListener;

    public AttendanceApproveAdapter(Context context, ArrayList<ApproveListItem> arrayList, boolean z, OnListItemClickListener onListItemClickListener) {
        this.approveListItems = arrayList;
        this.isHeaderName = z;
        this.onListItemClickListener = onListItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new HeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.attendance_header_view, viewGroup, false));
        }
        return new ItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.attendance_item_view, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (getItemViewType(i) == 0) {
            ((HeaderViewHolder) viewHolder).tvTitle.setText(((HeaderItem) this.approveListItems.get(i)).getHeader());
            return;
        }
        AttendanceItem attendanceItem = ((ContentItem) this.approveListItems.get(i)).getAttendanceItem();
        ItemViewHolder itemViewHolder = (ItemViewHolder) viewHolder;
        if (this.isHeaderName) {
            itemViewHolder.tvdate.setText(attendanceItem.getDate());
        } else {
            itemViewHolder.tvdate.setText(attendanceItem.getTitle());
        }
        itemViewHolder.tvdistance.setText(attendanceItem.getDistance());
        if (attendanceItem.getNighthalt().equalsIgnoreCase("1")) {
            itemViewHolder.tvNightHalt.setText("Yes");
        } else {
            itemViewHolder.tvNightHalt.setText("No");
        }
        if (attendanceItem.isChecked()) {
            itemViewHolder.cbArroveAttendance.setChecked(true);
        } else {
            itemViewHolder.cbArroveAttendance.setChecked(false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.approveListItems.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.approveListItems.get(i).getType();
    }

    public class HeaderViewHolder extends RecyclerView.ViewHolder {
        public TextView tvTitle;

        public HeaderViewHolder(View view) {
            super(view);
            this.tvTitle = (TextView) view.findViewById(R.id.tvAttendanceHeader);
        }
    }

    public class ItemViewHolder extends RecyclerView.ViewHolder {
        CheckBox cbArroveAttendance;
        ImageView ivEditAttendance;
        public TextView tvNightHalt;
        public TextView tvdate;
        public TextView tvdistance;

        public ItemViewHolder(View view) {
            super(view);
            this.tvdate = (TextView) view.findViewById(R.id.tvAttendanceDate);
            this.tvdistance = (TextView) view.findViewById(R.id.tvAttendanceDistance);
            this.tvNightHalt = (TextView) view.findViewById(R.id.tvAttendanceNightHalt);
            this.cbArroveAttendance = (CheckBox) view.findViewById(R.id.cbArroveAttendance);
            this.ivEditAttendance = (ImageView) view.findViewById(R.id.ivEditAttendance);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.attendance.AttendanceApproveAdapter.ItemViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                }
            });
            this.ivEditAttendance.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.attendance.AttendanceApproveAdapter.ItemViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AttendanceApproveAdapter.this.onListItemClickListener.onListitemClicked(ItemViewHolder.this.getAdapterPosition());
                }
            });
            this.cbArroveAttendance.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.attendance.AttendanceApproveAdapter.ItemViewHolder.3
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    try {
                        ((ContentItem) AttendanceApproveAdapter.this.approveListItems.get(ItemViewHolder.this.getAdapterPosition())).getAttendanceItem().setChecked(z);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    }
}
