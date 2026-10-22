package com.conceptglobal.pmc.promotions.activity;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
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
import androidx.core.content.FileProvider;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.bumptech.glide.Glide;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.backgroundtask.VideoCompressionWorkManager;
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
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class VideoCapureActivityCopy2 extends AppCompatActivity implements View.OnClickListener {
    private static final int CAM_IMAGE = 10002;
    static final int REQUEST_VIDEO_CAPTURE = 1;
    private static final int RESULT_CODE_COMPRESS_VIDEO = 3;
    private static final String TAG = "VideoCapureActivityCopy2";
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
    private boolean isFromTestimonials;
    private ConstantsPMC mAppConstants;
    File mCompressedFile;
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
    private int videoDuration;
    Uri videoUri;
    private Intent receiverIntent = null;
    private final int update = 2;
    private final int save = 1;
    File compressedFile = null;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.content_video_capure_activity_copy2);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        CustomActionBar.initActionBar(this, "Video(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        Initialize();
        getImageDetails();
        getVideoDetails();
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
        if (getIntent().hasExtra("FromTestimonials")) {
            this.isFromTestimonials = getIntent().getExtras().getBoolean("FromTestimonials");
        }
        try {
            if (this.isFromTestimonials) {
                this.videoDuration = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValueFromConfigurableLookup("TSTVideoDuration"));
            } else {
                this.videoDuration = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValueFromConfigurableLookup("VideoDuration"));
            }
            int i = this.videoDuration;
            if (i <= 0) {
                i = 30;
            }
            this.videoDuration = i;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void getVideoDetails() {
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
            if (new File(this.imgDetails.getPicturePath()).exists()) {
                this.img_view.setImageBitmap(ThumbnailUtils.createVideoThumbnail(this.imagePath, 1));
            }
        }
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
        long longExtra = this.receiverIntent.getLongExtra("imageId", 0L);
        this.imageId = longExtra;
        if (longExtra == 0) {
            this.imageId = System.currentTimeMillis();
        }
        this.edtEventType.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListPopupOne listPopupOne = new ListPopupOne(VideoCapureActivityCopy2.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().gettingDropdownValuesBasedItemCode(15L), view, VideoCapureActivityCopy2.this.eventId);
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
            }
        });
        String[][] strArr = GetDataFromDB.getInstance().getlotdata(Queries.getInstance().gettingDropdownValuesBasedItemCode(15L));
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
        this.img_view.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent2 = new Intent("android.media.action.VIDEO_CAPTURE");
                VideoCapureActivityCopy2 videoCapureActivityCopy2 = VideoCapureActivityCopy2.this;
                String str = ((ResolveInfo) videoCapureActivityCopy2.isIntentAvailable(videoCapureActivityCopy2, "android.media.action.VIDEO_CAPTURE").get(0)).activityInfo.packageName;
                if (intent2.resolveActivity(VideoCapureActivityCopy2.this.getPackageManager()) != null) {
                    intent2.setPackage(str);
                    File file = new File(VideoCapureActivityCopy2.this.context.getExternalFilesDir(null), ".Video");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    File file2 = new File(file, "VIDEO_" + UtilDeclarations.getImageFiledate() + ConstantsPMC.getInstance().getDeviceID() + ".mp4");
                    VideoCapureActivityCopy2 videoCapureActivityCopy22 = VideoCapureActivityCopy2.this;
                    videoCapureActivityCopy22.videoUri = FileProvider.getUriForFile(videoCapureActivityCopy22, "com.conceptglobal.pmcdeepakfertilizers.provider", file2);
                    intent2.putExtra("output", VideoCapureActivityCopy2.this.videoUri);
                    intent2.addFlags(3);
                    intent2.putExtra("android.intent.extra.durationLimit", VideoCapureActivityCopy2.this.videoDuration);
                    intent2.putExtra("android.intent.extra.videoQuality", 0.5d);
                    VideoCapureActivityCopy2.this.startActivityForResult(intent2, 1);
                }
            }
        });
        this.btnsave.setOnClickListener(new AnonymousClass3());
        this.btncancel.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoCapureActivityCopy2.this.img_view.setImageResource(com.conceptglobal.pmc.R.drawable.picturereporting);
                VideoCapureActivityCopy2.this.edtcomments.setText("");
                VideoCapureActivityCopy2.this.edtsubject.setText("");
                VideoCapureActivityCopy2.this.onBackPressed();
            }
        });
        this.btnDelete.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoCapureActivityCopy2.this.imageId != 0) {
                    try {
                        GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().deleteImage(VideoCapureActivityCopy2.this.imageId));
                    } catch (Exception e) {
                        Toast.makeText(VideoCapureActivityCopy2.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_imageCantBeDelToast()), 0).show();
                        PLog.e(VideoCapureActivityCopy2.TAG, e);
                        e.printStackTrace();
                    }
                }
                VideoCapureActivityCopy2.this.onBackPressed();
            }
        });
    }

    /* renamed from: com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnClickListener {
        AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (VideoCapureActivityCopy2.this.eventId.getText().toString() != null && !VideoCapureActivityCopy2.this.eventId.getText().toString().equals("")) {
                if (((Integer) VideoCapureActivityCopy2.this.btnsave.getTag()).intValue() == 2) {
                    if (VideoCapureActivityCopy2.this.edtsubject.getText().toString().equalsIgnoreCase(VideoCapureActivityCopy2.this.imgDetails.getSubject()) && VideoCapureActivityCopy2.this.edtcomments.getText().toString().equalsIgnoreCase(VideoCapureActivityCopy2.this.imgDetails.getComments()) && VideoCapureActivityCopy2.this.imagePath.equalsIgnoreCase(VideoCapureActivityCopy2.this.imgDetails.getPicturePath()) && VideoCapureActivityCopy2.this.eventId.getText().toString().equalsIgnoreCase(String.valueOf(VideoCapureActivityCopy2.this.imgDetails.getEventTypeId()))) {
                        Toast.makeText(VideoCapureActivityCopy2.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noChangesToUpdate()), 0).show();
                        return;
                    }
                    VideoCapureActivityCopy2.this.checkinsertdata();
                    Toast.makeText(VideoCapureActivityCopy2.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_updateSuccesToast()), 1).show();
                    VideoCapureActivityCopy2.this.onBackPressed();
                    return;
                }
                if (VideoCapureActivityCopy2.this.tempFile == null) {
                    VideoCapureActivityCopy2.this.alertdialogbox("Please Capture video");
                    return;
                }
                try {
                    VideoCapureActivityCopy2.this.showLoader(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseWaitDialog()));
                    new Thread(new AnonymousClass1()).start();
                    return;
                } catch (Exception e) {
                    PLog.e(VideoCapureActivityCopy2.TAG, e);
                    e.printStackTrace();
                    return;
                }
            }
            Toast.makeText(VideoCapureActivityCopy2.this, "Please select event type.", 1).show();
        }

        /* renamed from: com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2$3$1, reason: invalid class name */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                VideoCapureActivityCopy2.this.checkinsertdata();
                VideoCapureActivityCopy2.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2.3.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            VideoCapureActivityCopy2.this.hideLoader();
                            Data.Builder builder = new Data.Builder();
                            builder.putLong("imageId", VideoCapureActivityCopy2.this.imageId);
                            builder.putString("videoFile", VideoCapureActivityCopy2.this.tempFile.getAbsolutePath());
                            builder.putString("compressedFile", VideoCapureActivityCopy2.this.compressedFile.getAbsolutePath());
                            new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED);
                            final OneTimeWorkRequest build = new OneTimeWorkRequest.Builder(VideoCompressionWorkManager.class).addTag("Sync").setInputData(builder.build()).build();
                            new Handler().postDelayed(new Runnable() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2.3.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    WorkManager.getInstance(VideoCapureActivityCopy2.this).enqueue(build);
                                }
                            }, 2000L);
                            Intent intent = new Intent();
                            intent.putExtra("ImagePath", VideoCapureActivityCopy2.this.tempFile.getAbsoluteFile());
                            VideoCapureActivityCopy2.this.setResult(202, intent);
                            VideoCapureActivityCopy2.this.onBackPressed();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
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
            imageDetails.setReferenceType(this.referenceType + "");
            imageDetails.setReferenceId(this.referenceId);
            imageDetails.setEventTypeId(Integer.parseInt(this.eventId.getText().toString()));
            imageDetails.setContentTypeId(2);
            if (((Integer) this.btnsave.getTag()).intValue() == 2) {
                InsertDataIntoDB.insertFarmerActivityDetailsVideo(imageDetails, true);
            } else {
                InsertDataIntoDB.insertFarmerActivityDetailsVideo(imageDetails, false);
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
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        String str;
        if (i2 == -1) {
            if (i == 3) {
                Uri data = intent.getData();
                if (data != null) {
                    Cursor query = getContentResolver().query(data, null, null, null, null, null);
                    if (query != null) {
                        try {
                            if (query.moveToFirst()) {
                                String string = query.getString(query.getColumnIndex("_display_name"));
                                Log.i(TAG, "Display Name: " + string);
                                int columnIndex = query.getColumnIndex("_size");
                                if (!query.isNull(columnIndex)) {
                                    str = query.getString(columnIndex);
                                } else {
                                    str = "Unknown";
                                }
                                Log.i(TAG, "Size: " + str);
                                this.tempFile = FileUtils.saveTempFile(string, this, data);
                            }
                        } finally {
                            if (query != null) {
                                query.close();
                            }
                        }
                    }
                    if (query != null) {
                        return;
                    } else {
                        return;
                    }
                }
                return;
            }
            if (i == 1 && i2 == -1) {
                try {
                    this.filePath = getFilePath(this, this.videoUri);
                    this.tempFile = new File(this.filePath);
                    Log.e("before compression", this.tempFile.getAbsolutePath() + "");
                } catch (Exception e) {
                    e.printStackTrace();
                    PLog.e(TAG, e);
                }
                this.imagePath = this.tempFile.getAbsolutePath();
                Glide.with(this.context).load(this.videoUri).thumbnail(0.1f).into(this.img_view);
                this.compressedFile = new File(com.conceptglobal.pmc.utils.FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + File.separator + ".VideoCompressor/Compressed Videos/", "VIDEO_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date()) + ".mp4");
            }
        }
    }

    class VideoCompressor extends AsyncTask<Void, Void, Boolean> {
        private final ProgressDialog dialog;

        VideoCompressor() {
            this.dialog = new ProgressDialog(VideoCapureActivityCopy2.this.context);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            this.dialog.setMessage("Compressing video please wait");
            this.dialog.setCanceledOnTouchOutside(false);
            this.dialog.show();
            Log.d(VideoCapureActivityCopy2.TAG, "Start video compression");
            VideoCapureActivityCopy2.this.tvStatus.setText("Before Compreesion file size : " + ((VideoCapureActivityCopy2.this.tempFile.length() / 1024) / 1024) + "MB\n");
            VideoCapureActivityCopy2.this.compressedFile = new File(com.conceptglobal.pmc.utils.FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + File.separator + ".VideoCompressor/Compressed Videos/", "VIDEO_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date()) + ".mp4");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... voidArr) {
            return Boolean.valueOf(MediaController.getInstance().convertVideo(VideoCapureActivityCopy2.this.tempFile.getPath(), VideoCapureActivityCopy2.this.compressedFile.getPath()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute((VideoCompressor) bool);
            if (this.dialog.isShowing() && !VideoCapureActivityCopy2.this.isFinishing()) {
                this.dialog.dismiss();
            }
            if (bool.booleanValue()) {
                try {
                    VideoCapureActivityCopy2.this.img_view.setImageBitmap(ThumbnailUtils.createVideoThumbnail(VideoCapureActivityCopy2.this.compressedFile.getAbsolutePath(), 1));
                } catch (Exception e) {
                    PLog.e(VideoCapureActivityCopy2.TAG, e);
                }
                Log.d(VideoCapureActivityCopy2.TAG, "Compression successfully!");
            }
        }
    }

    public static String getFilePath(Context context, Uri uri) {
        Uri uri2 = null;
        if (uri == null) {
            return null;
        }
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (isExternalStorageDocument(uri)) {
                String[] split = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(split[0])) {
                    return Environment.getExternalStorageDirectory() + "/" + split[1];
                }
                return "/storage/" + split[0] + "/" + split[1];
            }
            if (isDownloadsDocument(uri)) {
                String documentId = DocumentsContract.getDocumentId(uri);
                if (documentId.startsWith("raw:")) {
                    return documentId.replaceFirst("raw:", "");
                }
                try {
                    return getDataColumn(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.parseLong(documentId)), null, null);
                } catch (NumberFormatException unused) {
                    return null;
                }
            }
            if (isMediaDocument(uri)) {
                String[] split2 = DocumentsContract.getDocumentId(uri).split(":");
                String str = split2[0];
                if ("image".equals(str)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if ("video".equals(str)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else if ("audio".equals(str)) {
                    uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                }
                return getDataColumn(context, uri2, "_id=?", new String[]{split2[1]});
            }
        } else {
            if (FirebaseAnalytics.Param.CONTENT.equalsIgnoreCase(uri.getScheme())) {
                if (Build.VERSION.SDK_INT >= 29) {
                    return copyFileToInternalStorage(context, uri, "video.mp4");
                }
                return getDataColumn(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    private static String copyFileToInternalStorage(Context context, Uri uri, String str) {
        File file = new File(context.getExternalFilesDir(Environment.DIRECTORY_MOVIES), str);
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = openInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    String absolutePath = file.getAbsolutePath();
                    fileOutputStream.close();
                    if (openInputStream != null) {
                        openInputStream.close();
                    }
                    return absolutePath;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0035, code lost:
    
        if (r8 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
    
        if (r8 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x003a, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0037, code lost:
    
        r8.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getDataColumn(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
        /*
            java.lang.String r0 = "_data"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            r7 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            r6 = 0
            r2 = r9
            r4 = r10
            r5 = r11
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            if (r8 == 0) goto L2b
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L29 java.lang.Throwable -> L3b
            if (r9 == 0) goto L2b
            int r9 = r8.getColumnIndexOrThrow(r0)     // Catch: java.lang.Exception -> L29 java.lang.Throwable -> L3b
            java.lang.String r9 = r8.getString(r9)     // Catch: java.lang.Exception -> L29 java.lang.Throwable -> L3b
            if (r8 == 0) goto L28
            r8.close()
        L28:
            return r9
        L29:
            r9 = move-exception
            goto L32
        L2b:
            if (r8 == 0) goto L3a
            goto L37
        L2e:
            r9 = move-exception
            goto L3d
        L30:
            r9 = move-exception
            r8 = r7
        L32:
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L3b
            if (r8 == 0) goto L3a
        L37:
            r8.close()
        L3a:
            return r7
        L3b:
            r9 = move-exception
            r7 = r8
        L3d:
            if (r7 == 0) goto L42
            r7.close()
        L42:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2.getDataColumn(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
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
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (VideoCapureActivityCopy2.this.progressdialog != null && VideoCapureActivityCopy2.this.progressdialog.isShowing()) {
                        VideoCapureActivityCopy2.this.progressdialog.dismiss();
                    }
                    VideoCapureActivityCopy2.this.progressdialog = null;
                } catch (Exception e) {
                    PLog.e(VideoCapureActivityCopy2.TAG, e);
                }
            }
        });
    }

    public void alertdialogbox(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        this.builder1 = builder;
        try {
            builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2.7
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
                VideoCapureActivityCopy2 videoCapureActivityCopy2 = VideoCapureActivityCopy2.this;
                videoCapureActivityCopy2.progressdialog = ProgressDialog.show(videoCapureActivityCopy2, "", this.strMsg);
            } catch (Exception e) {
                VideoCapureActivityCopy2.this.progressdialog = null;
                PLog.e(VideoCapureActivityCopy2.TAG, e);
            }
        }
    }
}
