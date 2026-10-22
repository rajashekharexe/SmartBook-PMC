package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ClipData;
import android.content.ContentValues;
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
import android.location.Location;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.GridExpencesAdapter;
import com.conceptglobal.pmc.camera2.PhotoActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class PictureReporting_Expenses extends BaseActivity {
    private static final int CAM_IMAGE = 10002;
    public static int ImageSoureceFlag = 0;
    private static final int PICK_IMAGE_REQUEST = 1;
    private static final int REQUEST_READ_EXTERNAL_STORAGE = 2;
    private static final String TAG = "PictureReporting";
    private long IdTransid;
    private int activityId;
    private int assignmentId;
    private int attrID;
    private String attrName;
    private int attributeId;
    private byte[] bitmapdata;
    private Button btnDelete;
    private Button btncancel;
    private Button btnsave;
    private AlertDialog.Builder builder1;
    private Context context;
    private EditText edtEventType;
    private EditText edtcomments;
    private EditText edtsubject;
    private TextView eventId;
    private ArrayList<String> existingimagelist;
    private GridView expencesGridView;
    private GridExpencesAdapter expencesIimageAdapter;
    private List<ImageDetails> expencesImages;
    private String farmerId;
    private File imageFile;
    private long imageId;
    private String imagePath;
    String imagePathGallery;
    private ArrayList<String> imagelist;
    private ImageDetails imgDetails;
    private ImageView img_view;
    private ConstantsPMC mAppConstants;
    private LocationUtils mLocationUtils;
    private ProgressDialog progressdialog;
    private String referenceId;
    private long referenceType;
    private String strLat;
    private String strLong;
    private TextView tvComments;
    private TextView tvEvent;
    private TextView tvImage;
    private TextView tvSubject;
    private Intent receiverIntent = null;
    private final int update = 2;
    private final int save = 1;
    int flagvalue = 1;

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.capture_expenses);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        this.mLocationUtils = new LocationUtils();
        CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pictureTitle()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        PLog.location("Navigation", "onCreate()", TAG, UtilDeclarations.getDateTime());
        Initialize();
        getImageDetails();
        getImageDetailsList();
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
        this.expencesIimageAdapter = new GridExpencesAdapter(this, this.imagelist);
        this.expencesGridView.setAdapter((ListAdapter) null);
        this.expencesGridView.setAdapter((ListAdapter) this.expencesIimageAdapter);
        this.expencesGridView.setVisibility(0);
        this.expencesGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReporting_Expenses.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            }
        });
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

    private void getImageDetailsList() {
        ArrayList<String> imagesPathDetail = GetDataFromDB.getInstance().getImagesPathDetail(Queries.getInstance().getImagesPathList(this.attrID, this.referenceId));
        this.imagelist = imagesPathDetail;
        this.existingimagelist.addAll(imagesPathDetail);
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        PLog.location("Navigation", "onLowMemory", TAG, UtilDeclarations.getDateTime());
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
        this.btnsave.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_savePictureButton()));
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
        this.attrID = this.receiverIntent.getIntExtra("AttributeID", 0);
        this.attrName = this.receiverIntent.getStringExtra("AttributeName");
        this.IdTransid = this.receiverIntent.getLongExtra("IdTransid", 0L);
        GridView gridView = (GridView) findViewById(R.id.grid_expences);
        this.expencesGridView = gridView;
        gridView.setAdapter((ListAdapter) null);
        this.expencesImages = new ArrayList();
        this.imagelist = new ArrayList<>();
        this.existingimagelist = new ArrayList<>();
        fetchLocation();
        this.edtEventType.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReporting_Expenses.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = Queries.getInstance().gettingDropdownValuesBasedItemCode(PictureReporting_Expenses.this.referenceType);
                try {
                    if (GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getDisplayTypeQry(PictureReporting_Expenses.this.activityId + "")) == 3) {
                        str = Queries.getInstance().gettingDropdownValuesBasedItemCodeControlPlot();
                    }
                } catch (Exception unused) {
                }
                ListPopupOne listPopupOne = new ListPopupOne(PictureReporting_Expenses.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), str, view, PictureReporting_Expenses.this.eventId);
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
            }
        });
        try {
            this.eventId.setText("" + this.attrID);
            this.edtEventType.setText(this.attrName);
            setEditableFalse(this.edtEventType);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.img_view.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReporting_Expenses.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PictureReporting_Expenses.this.imagelist.size() >= 5) {
                    Toast.makeText(PictureReporting_Expenses.this.getApplicationContext(), "Maximum limit reached", 0).show();
                    return;
                }
                try {
                    String string = SharedPrefManager.getString(PictureReporting_Expenses.this.getApplicationContext(), ConstantDeclarations.getInstance().getKeyTicketVisibility(), "False");
                    if (GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValueFromConfigurableLookup("cameraOptions")) != 2 && !string.equalsIgnoreCase("True")) {
                        Intent intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
                        PictureReporting_Expenses pictureReporting_Expenses = PictureReporting_Expenses.this;
                        intent2.setPackage(((ResolveInfo) pictureReporting_Expenses.isIntentAvailable(pictureReporting_Expenses, "android.media.action.IMAGE_CAPTURE").get(0)).activityInfo.packageName);
                        if (intent2.resolveActivity(PictureReporting_Expenses.this.getPackageManager()) != null) {
                            File compressLoaction = new CompressHelper().getCompressLoaction(PictureReporting_Expenses.this.context);
                            PictureReporting_Expenses.this.imageFile = new File(compressLoaction + File.separator + UtilDeclarations.getImageFiledate() + ConstantsPMC.getInstance().getDeviceID() + ".JPEG");
                            PictureReporting_Expenses pictureReporting_Expenses2 = PictureReporting_Expenses.this;
                            pictureReporting_Expenses2.imagePath = pictureReporting_Expenses2.imageFile.getAbsolutePath();
                            PictureReporting_Expenses pictureReporting_Expenses3 = PictureReporting_Expenses.this;
                            Uri uriForFile = FileProvider.getUriForFile(pictureReporting_Expenses3, "com.conceptglobal.pmcdeepakfertilizers.provider", pictureReporting_Expenses3.imageFile);
                            intent2.putExtra("output", uriForFile);
                            if (Build.VERSION.SDK_INT <= 21) {
                                intent2.setClipData(ClipData.newRawUri("", uriForFile));
                                intent2.addFlags(3);
                            }
                            PLog.location("Navigation", "Called open camera ", PictureReporting_Expenses.TAG, UtilDeclarations.getDateTime());
                            PictureReporting_Expenses.this.startActivityForResult(intent2, PictureReporting_Expenses.CAM_IMAGE);
                            return;
                        }
                        return;
                    }
                    PLog.eCam("PictureReporting Custom Camera Option Started", "CustomCamera");
                    Intent intent3 = new Intent(PictureReporting_Expenses.this, (Class<?>) PhotoActivity.class);
                    File compressLoaction2 = new CompressHelper().getCompressLoaction(PictureReporting_Expenses.this.context);
                    PictureReporting_Expenses.this.imageFile = new File(compressLoaction2 + File.separator + UtilDeclarations.getImageFiledate() + ConstantsPMC.getInstance().getDeviceID() + ".JPEG");
                    PictureReporting_Expenses pictureReporting_Expenses4 = PictureReporting_Expenses.this;
                    pictureReporting_Expenses4.imagePath = pictureReporting_Expenses4.imageFile.getAbsolutePath();
                    intent3.putExtra("imagePath", PictureReporting_Expenses.this.imagePath);
                    PictureReporting_Expenses.this.startActivityForResult(intent3, PictureReporting_Expenses.CAM_IMAGE);
                } catch (Exception e2) {
                    e2.getMessage();
                    PLog.e(PictureReporting_Expenses.TAG, e2);
                }
            }
        });
        this.btnsave.setOnClickListener(new AnonymousClass4());
        this.btncancel.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReporting_Expenses.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PictureReporting_Expenses.this.bitmapdata = null;
                PLog.location("Navigation", "cancel click ", PictureReporting_Expenses.TAG, UtilDeclarations.getDateTime());
                PictureReporting_Expenses.this.img_view.setImageResource(com.conceptglobal.pmc.R.drawable.picturereporting);
                PictureReporting_Expenses.this.edtcomments.setText("");
                PictureReporting_Expenses.this.edtsubject.setText("");
                PictureReporting_Expenses.this.onBackPressed();
            }
        });
        this.btnDelete.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReporting_Expenses.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PictureReporting_Expenses.this.imageId != 0) {
                    try {
                        GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().deleteImage(PictureReporting_Expenses.this.imageId));
                        PLog.location("Navigation", "ImageDeletde ", PictureReporting_Expenses.TAG, UtilDeclarations.getDateTime());
                    } catch (Exception e2) {
                        Toast.makeText(PictureReporting_Expenses.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_imageCantBeDelToast()), 0).show();
                        PLog.e(PictureReporting_Expenses.TAG, e2);
                        e2.printStackTrace();
                    }
                }
                PictureReporting_Expenses.this.onBackPressed();
            }
        });
    }

    /* renamed from: com.conceptglobal.pmc.fo.PictureReporting_Expenses$4, reason: invalid class name */
    class AnonymousClass4 implements View.OnClickListener {
        AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PLog.location("Navigation", "save click", PictureReporting_Expenses.TAG, UtilDeclarations.getDateTime());
            if (PictureReporting_Expenses.this.eventId.getText().toString() != null && !PictureReporting_Expenses.this.eventId.getText().toString().equals("")) {
                if (((Integer) PictureReporting_Expenses.this.btnsave.getTag()).intValue() == 2) {
                    if (PictureReporting_Expenses.this.edtsubject.getText().toString().equalsIgnoreCase(PictureReporting_Expenses.this.imgDetails.getSubject()) && PictureReporting_Expenses.this.edtcomments.getText().toString().equalsIgnoreCase(PictureReporting_Expenses.this.imgDetails.getComments()) && PictureReporting_Expenses.this.imagePath.equalsIgnoreCase(PictureReporting_Expenses.this.imgDetails.getPicturePath()) && PictureReporting_Expenses.this.eventId.getText().toString().equalsIgnoreCase(String.valueOf(PictureReporting_Expenses.this.imgDetails.getEventTypeId()))) {
                        Toast.makeText(PictureReporting_Expenses.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noChangesToUpdate()), 0).show();
                        return;
                    }
                    PictureReporting_Expenses.this.checkinsertdata();
                    PLog.location("Navigation", "ImageUpdated ", PictureReporting_Expenses.TAG, UtilDeclarations.getDateTime());
                    Toast.makeText(PictureReporting_Expenses.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_updateSuccesToast()), 1).show();
                    Intent intent = new Intent();
                    intent.putExtra("ImagePath", PictureReporting_Expenses.this.imagePath);
                    PictureReporting_Expenses.this.setResult(101, intent);
                    PictureReporting_Expenses.this.onBackPressed();
                    return;
                }
                if (PictureReporting_Expenses.this.bitmapdata == null) {
                    PictureReporting_Expenses.this.alertdialogbox(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsCaptureImage()));
                    return;
                }
                try {
                    PictureReporting_Expenses.this.showLoader(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseWaitDialog()));
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.fo.PictureReporting_Expenses.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PictureReporting_Expenses.this.checkinsertdata();
                            PLog.location("Navigation", "ImageSaved ", PictureReporting_Expenses.TAG, UtilDeclarations.getDateTime());
                            PictureReporting_Expenses.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fo.PictureReporting_Expenses.4.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    PictureReporting_Expenses.this.hideLoader();
                                    if (PictureReporting_Expenses.this.bitmapdata == null) {
                                        Toast.makeText(PictureReporting_Expenses.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsCaptureImageProperly()), 0).show();
                                    }
                                    Intent intent2 = new Intent();
                                    intent2.putExtra("ImagePath", PictureReporting_Expenses.this.imagePath);
                                    PictureReporting_Expenses.this.setResult(101, intent2);
                                    PictureReporting_Expenses.this.onBackPressed();
                                }
                            });
                        }
                    }).start();
                    return;
                } catch (Exception e) {
                    PLog.e(PictureReporting_Expenses.TAG, e);
                    e.printStackTrace();
                    return;
                }
            }
            Toast.makeText(PictureReporting_Expenses.this, "Please select event type.", 1).show();
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
        for (int i = 0; i < this.imagelist.size(); i++) {
            try {
                if (!this.existingimagelist.contains(this.imagelist.get(i))) {
                    ImageDetails imageDetails = new ImageDetails();
                    imageDetails.setActivityId(this.activityId);
                    imageDetails.setAssignmentId(this.assignmentId);
                    imageDetails.setFarmerId(0);
                    imageDetails.setImageId(this.imageId);
                    imageDetails.setPdaID(Integer.parseInt(this.mAppConstants.getDeviceID()));
                    imageDetails.setPicturePath(this.imagelist.get(i));
                    imageDetails.setCreatedBy(this.mAppConstants.getDeviceID());
                    imageDetails.setComments(this.edtcomments.getText().toString());
                    imageDetails.setCtreatedDate(UtilDeclarations.getDateTime());
                    imageDetails.setSubject(this.edtsubject.getText().toString());
                    imageDetails.setUpdatedBy(this.mAppConstants.getDeviceID());
                    imageDetails.setUpdatedDate(UtilDeclarations.getDateTime());
                    imageDetails.setAttributeId(this.attrID);
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
                }
            } catch (Exception e) {
                PLog.e(TAG, e);
                e.printStackTrace();
                return;
            }
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
        new SimpleDateFormat("dd-M-yyyy");
        if (i2 == -1) {
            if (i != CAM_IMAGE) {
                if (i == 1) {
                    if (i2 == -1) {
                        fetchLocation();
                        return;
                    } else {
                        if (i2 != 0) {
                            return;
                        }
                        this.mLocationUtils.showDialog(this, LocationUtils.GPS_NOT_TURNED_ON);
                        return;
                    }
                }
                return;
            }
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
                if (intent != null) {
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

    public void loadDiskThumbnail(Context context, ImageView imageView, File file) {
        File file2 = new File(this.imagePath);
        if (file2.exists()) {
            try {
                this.imagelist.add(this.imagePath);
                this.expencesIimageAdapter.notifyDataSetChanged();
                saveImage(this.imageFile, file2.getName());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void saveImage(File file, String str) throws IOException {
        OutputStream fileOutputStream;
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
        if (Build.VERSION.SDK_INT >= 29) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", str);
            contentValues.put("mime_type", "image/jpeg");
            contentValues.put("relative_path", Environment.DIRECTORY_PICTURES);
            fileOutputStream = getContentResolver().openOutputStream(getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues));
        } else {
            File file2 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).toString(), str);
            if (!file2.exists()) {
                file2.createNewFile();
            }
            fileOutputStream = new FileOutputStream(file2);
        }
        try {
            decodeFile.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        } finally {
            fileOutputStream.close();
        }
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
            builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.PictureReporting_Expenses.7
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
                PictureReporting_Expenses pictureReporting_Expenses = PictureReporting_Expenses.this;
                pictureReporting_Expenses.progressdialog = ProgressDialog.show(pictureReporting_Expenses, "", this.strMsg);
            } catch (Exception e) {
                PictureReporting_Expenses.this.progressdialog = null;
                PLog.e(PictureReporting_Expenses.TAG, e);
            }
        }
    }

    public void showLoader(String str) {
        hideLoader();
        runOnUiThread(new RunShowLoader(str));
    }

    public void hideLoader() {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fo.PictureReporting_Expenses.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (PictureReporting_Expenses.this.progressdialog != null && PictureReporting_Expenses.this.progressdialog.isShowing()) {
                        PictureReporting_Expenses.this.progressdialog.dismiss();
                    }
                    PictureReporting_Expenses.this.progressdialog = null;
                } catch (Exception e) {
                    PLog.e(PictureReporting_Expenses.TAG, e);
                }
            }
        });
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setEnabled(false);
        editText.setBackgroundDrawable(getResources().getDrawable(R.drawable.edt_disable));
    }

    private void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.PictureReporting_Expenses.9
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    PictureReporting_Expenses.this.strLat = locationInfo.getLatitude() + "";
                    PictureReporting_Expenses.this.strLong = locationInfo.getLongitude() + "";
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Log.i(TAG, "onRequestPermissionResult");
        if (i == 34) {
            if (iArr.length <= 0) {
                Log.i(TAG, "User interaction was cancelled.");
            } else if (iArr[0] == 0) {
                fetchLocation();
            } else {
                this.mLocationUtils.showDialog(this, LocationUtils.PERMISSION_DENIED);
            }
        }
    }

    public void checkAndRequestPermission() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 2);
        } else {
            openGallery();
        }
    }

    public void openGallery() {
        startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.io.File uriToFile(android.net.Uri r9) {
        /*
            r8 = this;
            java.lang.String r0 = r9.getScheme()
            java.lang.String r1 = "content"
            boolean r0 = r0.equals(r1)
            r1 = 0
            if (r0 == 0) goto L43
            java.lang.String r0 = "_data"
            java.lang.String[] r4 = new java.lang.String[]{r0}
            android.content.ContentResolver r2 = r8.getContentResolver()
            r6 = 0
            r7 = 0
            r5 = 0
            r3 = r9
            android.database.Cursor r9 = r2.query(r3, r4, r5, r6, r7)
            if (r9 == 0) goto L3c
            boolean r2 = r9.moveToFirst()     // Catch: java.lang.Throwable -> L30
            if (r2 == 0) goto L3c
            int r0 = r9.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L30
            java.lang.String r0 = r9.getString(r0)     // Catch: java.lang.Throwable -> L30
            goto L3d
        L30:
            r0 = move-exception
            if (r9 == 0) goto L3b
            r9.close()     // Catch: java.lang.Throwable -> L37
            goto L3b
        L37:
            r9 = move-exception
            r0.addSuppressed(r9)
        L3b:
            throw r0
        L3c:
            r0 = r1
        L3d:
            if (r9 == 0) goto L55
            r9.close()
            goto L55
        L43:
            java.lang.String r0 = r9.getScheme()
            java.lang.String r2 = "file"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L54
            java.lang.String r0 = r9.getPath()
            goto L55
        L54:
            r0 = r1
        L55:
            if (r0 == 0) goto L5d
            java.io.File r9 = new java.io.File
            r9.<init>(r0)
            return r9
        L5d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.PictureReporting_Expenses.uriToFile(android.net.Uri):java.io.File");
    }
}
