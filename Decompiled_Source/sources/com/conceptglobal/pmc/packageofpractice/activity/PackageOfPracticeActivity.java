package com.conceptglobal.pmc.packageofpractice.activity;

import android.app.DownloadManager;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.storage.StorageManager;
import android.util.Log;
import android.view.MenuItem;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.packageofpractice.adapter.CropCategoryAdapter;
import com.conceptglobal.pmc.packageofpractice.adapter.IndividualCropAdapter;
import com.conceptglobal.pmc.packageofpractice.models.CropCategoryModal;
import com.conceptglobal.pmc.packageofpractice.models.IndividualCropItemModal;
import com.conceptglobal.pmc.packageofpractice.models.LibraryDetails;
import com.conceptglobal.pmc.packageofpractice.utility.FileDownloadService;
import com.conceptglobal.pmc.packageofpractice.utility.FileUtils;
import com.conceptglobal.pmc.promotions.utils.Constants;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

/* loaded from: classes.dex */
public class PackageOfPracticeActivity extends AppCompatActivity {
    private static final String TAG = "com.conceptglobal.pmc.packageofpractice.activity.PackageOfPracticeActivity";
    long NUM_BYTES_NEEDED_FOR_MY_APP = 204800;
    CropCategoryAdapter adapter;
    private Context context;
    RecyclerView cropCategoryList;
    ArrayList<CropCategoryModal> cropCategoryModalArrayList;
    private GetDataFromDB getDataFromDB;
    IndividualCropItemModal individualCropItem;
    private boolean isDownloadInprogress;
    LibraryDetails libraryDetails;
    private ProgressDialog progress;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_package_of_practice);
        CustomActionBar.initActionBar(this, "Package of Practice (" + UtilDeclarations.getApplicationVersion(this) + ")", true);
        this.cropCategoryModalArrayList = new ArrayList<>();
        GetDataFromDB getDataFromDB = GetDataFromDB.getInstance();
        this.getDataFromDB = getDataFromDB;
        this.context = this;
        LibraryDetails libraryDetails = getDataFromDB.getLibraryDetails(Queries.getInstance().getLibraryDetails());
        this.libraryDetails = libraryDetails;
        if (libraryDetails != null) {
            if (libraryDetails.getLocalHTMLZIPURL() == null || this.libraryDetails.getLocalHTMLZIPURL().isEmpty() || this.libraryDetails.getVersionNo() > this.libraryDetails.getDeviceVersionNo()) {
                downloadLatestLibraryFilesFromServer(this.libraryDetails.getHTMLZIPURL(), this.libraryDetails.getPOPID(), this.libraryDetails.getVersionNo());
            } else {
                try {
                    if (!new File(FileUtils.getDataDir(this, "ExtractLoc").getAbsolutePath() + "/css").exists()) {
                        downloadLatestLibraryFilesFromServer(this.libraryDetails.getHTMLZIPURL(), this.libraryDetails.getPOPID(), this.libraryDetails.getVersionNo());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        initData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initData() {
        this.cropCategoryModalArrayList = this.getDataFromDB.getCropCategoryDetails(Queries.getInstance().getPOPCropCategoryDetails());
        this.adapter = new CropCategoryAdapter(this.cropCategoryModalArrayList, this, new IndividualCropAdapter.CropEventListener() { // from class: com.conceptglobal.pmc.packageofpractice.activity.PackageOfPracticeActivity.1
            @Override // com.conceptglobal.pmc.packageofpractice.adapter.IndividualCropAdapter.CropEventListener
            public void individualCropClick(IndividualCropItemModal individualCropItemModal, int i, ProgressBar progressBar, boolean z) {
                if (PackageOfPracticeActivity.this.isDownloadInprogress && z) {
                    Toast.makeText(PackageOfPracticeActivity.this, "Try later  download is inprogress.", 1).show();
                    return;
                }
                PackageOfPracticeActivity packageOfPracticeActivity = PackageOfPracticeActivity.this;
                packageOfPracticeActivity.individualCropItem = packageOfPracticeActivity.getDataFromDB.getIndividualCropDetails(Queries.getInstance().getIndividualCropDetails(individualCropItemModal.getPopID()));
                if (PackageOfPracticeActivity.this.individualCropItem.getLocalHTMLZIPURL() != null && !PackageOfPracticeActivity.this.individualCropItem.getLocalHTMLZIPURL().isEmpty() && PackageOfPracticeActivity.this.individualCropItem.getVersionNo() <= PackageOfPracticeActivity.this.individualCropItem.getDeviceVersionNo()) {
                    PackageOfPracticeActivity.this.openCropHtmlPage(individualCropItemModal.getLocalHTMLZIPURL(), individualCropItemModal);
                    return;
                }
                if (!UtilDeclarations.isOnline(PackageOfPracticeActivity.this)) {
                    Toast.makeText(PackageOfPracticeActivity.this.getApplicationContext(), R.string.no_internet_msg, 1).show();
                } else if (z) {
                    PackageOfPracticeActivity.this.showAlertDownloadDialog("Are you sure you want to download this file?", individualCropItemModal, i, progressBar);
                } else {
                    PackageOfPracticeActivity.this.downloadLatestHtmlFiles(individualCropItemModal, i, progressBar, i);
                    progressBar.setVisibility(0);
                }
            }
        });
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.crop_category_list);
        this.cropCategoryList = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.cropCategoryList.setLayoutManager(new LinearLayoutManager(this));
        this.cropCategoryList.addItemDecoration(new DividerItemDecoration(this, 1));
        this.cropCategoryList.setAdapter(this.adapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertDownloadDialog(String str, final IndividualCropItemModal individualCropItemModal, final int i, final ProgressBar progressBar) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.packageofpractice.activity.PackageOfPracticeActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                PackageOfPracticeActivity packageOfPracticeActivity = PackageOfPracticeActivity.this;
                IndividualCropItemModal individualCropItemModal2 = individualCropItemModal;
                int i3 = i;
                packageOfPracticeActivity.downloadLatestHtmlFiles(individualCropItemModal2, i3, progressBar, i3);
                progressBar.setVisibility(0);
                dialogInterface.dismiss();
            }
        });
        builder.setMessage(str).setCancelable(false).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.packageofpractice.activity.PackageOfPracticeActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }

    private void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.packageofpractice.activity.PackageOfPracticeActivity.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }

    private boolean getAvailableFreeSpace() {
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
    /* JADX WARN: Removed duplicated region for block: B:16:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void downloadLatestHtmlFiles(final com.conceptglobal.pmc.packageofpractice.models.IndividualCropItemModal r14, final int r15, android.widget.ProgressBar r16, int r17) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.packageofpractice.activity.PackageOfPracticeActivity.downloadLatestHtmlFiles(com.conceptglobal.pmc.packageofpractice.models.IndividualCropItemModal, int, android.widget.ProgressBar, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCropHtmlPage(String str, IndividualCropItemModal individualCropItemModal) {
        try {
            if (!new File(FileUtils.getDataDir(this, "ExtractLoc").getAbsolutePath() + "/" + individualCropItemModal.getCropName().toLowerCase()).exists()) {
                individualCropItemModal.setLocalHTMLZIPURL("");
                individualCropItemModal.setDeviceVersionNo(0);
                this.adapter.updateAdapter(individualCropItemModal, 0);
                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateCropDetails2("", individualCropItemModal.getPopID()));
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        Intent intent = new Intent(this, (Class<?>) WebviewActivity.class);
        intent.putExtra("localHTMLZIPURL", str);
        intent.putExtra("htmlStartPage", individualCropItemModal.getHtmlStartPage());
        intent.putExtra("cropName", individualCropItemModal.getCropName());
        intent.putExtra(Constants.POP_PRIMARY_COLUMN_NAME, individualCropItemModal.getPopID());
        startActivity(intent);
    }

    private void downloadLatestLibraryFilesFromServer(String str, final int i, final int i2) {
        String absolutePath = new File(FileUtils.getDataDir(this).getAbsolutePath(), "sample_download").getAbsolutePath();
        final String absolutePath2 = FileUtils.getDataDir(this, "ExtractLoc").getAbsolutePath();
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.progress = progressDialog;
        progressDialog.setMessage("Please wait...while we are fetching data from server..");
        this.progress.setProgressStyle(1);
        this.progress.setMax(100);
        this.progress.setIndeterminate(true);
        this.progress.setCanceledOnTouchOutside(false);
        FileDownloadService.DownloadRequest downloadRequest = new FileDownloadService.DownloadRequest(str, absolutePath);
        downloadRequest.setRequiresUnzip(true);
        downloadRequest.setDeleteZipAfterExtract(false);
        downloadRequest.setUnzipAtFilePath(absolutePath2);
        FileDownloadService.FileDownloader.getInstance(downloadRequest, new FileDownloadService.OnDownloadStatusListener() { // from class: com.conceptglobal.pmc.packageofpractice.activity.PackageOfPracticeActivity.6
            @Override // com.conceptglobal.pmc.packageofpractice.utility.FileDownloadService.OnDownloadStatusListener
            public void onDownloadProgress(int i3) {
            }

            @Override // com.conceptglobal.pmc.packageofpractice.utility.FileDownloadService.OnDownloadStatusListener
            public void onDownloadStarted() {
                PackageOfPracticeActivity.this.progress.setProgress(0);
                PackageOfPracticeActivity.this.progress.show();
            }

            @Override // com.conceptglobal.pmc.packageofpractice.utility.FileDownloadService.OnDownloadStatusListener
            public void onDownloadCompleted() {
                if (PackageOfPracticeActivity.this.progress.isShowing()) {
                    PackageOfPracticeActivity.this.progress.dismiss();
                }
                try {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateLibraryDetails(absolutePath2, i2, i));
                    } catch (Exception e) {
                        PLog.e(PackageOfPracticeActivity.TAG, e, 0);
                    }
                } finally {
                    PackageOfPracticeActivity.this.initData();
                }
            }

            @Override // com.conceptglobal.pmc.packageofpractice.utility.FileDownloadService.OnDownloadStatusListener
            public void onDownloadFailed() {
                if (PackageOfPracticeActivity.this.progress.isShowing()) {
                    PackageOfPracticeActivity.this.progress.dismiss();
                }
            }
        }).download(this);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    class DownloadProgressCounter extends Thread {
        private Cursor cursor;
        private final long downloadId;
        private IndividualCropItemModal individualCropModal;
        private int lastBytesDownloadedSoFar;
        DownloadManager mgr;
        private int pos;
        private final DownloadManager.Query query;
        private int totalBytes;
        private String unzipPath;
        private ProgressBar view;

        public DownloadProgressCounter(long j, IndividualCropItemModal individualCropItemModal, String str, ProgressBar progressBar, int i) {
            this.mgr = (DownloadManager) PackageOfPracticeActivity.this.context.getSystemService("download");
            this.downloadId = j;
            DownloadManager.Query query = new DownloadManager.Query();
            this.query = query;
            query.setFilterById(j);
            this.view = progressBar;
            this.individualCropModal = individualCropItemModal;
            this.unzipPath = str;
            this.pos = i;
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
                            Log.d("DownloadLog", "totalBytes--->" + this.totalBytes + "---" + com.conceptglobal.pmc.promotions.utils.UtilDeclarations.getDateTime());
                        }
                        Cursor cursor2 = this.cursor;
                        final int i = cursor2.getInt(cursor2.getColumnIndex("bytes_so_far"));
                        Log.d("DownloadLog", "bytesDownloadedSoFar--->" + i + "---" + com.conceptglobal.pmc.promotions.utils.UtilDeclarations.getDateTime());
                        Cursor cursor3 = this.cursor;
                        if (cursor3.getInt(cursor3.getColumnIndex("status")) == 8) {
                            PackageOfPracticeActivity.this.isDownloadInprogress = false;
                            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateCropDetails(this.unzipPath, this.individualCropModal.getVersionNo(), this.individualCropModal.getPopID()));
                            PackageOfPracticeActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.packageofpractice.activity.PackageOfPracticeActivity.DownloadProgressCounter.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    DownloadProgressCounter.this.individualCropModal.setLocalHTMLZIPURL(DownloadProgressCounter.this.unzipPath);
                                    DownloadProgressCounter.this.individualCropModal.setDeviceVersionNo(DownloadProgressCounter.this.individualCropModal.getVersionNo());
                                    PackageOfPracticeActivity.this.adapter.updateAdapter(DownloadProgressCounter.this.individualCropModal, DownloadProgressCounter.this.pos);
                                    PackageOfPracticeActivity.this.openCropHtmlPage(DownloadProgressCounter.this.unzipPath, DownloadProgressCounter.this.individualCropModal);
                                }
                            });
                            Log.d("DownloadLog", "status--->false---" + com.conceptglobal.pmc.promotions.utils.UtilDeclarations.getDateTime());
                            z = false;
                        }
                        PackageOfPracticeActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.packageofpractice.activity.PackageOfPracticeActivity.DownloadProgressCounter.2
                            @Override // java.lang.Runnable
                            public void run() {
                                int i2 = (int) ((i * 100) / DownloadProgressCounter.this.totalBytes);
                                Log.d("DownloadLog", "dl_progress--->" + i2 + "---" + com.conceptglobal.pmc.promotions.utils.UtilDeclarations.getDateTime());
                                if (DownloadProgressCounter.this.view != null) {
                                    DownloadProgressCounter.this.view.setProgress(i2);
                                }
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
}
