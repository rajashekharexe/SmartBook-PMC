package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.imaterialdesign.widget.TextView;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.NavDrawerItem;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.Collections;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class NavDrawerAdapter extends RecyclerView.Adapter<MyViewHolder> {
    private Context context;
    List<NavDrawerItem> data;
    private LayoutInflater inflater;
    private String lastMasterSyncTime;

    public NavDrawerAdapter(Context context, List<NavDrawerItem> list) {
        this.data = Collections.emptyList();
        this.lastMasterSyncTime = "";
        this.context = context;
        this.inflater = LayoutInflater.from(context);
        this.data = list;
        try {
            GetDataFromDB getDataFromDB = GetDataFromDB.getInstance();
            Queries.getInstance();
            this.lastMasterSyncTime = getDataFromDB.getSingleValue(Queries.getLastMasterSyncTime());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(int i) {
        this.data.remove(i);
        notifyItemRemoved(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyViewHolder(this.inflater.inflate(R.layout.nav_drawer_row, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, int i) {
        String str;
        NavDrawerItem navDrawerItem = this.data.get(i);
        myViewHolder.title.setText(navDrawerItem.getTitle() != null ? navDrawerItem.getTitle() : "");
        if (navDrawerItem.getTitle() != null && navDrawerItem.getTitle().equalsIgnoreCase("Master Sync") && (str = this.lastMasterSyncTime) != null && str.length() > 0 && !this.lastMasterSyncTime.equalsIgnoreCase("null")) {
            myViewHolder.title.setText(navDrawerItem.getTitle() + IOUtils.LINE_SEPARATOR_UNIX + this.lastMasterSyncTime);
        }
        myViewHolder.icon.setImageDrawable(this.context.getResources().getDrawable(navDrawerItem.getDrawable()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.data.size();
    }

    class MyViewHolder extends RecyclerView.ViewHolder {
        ImageView icon;
        TextView title;

        public MyViewHolder(View view) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.title);
            this.icon = (ImageView) view.findViewById(R.id.icon);
        }
    }
}
