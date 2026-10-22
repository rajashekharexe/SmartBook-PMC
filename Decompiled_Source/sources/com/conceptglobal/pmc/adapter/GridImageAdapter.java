package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
public class GridImageAdapter extends BaseAdapter {
    List<ImageDetails> imagelist;
    List<String> imagelist_ids;
    private Context mContext;
    private LayoutInflater mInflater;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public GridImageAdapter(Context context, List<ImageDetails> list, List<String> list2) {
        this.mContext = context;
        this.imagelist = list;
        this.imagelist_ids = list2;
        this.mInflater = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<ImageDetails> list = this.imagelist;
        if (list != null) {
            return list.size();
        }
        return this.imagelist_ids.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        File file;
        View inflate = this.mInflater.inflate(R.layout.image_inflate, viewGroup, false);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.image_view);
        if (this.imagelist != null) {
            file = new File(this.imagelist.get(i).getPicturePath());
        } else {
            file = new File(this.imagelist_ids.get(i));
        }
        this.imagelist.get(i).getEventTypeId();
        this.imagelist.get(i).getPicturePath();
        UtilDeclarations.loadDiskThumbnail(this.mContext, imageView, file);
        inflate.setTag("image");
        return inflate;
    }
}
