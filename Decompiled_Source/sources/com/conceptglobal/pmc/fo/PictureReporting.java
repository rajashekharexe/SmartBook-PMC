package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.squareup.picasso.Picasso;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class PictureReporting extends BaseActivity {
    private static final int CAM_IMAGE = 10002;
    private static final int CAM_IMAGE_CUSTOM = 10003;
    private static final String TAG = "PictureReporting";
    private int activityId;
    private int assignmentId;
    private int attributeId;
    private byte[] bitmapdata;
    private int blobcountaddone;
    private int blobcountfromDB;
    private String bloburipath;
    private Button btnDelete;
    private Button btncancel;
    private Button btnsave;
    private AlertDialog.Builder builder1;
    private Context context;
    private EditText edtEventType;
    private EditText edtcomments;
    private EditText edtsubject;
    private TextView eventId;
    private String farmerId;
    private File imageFile;
    private long imageId;
    private String imagePath;
    private ImageDetails imgDetails;
    private ImageView img_view;
    private ConstantsPMC mAppConstants;
    private ProgressDialog progressdialog;
    private String referenceId;
    private long referenceType;
    private TextView tvComments;
    private TextView tvEvent;
    private TextView tvImage;
    private TextView tvSubject;
    private TextView tvlatitude;
    private TextView tvlongitude;
    private Intent receiverIntent = null;
    private final int update = 2;
    private final int save = 1;
    private String CameraUsed = "";

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.capture);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pictureTitle()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        PLog.location("Navigation", "onCreate()", TAG, UtilDeclarations.getDateTime());
        Initialize();
        getImageDetails();
        setData();
    }

    private void setActionBar() {
        getIntent();
        getSupportActionBar().setDisplayOptions(16);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        getSupportActionBar().setCustomView(R.layout.header_actionbar);
        getSupportActionBar().setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.action_bar_bg_blue)));
        TextView textView = (TextView) findViewById(R.id.tv_title_header_actionbar);
        textView.setText("Picture Reporting");
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void setData() {
        if (this.imageId == 0 || this.imgDetails == null) {
            return;
        }
        try {
            this.eventId.setText("" + this.imgDetails.getEventTypeId());
            this.edtEventType.setText(GetDataFromDB.getInstance().getPictureEventDisplayField("ItemKey", "ConfigurablelookupMaster", "ItemType", "ImageEventType", "ItemValue", String.valueOf(this.imgDetails.getEventTypeId())));
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    private void getImageDetails() {
        ImageDetails imageDetail = GetDataFromDB.getInstance().getImageDetail(Queries.getInstance().getImageDetailQueryBYImageId(String.valueOf(this.imageId)));
        this.imgDetails = imageDetail;
        if (imageDetail != null) {
            this.btnsave.setTag(2);
            this.btnsave.setText("Update");
            this.btnsave.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_updatePictureButton()));
            this.btnDelete.setVisibility(0);
            this.edtsubject.setText(this.imgDetails.getSubject());
            this.edtcomments.setText(this.imgDetails.getComments());
            this.imagePath = this.imgDetails.getPicturePath();
            File file = new File(this.imgDetails.getPicturePath());
            if (file.exists()) {
                this.img_view.setImageBitmap(BitmapFactory.decodeFile(file.getAbsolutePath()));
            }
        }
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        PLog.location("Navigation", "onLowMemory", TAG, UtilDeclarations.getDateTime());
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x01dc A[Catch: Exception -> 0x0298, TryCatch #0 {Exception -> 0x0298, blocks: (B:3:0x017e, B:8:0x018d, B:9:0x01b4, B:20:0x0279, B:24:0x01d2, B:27:0x01d9, B:29:0x01dc, B:31:0x01e8, B:34:0x01f5, B:36:0x0201, B:38:0x0244, B:40:0x0223, B:43:0x0247, B:45:0x0257, B:46:0x01a0), top: B:2:0x017e }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0257 A[Catch: Exception -> 0x0298, TryCatch #0 {Exception -> 0x0298, blocks: (B:3:0x017e, B:8:0x018d, B:9:0x01b4, B:20:0x0279, B:24:0x01d2, B:27:0x01d9, B:29:0x01dc, B:31:0x01e8, B:34:0x01f5, B:36:0x0201, B:38:0x0244, B:40:0x0223, B:43:0x0247, B:45:0x0257, B:46:0x01a0), top: B:2:0x017e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Initialize() {
        /*
            Method dump skipped, instructions count: 709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.PictureReporting.Initialize():void");
    }

    /* renamed from: com.conceptglobal.pmc.fo.PictureReporting$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnClickListener {
        AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PLog.location("Navigation", "save click", PictureReporting.TAG, UtilDeclarations.getDateTime());
            if (PictureReporting.this.eventId.getText().toString() != null && !PictureReporting.this.eventId.getText().toString().equals("")) {
                if (((Integer) PictureReporting.this.btnsave.getTag()).intValue() == 2) {
                    if (PictureReporting.this.edtsubject.getText().toString().equalsIgnoreCase(PictureReporting.this.imgDetails.getSubject()) && PictureReporting.this.edtcomments.getText().toString().equalsIgnoreCase(PictureReporting.this.imgDetails.getComments()) && PictureReporting.this.imagePath.equalsIgnoreCase(PictureReporting.this.imgDetails.getPicturePath()) && PictureReporting.this.eventId.getText().toString().equalsIgnoreCase(String.valueOf(PictureReporting.this.imgDetails.getEventTypeId()))) {
                        Toast.makeText(PictureReporting.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noChangesToUpdate()), 0).show();
                        return;
                    }
                    PictureReporting.this.checkinsertdata();
                    PLog.location("Navigation", "ImageUpdated ", PictureReporting.TAG, UtilDeclarations.getDateTime());
                    Toast.makeText(PictureReporting.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_updateSuccesToast()), 1).show();
                    Intent intent = new Intent();
                    intent.putExtra("ImagePath", PictureReporting.this.imagePath);
                    PictureReporting.this.setResult(101, intent);
                    PictureReporting.this.onBackPressed();
                    return;
                }
                if (PictureReporting.this.bitmapdata == null && PictureReporting.this.CameraUsed.equals("Default")) {
                    PictureReporting.this.alertdialogbox(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsCaptureImage()));
                    return;
                }
                try {
                    PictureReporting.this.showLoader(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseWaitDialog()));
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.fo.PictureReporting.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PictureReporting.this.checkinsertdata();
                            PLog.location("Navigation", "ImageSaved ", PictureReporting.TAG, UtilDeclarations.getDateTime());
                            PictureReporting.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fo.PictureReporting.3.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    PictureReporting.this.hideLoader();
                                    if (PictureReporting.this.bitmapdata == null && PictureReporting.this.CameraUsed.equals("Default")) {
                                        Toast.makeText(PictureReporting.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsCaptureImageProperly()), 0).show();
                                    }
                                    Intent intent2 = new Intent();
                                    intent2.putExtra("ImagePath", PictureReporting.this.imagePath);
                                    PictureReporting.this.setResult(101, intent2);
                                    PictureReporting.this.onBackPressed();
                                }
                            });
                        }
                    }).start();
                    return;
                } catch (Exception e) {
                    PLog.e(PictureReporting.TAG, e);
                    e.printStackTrace();
                    return;
                }
            }
            Toast.makeText(PictureReporting.this, "Please select event type.", 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<ResolveInfo> isIntentAvailable(Context context, String str) {
        return context.getPackageManager().queryIntentActivities(new Intent(str), 65600);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        PLog.location("Navigation", "onResume()", TAG, UtilDeclarations.getDateTime());
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        PLog.location("Navigation", "onDestraoy", TAG, UtilDeclarations.getDateTime());
    }

    public void checkinsertdata() {
        try {
            ImageDetails imageDetails = new ImageDetails();
            imageDetails.setActivityId(this.activityId);
            imageDetails.setAssignmentId(this.assignmentId);
            imageDetails.setFarmerId(0);
            imageDetails.setImageId(this.imageId);
            imageDetails.setPdaID(Integer.parseInt(this.mAppConstants.getDeviceID()));
            imageDetails.setPicturePath(this.imagePath);
            imageDetails.setCreatedBy(this.mAppConstants.getDeviceID());
            imageDetails.setComments(this.edtcomments.getText().toString());
            imageDetails.setCtreatedDate(UtilDeclarations.getDateTime());
            imageDetails.setSubject(this.edtsubject.getText().toString());
            imageDetails.setUpdatedBy(this.mAppConstants.getDeviceID());
            imageDetails.setUpdatedDate(UtilDeclarations.getDateTime());
            imageDetails.setAttributeId(this.attributeId);
            imageDetails.setReferenceType(String.valueOf(this.referenceType));
            imageDetails.setReferenceId(this.referenceId);
            imageDetails.setEventTypeId(Integer.parseInt(this.eventId.getText().toString()));
            imageDetails.setContentTypeId(1);
            if (((Integer) this.btnsave.getTag()).intValue() == 2) {
                InsertDataIntoDB.insertFarmerActivityDetailsImage(imageDetails, true);
            } else {
                InsertDataIntoDB.insertFarmerActivityDetailsImage(imageDetails, false);
            }
            PLog.location("Navigation", "Image details saved in db", TAG, UtilDeclarations.getDateTime());
        } catch (Exception e) {
            PLog.e(TAG, e);
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putString("photopath", this.imagePath);
        PLog.e(TAG, "onSaveInstanceState---" + this.imagePath);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        if (bundle != null && bundle.containsKey("photopath")) {
            this.imagePath = bundle.getString("photopath");
            PLog.e(TAG, "onRestoreInstanceState---" + this.imagePath);
            if (this.imagePath != null) {
                PLog.e(TAG, "onRestoreInstanceState-imagePath----" + this.imagePath);
                File file = new File(this.imagePath);
                if (file.exists()) {
                    PLog.e(TAG, "onRestoreInstanceState--imgFile----" + file.getAbsolutePath());
                    String compressImage = compressImage(file.getAbsolutePath());
                    if (compressImage != null) {
                        try {
                            if (file.exists()) {
                                PLog.e(TAG, "onRestoreInstanceState--loading----" + compressImage);
                                loadDiskThumbnail(this.context, this.img_view, file);
                            }
                        } catch (Exception e) {
                            PLog.e(TAG, e);
                        }
                    }
                }
            }
        }
        super.onRestoreInstanceState(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i != CAM_IMAGE) {
                if (i != CAM_IMAGE_CUSTOM || intent == null) {
                    return;
                }
                PLog.eCam("PictureReporting CustomCamera bitmapImage returned", "CustomCamera Image");
                this.CameraUsed = "Custom";
                File file = new File(intent.getData().getPath());
                try {
                    if (file.exists()) {
                        loadDiskThumbnail(this.context, this.img_view, file);
                    }
                    compressImage(file.getAbsolutePath());
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    PLog.ecam("PictureReporting Custom Camera after pic captured", e);
                    return;
                }
            }
            PLog.location("Navigation", "ImageCaptured ", TAG, UtilDeclarations.getDateTime());
            try {
                if (this.imagePath != null) {
                    PLog.eCam("PictureReporting DefaultCamera imagepath returned", "DefaultCamera Imagepath");
                    this.CameraUsed = "Default";
                    PLog.location("Navigation", "ImageCaptured " + this.imagePath, TAG, UtilDeclarations.getDateTime());
                    File file2 = new File(this.imagePath);
                    if (file2.exists()) {
                        PLog.location("Navigation", "image saved in file ", TAG, UtilDeclarations.getDateTime());
                        String compressImage = compressImage(file2.getAbsolutePath());
                        PLog.location("Navigation", "image compressed " + compressImage, TAG, UtilDeclarations.getDateTime());
                        if (compressImage != null) {
                            try {
                                if (file2.exists()) {
                                    loadDiskThumbnail(this.context, this.img_view, file2);
                                }
                            } catch (Exception e2) {
                                PLog.ecam("PictureReporting Default Camera after pic captured", e2);
                                PLog.e(TAG, e2);
                            }
                        }
                    }
                    return;
                }
                if (intent.getData() != null) {
                    PLog.eCam("PictureReporting DefaultCamera imagepath returned through data", "DefaultCamera Imagepath");
                    File file3 = new File(intent.getData().getPath());
                    if (file3.exists() && compressImage(file3.getAbsolutePath()) != null) {
                        try {
                            if (file3.exists()) {
                                loadDiskThumbnail(this.context, this.img_view, file3);
                            }
                        } catch (Exception e3) {
                            PLog.ecam("PictureReporting Default Camera after pic captured", e3);
                        }
                    }
                } else {
                    this.img_view.setImageResource(R.drawable.img_add_patch);
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                PLog.ecam("PictureReporting after pic captured", e4);
            }
            e4.printStackTrace();
            PLog.ecam("PictureReporting after pic captured", e4);
        }
    }

    public static void loadDiskThumbnail(Context context, ImageView imageView, File file) {
        Picasso.with(context).load(file).resize(98, 98).skipMemoryCache().placeholder(com.conceptglobal.pmc.R.drawable.picturereporting).into(imageView);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x008a -> B:10:0x008d). Please report as a decompilation issue!!! */
    public String compressImage(String str) {
        Bitmap bitmap;
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
        PLog.eCam("PictureReporting Converting actual image size to bitmap size using BitmapFactory.Options ", "Converting original to sizedBitmap");
        try {
            decodeFile = BitmapFactory.decodeFile(realPathFromURI, options);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                decodeFile.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                this.bitmapdata = byteArrayOutputStream.toByteArray();
            } catch (Exception e) {
                PLog.ecam("PictureReporting Image compression", e);
                e.printStackTrace();
            }
        } catch (OutOfMemoryError e2) {
            PLog.ecam("PictureReporting Image compression", e2);
        }
        try {
            bitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError e3) {
            PLog.ecam("PictureReporting Image compression doing scaledBitmap", e3);
            bitmap = null;
        }
        Bitmap bitmap2 = bitmap;
        float f3 = i2;
        float f4 = f3 / options.outWidth;
        float f5 = i;
        float f6 = f5 / options.outHeight;
        float f7 = f3 / 2.0f;
        float f8 = f5 / 2.0f;
        Matrix matrix = new Matrix();
        matrix.setScale(f4, f6, f7, f8);
        Canvas canvas = new Canvas(bitmap2);
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
            bitmap2 = Bitmap.createBitmap(bitmap2, 0, 0, bitmap2.getWidth(), bitmap2.getHeight(), matrix2, true);
        } catch (IOException e4) {
            PLog.ecam("PictureReporting Image compression doing scaledBitmap", e4);
        }
        try {
            bitmap2.compress(Bitmap.CompressFormat.JPEG, 80, new FileOutputStream(realPathFromURI));
            int sizeOf = sizeOf(bitmap2);
            System.out.println("size is:::" + sizeOf);
        } catch (FileNotFoundException e5) {
            PLog.ecam("PictureReporting Image compression doing outputfile", e5);
        }
        return realPathFromURI;
    }

    protected int sizeOf(Bitmap bitmap) {
        return bitmap.getByteCount();
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

    private String getRealPathFromURI(String str) {
        Uri parse = Uri.parse(str);
        Cursor query = this.context.getContentResolver().query(parse, null, null, null, null);
        if (query == null) {
            return parse.getPath();
        }
        query.moveToFirst();
        return query.getString(query.getColumnIndex("_data"));
    }

    public void alertdialogbox(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        this.builder1 = builder;
        try {
            builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReporting.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            AlertDialog show = this.builder1.show();
            if (UtilDeclarations.isTablet(this)) {
                UtilDeclarations.makeTabletDialogTextlarge(show);
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    class RunShowLoader implements Runnable {
        private String strMsg;

        public RunShowLoader(String str) {
            this.strMsg = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                PictureReporting pictureReporting = PictureReporting.this;
                pictureReporting.progressdialog = ProgressDialog.show(pictureReporting, "", this.strMsg);
            } catch (Exception e) {
                PictureReporting.this.progressdialog = null;
                PLog.e(PictureReporting.TAG, e);
            }
        }
    }

    public void showLoader(String str) {
        hideLoader();
        runOnUiThread(new RunShowLoader(str));
    }

    public void hideLoader() {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fo.PictureReporting.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (PictureReporting.this.progressdialog != null && PictureReporting.this.progressdialog.isShowing()) {
                        PictureReporting.this.progressdialog.dismiss();
                    }
                    PictureReporting.this.progressdialog = null;
                } catch (Exception e) {
                    PLog.e(PictureReporting.TAG, e);
                }
            }
        });
    }
}
