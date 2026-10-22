package com.conceptglobal.pmc.promotions.activity;

import android.app.Dialog;
import android.app.DownloadManager;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.storage.StorageManager;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.FileProvider;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.RequestOptions;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew;
import com.conceptglobal.pmc.promotions.common.Queries;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.downloadmanager.FileDownloadManager;
import com.conceptglobal.pmc.promotions.downloadmanager.IcsDownloadManager;
import com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmc.promotions.models.FilterCriteria;
import com.conceptglobal.pmc.promotions.utils.ArrowDownloadButton;
import com.conceptglobal.pmc.promotions.utils.Constants;
import com.conceptglobal.pmc.promotions.utils.DeviceMemory;
import com.conceptglobal.pmc.promotions.utils.FlowLayout;
import com.conceptglobal.pmc.promotions.utils.UtilDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.github.chrisbanes.photoview.PhotoView;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.YouTubeThumbnailLoader;
import com.google.android.youtube.player.YouTubeThumbnailView;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class ContentDetailsActivity extends AppCompatActivity implements OnAudioActionPerformed {
    private static final int DOWNLOAD_THREAD_POOL_SIZE = 4;
    private static final String TAG = "ContentDetailsActivity";
    private CategoryDAO categoryDAO;
    private FlowLayout chipsBoxLayout;
    private ContentMaster contentMaster;
    private ContentViewAdapterNew contentViewAdapter;
    private Context context;
    private FileDownloadManager downloadManager;
    private ImageView ivActionPlay;
    private ArrowDownloadButton ivDownloads;
    private ImageView ivFavourites;
    private ImageView ivShare;
    private ImageView ivThumbNail;
    private LinearLayoutManager llm;
    private LoadDataTask mTask;
    private ArrayList<ContentMaster> masterList;
    private int position;
    ProgressDialog progressBarDialog;
    private ArrayList<ContentMaster> relatedMasterList;
    private RecyclerView rvRelated;
    private YouTubeThumbnailView thumbnail;
    private ThumbnailListener thumbnailListener;
    private Map<YouTubeThumbnailView, YouTubeThumbnailLoader> thumbnailViewToLoaderMap;
    Timer timer;
    private TextView tvBrand;
    private TextView tvCategory;
    private TextView tvCrop;
    private TextView tvLanguage;
    private TextView tvPublishedDate;
    ArrayList<String> keysList = new ArrayList<>();
    long mIcsDownloadId = 0;
    long NUM_BYTES_NEEDED_FOR_MY_APP = 512000;
    private int contextId = 1;
    private BroadcastReceiver reciever = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                long j = intent.getExtras().getLong("DownloadKey");
                String string = intent.getExtras().getString("LocalPath");
                if (ContentDetailsActivity.this.mIcsDownloadId == j) {
                    ContentDetailsActivity.this.tvBrand.setText("Downloaded,Available in local");
                    ContentDetailsActivity.this.contentMaster.setContentDeviceLocation(string);
                    ContentDetailsActivity.this.ivDownloads.setProgress(100.0f);
                    ContentDetailsActivity.this.ivDownloads.setEnabled(false);
                    ContentDetailsActivity.this.mIcsDownloadId = 0L;
                    if (ContentDetailsActivity.this.contentMaster.getIsSharable() != null && ContentDetailsActivity.this.contentMaster.getIsSharable().equalsIgnoreCase("true")) {
                        ContentDetailsActivity.this.ivShare.setVisibility(0);
                    }
                    ContentDetailsActivity.this.categoryDAO.insertContentLog(ContentDetailsActivity.this.contentMaster.getContentId(), ContentDetailsActivity.this.contentMaster.getParentCatId(), Integer.parseInt(ContentDetailsActivity.this.categoryDAO.getPdaId()), new CategoryDAO(context).getUserId(), UtilDeclarations.getDateTimeForLogs(), false, false, ContentDetailsActivity.this.contextId, Constants.USAGE_ACTION_DOWNLOADE, 1, ContentDetailsActivity.this.contentMaster.getContentId(), Constants.USAGE_ACTION_PRIMARY_COLUMN_NAME);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };

    @Override // com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed
    public void onAudioActionPerformed(int i, String str, String str2) {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_content_details);
        CustomActionBar.initActionBar(this, "Details (" + com.conceptglobal.pmc.utils.UtilDeclarations.getApplicationVersion(this) + ")");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        Bundle extras = getIntent().getExtras();
        this.relatedMasterList = new ArrayList<>();
        this.masterList = (ArrayList) extras.getSerializable("ContentList");
        int i = extras.getInt("Position");
        this.position = i;
        this.contentMaster = this.masterList.get(i);
        this.context = this;
        this.categoryDAO = new CategoryDAO(this);
        try {
            this.contextId = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getContextIDQry(this.contentMaster.getContentId()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.downloadManager = new FileDownloadManager(4);
        try {
            long lookupValue = GetDataFromDB.getInstance().getLookupValue(com.conceptglobal.pmc.common.Queries.getInstance().getItemValue("FreeSpaceRequiredForDC"));
            this.NUM_BYTES_NEEDED_FOR_MY_APP = lookupValue > 0 ? lookupValue * 1024 : this.NUM_BYTES_NEEDED_FOR_MY_APP;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            String singleValue = this.categoryDAO.getSingleValue("select DownloadID from DownLoadFileDetails where ContentID =" + this.contentMaster.getContentId());
            if (singleValue != null && !singleValue.isEmpty()) {
                this.mIcsDownloadId = Long.valueOf(singleValue).longValue();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        devideKeys();
        initViews();
        setListeners();
        setData();
        loadData("", "");
        setAdapter();
        setViewsVisibility();
        fillAutoSpacingLayout(this.chipsBoxLayout, this.contentMaster.getCategoryDetails());
        LocalBroadcastManager.getInstance(this).registerReceiver(this.reciever, new IntentFilter("DownloadStatus"));
        this.contentMaster.setContentDeviceLocation(this.categoryDAO.getSingleValue(Queries.getInstance().getContentDeviceLocation(this.contentMaster.getContentId() + "")));
        if (this.contentMaster.getContentDeviceLocation() != null && this.contentMaster.getContentDeviceLocation().length() > 0) {
            this.ivDownloads.setEnabled(false);
            this.ivDownloads.setProgress(100.0f);
            this.tvBrand.setText("Downloaded,Available in local");
            this.categoryDAO.executeQuery(Queries.getInstance().getDownLoadFileDetailsDeleteQry(this.contentMaster.getContentId() + ""));
            this.mIcsDownloadId = 0L;
            if (!new File(this.contentMaster.getContentDeviceLocation()).exists()) {
                this.categoryDAO.updateContent(this.contentMaster.getContentId(), "");
                this.contentMaster.setContentDeviceLocation("");
                this.ivDownloads.reset();
                this.ivDownloads.setEnabled(true);
            }
        } else {
            this.ivDownloads.reset();
            this.ivDownloads.setEnabled(true);
            this.tvBrand.setText("Not Downloaded.");
        }
        this.thumbnailViewToLoaderMap = new HashMap();
        this.thumbnailListener = new ThumbnailListener();
        if (this.contentMaster.getContentType() == 8 && UtilDeclarations.isOnline(this.context)) {
            setViewsVisibilityGone();
            this.thumbnail.setTag(UtilDeclarations.getInstance().getVideoIdFromYoutubeUrl(this.contentMaster.getContentServerLocation().replace(new CategoryDAO(this.context).getBaseUrlForVideos(), "")));
            this.thumbnail.initialize(Constants.DEVELOPER_KEY, this.thumbnailListener);
        }
        this.categoryDAO.insertContentLog(this.contentMaster.getContentId(), this.contentMaster.getParentCatId(), Integer.parseInt(this.categoryDAO.getPdaId()), new CategoryDAO(this.context).getUserId(), UtilDeclarations.getDateTimeForLogs(), false, false, this.contextId, Constants.USAGE_ACTION_DETAILS, 1, this.contentMaster.getContentId(), Constants.USAGE_ACTION_PRIMARY_COLUMN_NAME);
        if (this.contentMaster.getContentType() == 1 || this.contentMaster.getContentType() == 8) {
            this.ivActionPlay.setVisibility(0);
        } else {
            this.ivActionPlay.setVisibility(8);
        }
    }

    private void loadData(String str, String str2) {
        FilterCriteria filterCriteria = new FilterCriteria();
        filterCriteria.setContentIds(str);
        filterCriteria.setContentTypes(str2);
        LoadDataTask loadDataTask = new LoadDataTask();
        this.mTask = loadDataTask;
        loadDataTask.execute(filterCriteria);
    }

    private void setViewsVisibility() {
        if (this.contentMaster.getIsDownloadable() == null || this.contentMaster.getIsDownloadable().equalsIgnoreCase("") || this.contentMaster.getIsDownloadable().equalsIgnoreCase("false")) {
            this.ivDownloads.setVisibility(8);
        }
        if (this.contentMaster.getIsSharable() != null && this.contentMaster.getIsSharable().equalsIgnoreCase("true") && this.contentMaster.getContentDeviceLocation() != null && this.contentMaster.getContentDeviceLocation().length() > 0) {
            this.ivShare.setVisibility(0);
        } else {
            this.ivShare.setVisibility(8);
        }
    }

    private void setViewsVisibilityGone() {
        this.ivDownloads.setVisibility(8);
        this.ivShare.setVisibility(8);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.reciever);
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
            this.timer = null;
        }
    }

    private void setListeners() {
        this.ivDownloads.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ContentDetailsActivity.this.contentMaster.getContentDeviceLocation() == null || ContentDetailsActivity.this.contentMaster.getContentDeviceLocation().equals("")) {
                    if (!UtilDeclarations.isOnline(ContentDetailsActivity.this.context)) {
                        Toast.makeText(ContentDetailsActivity.this.context, "Please enable data connection", 0).show();
                        return;
                    }
                    if (Build.VERSION.SDK_INT >= 26) {
                        if (!ContentDetailsActivity.this.getAvailableFreeSpace()) {
                            return;
                        }
                    } else {
                        long internalFreeSpaceInMB = DeviceMemory.getInternalFreeSpaceInMB();
                        if (1024 * internalFreeSpaceInMB < ContentDetailsActivity.this.NUM_BYTES_NEEDED_FOR_MY_APP) {
                            ContentDetailsActivity.this.showAlertDialog("Available size is " + internalFreeSpaceInMB + "MB.\n minimum 500 MB is required to download data, please delete some files and try again.");
                            return;
                        }
                    }
                    if (ContentDetailsActivity.this.mIcsDownloadId > 0) {
                        ContentDetailsActivity.this.ivDownloads.reset();
                        ContentDetailsActivity.this.ivDownloads.startAnimating();
                        ContentDetailsActivity.this.ivDownloads.setEnabled(false);
                        ContentDetailsActivity contentDetailsActivity = ContentDetailsActivity.this;
                        contentDetailsActivity.new DownloadProgressCounter(contentDetailsActivity.mIcsDownloadId).start();
                        return;
                    }
                    ContentDetailsActivity.this.ivDownloads.setEnabled(false);
                    ContentDetailsActivity.this.ivDownloads.postDelayed(new Runnable() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ContentDetailsActivity.this.ivDownloads.setEnabled(true);
                        }
                    }, 5000L);
                    Uri.parse(ContentDetailsActivity.this.contentMaster.getContentServerLocation());
                    String[] split = ContentDetailsActivity.this.contentMaster.getContentServerLocation().split("/");
                    String str = split[split.length - 1];
                    ContentDetailsActivity.this.ivDownloads.reset();
                    ContentDetailsActivity.this.ivDownloads.startAnimating();
                    ContentDetailsActivity contentDetailsActivity2 = ContentDetailsActivity.this;
                    IcsDownloadManager icsDownloadManager = IcsDownloadManager.getInstance();
                    ContentDetailsActivity contentDetailsActivity3 = ContentDetailsActivity.this;
                    contentDetailsActivity2.mIcsDownloadId = icsDownloadManager.initclassicDownlaod(contentDetailsActivity3, contentDetailsActivity3.contentMaster.getContentServerLocation(), 0, ContentDetailsActivity.this.contentMaster.getContentName(), "download progress", str).longValue();
                    Toast.makeText(ContentDetailsActivity.this, "Download started.", 1).show();
                    ContentDetailsActivity.this.contentMaster.setContentDeviceLocation(UtilDeclarations.mediaPath + str);
                    new CategoryDAO(ContentDetailsActivity.this.context).InsertDownloadDetails(ContentDetailsActivity.this.mIcsDownloadId + "", str, ContentDetailsActivity.this.contentMaster.getContentId(), 1);
                    ContentDetailsActivity.this.tvBrand.setText("Downloaded in progress.");
                    ContentDetailsActivity contentDetailsActivity4 = ContentDetailsActivity.this;
                    contentDetailsActivity4.new DownloadProgressCounter(contentDetailsActivity4.mIcsDownloadId).start();
                    return;
                }
                Toast.makeText(ContentDetailsActivity.this.context, "Available in local.", 0).show();
            }
        });
        this.ivFavourites.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ContentDetailsActivity.this.contentMaster.getFavouriteStatus() == 1) {
                    ContentDetailsActivity.this.contentMaster.setFavouriteStatus(0);
                    ContentDetailsActivity.this.categoryDAO.updatFavouriteStatus("ISFavourite", ContentDetailsActivity.this.contentMaster.getContentId(), 0);
                    ContentDetailsActivity.this.ivFavourites.setImageDrawable(ContentDetailsActivity.this.getResources().getDrawable(R.drawable.ic_heart));
                    ContentDetailsActivity.this.categoryDAO.insertContentLog(ContentDetailsActivity.this.contentMaster.getContentId(), ContentDetailsActivity.this.contentMaster.getParentCatId(), Integer.parseInt(ContentDetailsActivity.this.categoryDAO.getPdaId()), new CategoryDAO(ContentDetailsActivity.this.context).getUserId(), UtilDeclarations.getDateTimeForLogs(), false, false, ContentDetailsActivity.this.contextId, Constants.USAGE_ACTION_MARK_AS_UNFAVOURITE, 1, ContentDetailsActivity.this.contentMaster.getContentId(), Constants.USAGE_ACTION_PRIMARY_COLUMN_NAME);
                    return;
                }
                ContentDetailsActivity.this.contentMaster.setFavouriteStatus(1);
                ContentDetailsActivity.this.categoryDAO.updatFavouriteStatus("ISFavourite", ContentDetailsActivity.this.contentMaster.getContentId(), 1);
                ContentDetailsActivity.this.ivFavourites.setImageDrawable(ContentDetailsActivity.this.getResources().getDrawable(R.drawable.ic_favourite));
                ContentDetailsActivity.this.categoryDAO.insertContentLog(ContentDetailsActivity.this.contentMaster.getContentId(), ContentDetailsActivity.this.contentMaster.getParentCatId(), Integer.parseInt(ContentDetailsActivity.this.categoryDAO.getPdaId()), new CategoryDAO(ContentDetailsActivity.this.context).getUserId(), UtilDeclarations.getDateTimeForLogs(), false, false, ContentDetailsActivity.this.contextId, Constants.USAGE_ACTION_MARK_AS_FAVOURITE, 1, ContentDetailsActivity.this.contentMaster.getContentId(), Constants.USAGE_ACTION_PRIMARY_COLUMN_NAME);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getAvailableFreeSpace() {
        Object systemService;
        UUID uuid;
        long j;
        systemService = getApplicationContext().getSystemService((Class<Object>) StorageManager.class);
        StorageManager storageManager = (StorageManager) systemService;
        try {
            uuid = storageManager.getUuidForPath(getFilesDir());
        } catch (IOException e) {
            e.printStackTrace();
            uuid = null;
        }
        try {
            j = storageManager.getAllocatableBytes(uuid);
        } catch (IOException e2) {
            e2.printStackTrace();
            j = 0;
        }
        long j2 = this.NUM_BYTES_NEEDED_FOR_MY_APP;
        if (j >= j2) {
            try {
                storageManager.allocateBytes(uuid, j2);
                return true;
            } catch (IOException e3) {
                e3.printStackTrace();
                return false;
            }
        }
        new Intent().setAction("android.os.storage.action.MANAGE_STORAGE");
        String value = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_free_space_alert());
        if (value == null || value.length() <= 0) {
            value = "Available size is " + j + "MB.\n minimum 500 MB is required to download data, please delete some files and try again.";
        }
        showAlertDialog(value);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }

    private void showProgressDialog() {
        ProgressDialog progressDialog;
        ProgressDialog progressDialog2 = new ProgressDialog(this);
        this.progressBarDialog = progressDialog2;
        progressDialog2.setIcon(R.drawable.ic_launcher);
        this.progressBarDialog.setTitle("Showing progress...");
        this.progressBarDialog.setProgressStyle(1);
        this.progressBarDialog.setButton(-1, "OK", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Toast.makeText(ContentDetailsActivity.this.getBaseContext(), "OK clicked!", 0).show();
            }
        });
        this.progressBarDialog.setButton(-2, "Cancel", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Toast.makeText(ContentDetailsActivity.this.getApplicationContext(), "Cancel clicked", 0).show();
            }
        });
        this.progressBarDialog.setProgress(0);
        if (isFinishing() || (progressDialog = this.progressBarDialog) == null) {
            return;
        }
        progressDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdapter() {
        try {
            ContentViewAdapterNew contentViewAdapterNew = new ContentViewAdapterNew(getApplicationContext(), this.relatedMasterList, this, new MediaPlayer());
            this.contentViewAdapter = contentViewAdapterNew;
            this.rvRelated.setAdapter(contentViewAdapterNew);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setData() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.llm = linearLayoutManager;
        linearLayoutManager.setOrientation(0);
        this.rvRelated.setLayoutManager(this.llm);
        this.rvRelated.setNestedScrollingEnabled(false);
        this.rvRelated.setHasFixedSize(false);
        if (!TextUtils.isEmpty(this.contentMaster.getLocalThumbnail()) && new File(this.contentMaster.getLocalThumbnail()).exists()) {
            Glide.with(this.context).load(Uri.fromFile(new File(this.contentMaster.getLocalThumbnail()))).apply(new RequestOptions().placeholder(R.drawable.loading).error(R.drawable.failure_large).diskCacheStrategy(DiskCacheStrategy.DATA).centerCrop()).into(this.ivThumbNail);
        } else {
            Glide.with(this.context).load(Uri.parse(this.contentMaster.getThumbNail())).apply(new RequestOptions().placeholder(R.drawable.loading).error(R.drawable.failure_large).diskCacheStrategy(DiskCacheStrategy.DATA).centerCrop()).into(this.ivThumbNail);
        }
        try {
            this.contentMaster.setFavouriteStatus(Integer.parseInt(this.categoryDAO.getSingleValue(Queries.getInstance().getFavouriteStatus(this.contentMaster.getContentId() + ""))));
        } catch (Exception unused) {
        }
        if (this.contentMaster.getFavouriteStatus() == 1) {
            this.ivFavourites.setImageDrawable(getResources().getDrawable(R.drawable.ic_favourite));
        } else {
            this.ivFavourites.setImageDrawable(getResources().getDrawable(R.drawable.ic_heart));
        }
        try {
            this.contentMaster.getCreatedDate();
            this.tvCrop.setText(this.contentMaster.getContentName() != null ? this.contentMaster.getContentName() : "");
        } catch (Exception unused2) {
        }
    }

    private void initViews() {
        ImageView imageView = (ImageView) findViewById(R.id.ivThumnailDetails);
        this.ivThumbNail = imageView;
        imageView.setAdjustViewBounds(true);
        this.thumbnail = (YouTubeThumbnailView) findViewById(R.id.youtubethumbnail);
        if (this.contentMaster.getContentType() == 8) {
            this.thumbnail.setVisibility(0);
            this.ivThumbNail.setVisibility(8);
        } else {
            this.thumbnail.setVisibility(8);
            this.ivThumbNail.setVisibility(0);
        }
        this.tvPublishedDate = (TextView) findViewById(R.id.tvpublishedOn);
        this.tvCrop = (TextView) findViewById(R.id.tvcrop);
        this.tvBrand = (TextView) findViewById(R.id.tvbrand);
        this.tvCategory = (TextView) findViewById(R.id.tvcategory);
        this.tvLanguage = (TextView) findViewById(R.id.tvlanguage);
        this.rvRelated = (RecyclerView) findViewById(R.id.rvRelated);
        this.ivDownloads = (ArrowDownloadButton) findViewById(R.id.ivDownloads);
        this.ivFavourites = (ImageView) findViewById(R.id.idFavourite);
        this.ivShare = (ImageView) findViewById(R.id.ivShare);
        this.ivActionPlay = (ImageView) findViewById(R.id.action_play);
        this.chipsBoxLayout = (FlowLayout) findViewById(R.id.chipsBoxLayout);
        this.ivShare.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContentDetailsActivity contentDetailsActivity = ContentDetailsActivity.this;
                contentDetailsActivity.shareContent(contentDetailsActivity.contentMaster);
                ContentDetailsActivity.this.categoryDAO.insertContentLog(ContentDetailsActivity.this.contentMaster.getContentId(), ContentDetailsActivity.this.contentMaster.getParentCatId(), Integer.parseInt(ContentDetailsActivity.this.categoryDAO.getPdaId()), new CategoryDAO(ContentDetailsActivity.this.context).getUserId(), UtilDeclarations.getDateTimeForLogs(), false, false, ContentDetailsActivity.this.contextId, Constants.USAGE_ACTION_SHARED, 1, ContentDetailsActivity.this.contentMaster.getContentId(), Constants.USAGE_ACTION_PRIMARY_COLUMN_NAME);
            }
        });
        this.thumbnail.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ContentDetailsActivity.this.contentMaster.getContentType() == 8) {
                    if (!UtilDeclarations.isOnline(ContentDetailsActivity.this.context)) {
                        Toast.makeText(ContentDetailsActivity.this.context, "Please enable data connection", 0).show();
                        return;
                    }
                    String replace = ContentDetailsActivity.this.contentMaster.getContentServerLocation().replace(new CategoryDAO(ContentDetailsActivity.this.context).getBaseUrlForVideos(), "");
                    Intent intent = new Intent(ContentDetailsActivity.this, (Class<?>) YoutubePlayerActivity.class);
                    intent.putExtra("videoId", UtilDeclarations.getInstance().getVideoIdFromYoutubeUrl(replace));
                    ContentDetailsActivity.this.startActivity(intent);
                }
            }
        });
        this.ivThumbNail.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ContentDetailsActivity.this.contentMaster.getContentType() == 1) {
                    ContentDetailsActivity.this.categoryDAO.insertContentLog(ContentDetailsActivity.this.contentMaster.getContentId(), ContentDetailsActivity.this.contentMaster.getParentCatId(), Integer.parseInt(ContentDetailsActivity.this.categoryDAO.getPdaId()), new CategoryDAO(ContentDetailsActivity.this.context).getUserId(), UtilDeclarations.getDateTimeForLogs(), false, false, ContentDetailsActivity.this.contextId, Constants.USAGE_ACTION_VIEWED, 1, ContentDetailsActivity.this.contentMaster.getContentId(), Constants.USAGE_ACTION_PRIMARY_COLUMN_NAME);
                    if (TextUtils.isEmpty(ContentDetailsActivity.this.contentMaster.getContentDeviceLocation()) || !new File(ContentDetailsActivity.this.contentMaster.getContentDeviceLocation()).exists()) {
                        if (!UtilDeclarations.isOnline(ContentDetailsActivity.this.context)) {
                            Toast.makeText(ContentDetailsActivity.this.context, "Please enable data connection", 0).show();
                            return;
                        }
                        Intent intent = new Intent(ContentDetailsActivity.this.context, (Class<?>) VideoActivity.class);
                        intent.putExtra("url", ContentDetailsActivity.this.contentMaster.getContentServerLocation());
                        intent.putExtra("contentId", ContentDetailsActivity.this.contentMaster.getContentId());
                        intent.putExtra("parentCatId", ContentDetailsActivity.this.contentMaster.getParentCatId());
                        intent.putExtra("isDownloaded", false);
                        intent.putExtra("downloadedNow", false);
                        intent.putExtra("PdaId", new CategoryDAO(ContentDetailsActivity.this.context).getPdaId());
                        ContentDetailsActivity.this.context.startActivity(intent);
                        return;
                    }
                    Intent intent2 = new Intent(ContentDetailsActivity.this.context, (Class<?>) VideoActivity.class);
                    intent2.putExtra("path", ContentDetailsActivity.this.contentMaster.getContentDeviceLocation());
                    intent2.putExtra("contentId", ContentDetailsActivity.this.contentMaster.getContentId());
                    intent2.putExtra("parentCatId", ContentDetailsActivity.this.contentMaster.getParentCatId());
                    intent2.putExtra("isDownloaded", true);
                    intent2.putExtra("downloadedNow", false);
                    ContentDetailsActivity.this.context.startActivity(intent2);
                    return;
                }
                if (ContentDetailsActivity.this.contentMaster.getContentType() == 4) {
                    if (!TextUtils.isEmpty(ContentDetailsActivity.this.contentMaster.getContentDeviceLocation())) {
                        try {
                            if (TextUtils.isEmpty(ContentDetailsActivity.this.contentMaster.getContentDeviceLocation())) {
                                return;
                            }
                            String type = ContentDetailsActivity.this.context.getContentResolver().getType(Uri.fromFile(new File(ContentDetailsActivity.this.contentMaster.getContentDeviceLocation())));
                            if (!TextUtils.isEmpty(type)) {
                                Log.d("MIME Type", type);
                            }
                            ContentDetailsActivity.this.categoryDAO.insertContentLog(ContentDetailsActivity.this.contentMaster.getContentId(), ContentDetailsActivity.this.contentMaster.getParentCatId(), Integer.parseInt(ContentDetailsActivity.this.categoryDAO.getPdaId()), new CategoryDAO(ContentDetailsActivity.this.context).getUserId(), UtilDeclarations.getDateTimeForLogs(), true, false, ContentDetailsActivity.this.contextId, Constants.USAGE_ACTION_VIEWED, 1, ContentDetailsActivity.this.contentMaster.getContentId(), Constants.USAGE_ACTION_PRIMARY_COLUMN_NAME);
                            ContentDetailsActivity contentDetailsActivity = ContentDetailsActivity.this;
                            contentDetailsActivity.showImage(contentDetailsActivity.contentMaster.getContentDeviceLocation());
                            return;
                        } catch (ActivityNotFoundException unused) {
                            Toast.makeText(ContentDetailsActivity.this.context, "No Picture Viewer Installed", 1).show();
                            return;
                        }
                    }
                    if (!TextUtils.isEmpty(ContentDetailsActivity.this.contentMaster.getContentServerLocation())) {
                        ContentDetailsActivity contentDetailsActivity2 = ContentDetailsActivity.this;
                        contentDetailsActivity2.showImage(contentDetailsActivity2.contentMaster.getContentServerLocation());
                        return;
                    } else {
                        ContentDetailsActivity contentDetailsActivity3 = ContentDetailsActivity.this;
                        contentDetailsActivity3.showImage(contentDetailsActivity3.contentMaster.getContentServerLocation());
                        Toast.makeText(ContentDetailsActivity.this.context, "Picture not downloaded", 1).show();
                        return;
                    }
                }
                if (ContentDetailsActivity.this.contentMaster.getContentType() == 7) {
                    if (!TextUtils.isEmpty(ContentDetailsActivity.this.contentMaster.getContentDeviceLocation())) {
                        try {
                            Log.d("MIME Type", "" + ContentDetailsActivity.this.context.getContentResolver().getType(Uri.fromFile(new File(ContentDetailsActivity.this.contentMaster.getContentDeviceLocation()))));
                            ContentDetailsActivity.this.categoryDAO.insertContentLog(ContentDetailsActivity.this.contentMaster.getContentId(), ContentDetailsActivity.this.contentMaster.getParentCatId(), Integer.parseInt(ContentDetailsActivity.this.categoryDAO.getPdaId()), new CategoryDAO(ContentDetailsActivity.this.context).getUserId(), UtilDeclarations.getDateTimeForLogs(), true, false, ContentDetailsActivity.this.contextId, Constants.USAGE_ACTION_VIEWED, 1, ContentDetailsActivity.this.contentMaster.getContentId(), Constants.USAGE_ACTION_PRIMARY_COLUMN_NAME);
                            Intent intent3 = new Intent("android.intent.action.VIEW");
                            intent3.setDataAndType(FileProvider.getUriForFile(ContentDetailsActivity.this.context, "com.conceptglobal.pmcdeepakfertilizers.provider", new File(ContentDetailsActivity.this.contentMaster.getContentDeviceLocation())), "application/pdf");
                            intent3.addFlags(1);
                            ContentDetailsActivity.this.context.startActivity(intent3);
                            return;
                        } catch (ActivityNotFoundException unused2) {
                            Toast.makeText(ContentDetailsActivity.this.context, "No PDF Viewer Installed", 1).show();
                            return;
                        }
                    }
                    Toast.makeText(ContentDetailsActivity.this.context, "PDF not downloaded", 1).show();
                    return;
                }
                if (ContentDetailsActivity.this.contentMaster.getContentType() == 5 && ContentDetailsActivity.this.contentMaster.getContentType() == 5) {
                    ContentDetailsActivity contentDetailsActivity4 = ContentDetailsActivity.this;
                    contentDetailsActivity4.loadHtml(contentDetailsActivity4.contentMaster.getContentName(), ContentDetailsActivity.replaceRGBColorsWithHex(ContentDetailsActivity.this.contentMaster.getContentData()));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareContent(ContentMaster contentMaster) {
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            int contentType = contentMaster.getContentType();
            if (contentType == 1) {
                intent.setType("video/mp4");
            } else if (contentType == 7) {
                intent.setType("pplication/pdf");
            } else if (contentType == 4) {
                intent.setType("image/jpeg");
            } else if (contentType == 5) {
                intent.setType("text/html");
            }
            intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(this.context, "com.conceptglobal.pmcdeepakfertilizers.provider", new File(contentMaster.getContentDeviceLocation())));
            intent.setFlags(1);
            this.context.startActivity(Intent.createChooser(intent, "Share via"));
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showImage(String str) {
        new AlertDialog.Builder(this);
        final Dialog dialog = new Dialog(this.context, android.R.style.Theme.Translucent.NoTitleBar.Fullscreen);
        dialog.requestWindowFeature(1);
        dialog.setCancelable(false);
        dialog.setContentView(R.layout.preview_layout);
        Button button = (Button) dialog.findViewById(R.id.btnIvClose);
        PhotoView photoView = (PhotoView) dialog.findViewById(R.id.iv_preview_image);
        photoView.setAdjustViewBounds(true);
        Glide.with(this.context).load(str).apply(new RequestOptions().placeholder(R.drawable.loading).error(R.drawable.failure_large).diskCacheStrategy(DiskCacheStrategy.DATA)).into(photoView);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadHtml(String str, String str2) {
        Spanned fromHtml;
        View inflate = LayoutInflater.from(this.context).inflate(R.layout.html_content, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_html);
        if (Build.VERSION.SDK_INT < 24) {
            textView.setText(Html.fromHtml(str2));
        } else {
            fromHtml = Html.fromHtml(str2, 63);
            textView.setText(fromHtml);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setTitle(str);
        builder.setView(inflate);
        builder.setPositiveButton("Close", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.11
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog create = builder.create();
        create.getWindow().getAttributes().windowAnimations = R.style.HTMLDialogAnimation;
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String replaceRGBColorsWithHex(String str) {
        Matcher matcher = Pattern.compile("(rgb\\(\\s*(\\d+)\\s*,\\s*(\\d+)\\s*,\\s*(\\d+)\\s*\\))").matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            System.out.println("Found: " + group);
            String group2 = matcher.group(2);
            String group3 = matcher.group(3);
            String group4 = matcher.group(4);
            System.out.println(" separated r value: " + group2);
            System.out.println(" separated g value: " + group3);
            System.out.println(" separated b value: " + group4);
            int parseInt = Integer.parseInt(group2);
            int parseInt2 = Integer.parseInt(group3);
            int parseInt3 = Integer.parseInt(group4);
            String hexString = Integer.toHexString(parseInt);
            String hexString2 = Integer.toHexString(parseInt2);
            String hexString3 = Integer.toHexString(parseInt3);
            String replace = String.format("%2s", hexString).replace(" ", "0");
            String replace2 = String.format("%2s", hexString2).replace(" ", "0");
            String replace3 = String.format("%2s", hexString3).replace(" ", "0");
            System.out.println(" converted " + group2 + " to hex: " + replace);
            System.out.println(" converted " + group3 + " to hex: " + replace2);
            System.out.println(" converted " + group4 + " to hex:" + replace3);
            String str2 = "#" + replace + replace2 + replace3;
            System.out.println("  replacing " + group + " with " + str2);
            str = str.replaceAll(Pattern.quote(group), str2);
        }
        return str;
    }

    private void devideKeys() {
        if (this.contentMaster.getSearchKeys() == null || this.contentMaster.getSearchKeys().length() <= 0) {
            return;
        }
        String[] split = this.contentMaster.getSearchKeys().split("#");
        for (int i = 0; i < split.length; i++) {
            String str = split[i];
            if (str != "" && str.length() > 0) {
                this.keysList.add(split[i].trim());
            }
        }
    }

    private class LoadDataTask extends AsyncTask<FilterCriteria, Void, ArrayList<ContentMaster>> {
        private boolean running;

        private LoadDataTask() {
            this.running = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public ArrayList<ContentMaster> doInBackground(FilterCriteria... filterCriteriaArr) {
            ArrayList<ContentMaster> arrayList = new ArrayList<>();
            try {
                return ContentDetailsActivity.this.categoryDAO.getContents(Queries.getInstance().getRelatedContentQuery(ContentDetailsActivity.this.contentMaster.getContentId() + "", ContentDetailsActivity.this.keysList, ContentDetailsActivity.this.contextId));
            } catch (Exception e) {
                e.printStackTrace();
                return arrayList;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ArrayList<ContentMaster> arrayList) {
            super.onPostExecute((LoadDataTask) arrayList);
            ContentDetailsActivity.this.relatedMasterList = arrayList;
            ContentDetailsActivity.this.setAdapter();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            this.running = false;
        }
    }

    private void fillAutoSpacingLayout(final FlowLayout flowLayout, final ArrayList<String> arrayList) {
        for (int i = 0; i < this.keysList.size(); i++) {
            if (!arrayList.contains(this.keysList.get(i))) {
                arrayList.add(this.keysList.get(i));
            }
        }
        if (flowLayout.getChildCount() > 0) {
            flowLayout.removeAllViews();
        }
        if (arrayList.size() > 5) {
            for (int i2 = 0; i2 < 5; i2++) {
                flowLayout.addView(buildLabel(arrayList.get(i2)));
            }
            final TextView textView = new TextView(this.context);
            textView.setText("See More");
            final TextView textView2 = new TextView(this.context);
            flowLayout.addView(textView);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    for (int i3 = 5; i3 < arrayList.size(); i3++) {
                        flowLayout.removeView(textView);
                        flowLayout.addView(ContentDetailsActivity.this.buildLabel((String) arrayList.get(i3)));
                    }
                    textView2.setText("See Less");
                    flowLayout.addView(textView2);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.13
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    flowLayout.removeAllViews();
                    for (int i3 = 0; i3 < 5; i3++) {
                        flowLayout.addView(ContentDetailsActivity.this.buildLabel((String) arrayList.get(i3)));
                    }
                    flowLayout.addView(textView);
                }
            });
            return;
        }
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            flowLayout.addView(buildLabel(it.next()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TextView buildLabel(String str) {
        TextView textView = new TextView(this.context);
        textView.setText(str);
        textView.setTextSize(2, 14.0f);
        textView.setPadding(10, 10, 10, 10);
        textView.setBackgroundResource(R.drawable.chip_bg);
        return textView;
    }

    class DownloadProgressCounter extends Thread {
        private Cursor cursor;
        private final long downloadId;
        private int lastBytesDownloadedSoFar;
        DownloadManager mgr;
        private final DownloadManager.Query query;
        private int totalBytes;

        public DownloadProgressCounter(long j) {
            this.mgr = (DownloadManager) ContentDetailsActivity.this.context.getSystemService("download");
            this.downloadId = j;
            DownloadManager.Query query = new DownloadManager.Query();
            this.query = query;
            query.setFilterById(j);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            boolean z = true;
            while (z) {
                try {
                    Thread.sleep(300L);
                    Cursor query = this.mgr.query(this.query);
                    this.cursor = query;
                    if (query.moveToFirst()) {
                        if (this.totalBytes <= 0) {
                            Cursor cursor = this.cursor;
                            this.totalBytes = cursor.getInt(cursor.getColumnIndex("total_size"));
                            Log.d("DownloadLog", "totalBytes--->" + this.totalBytes + "---" + UtilDeclarations.getDateTime());
                        }
                        Cursor cursor2 = this.cursor;
                        final int i = cursor2.getInt(cursor2.getColumnIndex("bytes_so_far"));
                        Log.d("DownloadLog", "bytesDownloadedSoFar--->" + i + "---" + UtilDeclarations.getDateTime());
                        Cursor cursor3 = this.cursor;
                        if (cursor3.getInt(cursor3.getColumnIndex("status")) == 8) {
                            Log.d("DownloadLog", "status--->false---" + UtilDeclarations.getDateTime());
                            z = false;
                        }
                        ContentDetailsActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity.DownloadProgressCounter.1
                            @Override // java.lang.Runnable
                            public void run() {
                                int i2 = (int) ((i * 100) / DownloadProgressCounter.this.totalBytes);
                                Log.d("DownloadLog", "dl_progress--->" + i2 + "---" + UtilDeclarations.getDateTime());
                                ContentDetailsActivity.this.ivDownloads.setProgress((float) i2);
                            }
                        });
                    }
                    this.cursor.close();
                } catch (Exception unused) {
                    return;
                }
            }
        }
    }

    private final class ThumbnailListener implements YouTubeThumbnailView.OnInitializedListener, YouTubeThumbnailLoader.OnThumbnailLoadedListener {
        @Override // com.google.android.youtube.player.YouTubeThumbnailLoader.OnThumbnailLoadedListener
        public void onThumbnailLoaded(YouTubeThumbnailView youTubeThumbnailView, String str) {
        }

        private ThumbnailListener() {
        }

        @Override // com.google.android.youtube.player.YouTubeThumbnailView.OnInitializedListener
        public void onInitializationSuccess(YouTubeThumbnailView youTubeThumbnailView, YouTubeThumbnailLoader youTubeThumbnailLoader) {
            youTubeThumbnailLoader.setOnThumbnailLoadedListener(this);
            ContentDetailsActivity.this.thumbnailViewToLoaderMap.put(youTubeThumbnailView, youTubeThumbnailLoader);
            youTubeThumbnailView.setImageResource(R.drawable.loading_thumbnail);
            youTubeThumbnailLoader.setVideo((String) youTubeThumbnailView.getTag());
        }

        @Override // com.google.android.youtube.player.YouTubeThumbnailView.OnInitializedListener
        public void onInitializationFailure(YouTubeThumbnailView youTubeThumbnailView, YouTubeInitializationResult youTubeInitializationResult) {
            youTubeThumbnailView.setImageResource(R.drawable.no_thumbnail);
        }

        @Override // com.google.android.youtube.player.YouTubeThumbnailLoader.OnThumbnailLoadedListener
        public void onThumbnailError(YouTubeThumbnailView youTubeThumbnailView, YouTubeThumbnailLoader.ErrorReason errorReason) {
            youTubeThumbnailView.setImageResource(R.drawable.no_thumbnail);
        }
    }
}
