package com.conceptglobal.pmc.promotions.activity;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SearchView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew;
import com.conceptglobal.pmc.promotions.common.Queries;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed;
import com.conceptglobal.pmc.promotions.interfaces.OnVideoDelete;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DownloadsFragment extends Fragment implements OnVideoDelete, SearchView.OnQueryTextListener, OnAudioActionPerformed {
    private CategoryDAO categoryDAO;
    private Context context;
    private int contextId = 1;
    private ContentViewAdapterNew htmlAdapter;
    private ArrayList<ContentMaster> html_downloadsList;
    private LinearLayoutManager html_llm;
    private ArrayList<ContentMaster> images_downloadsList;
    private LinearLayoutManager images_llm;
    private ContentViewAdapterNew imagessAdapter;
    private LoadDataTask mTask;
    private MediaPlayer mediaplayer;
    private TextView noDownloadsAvailable;
    private ContentViewAdapterNew pdfAdapter;
    private ArrayList<ContentMaster> pdf_downloadsList;
    private LinearLayoutManager pdf_llm;
    private View rootView;
    private RecyclerView rvDownloads;
    private RecyclerView rvHtml;
    private RecyclerView rvImages;
    private RecyclerView rvPdf;
    private RecyclerView rvVideos;
    private MenuItem searchMenuItem;
    private SearchView searchView;
    private ContentViewAdapterNew videosAdapter;
    private ArrayList<ContentMaster> videos_downloadsList;
    private LinearLayoutManager videos_llm;

    @Override // com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed
    public void onAudioActionPerformed(int i, String str, String str2) {
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.videos_downloadsList = new ArrayList<>();
        this.images_downloadsList = new ArrayList<>();
        this.html_downloadsList = new ArrayList<>();
        this.pdf_downloadsList = new ArrayList<>();
        this.context = getActivity().getApplicationContext();
        this.mediaplayer = new MediaPlayer();
        this.categoryDAO = new CategoryDAO(this.context);
        this.contextId = getArguments().getInt("ContextId");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.rootView == null) {
            this.rootView = layoutInflater.inflate(R.layout.downloads_newdesign, viewGroup, false);
            init();
            loadData();
        }
        return this.rootView;
    }

    private void init() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context);
        this.videos_llm = linearLayoutManager;
        linearLayoutManager.setOrientation(0);
        RecyclerView recyclerView = (RecyclerView) this.rootView.findViewById(R.id.rv_Videos);
        this.rvVideos = recyclerView;
        recyclerView.setLayoutManager(this.videos_llm);
        this.rvVideos.setNestedScrollingEnabled(false);
        this.rvVideos.setHasFixedSize(false);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this.context);
        this.images_llm = linearLayoutManager2;
        linearLayoutManager2.setOrientation(0);
        RecyclerView recyclerView2 = (RecyclerView) this.rootView.findViewById(R.id.rv_images);
        this.rvImages = recyclerView2;
        recyclerView2.setLayoutManager(this.images_llm);
        this.rvImages.setNestedScrollingEnabled(false);
        this.rvImages.setHasFixedSize(false);
        LinearLayoutManager linearLayoutManager3 = new LinearLayoutManager(this.context);
        this.html_llm = linearLayoutManager3;
        linearLayoutManager3.setOrientation(0);
        RecyclerView recyclerView3 = (RecyclerView) this.rootView.findViewById(R.id.rv_html);
        this.rvHtml = recyclerView3;
        recyclerView3.setLayoutManager(this.html_llm);
        this.rvHtml.setNestedScrollingEnabled(false);
        this.rvHtml.setHasFixedSize(false);
        LinearLayoutManager linearLayoutManager4 = new LinearLayoutManager(this.context);
        this.pdf_llm = linearLayoutManager4;
        linearLayoutManager4.setOrientation(0);
        RecyclerView recyclerView4 = (RecyclerView) this.rootView.findViewById(R.id.rv_pdf);
        this.rvPdf = recyclerView4;
        recyclerView4.setLayoutManager(this.pdf_llm);
        this.rvPdf.setNestedScrollingEnabled(false);
        this.rvPdf.setHasFixedSize(false);
        this.noDownloadsAvailable = (TextView) this.rootView.findViewById(R.id.txtNoDownloadsView);
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        TextUtils.isEmpty(str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdapter() {
        try {
            ContentViewAdapterNew contentViewAdapterNew = new ContentViewAdapterNew(this.context, this.videos_downloadsList, this, this.mediaplayer);
            this.videosAdapter = contentViewAdapterNew;
            this.rvVideos.setAdapter(contentViewAdapterNew);
            ContentViewAdapterNew contentViewAdapterNew2 = new ContentViewAdapterNew(this.context, this.images_downloadsList, this, this.mediaplayer);
            this.imagessAdapter = contentViewAdapterNew2;
            this.rvImages.setAdapter(contentViewAdapterNew2);
            ContentViewAdapterNew contentViewAdapterNew3 = new ContentViewAdapterNew(this.context, this.html_downloadsList, this, this.mediaplayer);
            this.htmlAdapter = contentViewAdapterNew3;
            this.rvHtml.setAdapter(contentViewAdapterNew3);
            ContentViewAdapterNew contentViewAdapterNew4 = new ContentViewAdapterNew(this.context, this.pdf_downloadsList, this, this.mediaplayer);
            this.pdfAdapter = contentViewAdapterNew4;
            this.rvPdf.setAdapter(contentViewAdapterNew4);
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
                DownloadsFragment downloadsFragment = DownloadsFragment.this;
                downloadsFragment.videos_downloadsList = downloadsFragment.categoryDAO.getCategorywiseDownloadsContents(Queries.getInstance().getDownloadedContents(1, DownloadsFragment.this.contextId));
                DownloadsFragment downloadsFragment2 = DownloadsFragment.this;
                downloadsFragment2.images_downloadsList = downloadsFragment2.categoryDAO.getCategorywiseDownloadsContents(Queries.getInstance().getDownloadedContents(1, DownloadsFragment.this.contextId));
                DownloadsFragment downloadsFragment3 = DownloadsFragment.this;
                downloadsFragment3.html_downloadsList = downloadsFragment3.categoryDAO.getCategorywiseDownloadsContents(Queries.getInstance().getDownloadedContents(1, DownloadsFragment.this.contextId));
                DownloadsFragment downloadsFragment4 = DownloadsFragment.this;
                downloadsFragment4.pdf_downloadsList = downloadsFragment4.categoryDAO.getCategorywiseDownloadsContents(Queries.getInstance().getDownloadedContents(1, DownloadsFragment.this.contextId));
            } catch (Exception e) {
                e.printStackTrace();
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<ContentMaster> list) {
            super.onPostExecute((LoadDataTask) list);
            if (this.running) {
                DownloadsFragment.this.setAdapter();
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            this.running = false;
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

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.mediaplayer.isPlaying()) {
            this.mediaplayer.stop();
            this.mediaplayer.reset();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mediaplayer.release();
    }
}
