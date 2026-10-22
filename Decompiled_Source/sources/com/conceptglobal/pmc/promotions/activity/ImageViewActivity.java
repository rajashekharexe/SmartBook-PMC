package com.conceptglobal.pmc.promotions.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.signature.ObjectKey;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.UUID;

/* loaded from: classes.dex */
public class ImageViewActivity extends AppCompatActivity {
    Button btnClose;
    String filepath = "";
    ImageView ivPreview;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.preview_layout);
        this.filepath = getIntent().getExtras().getString("FilePath");
        this.btnClose = (Button) findViewById(R.id.btnIvClose);
        this.ivPreview = (ImageView) findViewById(R.id.iv_preview_image);
        this.btnClose.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ImageViewActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageViewActivity.this.finish();
            }
        });
        Glide.with((FragmentActivity) this).load(this.filepath).apply(new RequestOptions().placeholder(R.drawable.loader).error(R.drawable.failure_large).diskCacheStrategy(DiskCacheStrategy.DATA).signature(new ObjectKey(UUID.randomUUID().toString()))).into(this.ivPreview);
    }
}
