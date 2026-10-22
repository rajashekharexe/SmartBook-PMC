package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class NavigationDrawerAdapter extends BaseAdapter {
    private Context context;
    private ViewHolder holder;
    private Integer[] listImages_selected;
    private String[] listNames;
    private LayoutInflater mInflater;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public NavigationDrawerAdapter(Context context) {
        this.context = context;
        this.mInflater = LayoutInflater.from(context);
        this.listNames = new String[]{null, context.getResources().getString(R.string.pmc_master_sync), context.getResources().getString(R.string.pmc_app_patch), context.getResources().getString(R.string.pmc_patch_update), context.getResources().getString(R.string.pmc_about_pmc), context.getResources().getString(R.string.pmc_upload), context.getResources().getString(R.string.pmc_clear_db), context.getResources().getString(R.string.pmc_camera)};
        Integer valueOf = Integer.valueOf(R.drawable.ic_action_view_as_grid);
        Integer valueOf2 = Integer.valueOf(R.drawable.ic_action_download);
        this.listImages_selected = new Integer[]{null, valueOf, valueOf2, Integer.valueOf(R.drawable.ic_action_repeat), Integer.valueOf(R.drawable.ic_action_about), valueOf2, valueOf2, Integer.valueOf(R.drawable.camera)};
    }

    private class ViewHolder {
        private TextView tvText;

        private ViewHolder() {
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            this.holder = new ViewHolder();
            view = this.mInflater.inflate(R.layout.template_image_text, viewGroup, false);
            init(view, i);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        this.holder.tvText.setText(this.listNames[i]);
        this.holder.tvText.setTextColor(this.context.getResources().getColor(R.color.black));
        if (this.listImages_selected[i] != null) {
            this.holder.tvText.setCompoundDrawablesWithIntrinsicBounds(this.listImages_selected[i].intValue(), 0, 0, 0);
        } else {
            this.holder.tvText.setVisibility(8);
        }
        return view;
    }

    private void init(View view, int i) {
        this.holder.tvText = (TextView) view.findViewById(R.id.tv_imgae_template);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.listNames.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }
}
