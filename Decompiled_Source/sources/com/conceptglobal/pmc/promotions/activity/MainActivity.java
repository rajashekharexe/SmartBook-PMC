package com.conceptglobal.pmc.promotions.activity;

import android.app.SearchManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.LinearLayout;
import android.widget.SearchView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.promotions.adapters.ContentViewAdapter;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmc.promotions.models.FilterCriteria;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public class MainActivity extends AppCompatActivity implements OnAudioActionPerformed, SearchView.OnQueryTextListener, Filterable {
    public static final int REQUEST_CODE = 1;
    public static final int REQUEST_ID_MULTIPLE_PERMISSIONS = 7;
    private CategoryDAO categoryDAO;
    private List<ContentMaster> contentMasterList;
    private ContentViewAdapter contentViewAdapter;
    private Context context;
    private FilterCriteria criteria;
    private ArrayList<Integer> filteredCategories;
    private LinearLayout llActions;
    private LinearLayout llDownloads;
    private LinearLayout llFilter;
    private LinearLayout llReports;
    private LinearLayout llSort;
    private LinearLayoutManager llm;
    private LoadDataTask mTask;
    private MediaPlayer mediaplayer;
    private TextView noPromotionsAvailable;
    private RecyclerView rvPromotions;
    private MenuItem searchMenuItem;
    private SearchView searchView;
    private List<ContentMaster> sortedContentMasterList;
    private boolean isFiltered = false;
    String[] reqPerms = {"android.permission.MEDIA_CONTENT_CONTROL"};
    private CharSequence[] items = {"Name(A-Z)", "Name(Z-A)", "New Content", "Older Content"};
    private int contextId = 1;
    private BroadcastReceiver testCompleationReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.promotions.activity.MainActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
        }
    };

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return null;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main_promotions);
        this.filteredCategories = new ArrayList<>();
        this.sortedContentMasterList = new ArrayList();
        this.context = this;
        this.mediaplayer = new MediaPlayer();
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        if (Build.VERSION.SDK_INT >= 23) {
            checkPermissions(this.reqPerms);
        }
        this.categoryDAO = new CategoryDAO(this.context);
        this.criteria = new FilterCriteria();
        init();
        setAdapter();
        loadData(null, null);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.testCompleationReceiver, new IntentFilter("TestStatus"));
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void init() {
        this.llActions = (LinearLayout) findViewById(R.id.actions);
        this.llSort = (LinearLayout) findViewById(R.id.ll_sort);
        this.llDownloads = (LinearLayout) findViewById(R.id.ll_downloads);
        this.llReports = (LinearLayout) findViewById(R.id.ll_reports);
        this.llFilter = (LinearLayout) findViewById(R.id.ll_filter);
        this.llSort.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.MainActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.showSortingOrder();
            }
        });
        this.llFilter.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.MainActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.showFilterOptions();
            }
        });
        this.llDownloads.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.MainActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.startActivity(new Intent(MainActivity.this.context, (Class<?>) DownloadsActivity.class));
            }
        });
        this.llReports.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.MainActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.startActivity(new Intent(MainActivity.this.context, (Class<?>) TestReportsActivity.class));
            }
        });
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context);
        this.llm = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_list_of_promotions);
        this.rvPromotions = recyclerView;
        recyclerView.setLayoutManager(this.llm);
        this.rvPromotions.setNestedScrollingEnabled(false);
        this.rvPromotions.setHasFixedSize(false);
        this.noPromotionsAvailable = (TextView) findViewById(R.id.txtEmptyView);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        SearchManager searchManager = (SearchManager) getSystemService(FirebaseAnalytics.Event.SEARCH);
        MenuItem findItem = menu.findItem(R.id.search);
        this.searchMenuItem = findItem;
        findItem.setShowAsAction(1);
        SearchView searchView = (SearchView) this.searchMenuItem.getActionView();
        this.searchView = searchView;
        searchView.setSearchableInfo(searchManager.getSearchableInfo(getComponentName()));
        this.searchView.setOnQueryTextListener(this);
        return true;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.contentViewAdapter.getFilter().filter(str);
            return true;
        }
        this.contentViewAdapter.getFilter().filter("");
        return true;
    }

    public boolean checkPermissions(String[] strArr) {
        Log.i("SplshScreen", "--Runtime permissions checking---");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (ContextCompat.checkSelfPermission(getApplicationContext(), str) != 0) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[arrayList.size()]), 7);
            return false;
        }
        Log.i("SplshScreen", "--Runtime permissions completed---");
        return true;
    }

    private void setAdapter() {
        try {
            this.contentMasterList = new ArrayList();
            ContentViewAdapter contentViewAdapter = new ContentViewAdapter(this.context, this.contentMasterList, this, this.mediaplayer);
            this.contentViewAdapter = contentViewAdapter;
            this.rvPromotions.setAdapter(contentViewAdapter);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSortedAdapter() {
        int i = 0;
        while (true) {
            try {
                if (i >= this.sortedContentMasterList.size()) {
                    break;
                }
                if (this.sortedContentMasterList.get(i).getContentId() == 277) {
                    ContentMaster contentMaster = this.sortedContentMasterList.get(i);
                    this.sortedContentMasterList.remove(i);
                    this.sortedContentMasterList.add(0, contentMaster);
                    break;
                }
                i++;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        ContentViewAdapter contentViewAdapter = new ContentViewAdapter(this.context, this.sortedContentMasterList, this, this.mediaplayer);
        this.contentViewAdapter = contentViewAdapter;
        this.rvPromotions.setAdapter(contentViewAdapter);
        refreshAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSortingOrder() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Sort by");
        builder.setSingleChoiceItems(this.items, -1, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.MainActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity mainActivity = MainActivity.this;
                mainActivity.sortedContentMasterList = mainActivity.contentMasterList;
                if (i == 0) {
                    Collections.sort(MainActivity.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.MainActivity.6.1
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster.getContentName().compareTo(contentMaster2.getContentName());
                        }
                    });
                } else if (i == 1) {
                    Collections.sort(MainActivity.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.MainActivity.6.2
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster2.getContentName().compareTo(contentMaster.getContentName());
                        }
                    });
                } else if (i == 2) {
                    Collections.sort(MainActivity.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.MainActivity.6.3
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster2.getActiveStartDate().compareTo(contentMaster.getActiveStartDate());
                        }
                    });
                } else if (i == 3) {
                    Collections.sort(MainActivity.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.MainActivity.6.4
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster.getActiveStartDate().compareTo(contentMaster2.getActiveStartDate());
                        }
                    });
                }
                MainActivity.this.setSortedAdapter();
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFilterOptions() {
        startActivityForResult(new Intent(this, (Class<?>) FilterActivity.class), 1);
    }

    @Override // com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed
    public void onAudioActionPerformed(int i, String str, String str2) {
        try {
            this.mediaplayer.setAudioStreamType(3);
            if (i == 1) {
                if (this.mediaplayer.isPlaying()) {
                    this.mediaplayer.stop();
                    this.mediaplayer.reset();
                }
                if (TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                    this.mediaplayer.setDataSource(str);
                } else if (TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    this.mediaplayer.setDataSource(str);
                }
                this.mediaplayer.prepareAsync();
                this.mediaplayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.conceptglobal.pmc.promotions.activity.MainActivity.7
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public void onPrepared(MediaPlayer mediaPlayer) {
                        mediaPlayer.start();
                    }
                });
                return;
            }
            if (this.mediaplayer.isPlaying()) {
                this.mediaplayer.stop();
                this.mediaplayer.reset();
            }
        } catch (Exception e) {
            this.mediaplayer.reset();
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.mediaplayer.isPlaying()) {
            this.mediaplayer.stop();
            this.mediaplayer.reset();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mediaplayer.release();
    }

    private class LoadDataTask extends AsyncTask<FilterCriteria, Void, List<ContentMaster>> {
        private boolean running;

        private LoadDataTask() {
            this.running = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<ContentMaster> doInBackground(FilterCriteria... filterCriteriaArr) {
            ArrayList arrayList = new ArrayList();
            try {
                return MainActivity.this.categoryDAO.getAllPromotionContents(filterCriteriaArr[0].getContentIds(), filterCriteriaArr[0].getContentTypes(), MainActivity.this.contextId, false);
            } catch (Exception e) {
                e.printStackTrace();
                return arrayList;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<ContentMaster> list) {
            super.onPostExecute((LoadDataTask) list);
            if (this.running) {
                MainActivity.this.contentMasterList.clear();
                if (MainActivity.this.contentMasterList != null && MainActivity.this.contentMasterList.size() > 0) {
                    MainActivity.this.contentMasterList.remove(MainActivity.this.contentMasterList.size() - 1);
                    MainActivity.this.contentViewAdapter.notifyItemRemoved(MainActivity.this.contentMasterList.size());
                }
                MainActivity.this.contentMasterList.addAll(list);
                MainActivity.this.refreshAdapter();
                list.clear();
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            this.running = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAdapter() {
        List<ContentMaster> list = this.contentMasterList;
        if (list != null && list.size() > 0) {
            int i = 0;
            while (true) {
                if (i >= this.contentMasterList.size()) {
                    break;
                }
                if (this.contentMasterList.get(i).getContentId() == 277) {
                    ContentMaster contentMaster = this.contentMasterList.get(i);
                    this.contentMasterList.remove(i);
                    this.contentMasterList.add(0, contentMaster);
                    break;
                }
                i++;
            }
        }
        this.contentViewAdapter.notifyDataSetChanged();
        ContentViewAdapter contentViewAdapter = this.contentViewAdapter;
        if (contentViewAdapter != null && contentViewAdapter.getItemCount() > 0) {
            this.noPromotionsAvailable.setVisibility(8);
            this.rvPromotions.setVisibility(0);
        } else {
            this.noPromotionsAvailable.setVisibility(0);
            this.rvPromotions.setVisibility(8);
        }
    }

    private void loadData(String str, String str2) {
        LoadDataTask loadDataTask = this.mTask;
        if (loadDataTask != null && loadDataTask.getStatus() != AsyncTask.Status.FINISHED) {
            this.mTask.cancel(true);
        }
        this.criteria.setContentIds(str);
        this.criteria.setContentTypes(str2);
        LoadDataTask loadDataTask2 = new LoadDataTask();
        this.mTask = loadDataTask2;
        loadDataTask2.execute(this.criteria);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.isFiltered = true;
        if (i == 1) {
            if (i2 == -1) {
                loadData(intent.getStringExtra("categories"), intent.getStringExtra("contentType"));
            } else if (i2 == 0) {
                Toast.makeText(this.context, "No filters applied", 0).show();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        Log.e("Back", "Pressed");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!this.isFiltered) {
            loadData(null, null);
        } else {
            this.isFiltered = false;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.e("onDetachedFromWindow", "MA-activity dying");
    }
}
