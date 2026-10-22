package com.conceptglobal.pmc.promotions.activity;

import android.app.SearchManager;
import android.content.Context;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.SearchView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter;
import com.conceptglobal.pmc.promotions.common.Queries;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnVideoDelete;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DownloadsActivity extends AppCompatActivity implements OnVideoDelete, SearchView.OnQueryTextListener {
    private CategoryDAO categoryDAO;
    private DownloadedContentViewAdapter contentViewAdapter;
    private Context context;
    private int contextId = 1;
    private List<ContentMaster> downloadsList;
    private LinearLayoutManager llm;
    private LoadDataTask mTask;
    private MediaPlayer mediaplayer;
    private TextView noDownloadsAvailable;
    private RecyclerView rvDownloads;
    private MenuItem searchMenuItem;
    private SearchView searchView;

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_downloads);
        this.downloadsList = new ArrayList();
        this.context = this;
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        toolbar.setTitle("Downloads");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        if (getIntent().hasExtra("ContextId")) {
            this.contextId = getIntent().getExtras().getInt("ContextId");
        }
        this.mediaplayer = new MediaPlayer();
        this.categoryDAO = new CategoryDAO(this.context);
        init();
        setAdapter();
        loadData();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void init() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context);
        this.llm = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_list_of_downloads);
        this.rvDownloads = recyclerView;
        recyclerView.setLayoutManager(this.llm);
        this.rvDownloads.setNestedScrollingEnabled(false);
        this.rvDownloads.setHasFixedSize(false);
        this.noDownloadsAvailable = (TextView) findViewById(R.id.txtNoDownloadsView);
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

    private void setAdapter() {
        try {
            DownloadedContentViewAdapter downloadedContentViewAdapter = new DownloadedContentViewAdapter(this.context, this.downloadsList, this, this.mediaplayer);
            this.contentViewAdapter = downloadedContentViewAdapter;
            this.rvDownloads.setAdapter(downloadedContentViewAdapter);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private class LoadDataTask extends AsyncTask<Void, Void, List<ContentMaster>> {
        private boolean running;

        private LoadDataTask() {
            this.running = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<ContentMaster> doInBackground(Void... voidArr) {
            ArrayList arrayList = new ArrayList();
            try {
                return DownloadsActivity.this.categoryDAO.getAllDownloadsContents(Queries.getInstance().getDownloadedContents(0, DownloadsActivity.this.contextId));
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
                DownloadsActivity.this.downloadsList.clear();
                if (DownloadsActivity.this.downloadsList != null && DownloadsActivity.this.downloadsList.size() > 0) {
                    DownloadsActivity.this.downloadsList.remove(DownloadsActivity.this.downloadsList.size() - 1);
                    DownloadsActivity.this.contentViewAdapter.notifyItemRemoved(DownloadsActivity.this.downloadsList.size());
                }
                DownloadsActivity.this.downloadsList.addAll(list);
                DownloadsActivity.this.refreshAdapter();
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
        this.contentViewAdapter.notifyDataSetChanged();
        DownloadedContentViewAdapter downloadedContentViewAdapter = this.contentViewAdapter;
        if (downloadedContentViewAdapter != null && downloadedContentViewAdapter.getItemCount() > 0) {
            this.noDownloadsAvailable.setVisibility(8);
            this.rvDownloads.setVisibility(0);
        } else {
            this.noDownloadsAvailable.setVisibility(0);
            this.rvDownloads.setVisibility(8);
        }
    }

    private void loadData() {
        LoadDataTask loadDataTask = this.mTask;
        if (loadDataTask != null && loadDataTask.getStatus() != AsyncTask.Status.FINISHED) {
            this.mTask.cancel(true);
        }
        LoadDataTask loadDataTask2 = new LoadDataTask();
        this.mTask = loadDataTask2;
        loadDataTask2.execute(new Void[0]);
    }

    @Override // com.conceptglobal.pmc.promotions.interfaces.OnVideoDelete
    public void onVideoDelete() {
        loadData();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.e("onDetachedFromWindow", "DA-activity dying");
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
}
