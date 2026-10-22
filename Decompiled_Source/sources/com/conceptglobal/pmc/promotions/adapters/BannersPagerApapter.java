package com.conceptglobal.pmc.promotions.adapters;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.signature.ObjectKey;
import com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

/* loaded from: classes.dex */
public class BannersPagerApapter extends PagerAdapter {
    private CategoryDAO categoryDAO;
    private Context context;
    private Integer[] images;
    private LayoutInflater layoutInflater;
    ArrayList<ContentMaster> list;

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public BannersPagerApapter(Context context) {
        Integer valueOf = Integer.valueOf(R.drawable.bg);
        this.images = new Integer[]{valueOf, valueOf, valueOf};
        this.context = context;
    }

    public BannersPagerApapter(Context context, ArrayList<ContentMaster> arrayList) {
        Integer valueOf = Integer.valueOf(R.drawable.bg);
        this.images = new Integer[]{valueOf, valueOf, valueOf};
        this.context = context;
        this.list = arrayList;
        this.categoryDAO = new CategoryDAO(context);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        if (this.list.size() > 10) {
            return 10;
        }
        return this.list.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, final int i) {
        LayoutInflater layoutInflater = (LayoutInflater) this.context.getSystemService("layout_inflater");
        this.layoutInflater = layoutInflater;
        View inflate = layoutInflater.inflate(R.layout.banner_item, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.ivBanner);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.BannersPagerApapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(BannersPagerApapter.this.context, (Class<?>) ContentDetailsActivity.class);
                intent.putExtra("ContentList", BannersPagerApapter.this.list);
                intent.putExtra("Position", i);
                intent.addFlags(335544320);
                BannersPagerApapter.this.context.startActivity(intent);
            }
        });
        ContentMaster contentMaster = this.list.get(i);
        if (!TextUtils.isEmpty(contentMaster.getLocalThumbnail()) && new File(contentMaster.getLocalThumbnail()).exists()) {
            Glide.with(this.context).load(Uri.fromFile(new File(contentMaster.getLocalThumbnail()))).apply(new RequestOptions().placeholder(R.drawable.progress_animation).error(R.drawable.failure_large).diskCacheStrategy(DiskCacheStrategy.DATA).signature(new ObjectKey(UUID.randomUUID().toString()))).into(imageView);
        } else {
            Glide.with(this.context).load(Uri.parse(contentMaster.getContentServerLocation())).apply(new RequestOptions().placeholder(R.drawable.progress_animation).error(R.drawable.failure_large).diskCacheStrategy(DiskCacheStrategy.DATA).signature(new ObjectKey(UUID.randomUUID().toString()))).into(imageView);
        }
        ((ViewPager) viewGroup).addView(inflate, 0);
        return inflate;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        ((ViewPager) viewGroup).removeView((View) obj);
    }
}
