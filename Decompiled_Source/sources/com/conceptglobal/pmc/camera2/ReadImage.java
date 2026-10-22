package com.conceptglobal.pmc.camera2;

import android.app.AlertDialog;
import android.app.IntentService;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class ReadImage extends IntentService {
    public ReadImage() {
        super("imageRetriever");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        ImageDecoder.Source createSource;
        Bitmap decodeBitmap;
        try {
            Uri fromFile = Uri.fromFile(new File(intent.getStringExtra("fileNameOfImage")));
            try {
                new ExifInterface(fromFile.getPath());
                if (Build.VERSION.SDK_INT >= 28) {
                    createSource = ImageDecoder.createSource(getApplicationContext().getContentResolver(), fromFile);
                    decodeBitmap = ImageDecoder.decodeBitmap(createSource);
                    decodeBitmap.getWidth();
                    decodeBitmap.getHeight();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    decodeBitmap.compress(Bitmap.CompressFormat.JPEG, 50, byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(this);
                    Intent intent2 = new Intent();
                    intent2.putExtra("image", byteArray);
                    intent2.setAction("Custom_Intent");
                    localBroadcastManager.sendBroadcast(intent2);
                } else {
                    Bitmap bitmap = MediaStore.Images.Media.getBitmap(getApplicationContext().getContentResolver(), fromFile);
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 50, byteArrayOutputStream2);
                    byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
                    Intent intent3 = new Intent();
                    intent3.putExtra("image", byteArray2);
                    intent3.setAction("Custom_Intent");
                    LocalBroadcastManager.getInstance(this).sendBroadcast(intent3);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(e2.getMessage()).setTitle("PMC POC").setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.camera2.ReadImage.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }
}
