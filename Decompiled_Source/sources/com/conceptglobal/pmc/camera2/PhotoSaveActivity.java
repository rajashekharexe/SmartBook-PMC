package com.conceptglobal.pmc.camera2;

import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.utils.FileUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class PhotoSaveActivity extends AppCompatActivity {
    private static int REQUEST_STORAGE = 101;
    private static final String TAG = "PhotoSaveActivity";
    private byte[] bitmapdata;
    private TextView tvRetake;
    private TextView tvSave;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_photo_save);
        this.tvRetake = (TextView) findViewById(R.id.tvReTake);
        this.tvSave = (TextView) findViewById(R.id.tvSave);
        setListeners();
        senddata();
    }

    void senddata() {
        try {
            PLog.eCam("PhotoSaveActivity Captured image send for  compression", "After captureing image");
            String compressImage = compressImage(getIntent().getStringExtra("imagePath"));
            Log.i("test", "File Saved ::::::::::::: " + compressImage);
            PLog.eCam("PhotoSaveActivity campressed bitmapImagedata", "compressed image with filepath send to pictureReporting.");
            Intent intent = new Intent();
            intent.setData(Uri.parse(compressImage));
            setResult(-1, intent);
            finish();
        } catch (Exception e) {
            PLog.ecam("PhotoSaveActivity senddata to pictureReporting screen", e);
        }
    }

    private void setListeners() {
        this.tvRetake.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.PhotoSaveActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhotoSaveActivity.this.finish();
            }
        });
        this.tvSave.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.PhotoSaveActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String compressImage = PhotoSaveActivity.this.compressImage(PhotoSaveActivity.this.getIntent().getStringExtra("imagePath"));
                Log.i("test", "File Saved ::::::::::::: " + compressImage);
                Intent intent = new Intent();
                intent.setData(Uri.parse(compressImage));
                PhotoSaveActivity.this.setResult(-1, intent);
                PhotoSaveActivity.this.finish();
            }
        });
    }

    private void saveReceivedImage(Bitmap bitmap) {
        try {
            File file = new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + File.separator + "compressImg_" + System.currentTimeMillis() + ".jpg");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 50, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            Toast.makeText(this, "Save File ::: " + file.getAbsolutePath(), 1).show();
        } catch (Exception e) {
            e.printStackTrace();
            PLog.ecam("PhotoSaveActivity Image saving ", e);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == REQUEST_STORAGE) {
            if (iArr.length <= 0) {
                Log.i("test", "User interaction was cancelled.");
            } else {
                int i2 = iArr[0];
            }
        }
    }

    public String compressImage(String str) {
        String realPathFromURI = getRealPathFromURI(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Bitmap decodeFile = BitmapFactory.decodeFile(realPathFromURI, options);
        int i = options.outHeight;
        int i2 = options.outWidth;
        float f = i2 / i;
        float f2 = i;
        if (f2 > 816.0f || i2 > 612.0f) {
            if (f < 0.75f) {
                i2 = (int) ((816.0f / f2) * i2);
                i = (int) 816.0f;
            } else {
                i = f > 0.75f ? (int) ((612.0f / i2) * f2) : (int) 816.0f;
                i2 = (int) 612.0f;
            }
        }
        options.inSampleSize = calculateInSampleSize(options, i2, i);
        options.inJustDecodeBounds = false;
        options.inDither = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inTempStorage = new byte[16384];
        PLog.eCam("PhotoSaveActivity Converting actual image size to bitmap size using BitmapFactory.Options ", "Converting original to sizedBitmap");
        try {
            decodeFile = BitmapFactory.decodeFile(realPathFromURI, options);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                decodeFile.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                this.bitmapdata = byteArrayOutputStream.toByteArray();
            } catch (Exception e) {
                PLog.e(TAG, e);
                PLog.ecam("PhotoSaveActivity Image compression doing outputfile", e);
                e.printStackTrace();
            }
            PLog.eCam("PhotoSaveActivity Converting actual image size to bitmap size using BitmapFactory.Options ", "Converting original to sizedBitmap");
        } catch (OutOfMemoryError e2) {
            PLog.e(TAG, e2);
            PLog.ecam("PhotoSaveActivity Image compression doing outputfile", e2);
        }
        Bitmap bitmap = null;
        try {
            bitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
            PLog.eCam("PhotoSaveActivity Converting actual image size to bitmap size using BitmapFactory.Options ", "Converting original to sizedBitmap");
        } catch (OutOfMemoryError e3) {
            PLog.e(TAG, e3);
        }
        float f3 = i2;
        float f4 = f3 / options.outWidth;
        float f5 = i;
        float f6 = f5 / options.outHeight;
        float f7 = f3 / 2.0f;
        float f8 = f5 / 2.0f;
        Matrix matrix = new Matrix();
        matrix.setScale(f4, f6, f7, f8);
        Canvas canvas = new Canvas(bitmap);
        canvas.setMatrix(matrix);
        canvas.drawBitmap(decodeFile, f7 - (decodeFile.getWidth() / 2), f8 - (decodeFile.getHeight() / 2), new Paint(2));
        try {
            int attributeInt = new ExifInterface(realPathFromURI).getAttributeInt("Orientation", 0);
            Log.d("EXIF", "Exif: " + attributeInt);
            Matrix matrix2 = new Matrix();
            if (attributeInt == 6) {
                matrix2.postRotate(90.0f);
                Log.d("EXIF", "Exif: " + attributeInt);
            } else if (attributeInt == 3) {
                matrix2.postRotate(180.0f);
                Log.d("EXIF", "Exif: " + attributeInt);
            } else if (attributeInt == 8) {
                matrix2.postRotate(270.0f);
                Log.d("EXIF", "Exif: " + attributeInt);
            }
            PLog.eCam("PhotoSaveActivity Converting ScaledBitmap orientation", "Orientation Changes.");
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true);
        } catch (IOException e4) {
            PLog.e(TAG, e4);
        }
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(realPathFromURI));
            int sizeOf = sizeOf(bitmap);
            PLog.eCam("PhotoSaveActivity finally bitmap saving in external dir", "Saving the Final Bitmap");
            System.out.println("size is:::::::::::::" + sizeOf);
        } catch (FileNotFoundException e5) {
            PLog.e(TAG, e5);
        }
        return realPathFromURI;
    }

    private String getRealPathFromURI(String str) {
        Uri parse = Uri.parse(str);
        Cursor query = getContentResolver().query(parse, null, null, null, null);
        if (query == null) {
            return parse.getPath();
        }
        query.moveToFirst();
        return query.getString(query.getColumnIndex("_data"));
    }

    public int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int round;
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        if (i3 > i2 || i4 > i) {
            round = Math.round(i3 / i2);
            int round2 = Math.round(i4 / i);
            if (round >= round2) {
                round = round2;
            }
        } else {
            round = 1;
        }
        while ((i4 * i3) / (round * round) > i * i2 * 2) {
            round++;
        }
        return round;
    }

    protected int sizeOf(Bitmap bitmap) {
        return bitmap.getByteCount();
    }
}
