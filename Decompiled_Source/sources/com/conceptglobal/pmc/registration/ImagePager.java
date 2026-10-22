package com.conceptglobal.pmc.registration;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.conceptglobal.pmc.adapter.ViewPagerAdapter;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ImagePager extends Activity implements View.OnClickListener {
    PagerAdapter adapter;
    int currentPosition;
    private ImageView imagDelete;
    ArrayList<String> imgList;
    ViewPager viewPager;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.viewpager_main);
        ImageView imageView = (ImageView) findViewById(R.id.iv_delete_Image_display);
        this.imagDelete = imageView;
        imageView.setOnClickListener(this);
        this.imgList = new ArrayList<>();
        this.imgList = getIntent().getStringArrayListExtra("imageList");
        this.currentPosition = getIntent().getIntExtra("position", 0);
        this.viewPager = (ViewPager) findViewById(R.id.pager);
        ViewPagerAdapter viewPagerAdapter = new ViewPagerAdapter(this, this.imgList);
        this.adapter = viewPagerAdapter;
        this.viewPager.setAdapter(viewPagerAdapter);
        this.viewPager.setCurrentItem(this.currentPosition);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.iv_delete_Image_display) {
            String str = this.imgList.get(this.viewPager.getCurrentItem());
            this.imgList.remove(this.viewPager.getCurrentItem());
            this.adapter.notifyDataSetChanged();
            sendBroadcast(str);
            if (this.imgList.size() == 0) {
                finish();
            }
        }
    }

    public void sendBroadcast(String str) {
        Intent intent = new Intent("send");
        intent.putExtra("deletedImage", str);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }
}
