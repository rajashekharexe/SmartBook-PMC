package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public class GridImageAdapterExpenses extends BaseAdapter {
    private Context mContext;
    private List<ImageDetails> mImageList;
    private LayoutInflater mInflater;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public GridImageAdapterExpenses(Context context, List<ImageDetails> list) {
        this.mContext = context;
        this.mImageList = list;
        this.mInflater = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mImageList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.mImageList.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = this.mInflater.inflate(R.layout.image_inflate, viewGroup, false);
            viewHolder = new ViewHolder();
            viewHolder.imageView = (ImageView) view.findViewById(R.id.image_view);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        setImageFromUri(this.mImageList.get(i).getPicturePath(), viewHolder.imageView);
        return view;
    }

    private void setImageFromUri(String str, ImageView imageView) {
        try {
            Uri parse = Uri.parse(str);
            if (FirebaseAnalytics.Param.CONTENT.equals(parse.getScheme())) {
                try {
                    this.mContext.grantUriPermission("com.conceptglobal.pmc", parse, 1);
                    imageView.setImageBitmap(BitmapFactory.decodeStream(this.mContext.getContentResolver().openInputStream(parse)));
                } catch (SecurityException e) {
                    Log.e("SecurityException", "Error accessing content URI: " + parse.toString(), e);
                }
            } else {
                imageView.setImageBitmap(BitmapFactory.decodeStream(new FileInputStream(new File(str))));
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    static class ViewHolder {
        ImageView imageView;

        ViewHolder() {
        }
    }
}
