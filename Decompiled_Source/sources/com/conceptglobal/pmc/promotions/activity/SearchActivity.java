package com.conceptglobal.pmc.promotions.activity;

import android.app.SearchManager;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.cursoradapter.widget.SimpleCursorAdapter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter;
import com.conceptglobal.pmc.promotions.common.Queries;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmc.promotions.models.FilterCriteria;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.evernote.android.job.JobStorage;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SearchActivity extends AppCompatActivity implements OnAudioActionPerformed {
    private ContentCategoryViewAdapter categoryAdapter;
    private CategoryDAO categoryDAO;
    private Context context;
    private LinearLayoutManager llm;
    private SimpleCursorAdapter mAdapter;
    private LoadDataTask mTask;
    private RecyclerView rvSearchItems;
    private MenuItem searchMenuItem;
    private SearchView searchView;
    private TextView tvNoData;
    private ArrayList<ContentMaster> contentMasterList = new ArrayList<>();
    private String searchString = "";
    private String[] SUGGESTIONS = null;
    private int contextId = 1;
    boolean isLoading = false;
    private int limit = 50;
    private int offset = 0;

    @Override // com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed
    public void onAudioActionPerformed(int i, String str, String str2) {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_search);
        CustomActionBar.initActionBar(this, "PMC (" + UtilDeclarations.getApplicationVersion(this) + ")");
        if (getIntent().hasExtra("ContextId")) {
            this.contextId = getIntent().getExtras().getInt("ContextId");
        }
        init();
        setData();
        this.mAdapter = new SimpleCursorAdapter(this, R.layout.search_item, null, new String[]{"cityName"}, new int[]{android.R.id.text1}, 2);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void populateAdapter(String str) {
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{JobStorage.COLUMN_ID, "cityName"});
        int i = 0;
        while (true) {
            String[] strArr = this.SUGGESTIONS;
            if (i < strArr.length) {
                if (strArr[i].toLowerCase().startsWith(str.toLowerCase())) {
                    matrixCursor.addRow(new Object[]{Integer.valueOf(i), this.SUGGESTIONS[i]});
                }
                i++;
            } else {
                this.mAdapter.changeCursor(matrixCursor);
                return;
            }
        }
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
        this.searchView.setSuggestionsAdapter(this.mAdapter);
        this.searchView.setIconifiedByDefault(false);
        this.searchView.setOnSuggestionListener(new SearchView.OnSuggestionListener() { // from class: com.conceptglobal.pmc.promotions.activity.SearchActivity.1
            @Override // androidx.appcompat.widget.SearchView.OnSuggestionListener
            public boolean onSuggestionClick(int i) {
                Cursor cursor = (Cursor) SearchActivity.this.mAdapter.getItem(i);
                SearchActivity.this.searchView.setQuery(cursor.getString(cursor.getColumnIndex("cityName")), true);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnSuggestionListener
            public boolean onSuggestionSelect(int i) {
                Toast.makeText(SearchActivity.this, "Seleted Item", 1).show();
                return true;
            }
        });
        this.searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.promotions.activity.SearchActivity.2
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                String singleValue = SearchActivity.this.categoryDAO.getSingleValue("select CategoryId from CategoryMaster where CategoryName='" + str + "'");
                SearchActivity.this.searchString = str;
                if (singleValue != null) {
                    singleValue = "(" + singleValue + ")";
                }
                SearchActivity.this.offset = 0;
                SearchActivity.this.loadData(singleValue, null);
                return false;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                SearchActivity.this.populateAdapter(str);
                return false;
            }
        });
        return true;
    }

    private void init() {
        this.rvSearchItems = (RecyclerView) findViewById(R.id.rvSearchContents);
        this.tvNoData = (TextView) findViewById(R.id.tv_nodata);
        this.categoryDAO = new CategoryDAO(this.context);
        this.context = getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdapter() {
        try {
            ArrayList<ContentMaster> arrayList = this.contentMasterList;
            if (arrayList != null && arrayList.size() > 0) {
                ContentCategoryViewAdapter contentCategoryViewAdapter = new ContentCategoryViewAdapter(this.context, this, this.contentMasterList, this, new MediaPlayer(), false);
                this.categoryAdapter = contentCategoryViewAdapter;
                this.rvSearchItems.setAdapter(contentCategoryViewAdapter);
                this.rvSearchItems.setVisibility(0);
                this.tvNoData.setVisibility(8);
            } else {
                this.rvSearchItems.setVisibility(8);
                this.tvNoData.setVisibility(0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setData() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context);
        this.llm = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        this.rvSearchItems.setLayoutManager(this.llm);
        this.rvSearchItems.setNestedScrollingEnabled(false);
        this.rvSearchItems.setHasFixedSize(true);
        ArrayList<String> searckKeysSuggestionsList = this.categoryDAO.getSearckKeysSuggestionsList(this.contextId);
        ArrayList<String> suggestionsList = this.categoryDAO.getSuggestionsList();
        ArrayList<String> contentNamesSuggestionsList = this.categoryDAO.getContentNamesSuggestionsList(this.contextId);
        if (this.contextId == 1) {
            searckKeysSuggestionsList.addAll(suggestionsList);
        }
        searckKeysSuggestionsList.addAll(contentNamesSuggestionsList);
        this.SUGGESTIONS = (String[]) searckKeysSuggestionsList.toArray(new String[searckKeysSuggestionsList.size()]);
        loadData(null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadData(String str, String str2) {
        FilterCriteria filterCriteria = new FilterCriteria();
        filterCriteria.setContentIds(str);
        filterCriteria.setContentTypes(str2);
        LoadDataTask loadDataTask = new LoadDataTask();
        this.mTask = loadDataTask;
        loadDataTask.execute(filterCriteria);
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
                return SearchActivity.this.categoryDAO.getContents(Queries.getInstance().getSearchContentQuery(filterCriteriaArr[0].getContentIds(), null, SearchActivity.this.searchString, SearchActivity.this.limit, SearchActivity.this.offset, SearchActivity.this.contextId));
            } catch (Exception e) {
                e.printStackTrace();
                return arrayList;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ArrayList<ContentMaster> arrayList) {
            super.onPostExecute((LoadDataTask) arrayList);
            if (arrayList.size() > 0) {
                if (SearchActivity.this.offset > 0) {
                    SearchActivity.this.contentMasterList.remove(SearchActivity.this.contentMasterList.size() - 1);
                    SearchActivity.this.categoryAdapter.notifyItemRemoved(SearchActivity.this.contentMasterList.size());
                    SearchActivity.this.categoryAdapter.notifyDataSetChanged();
                }
                SearchActivity.this.offset += SearchActivity.this.limit;
                SearchActivity.this.contentMasterList.clear();
                SearchActivity.this.contentMasterList.addAll(arrayList);
                SearchActivity.this.isLoading = false;
                SearchActivity.this.setAdapter();
                return;
            }
            Toast.makeText(SearchActivity.this, "No items available in given search.", 1).show();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            this.running = false;
        }
    }

    private void initScrollListener() {
        this.rvSearchItems.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.conceptglobal.pmc.promotions.activity.SearchActivity.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
                if (SearchActivity.this.isLoading || linearLayoutManager == null || linearLayoutManager.findLastCompletelyVisibleItemPosition() != (SearchActivity.this.contentMasterList.size() / 2) - 1) {
                    return;
                }
                SearchActivity.this.loadMore();
                SearchActivity.this.isLoading = true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMore() {
        this.contentMasterList.add(null);
        this.categoryAdapter.notifyItemInserted(this.contentMasterList.size() - 1);
        loadData(null, null);
    }
}
