package com.conceptglobal.pmc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.conceptglobal.pmc.utils.BitmapTransform;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ViewPagerAdapter extends PagerAdapter {
    private static final int MAX_HEIGHT = 768;
    private static final int MAX_WIDTH = 1024;
    Context context;
    ArrayList<String> imgList;
    LayoutInflater inflater;

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    public ViewPagerAdapter(Context context, ArrayList<String> arrayList) {
        this.context = context;
        this.imgList = arrayList;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.imgList.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == ((RelativeLayout) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        LayoutInflater layoutInflater = (LayoutInflater) this.context.getSystemService("layout_inflater");
        this.inflater = layoutInflater;
        View inflate = layoutInflater.inflate(R.layout.viewpager_item, viewGroup, false);
        int ceil = (int) Math.ceil(Math.sqrt(786432.0d));
        Picasso.with(this.context).load("file://" + this.imgList.get(i)).transform(new BitmapTransform(1024, MAX_HEIGHT)).resize(ceil, ceil).placeholder(R.drawable.img_add_patch).error(R.drawable.img_add_patch).into((ImageView) inflate.findViewById(R.id.flag));
        ((ViewPager) viewGroup).addView(inflate);
        return inflate;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        ((ViewPager) viewGroup).removeView((RelativeLayout) obj);
    }
}
