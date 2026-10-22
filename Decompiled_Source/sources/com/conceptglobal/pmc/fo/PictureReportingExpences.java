package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ClipData;
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
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.camera2.PhotoActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.utils.CompressHelper;
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
public class PictureReportingExpences extends BaseActivity {
    private static final int CAM_IMAGE = 10002;
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
    private EditText edtExpencesAmount;
    private EditText edtExpencesType;
    private EditText edtcomments;
    private EditText edtsubject;
    private TextView eventId;
    private String farmerId;
    private File imageFile;
    private long imageId;
    private String imagePath;
    private ImageDetails imgDetails;
    private ImageView img_view;
    private LinearLayout llExpencesAmount;
    private LinearLayout llExpencesType;
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

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.capture_expences);
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

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x02b3 -> B:9:0x02da). Please report as a decompilation issue!!! */
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
        this.btnsave.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_savePictureButton()));
        this.btncancel = (Button) findViewById(R.id.btnpicturecancel);
        this.btnDelete = (Button) findViewById(R.id.btnpicturedelete);
        this.img_view = (ImageView) findViewById(R.id.img_preview);
        this.edtcomments = (EditText) findViewById(R.id.edtprcomments);
        this.edtsubject = (EditText) findViewById(R.id.edtsubject);
        EditText editText = (EditText) findViewById(R.id.edtEventType);
        this.edtEventType = editText;
        editText.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()));
        this.edtExpencesType = (EditText) findViewById(R.id.edtExpencesType);
        this.edtExpencesAmount = (EditText) findViewById(R.id.edtExpenceAmount);
        this.llExpencesAmount = (LinearLayout) findViewById(R.id.llExpencesAmount);
        this.llExpencesType = (LinearLayout) findViewById(R.id.llExpencesType);
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
        this.edtEventType.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReportingExpences.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = Queries.getInstance().gettingDropdownValuesBasedItemCode(PictureReportingExpences.this.referenceType);
                try {
                    if (GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getDisplayTypeQry(PictureReportingExpences.this.activityId + "")) == 3) {
                        str = Queries.getInstance().gettingDropdownValuesBasedItemCodeControlPlot();
                    }
                } catch (Exception unused) {
                }
                ListPopupOne listPopupOne = new ListPopupOne(PictureReportingExpences.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), str, view, PictureReportingExpences.this.eventId);
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
            }
        });
        this.edtExpencesType.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReportingExpences.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(PictureReportingExpences.this.context);
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(PictureReportingExpences.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().getDropdownValuesBasedItemType("ExpType"), view, new TextView(PictureReportingExpences.this.context));
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                } catch (Exception unused) {
                }
            }
        });
        try {
            String[][] strArr = GetDataFromDB.getInstance().getlotdata(Queries.getInstance().gettingDropdownValuesBasedItemCode(this.referenceType));
            long j = this.referenceType;
            if (j == 1 && this.imageId == 0) {
                this.eventId.setText("" + strArr[1][0]);
                this.edtEventType.setText(strArr[1][1]);
            } else if ((j == 2 || j == 3) && this.imageId == 0) {
                this.eventId.setText("" + strArr[3][0]);
                this.edtEventType.setText(strArr[3][1]);
            } else if (j == 10 && this.imageId == 0) {
                long longExtra = this.receiverIntent.getLongExtra("EventTypeId", 0L);
                this.eventId.setText(longExtra + "");
                this.edtEventType.setText(this.receiverIntent.getStringExtra("EventText"));
                this.edtEventType.setFocusable(false);
                this.edtEventType.setClickable(false);
                this.edtEventType.setEnabled(false);
                this.edtEventType.setBackgroundDrawable(getResources().getDrawable(R.drawable.edt_disable));
                try {
                    if (GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("Expenses", "ImageEventType")) == longExtra) {
                        this.llExpencesType.setVisibility(0);
                        this.llExpencesAmount.setVisibility(0);
                    } else {
                        this.llExpencesType.setVisibility(8);
                        this.llExpencesAmount.setVisibility(8);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                this.eventId.setText("" + strArr[0][0]);
                this.edtEventType.setText(strArr[0][1]);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.img_view.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReportingExpences.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValueFromConfigurableLookup("cameraOptions")) == 2) {
                        PLog.eCam("PictureReporting Custom Camera Option Started", "CustomCamera");
                        Intent intent2 = new Intent(PictureReportingExpences.this, (Class<?>) PhotoActivity.class);
                        File compressLoaction = new CompressHelper().getCompressLoaction(PictureReportingExpences.this.context);
                        PictureReportingExpences.this.imageFile = new File(compressLoaction + File.separator + UtilDeclarations.getImageFiledate() + ConstantsPMC.getInstance().getDeviceID() + ".JPEG");
                        PictureReportingExpences pictureReportingExpences = PictureReportingExpences.this;
                        pictureReportingExpences.imagePath = pictureReportingExpences.imageFile.getAbsolutePath();
                        intent2.putExtra("imagePath", PictureReportingExpences.this.imagePath);
                        PictureReportingExpences.this.startActivityForResult(intent2, PictureReportingExpences.CAM_IMAGE);
                        return;
                    }
                    Intent intent3 = new Intent("android.media.action.IMAGE_CAPTURE");
                    PictureReportingExpences pictureReportingExpences2 = PictureReportingExpences.this;
                    intent3.setPackage(((ResolveInfo) pictureReportingExpences2.isIntentAvailable(pictureReportingExpences2, "android.media.action.IMAGE_CAPTURE").get(0)).activityInfo.packageName);
                    if (intent3.resolveActivity(PictureReportingExpences.this.getPackageManager()) != null) {
                        File compressLoaction2 = new CompressHelper().getCompressLoaction(PictureReportingExpences.this.context);
                        PictureReportingExpences.this.imageFile = new File(compressLoaction2 + File.separator + UtilDeclarations.getImageFiledate() + ConstantsPMC.getInstance().getDeviceID() + ".JPEG");
                        PictureReportingExpences pictureReportingExpences3 = PictureReportingExpences.this;
                        pictureReportingExpences3.imagePath = pictureReportingExpences3.imageFile.getAbsolutePath();
                        PictureReportingExpences pictureReportingExpences4 = PictureReportingExpences.this;
                        Uri uriForFile = FileProvider.getUriForFile(pictureReportingExpences4, "com.conceptglobal.pmcdeepakfertilizers.provider", pictureReportingExpences4.imageFile);
                        intent3.putExtra("output", uriForFile);
                        if (Build.VERSION.SDK_INT <= 21) {
                            intent3.setClipData(ClipData.newRawUri("", uriForFile));
                            intent3.addFlags(3);
                        }
                        PLog.location("Navigation", "Called open camera ", PictureReportingExpences.TAG, UtilDeclarations.getDateTime());
                        PictureReportingExpences.this.startActivityForResult(intent3, PictureReportingExpences.CAM_IMAGE);
                    }
                } catch (Exception e3) {
                    e3.getMessage();
                    PLog.e(PictureReportingExpences.TAG, e3);
                }
            }
        });
        this.btnsave.setOnClickListener(new AnonymousClass4());
        this.btncancel.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReportingExpences.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PictureReportingExpences.this.bitmapdata = null;
                PLog.location("Navigation", "cancel click ", PictureReportingExpences.TAG, UtilDeclarations.getDateTime());
                PictureReportingExpences.this.img_view.setImageResource(com.conceptglobal.pmc.R.drawable.picturereporting);
                PictureReportingExpences.this.edtcomments.setText("");
                PictureReportingExpences.this.edtsubject.setText("");
                PictureReportingExpences.this.onBackPressed();
            }
        });
        this.btnDelete.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReportingExpences.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PictureReportingExpences.this.imageId != 0) {
                    try {
                        GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().deleteImage(PictureReportingExpences.this.imageId));
                        PLog.location("Navigation", "ImageDeletde ", PictureReportingExpences.TAG, UtilDeclarations.getDateTime());
                    } catch (Exception e3) {
                        Toast.makeText(PictureReportingExpences.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_imageCantBeDelToast()), 0).show();
                        PLog.e(PictureReportingExpences.TAG, e3);
                        e3.printStackTrace();
                    }
                }
                PictureReportingExpences.this.onBackPressed();
            }
        });
    }

    /* renamed from: com.conceptglobal.pmc.fo.PictureReportingExpences$4, reason: invalid class name */
    class AnonymousClass4 implements View.OnClickListener {
        AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PLog.location("Navigation", "save click", PictureReportingExpences.TAG, UtilDeclarations.getDateTime());
            if (PictureReportingExpences.this.eventId.getText().toString() != null && !PictureReportingExpences.this.eventId.getText().toString().equals("")) {
                if (((Integer) PictureReportingExpences.this.btnsave.getTag()).intValue() == 2) {
                    if (PictureReportingExpences.this.edtsubject.getText().toString().equalsIgnoreCase(PictureReportingExpences.this.imgDetails.getSubject()) && PictureReportingExpences.this.edtcomments.getText().toString().equalsIgnoreCase(PictureReportingExpences.this.imgDetails.getComments()) && PictureReportingExpences.this.imagePath.equalsIgnoreCase(PictureReportingExpences.this.imgDetails.getPicturePath()) && PictureReportingExpences.this.eventId.getText().toString().equalsIgnoreCase(String.valueOf(PictureReportingExpences.this.imgDetails.getEventTypeId()))) {
                        Toast.makeText(PictureReportingExpences.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noChangesToUpdate()), 0).show();
                        return;
                    }
                    PictureReportingExpences.this.checkinsertdata();
                    PLog.location("Navigation", "ImageUpdated ", PictureReportingExpences.TAG, UtilDeclarations.getDateTime());
                    Toast.makeText(PictureReportingExpences.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_updateSuccesToast()), 1).show();
                    Intent intent = new Intent();
                    intent.putExtra("ImagePath", PictureReportingExpences.this.imagePath);
                    PictureReportingExpences.this.setResult(101, intent);
                    PictureReportingExpences.this.onBackPressed();
                    return;
                }
                if (PictureReportingExpences.this.bitmapdata == null) {
                    PictureReportingExpences.this.alertdialogbox(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsCaptureImage()));
                    return;
                }
                try {
                    PictureReportingExpences.this.showLoader(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseWaitDialog()));
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.fo.PictureReportingExpences.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PictureReportingExpences.this.checkinsertdata();
                            PLog.location("Navigation", "ImageSaved ", PictureReportingExpences.TAG, UtilDeclarations.getDateTime());
                            PictureReportingExpences.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fo.PictureReportingExpences.4.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    PictureReportingExpences.this.hideLoader();
                                    if (PictureReportingExpences.this.bitmapdata == null) {
                                        Toast.makeText(PictureReportingExpences.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsCaptureImageProperly()), 0).show();
                                    }
                                    Intent intent2 = new Intent();
                                    intent2.putExtra("ImagePath", PictureReportingExpences.this.imagePath);
                                    PictureReportingExpences.this.setResult(101, intent2);
                                    PictureReportingExpences.this.onBackPressed();
                                }
                            });
                        }
                    }).start();
                    return;
                } catch (Exception e) {
                    PLog.e(PictureReportingExpences.TAG, e);
                    e.printStackTrace();
                    return;
                }
            }
            Toast.makeText(PictureReportingExpences.this, "Please select event type.", 1).show();
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
            imageDetails.setComments(this.edtExpencesType.getText().toString());
            imageDetails.setCtreatedDate(UtilDeclarations.getDateTime());
            imageDetails.setSubject(this.edtExpencesAmount.getText().toString());
            imageDetails.setUpdatedBy(this.mAppConstants.getDeviceID());
            imageDetails.setUpdatedDate(UtilDeclarations.getDateTime());
            imageDetails.setAttributeId(this.attributeId);
            imageDetails.setReferenceType(String.valueOf(this.referenceType));
            imageDetails.setReferenceId(this.referenceId);
            imageDetails.setEventTypeId(Integer.parseInt(this.eventId.getText().toString()));
            imageDetails.setContentTypeId(1);
            if (((Integer) this.btnsave.getTag()).intValue() == 2) {
                InsertDataIntoDB.insertFarmerActivityDetailsImageAttendance(imageDetails, true);
            } else {
                InsertDataIntoDB.insertFarmerActivityDetailsImageAttendance(imageDetails, false);
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
        if (i2 == -1 && i == CAM_IMAGE) {
            PLog.location("Navigation", "ImageCaptured ", TAG, UtilDeclarations.getDateTime());
            try {
                if (this.imagePath == null) {
                    if (intent.getData() != null) {
                        PLog.eCam("PictureReporting DefaultCamera imagepath returned through data", "DefaultCamera Imagepath");
                        File file = new File(intent.getData().getPath());
                        if (file.exists() && compressImage(file.getAbsolutePath()) != null) {
                            try {
                                if (file.exists()) {
                                    loadDiskThumbnail(this.context, this.img_view, file);
                                }
                            } catch (Exception e) {
                                PLog.ecam("PictureReporting Default Camera after pic captured", e);
                            }
                        }
                    } else {
                        this.img_view.setImageResource(R.drawable.img_add_patch);
                    }
                    return;
                }
                if (intent != null && intent.hasExtra("bitmapData")) {
                    PLog.eCam("PictureReporting CustomCamera bitmapImage returned", "CustomCamera Image");
                    File file2 = new File(intent.getData().getPath());
                    this.bitmapdata = intent.getByteArrayExtra("bitmapData");
                    try {
                        if (file2.exists()) {
                            loadDiskThumbnail(this.context, this.img_view, file2);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        PLog.ecam("PictureReporting Custom Camera after pic captured", e2);
                    }
                    return;
                }
                PLog.eCam("PictureReporting DefaultCamera imagepath returned", "DefaultCamera Imagepath");
                PLog.location("Navigation", "ImageCaptured " + this.imagePath, TAG, UtilDeclarations.getDateTime());
                File file3 = new File(this.imagePath);
                if (file3.exists()) {
                    PLog.location("Navigation", "image saved in file ", TAG, UtilDeclarations.getDateTime());
                    String compressImage = compressImage(file3.getAbsolutePath());
                    PLog.location("Navigation", "image compressed " + compressImage, TAG, UtilDeclarations.getDateTime());
                    if (compressImage != null) {
                        try {
                            if (file3.exists()) {
                                loadDiskThumbnail(this.context, this.img_view, file3);
                            }
                        } catch (Exception e3) {
                            PLog.ecam("PictureReporting Default Camera after pic captured", e3);
                            PLog.e(TAG, e3);
                        }
                    }
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
            builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReportingExpences.7
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
                PictureReportingExpences pictureReportingExpences = PictureReportingExpences.this;
                pictureReportingExpences.progressdialog = ProgressDialog.show(pictureReportingExpences, "", this.strMsg);
            } catch (Exception e) {
                PictureReportingExpences.this.progressdialog = null;
                PLog.e(PictureReportingExpences.TAG, e);
            }
        }
    }

    public void showLoader(String str) {
        hideLoader();
        runOnUiThread(new RunShowLoader(str));
    }

    public void hideLoader() {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fo.PictureReportingExpences.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (PictureReportingExpences.this.progressdialog != null && PictureReportingExpences.this.progressdialog.isShowing()) {
                        PictureReportingExpences.this.progressdialog.dismiss();
                    }
                    PictureReportingExpences.this.progressdialog = null;
                } catch (Exception e) {
                    PLog.e(PictureReportingExpences.TAG, e);
                }
            }
        });
    }
}
