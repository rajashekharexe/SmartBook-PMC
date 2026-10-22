package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.ReportViewActivity;
import com.conceptglobal.pmc.interfaces.OnTapListener;
import com.conceptglobal.pmc.model.ReportsActivityModel;
import com.conceptglobal.pmc.textdrawable.ColorGenerator;
import com.conceptglobal.pmc.textdrawable.TextDrawable;
import com.conceptglobal.pmc.utils.CircleImageView;
import com.conceptglobal.pmc.views.RippleView;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.messaging.Constants;
import java.util.List;

/* loaded from: classes.dex */
public class ReportsAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final int GETCUSTOMER = 3;
    private List<ReportsActivityModel> data;
    private int isFromOrders;
    private String isFromReports;
    private int isFromcomplaint;
    private Activity mActivity;
    private ColorGenerator mColorGenerator = ColorGenerator.MATERIAL;
    private TextDrawable.IBuilder mDrawableBuilder = TextDrawable.builder().round();
    private OnTapListener onTapListener;

    public ReportsAdapter(Activity activity, List<ReportsActivityModel> list, String str) {
        this.mActivity = activity;
        this.data = list;
        this.isFromReports = str;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.selfassign_row, (ViewGroup) null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        viewHolder.rippleView.setOnRippleCompleteListener(new RippleView.OnRippleCompleteListener() { // from class: com.conceptglobal.pmc.adapter.ReportsAdapter.1
            @Override // com.conceptglobal.pmc.views.RippleView.OnRippleCompleteListener
            public void onComplete(RippleView rippleView) {
                if (ReportsAdapter.this.isFromReports != null && ReportsAdapter.this.isFromReports.equals("Reports")) {
                    Intent intent = new Intent(ReportsAdapter.this.mActivity, (Class<?>) ReportViewActivity.class);
                    intent.putExtra(Constants.MessagePayloadKeys.FROM, ReportsAdapter.this.isFromReports);
                    intent.putExtra("activityID", ((ReportsActivityModel) ReportsAdapter.this.data.get(i)).getActivityID());
                    intent.putExtra("activityName", ((ReportsActivityModel) ReportsAdapter.this.data.get(i)).getActivityName());
                    ReportsAdapter.this.mActivity.startActivity(intent);
                }
                if (ReportsAdapter.this.isFromReports != null && ReportsAdapter.this.isFromReports.equals("Planning")) {
                    Intent intent2 = new Intent(ReportsAdapter.this.mActivity, (Class<?>) ReportViewActivity.class);
                    intent2.putExtra(Constants.MessagePayloadKeys.FROM, ReportsAdapter.this.isFromReports);
                    intent2.putExtra("activityName", ((ReportsActivityModel) ReportsAdapter.this.data.get(i)).getActivityName());
                    ReportsAdapter.this.mActivity.startActivity(intent2);
                }
                if (ReportsAdapter.this.isFromReports == null || !ReportsAdapter.this.isFromReports.equals("HRPolicy")) {
                    return;
                }
                Intent intent3 = new Intent(ReportsAdapter.this.mActivity, (Class<?>) ReportViewActivity.class);
                intent3.putExtra(Constants.MessagePayloadKeys.FROM, ReportsAdapter.this.isFromReports);
                intent3.putExtra("activityID", ((ReportsActivityModel) ReportsAdapter.this.data.get(i)).getActivityID());
                intent3.putExtra("activityName", ((ReportsActivityModel) ReportsAdapter.this.data.get(i)).getActivityName());
                intent3.setFlags(268435456);
                ReportsAdapter.this.mActivity.startActivity(intent3);
            }
        });
        viewHolder.profileimage.setVisibility(4);
        viewHolder.profTextView.setText(this.data.get(i).getActivityName());
        viewHolder.profTextView.setTextSize(18.0f);
        viewHolder.rippleView.setTag(this.data.get(i));
        viewHolder.itemView.setTag(this.data.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.data.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        protected TextView profTextView;
        protected CircleImageView profileimage;
        private RippleView rippleView;
        RippleView rippleview;

        public ViewHolder(View view) {
            super(view);
            this.rippleView = (RippleView) view.findViewById(R.id.rippleview);
            this.profileimage = (CircleImageView) view.findViewById(R.id.profile_image);
            this.profTextView = (TextView) view.findViewById(R.id.tv_textview_display);
        }
    }

    public void setOnTapListener(OnTapListener onTapListener) {
        this.onTapListener = onTapListener;
    }
}
