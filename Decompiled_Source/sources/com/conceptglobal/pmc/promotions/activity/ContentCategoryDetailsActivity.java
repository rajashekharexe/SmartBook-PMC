package com.conceptglobal.pmc.promotions.activity;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.promotions.adapters.CategoryAdapter;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmc.promotions.models.FilterCriteria;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ContentCategoryDetailsActivity extends AppCompatActivity implements OnAudioActionPerformed {
    private CategoryAdapter categoryAdapter;
    private CategoryDAO categoryDAO;
    private ArrayList<ContentMaster> contentMasterList;
    private Context context;
    private int contextId = 1;
    private LinearLayoutManager llItems;
    private LinearLayoutManager llm;
    private LoadDataTask mTask;
    private RecyclerView rvItems;
    private RecyclerView rvRelated;

    @Override // com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed
    public void onAudioActionPerformed(int i, String str, String str2) {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_content_category_details);
        if (getIntent().hasExtra("ContextId")) {
            this.contextId = getIntent().getExtras().getInt("ContextId");
        }
        init();
        setData();
    }

    private void setData() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.llm = linearLayoutManager;
        linearLayoutManager.setOrientation(0);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this);
        this.llItems = linearLayoutManager2;
        linearLayoutManager2.setOrientation(1);
        this.rvRelated.setLayoutManager(this.llm);
        this.rvRelated.setNestedScrollingEnabled(false);
        this.rvRelated.setHasFixedSize(false);
        this.rvItems.setLayoutManager(this.llItems);
        this.rvItems.setNestedScrollingEnabled(false);
        this.rvItems.setHasFixedSize(false);
        loadData(null, null);
    }

    private void loadData(String str, String str2) {
        LoadDataTask loadDataTask = new LoadDataTask();
        this.mTask = loadDataTask;
        loadDataTask.execute(new FilterCriteria[0]);
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
                return ContentCategoryDetailsActivity.this.categoryDAO.getAllPromotionContents(filterCriteriaArr[0].getContentIds(), "1", ContentCategoryDetailsActivity.this.contextId, false);
            } catch (Exception e) {
                e.printStackTrace();
                return arrayList;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<ContentMaster> list) {
            super.onPostExecute((LoadDataTask) list);
            ContentCategoryDetailsActivity.this.setAdapter();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            this.running = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdapter() {
        try {
            CategoryAdapter categoryAdapter = new CategoryAdapter(this.context, this.contentMasterList, this, new MediaPlayer());
            this.categoryAdapter = categoryAdapter;
            this.rvItems.setAdapter(categoryAdapter);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void init() {
        this.rvRelated = (RecyclerView) findViewById(R.id.rvRelatedItems);
        this.rvItems = (RecyclerView) findViewById(R.id.rvContents);
        this.categoryDAO = new CategoryDAO(this);
        this.context = getApplicationContext();
    }
}
