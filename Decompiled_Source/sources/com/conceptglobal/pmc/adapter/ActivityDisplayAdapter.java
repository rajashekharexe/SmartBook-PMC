package com.conceptglobal.pmc.adapter;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.AttributesTableViewActivity;
import com.conceptglobal.pmc.model.ActivityModel;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.util.List;

/* loaded from: classes.dex */
public class ActivityDisplayAdapter extends BaseAdapter {
    private static final int PLANNED_DONE = 1;
    private static final int PLANNED_NOT_DONE = 0;
    private static final int RESULT_DONE = 1;
    private static final int RESULT_NOT_DONE = 2;
    private static final int RESULT_NOT_SELECTED = 3;
    private Context context;
    private String farmerID;
    private ViewHolder holder;
    private int isSelfAssign;
    private int ismba;
    private List<ActivityModel> listActivities;
    private ListView lvActivity;
    private LayoutInflater mInflater;
    private int segmentId;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public ActivityDisplayAdapter(Context context, List<ActivityModel> list, String str, int i, ListView listView) {
        this.holder = new ViewHolder();
        this.segmentId = 0;
        this.isSelfAssign = 0;
        this.context = context;
        this.farmerID = str;
        this.listActivities = list;
        this.lvActivity = listView;
        this.ismba = i;
        this.mInflater = LayoutInflater.from(context);
    }

    private class ViewHolder {
        private ImageView ivActitivityAssigned;
        private ImageView ivActivityDelete;
        private LinearLayout llActivity;
        private TextView tvActivityName;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.activity_list_inflate, viewGroup, false);
            this.holder = new ViewHolder();
            init(view);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        this.holder.tvActivityName.setText(this.listActivities.get(i).getActivityName());
        if (this.listActivities.get(i).getIsPlanned() == 1) {
            this.holder.ivActitivityAssigned.setVisibility(0);
            this.holder.ivActivityDelete.setVisibility(8);
        } else if (this.listActivities.get(i).getIsPlanned() == 0) {
            this.holder.ivActivityDelete.setVisibility(0);
            this.holder.ivActitivityAssigned.setVisibility(8);
        }
        if (this.listActivities.get(i).getIsDone() == 1) {
            this.holder.llActivity.setBackgroundResource(R.drawable.card_layout_done);
        }
        if (this.listActivities.get(i).getIsDone() == 2 || this.listActivities.get(i).getIsDone() == 3) {
            this.holder.llActivity.setBackgroundResource(R.drawable.card_layout_not_done);
        }
        this.holder.tvActivityName.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.ActivityDisplayAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Intent intent = new Intent(ActivityDisplayAdapter.this.context, (Class<?>) AttributesTableViewActivity.class);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), ActivityDisplayAdapter.this.farmerID);
                intent.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), ActivityDisplayAdapter.this.ismba);
                intent.putExtra("SEGMENTID", ActivityDisplayAdapter.this.segmentId);
                intent.putExtra("ISSELFASSIGN", 1);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), ((ActivityModel) ActivityDisplayAdapter.this.listActivities.get(i)).getActivityId());
                intent.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), ((ActivityModel) ActivityDisplayAdapter.this.listActivities.get(i)).getIsPlanned());
                ((Activity) ActivityDisplayAdapter.this.context).startActivityForResult(intent.addFlags(131072).addFlags(67108864), 3);
            }
        });
        this.holder.ivActivityDelete.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.ActivityDisplayAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (((ActivityModel) ActivityDisplayAdapter.this.listActivities.get(i)).getIsPlanned() != 0) {
                    Crouton.showText((Activity) ActivityDisplayAdapter.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_assignActCannotDelAlert()) != null ? GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_assignActCannotDelAlert()) : "", Style.ALERT);
                } else {
                    ActivityDisplayAdapter activityDisplayAdapter = ActivityDisplayAdapter.this;
                    activityDisplayAdapter.showActivityDeleteDilag(activityDisplayAdapter.farmerID, ((ActivityModel) ActivityDisplayAdapter.this.listActivities.get(i)).getActivityId(), i);
                }
            }
        });
        return view;
    }

    private void init(View view) {
        this.holder.tvActivityName = (TextView) view.findViewById(R.id.tv_actvity_name);
        this.holder.ivActitivityAssigned = (ImageView) view.findViewById(R.id.iv_actvity_tick);
        this.holder.llActivity = (LinearLayout) view.findViewById(R.id.ll_activity);
        this.holder.ivActivityDelete = (ImageView) view.findViewById(R.id.iv_delete_activity_display);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.listActivities.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.listActivities.get(i);
    }

    public void swapItems(List<ActivityModel> list) {
        this.listActivities = list;
        notifyDataSetChanged();
    }

    void showActivityDeleteDilag(String str, final int i, final int i2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_confirmDelActivityDialog())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.ActivityDisplayAdapter.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                dialogInterface.dismiss();
                try {
                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivity(ActivityDisplayAdapter.this.farmerID, i, 0));
                    ActivityDisplayAdapter.this.listActivities.remove(i2);
                    ActivityDisplayAdapter.this.notifyDataSetChanged();
                } catch (Exception e) {
                    PLog.e("ACTIVTY_DISPLAY_ADAPTER", e);
                    e.printStackTrace();
                }
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.ActivityDisplayAdapter.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    public ActivityDisplayAdapter(Context context, List<ActivityModel> list, String str, int i, ListView listView, int i2, int i3) {
        this.holder = new ViewHolder();
        this.context = context;
        this.farmerID = str;
        this.listActivities = list;
        this.lvActivity = listView;
        this.ismba = i;
        this.segmentId = i2;
        this.isSelfAssign = i3;
        this.mInflater = LayoutInflater.from(context);
    }
}
