package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.fo.FOTrackerActivity;
import com.conceptglobal.pmc.fo.SelfAssignActivity;
import com.conceptglobal.pmc.fo.ToDoActivity;
import com.conceptglobal.pmc.model.StaggeredItemsModel;
import com.conceptglobal.pmc.registration.DraftList;
import com.conceptglobal.pmc.textdrawable.ColorGenerator;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.List;

/* loaded from: classes.dex */
public class AsymmetricGridViewAdapter extends BaseAdapter {
    List<StaggeredItemsModel> data;
    private int deviceHeight;
    Context mContext;
    private final ColorGenerator mGenerator = ColorGenerator.TRANSPARENT;
    private LayoutInflater mInflater;

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public AsymmetricGridViewAdapter(Context context, List<StaggeredItemsModel> list) {
        this.mContext = context;
        this.data = list;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        Display defaultDisplay = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.deviceHeight = point.y;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.tile_item, (ViewGroup) null);
            ViewHolder viewHolder = new ViewHolder();
            viewHolder.contentrl = (RelativeLayout) view.findViewById(R.id.contentrl);
            viewHolder.title = (TextView) view.findViewById(R.id.title);
            viewHolder.description = (TextView) view.findViewById(R.id.description);
            viewHolder.description1 = (TextView) view.findViewById(R.id.description1);
            viewHolder.description2 = (TextView) view.findViewById(R.id.description2);
            viewHolder.count = (TextView) view.findViewById(R.id.count);
            viewHolder.count1 = (TextView) view.findViewById(R.id.count1);
            viewHolder.count2 = (TextView) view.findViewById(R.id.count2);
            viewHolder.imgView = (ImageView) view.findViewById(R.id.btn);
            view.setTag(viewHolder);
        }
        ViewHolder viewHolder2 = (ViewHolder) view.getTag();
        if (i % 2 == 0) {
            if (this.deviceHeight > 480) {
                viewHolder2.contentrl.setMinimumHeight(300);
            } else {
                viewHolder2.contentrl.setMinimumHeight(180);
            }
        } else if (this.deviceHeight > 480) {
            viewHolder2.contentrl.setMinimumHeight(180);
        } else {
            viewHolder2.contentrl.setMinimumHeight(75);
        }
        if (i == this.data.size() - 1) {
            viewHolder2.contentrl.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
            viewHolder2.contentrl.setFitsSystemWindows(true);
        }
        viewHolder2.contentrl.setBackgroundColor(this.mGenerator.getColor(Integer.valueOf(i)));
        viewHolder2.contentrl.setTag(this.data.get(i).getModuleid());
        viewHolder2.title.setText(this.data.get(i).getTitle());
        viewHolder2.description.setText(this.data.get(i).getDescription());
        viewHolder2.description1.setText(this.data.get(i).getDescription1());
        viewHolder2.description2.setText(this.data.get(i).getDescription2());
        viewHolder2.count.setText(this.data.get(i).getCount());
        viewHolder2.count1.setText(this.data.get(i).getCount1());
        viewHolder2.count2.setText(this.data.get(i).getCount2());
        viewHolder2.imgView.setImageDrawable(this.mContext.getResources().getDrawable(this.data.get(i).getDrawable()));
        viewHolder2.contentrl.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.adapter.AsymmetricGridViewAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                String str = (String) ((RelativeLayout) view2).getTag();
                if (str.equals("1")) {
                    Intent intent = new Intent(AsymmetricGridViewAdapter.this.mContext, (Class<?>) DraftList.class);
                    intent.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
                    AsymmetricGridViewAdapter.this.mContext.startActivity(intent.addFlags(67108864));
                    return;
                }
                if (str.equals("2")) {
                    Intent intent2 = new Intent(AsymmetricGridViewAdapter.this.mContext, (Class<?>) DraftList.class);
                    intent2.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                    AsymmetricGridViewAdapter.this.mContext.startActivity(intent2.addFlags(67108864));
                    return;
                }
                if (str.equals("3")) {
                    Intent intent3 = new Intent(AsymmetricGridViewAdapter.this.mContext, (Class<?>) DraftList.class);
                    intent3.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
                    AsymmetricGridViewAdapter.this.mContext.startActivity(intent3.addFlags(67108864));
                    return;
                }
                if (str.equals("4")) {
                    Intent intent4 = new Intent(AsymmetricGridViewAdapter.this.mContext, (Class<?>) DraftList.class);
                    intent4.putExtra("farmerType", "Village");
                    AsymmetricGridViewAdapter.this.mContext.startActivity(intent4.addFlags(67108864));
                    return;
                }
                if (str.equals("11")) {
                    AsymmetricGridViewAdapter.this.mContext.startActivity(new Intent(AsymmetricGridViewAdapter.this.mContext, (Class<?>) SelfAssignActivity.class).addFlags(67108864));
                    return;
                }
                if (str.equals("12")) {
                    Log.d("todo", "start click " + System.currentTimeMillis());
                    AsymmetricGridViewAdapter.this.mContext.startActivity(new Intent(AsymmetricGridViewAdapter.this.mContext, (Class<?>) ToDoActivity.class).addFlags(67108864));
                    return;
                }
                if (str.equals("8")) {
                    Intent intent5 = new Intent(AsymmetricGridViewAdapter.this.mContext, (Class<?>) DraftList.class);
                    intent5.putExtra("farmerType", "Planter");
                    AsymmetricGridViewAdapter.this.mContext.startActivity(intent5.addFlags(67108864));
                } else if (str.equals("13")) {
                    Intent intent6 = new Intent(AsymmetricGridViewAdapter.this.mContext, (Class<?>) SelfAssignActivity.class);
                    intent6.putExtra("isFromOrders", 1);
                    AsymmetricGridViewAdapter.this.mContext.startActivity(intent6.addFlags(67108864));
                } else if (str.equals("14")) {
                    Intent intent7 = new Intent(AsymmetricGridViewAdapter.this.mContext, (Class<?>) SelfAssignActivity.class);
                    intent7.putExtra("isFromComplaints", 1);
                    AsymmetricGridViewAdapter.this.mContext.startActivity(intent7.addFlags(67108864));
                } else if (str.equals("9")) {
                    AsymmetricGridViewAdapter.this.mContext.startActivity(new Intent(AsymmetricGridViewAdapter.this.mContext, (Class<?>) FOTrackerActivity.class).setFlags(67108864));
                }
            }
        });
        return view;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.data.size();
    }

    static class ViewHolder {
        RelativeLayout contentrl;
        TextView count;
        TextView count1;
        TextView count2;
        TextView description;
        TextView description1;
        TextView description2;
        ImageView imgView;
        TextView title;

        ViewHolder() {
        }
    }
}
