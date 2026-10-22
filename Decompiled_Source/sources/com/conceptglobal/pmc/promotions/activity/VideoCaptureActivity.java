package com.conceptglobal.pmc.promotions.activity;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.promotions.utils.FileUtils;
import com.conceptglobal.pmc.promotions.video.MediaController;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.io.File;
import java.net.URISyntaxException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class VideoCaptureActivity extends AppCompatActivity implements View.OnClickListener {
    private static final int CAM_IMAGE = 10002;
    static final int REQUEST_VIDEO_CAPTURE = 1;
    private static final int RESULT_CODE_COMPRESS_VIDEO = 3;
    private static final String TAG = "VideoCaptureActivity";
    private int activityId;
    private int assignmentId;
    private int attributeId;
    private byte[] bitmapdata;
    private int blobcountaddone;
    private int blobcountfromDB;
    private String bloburipath;
    private Button btnCaptureVedio;
    private Button btnDelete;
    private Button btnSlectFile;
    private Button btncancel;
    private Button btnsave;
    private AlertDialog.Builder builder1;
    File compressedFile;
    private Context context;
    private EditText edtEventType;
    private EditText edtcomments;
    private EditText edtsubject;
    private TextView eventId;
    private String farmerId;
    private String filePath;
    private File imageFile;
    private long imageId;
    private String imagePath;
    private ImageDetails imgDetails;
    private ImageView img_view;
    private ConstantsPMC mAppConstants;
    private ProgressBar progressBar;
    private ProgressDialog progressdialog;
    private String referenceId;
    private long referenceType;
    private File tempFile;
    private TextView tvComments;
    private TextView tvEvent;
    private TextView tvImage;
    private TextView tvStatus;
    private TextView tvSubject;
    private TextView tvlatitude;
    private TextView tvlongitude;
    private Intent receiverIntent = null;
    private final int update = 2;
    private final int save = 1;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_vedio_capture);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        CustomActionBar.initActionBar(this, "Video(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        Initialize();
        getImageDetails();
        setData();
        Button button = (Button) findViewById(R.id.btnSlectAndCompress);
        this.btnSlectFile = button;
        button.setOnClickListener(this);
        Button button2 = (Button) findViewById(R.id.btnCaptureVideo);
        this.btnCaptureVedio = button2;
        button2.setOnClickListener(this);
        this.tvStatus = (TextView) findViewById(R.id.tvStatus);
        this.progressBar = (ProgressBar) findViewById(R.id.progressBar);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
    }

    public void Initialize() {
        this.context = this;
        Button button = (Button) findViewById(R.id.btnpicturesave);
        this.btnsave = button;
        button.setTag(1);
        this.tvImage = (TextView) findViewById(R.id.tv_img_preview);
        this.tvEvent = (TextView) findViewById(R.id.tv_edtEventType);
        this.tvSubject = (TextView) findViewById(R.id.tv_edtsubjects);
        this.tvComments = (TextView) findViewById(R.id.tv_edtprcomments);
        this.tvImage.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pictureTitle()));
        this.tvEvent.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_eventTitle()));
        this.tvSubject.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_subjectTitle()));
        this.tvComments.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_commentsTitle()));
        this.btnsave.setText("Save Video");
        this.btncancel = (Button) findViewById(R.id.btnpicturecancel);
        this.btnDelete = (Button) findViewById(R.id.btnpicturedelete);
        this.img_view = (ImageView) findViewById(R.id.img_preview);
        this.edtcomments = (EditText) findViewById(R.id.edtprcomments);
        this.edtsubject = (EditText) findViewById(R.id.edtsubject);
        EditText editText = (EditText) findViewById(R.id.edtEventType);
        this.edtEventType = editText;
        editText.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()));
        this.btncancel.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()));
        TextView textView = new TextView(this);
        this.eventId = textView;
        textView.setText("0");
        this.edtcomments.setImeOptions(6);
        this.mAppConstants = ConstantsPMC.getInstance();
        Intent intent = getIntent();
        this.receiverIntent = intent;
        this.activityId = intent.getIntExtra("activityId", 0);
        this.assignmentId = this.receiverIntent.getIntExtra("assignmentId", 0);
        this.attributeId = this.receiverIntent.getIntExtra("attributeId", 0);
        this.farmerId = this.receiverIntent.getStringExtra("farmerId");
        this.referenceType = this.receiverIntent.getLongExtra("setReferenceType", 0L);
        this.referenceId = this.receiverIntent.getStringExtra("setReferenceID");
        this.imageId = this.receiverIntent.getLongExtra("imageId", 0L);
        this.edtEventType.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCaptureActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListPopupOne listPopupOne = new ListPopupOne(VideoCaptureActivity.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().gettingDropdownValuesBasedItemCode(VideoCaptureActivity.this.referenceType), view, VideoCaptureActivity.this.eventId);
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
            }
        });
        String[][] strArr = GetDataFromDB.getInstance().getlotdata(Queries.getInstance().gettingDropdownValuesBasedItemCode(this.referenceType));
        long j = this.referenceType;
        if ((j == 1 || j == 8) && this.imageId == 0) {
            this.eventId.setText("" + strArr[1][0]);
            this.edtEventType.setText(strArr[1][1]);
        } else if ((j == 2 || j == 8 || j == 3) && this.imageId == 0) {
            this.eventId.setText("" + strArr[4][0]);
            this.edtEventType.setText(strArr[4][1]);
        } else {
            this.eventId.setText("" + strArr[0][0]);
            this.edtEventType.setText(strArr[0][1]);
        }
        this.img_view.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCaptureActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent2 = new Intent("android.media.action.VIDEO_CAPTURE");
                VideoCaptureActivity videoCaptureActivity = VideoCaptureActivity.this;
                String str = ((ResolveInfo) videoCaptureActivity.isIntentAvailable(videoCaptureActivity, "android.media.action.VIDEO_CAPTURE").get(0)).activityInfo.packageName;
                if (intent2.resolveActivity(VideoCaptureActivity.this.getPackageManager()) != null) {
                    intent2.setPackage(str);
                    intent2.putExtra("android.intent.extra.durationLimit", 30);
                    intent2.putExtra("android.intent.extra.videoQuality", 0.5d);
                    VideoCaptureActivity.this.startActivityForResult(intent2, 1);
                }
            }
        });
        this.btnsave.setOnClickListener(new AnonymousClass3());
        this.btncancel.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCaptureActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoCaptureActivity.this.bitmapdata = null;
                VideoCaptureActivity.this.img_view.setImageResource(com.conceptglobal.pmc.R.drawable.picturereporting);
                VideoCaptureActivity.this.edtcomments.setText("");
                VideoCaptureActivity.this.edtsubject.setText("");
                VideoCaptureActivity.this.onBackPressed();
            }
        });
        this.btnDelete.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCaptureActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoCaptureActivity.this.imageId != 0) {
                    try {
                        GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().deleteImage(VideoCaptureActivity.this.imageId));
                    } catch (Exception e) {
                        Toast.makeText(VideoCaptureActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_imageCantBeDelToast()), 0).show();
                        PLog.e(VideoCaptureActivity.TAG, e);
                        e.printStackTrace();
                    }
                }
                VideoCaptureActivity.this.onBackPressed();
            }
        });
    }

    /* renamed from: com.conceptglobal.pmc.promotions.activity.VideoCaptureActivity$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnClickListener {
        AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (VideoCaptureActivity.this.eventId.getText().toString() != null && !VideoCaptureActivity.this.eventId.getText().toString().equals("")) {
                if (((Integer) VideoCaptureActivity.this.btnsave.getTag()).intValue() == 2) {
                    if (VideoCaptureActivity.this.edtsubject.getText().toString().equalsIgnoreCase(VideoCaptureActivity.this.imgDetails.getSubject()) && VideoCaptureActivity.this.edtcomments.getText().toString().equalsIgnoreCase(VideoCaptureActivity.this.imgDetails.getComments()) && VideoCaptureActivity.this.imagePath.equalsIgnoreCase(VideoCaptureActivity.this.imgDetails.getPicturePath()) && VideoCaptureActivity.this.eventId.getText().toString().equalsIgnoreCase(String.valueOf(VideoCaptureActivity.this.imgDetails.getEventTypeId()))) {
                        Toast.makeText(VideoCaptureActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noChangesToUpdate()), 0).show();
                        return;
                    }
                    VideoCaptureActivity.this.checkinsertdata();
                    Toast.makeText(VideoCaptureActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_updateSuccesToast()), 1).show();
                    Intent intent = new Intent();
                    intent.putExtra("ImagePath", VideoCaptureActivity.this.imagePath);
                    VideoCaptureActivity.this.setResult(101, intent);
                    VideoCaptureActivity.this.onBackPressed();
                    return;
                }
                if (VideoCaptureActivity.this.compressedFile == null) {
                    VideoCaptureActivity.this.alertdialogbox("Please select/capture video");
                    return;
                }
                try {
                    VideoCaptureActivity.this.showLoader(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseWaitDialog()));
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCaptureActivity.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            VideoCaptureActivity.this.checkinsertdata();
                            VideoCaptureActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCaptureActivity.3.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    VideoCaptureActivity.this.hideLoader();
                                    if (VideoCaptureActivity.this.bitmapdata == null) {
                                        Toast.makeText(VideoCaptureActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsCaptureImageProperly()), 0).show();
                                    }
                                    Intent intent2 = new Intent();
                                    intent2.putExtra("ImagePath", VideoCaptureActivity.this.imagePath);
                                    VideoCaptureActivity.this.setResult(101, intent2);
                                    VideoCaptureActivity.this.onBackPressed();
                                }
                            });
                        }
                    }).start();
                    return;
                } catch (Exception e) {
                    PLog.e(VideoCaptureActivity.TAG, e);
                    e.printStackTrace();
                    return;
                }
            }
            Toast.makeText(VideoCaptureActivity.this, "Please select event type.", 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<ResolveInfo> isIntentAvailable(Context context, String str) {
        return context.getPackageManager().queryIntentActivities(new Intent(str), 65600);
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

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
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

    public void checkinsertdata() {
        try {
            ImageDetails imageDetails = new ImageDetails();
            imageDetails.setActivityId(this.activityId);
            imageDetails.setAssignmentId(this.assignmentId);
            imageDetails.setFarmerId(0);
            imageDetails.setImageId(this.imageId);
            imageDetails.setPdaID(Integer.parseInt(this.mAppConstants.getDeviceID()));
            imageDetails.setCompressed(false);
            imageDetails.setPicturePath(this.tempFile.getAbsolutePath());
            imageDetails.setCreatedBy(this.mAppConstants.getDeviceID());
            imageDetails.setComments(this.edtcomments.getText().toString());
            imageDetails.setCtreatedDate(UtilDeclarations.getDateTime());
            imageDetails.setSubject(this.edtsubject.getText().toString());
            imageDetails.setUpdatedBy(this.mAppConstants.getDeviceID());
            imageDetails.setUpdatedDate(UtilDeclarations.getDateTime());
            imageDetails.setAttributeId(this.attributeId);
            imageDetails.setReferenceType("101");
            imageDetails.setReferenceId(this.referenceId);
            imageDetails.setEventTypeId(Integer.parseInt(this.eventId.getText().toString()));
            imageDetails.setContentTypeId(2);
            if (((Integer) this.btnsave.getTag()).intValue() == 2) {
                InsertDataIntoDB.insertFarmerActivityDetailsImage(imageDetails, true);
            } else {
                InsertDataIntoDB.insertFarmerActivityDetailsImage(imageDetails, false);
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.btnSlectAndCompress) {
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("video/*");
            startActivityForResult(intent, 3);
        }
    }

    private void deleteTempFile() {
        File file = this.tempFile;
        if (file == null || !file.exists()) {
            return;
        }
        this.tempFile.delete();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        deleteTempFile();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        deleteTempFile();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 != -1 || intent == null) {
            return;
        }
        Uri data = intent.getData();
        if (i != 3) {
            if (i == 1 && i2 == -1) {
                try {
                    this.filePath = getFilePath(this, intent.getData());
                } catch (URISyntaxException e) {
                    e.printStackTrace();
                }
                this.tempFile = new File(this.filePath);
                Log.e("before compression", this.tempFile.getAbsolutePath() + "");
                new VideoCompressor().execute(new Void[0]);
                return;
            }
            return;
        }
        if (data != null) {
            Cursor query = getContentResolver().query(data, null, null, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndex("_display_name"));
                        Log.i(TAG, "Display Name: " + string);
                        int columnIndex = query.getColumnIndex("_size");
                        Log.i(TAG, "Size: " + (!query.isNull(columnIndex) ? query.getString(columnIndex) : "Unknown"));
                        this.tempFile = FileUtils.saveTempFile(string, this, data);
                        new VideoCompressor().execute(new Void[0]);
                    }
                } finally {
                    if (query != null) {
                        query.close();
                    }
                }
            }
        }
    }

    class VideoCompressor extends AsyncTask<Void, Void, Boolean> {
        private final ProgressDialog dialog;

        VideoCompressor() {
            this.dialog = new ProgressDialog(VideoCaptureActivity.this.context);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            this.dialog.setMessage("Compressing video please wait");
            this.dialog.setCanceledOnTouchOutside(false);
            this.dialog.show();
            Log.d(VideoCaptureActivity.TAG, "Start video compression");
            VideoCaptureActivity.this.tvStatus.setText("Before Compreesion file size : " + ((VideoCaptureActivity.this.tempFile.length() / 1024) / 1024) + "MB\n");
            VideoCaptureActivity.this.compressedFile = new File(com.conceptglobal.pmc.utils.FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + File.separator + ".VideoCompressor/Compressed Videos/", "VIDEO_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date()) + ".mp4");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... voidArr) {
            return Boolean.valueOf(MediaController.getInstance().convertVideo(VideoCaptureActivity.this.tempFile.getPath(), VideoCaptureActivity.this.compressedFile.getPath()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute((VideoCompressor) bool);
            if (this.dialog.isShowing() && !VideoCaptureActivity.this.isFinishing()) {
                this.dialog.dismiss();
            }
            if (bool.booleanValue()) {
                Log.d(VideoCaptureActivity.TAG, "Compression successfully!");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getFilePath(android.content.Context r11, android.net.Uri r12) throws java.net.URISyntaxException {
        /*
            android.content.Context r0 = r11.getApplicationContext()
            boolean r0 = android.provider.DocumentsContract.isDocumentUri(r0, r12)
            r1 = 0
            if (r0 == 0) goto L99
            boolean r0 = isExternalStorageDocument(r12)
            java.lang.String r2 = ":"
            r3 = 1
            if (r0 == 0) goto L3f
            java.lang.String r11 = android.provider.DocumentsContract.getDocumentId(r12)
            java.lang.String[] r11 = r11.split(r2)
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            android.content.Context r0 = com.conceptglobal.pmc.PMCApplication.getContext()
            java.io.File r0 = com.conceptglobal.pmc.utils.FileUtils.getDataDir(r0)
            java.lang.String r0 = r0.getAbsolutePath()
            r12.append(r0)
            java.lang.String r0 = "/"
            r12.append(r0)
            r11 = r11[r3]
            r12.append(r11)
            java.lang.String r11 = r12.toString()
            return r11
        L3f:
            boolean r0 = isDownloadsDocument(r12)
            if (r0 == 0) goto L5c
            java.lang.String r12 = android.provider.DocumentsContract.getDocumentId(r12)
            java.lang.String r0 = "content://downloads/public_downloads"
            android.net.Uri r0 = android.net.Uri.parse(r0)
            java.lang.Long r12 = java.lang.Long.valueOf(r12)
            long r2 = r12.longValue()
            android.net.Uri r12 = android.content.ContentUris.withAppendedId(r0, r2)
            goto L99
        L5c:
            boolean r0 = isMediaDocument(r12)
            if (r0 == 0) goto L99
            java.lang.String r0 = android.provider.DocumentsContract.getDocumentId(r12)
            java.lang.String[] r0 = r0.split(r2)
            r2 = 0
            r4 = r0[r2]
            java.lang.String r5 = "image"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L78
            android.net.Uri r12 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI
            goto L8d
        L78:
            java.lang.String r5 = "video"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L83
            android.net.Uri r12 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI
            goto L8d
        L83:
            java.lang.String r5 = "audio"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L8d
            android.net.Uri r12 = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI
        L8d:
            java.lang.String[] r4 = new java.lang.String[r3]
            r0 = r0[r3]
            r4[r2] = r0
            java.lang.String r0 = "_id=?"
            r6 = r12
            r8 = r0
            r9 = r4
            goto L9c
        L99:
            r6 = r12
            r8 = r1
            r9 = r8
        L9c:
            java.lang.String r12 = "content"
            java.lang.String r0 = r6.getScheme()
            boolean r12 = r12.equalsIgnoreCase(r0)
            if (r12 == 0) goto Lc6
            java.lang.String r12 = "_data"
            java.lang.String[] r7 = new java.lang.String[]{r12}
            android.content.ContentResolver r5 = r11.getContentResolver()     // Catch: java.lang.Exception -> Ld7
            r10 = 0
            android.database.Cursor r11 = r5.query(r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> Ld7
            int r12 = r11.getColumnIndexOrThrow(r12)     // Catch: java.lang.Exception -> Ld7
            boolean r0 = r11.moveToFirst()     // Catch: java.lang.Exception -> Ld7
            if (r0 == 0) goto Ld7
            java.lang.String r11 = r11.getString(r12)     // Catch: java.lang.Exception -> Ld7
            return r11
        Lc6:
            java.lang.String r11 = "file"
            java.lang.String r12 = r6.getScheme()
            boolean r11 = r11.equalsIgnoreCase(r12)
            if (r11 == 0) goto Ld7
            java.lang.String r11 = r6.getPath()
            return r11
        Ld7:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.activity.VideoCaptureActivity.getFilePath(android.content.Context, android.net.Uri):java.lang.String");
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public void showLoader(String str) {
        hideLoader();
        runOnUiThread(new RunShowLoader(str));
    }

    public void hideLoader() {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCaptureActivity.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (VideoCaptureActivity.this.progressdialog != null && VideoCaptureActivity.this.progressdialog.isShowing()) {
                        VideoCaptureActivity.this.progressdialog.dismiss();
                    }
                    VideoCaptureActivity.this.progressdialog = null;
                } catch (Exception e) {
                    PLog.e(VideoCaptureActivity.TAG, e);
                }
            }
        });
    }

    public void alertdialogbox(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        this.builder1 = builder;
        try {
            builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCaptureActivity.7
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
                VideoCaptureActivity videoCaptureActivity = VideoCaptureActivity.this;
                videoCaptureActivity.progressdialog = ProgressDialog.show(videoCaptureActivity, "", this.strMsg);
            } catch (Exception e) {
                VideoCaptureActivity.this.progressdialog = null;
                PLog.e(VideoCaptureActivity.TAG, e);
            }
        }
    }
}
