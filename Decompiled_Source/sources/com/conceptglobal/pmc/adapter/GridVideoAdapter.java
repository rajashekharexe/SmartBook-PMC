package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class GridVideoAdapter extends BaseAdapter {
    private Context mContext;
    private LayoutInflater mInfalter;
    List<ImageDetails> videolist;
    ArrayList<String> videolist_ids;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public GridVideoAdapter(Context context, List<ImageDetails> list, ArrayList<String> arrayList) {
        this.mContext = context;
        this.mInfalter = LayoutInflater.from(context);
        this.videolist = list;
        this.videolist_ids = arrayList;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<ImageDetails> list = this.videolist;
        if (list != null) {
            return list.size();
        }
        return this.videolist_ids.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        File file;
        View inflate = this.mInfalter.inflate(R.layout.video_inflate, viewGroup, false);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.image_view);
        if (this.videolist != null) {
            file = new File(this.videolist.get(i).getPicturePath());
        } else {
            file = this.videolist_ids != null ? new File(this.videolist_ids.get(i)) : null;
        }
        if (file != null) {
            try {
                Glide.with(this.mContext).load(file.getPath()).thumbnail(0.1f).into(imageView);
                inflate.setTag("video");
            } catch (Exception unused) {
                imageView.setImageDrawable(this.mContext.getResources().getDrawable(android.R.drawable.btn_star));
            }
        }
        return inflate;
    }
}
