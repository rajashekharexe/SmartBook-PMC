package com.conceptglobal.pmc.utils;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ImageView;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class ImageCompressionAsyncTask extends AsyncTask<String, Void, String> {
    private Context context;
    ImageView imageView;
    CompressListener listener;

    public ImageCompressionAsyncTask(Context context, CompressListener compressListener) {
        this.context = context;
        this.listener = compressListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public String doInBackground(String... strArr) {
        return compressImage(strArr[0]);
    }

    public String compressImage(String str) {
        Bitmap bitmap;
        Bitmap bitmap2;
        Bitmap bitmap3;
        Matrix matrix;
        String realPathFromURI = getRealPathFromURI(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Bitmap decodeFile = BitmapFactory.decodeFile(realPathFromURI, options);
        int i = options.outHeight;
        int i2 = options.outWidth;
        float f = i2 / i;
        float f2 = i;
        if (f2 > 616.0f || i2 > 412.0f) {
            if (f < 0.66883117f) {
                i2 = (int) ((616.0f / f2) * i2);
                i = (int) 616.0f;
            } else {
                i = f > 0.66883117f ? (int) ((412.0f / i2) * f2) : (int) 616.0f;
                i2 = (int) 412.0f;
            }
        }
        options.inSampleSize = calculateInSampleSize(options, i2, i);
        options.inJustDecodeBounds = false;
        options.inDither = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inTempStorage = new byte[16384];
        try {
            decodeFile = BitmapFactory.decodeFile(realPathFromURI, options);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        try {
            bitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            bitmap = null;
        }
        Bitmap bitmap4 = bitmap;
        float f3 = i2;
        float f4 = f3 / options.outWidth;
        float f5 = i;
        float f6 = f5 / options.outHeight;
        float f7 = f3 / 2.0f;
        float f8 = f5 / 2.0f;
        Matrix matrix2 = new Matrix();
        matrix2.setScale(f4, f6, f7, f8);
        Canvas canvas = new Canvas(bitmap4);
        canvas.setMatrix(matrix2);
        canvas.drawBitmap(decodeFile, f7 - (decodeFile.getWidth() / 2), f8 - (decodeFile.getHeight() / 2), new Paint(2));
        try {
            int attributeInt = new ExifInterface(realPathFromURI).getAttributeInt("Orientation", 0);
            Log.d("EXIF", "Exif: " + attributeInt);
            matrix = new Matrix();
            if (attributeInt == 6) {
                matrix.postRotate(90.0f);
                Log.d("EXIF", "Exif: " + attributeInt);
            } else if (attributeInt == 3) {
                matrix.postRotate(180.0f);
                Log.d("EXIF", "Exif: " + attributeInt);
            } else if (attributeInt == 8) {
                matrix.postRotate(270.0f);
                Log.d("EXIF", "Exif: " + attributeInt);
            }
            bitmap2 = bitmap4;
        } catch (IOException e3) {
            e = e3;
            bitmap2 = bitmap4;
        }
        try {
            bitmap3 = Bitmap.createBitmap(bitmap4, 0, 0, bitmap4.getWidth(), bitmap4.getHeight(), matrix, true);
        } catch (IOException e4) {
            e = e4;
            e.printStackTrace();
            bitmap3 = bitmap2;
            bitmap3.compress(Bitmap.CompressFormat.JPEG, 40, new FileOutputStream(realPathFromURI));
            return realPathFromURI;
        }
        try {
            bitmap3.compress(Bitmap.CompressFormat.JPEG, 40, new FileOutputStream(realPathFromURI));
        } catch (FileNotFoundException unused) {
        }
        return realPathFromURI;
    }

    private String getRealPathFromURI(String str) {
        Uri parse = Uri.parse(str);
        Cursor query = this.context.getContentResolver().query(parse, null, null, null, null);
        if (query == null) {
            return parse.getPath();
        }
        query.moveToFirst();
        return query.getString(query.getColumnIndex("_data"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((ImageCompressionAsyncTask) str);
        this.listener.onComprssCompleteListener(str);
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
}
