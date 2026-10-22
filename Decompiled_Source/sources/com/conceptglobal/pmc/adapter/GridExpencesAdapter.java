package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class GridExpencesAdapter extends BaseAdapter {
    private Context mContext;
    private ArrayList<String> mImageList;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public GridExpencesAdapter(Context context, ArrayList<String> arrayList) {
        this.mContext = context;
        this.mImageList = arrayList;
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
        if (view == null) {
            view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.image_inflate, viewGroup, false);
        }
        setImageFromUri(this.mImageList.get(i), (ImageView) view.findViewById(R.id.image_view));
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
                    e.printStackTrace();
                }
            } else {
                imageView.setImageBitmap(BitmapFactory.decodeStream(new FileInputStream(new File(str))));
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }
}
