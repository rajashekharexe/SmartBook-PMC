package com.conceptglobal.pmc.promotions.activity;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter;
import com.conceptglobal.pmc.promotions.common.Queries;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmc.promotions.models.FilterCriteria;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ContentCategoryDetailsFragment extends Fragment implements OnAudioActionPerformed {
    private int bottomTab;
    private ContentCategoryViewAdapter categoryAdapter;
    private CategoryDAO categoryDAO;
    private ArrayList<ContentMaster> contentMasterList;
    private int contentType;
    private Context context;
    private int contextId = 1;
    private LinearLayoutManager llItems;
    private LinearLayoutManager llm;
    private LoadDataTask mTask;
    private View rootView;
    private RecyclerView rvItems;
    private RecyclerView rvRelated;

    @Override // com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed
    public void onAudioActionPerformed(int i, String str, String str2) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.rootView == null) {
            this.rootView = layoutInflater.inflate(R.layout.activity_content_category_details, viewGroup, false);
            this.contentType = getArguments().getInt("ContentType");
            this.bottomTab = getArguments().getInt("FromTab");
            this.contextId = getArguments().getInt("ContextId");
            init();
            setData();
        }
        return this.rootView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        loadData(((DisplayContentsActivity2) getActivity()).criteria.getContentIds(), null);
    }

    private void setData() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context);
        this.llm = linearLayoutManager;
        linearLayoutManager.setOrientation(0);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this.context);
        this.llItems = linearLayoutManager2;
        linearLayoutManager2.setOrientation(1);
        this.rvRelated.setLayoutManager(this.llm);
        this.rvRelated.setNestedScrollingEnabled(false);
        this.rvRelated.setHasFixedSize(false);
        this.rvItems.setLayoutManager(this.llItems);
        this.rvItems.setNestedScrollingEnabled(false);
        this.rvItems.setHasFixedSize(false);
    }

    private void loadData(String str, String str2) {
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
            String valueOf;
            ArrayList<ContentMaster> allPromotionContents;
            ArrayList<ContentMaster> arrayList = new ArrayList<>();
            if (ContentCategoryDetailsFragment.this.contentType != 1) {
                valueOf = String.valueOf(ContentCategoryDetailsFragment.this.contentType);
            } else {
                valueOf = ContentCategoryDetailsFragment.this.contentType + ",8";
            }
            try {
                switch (ContentCategoryDetailsFragment.this.bottomTab) {
                    case 100:
                        allPromotionContents = ContentCategoryDetailsFragment.this.categoryDAO.getAllPromotionContents(filterCriteriaArr[0].getContentIds(), "(" + valueOf + ")", ContentCategoryDetailsFragment.this.contextId, false);
                        break;
                    case 101:
                        if (ContentCategoryDetailsFragment.this.contentType > 0) {
                            allPromotionContents = ContentCategoryDetailsFragment.this.categoryDAO.getAllDownloadsContents(Queries.getInstance().getDownloadedContents(ContentCategoryDetailsFragment.this.contentType, ContentCategoryDetailsFragment.this.contextId));
                            break;
                        } else {
                            allPromotionContents = ContentCategoryDetailsFragment.this.categoryDAO.getAllDownloadsContents(Queries.getInstance().getDownloadedContents(ContentCategoryDetailsFragment.this.contentType, ContentCategoryDetailsFragment.this.contextId));
                            break;
                        }
                    case 102:
                        if (ContentCategoryDetailsFragment.this.contentType > 0) {
                            allPromotionContents = ContentCategoryDetailsFragment.this.categoryDAO.getFavouriteContents(Queries.getInstance().getFavouriteContents(ContentCategoryDetailsFragment.this.contentType, ContentCategoryDetailsFragment.this.contextId));
                            break;
                        } else {
                            allPromotionContents = ContentCategoryDetailsFragment.this.categoryDAO.getFavouriteContents(Queries.getInstance().getFavouriteContents(ContentCategoryDetailsFragment.this.contentType, ContentCategoryDetailsFragment.this.contextId));
                            break;
                        }
                    default:
                        return arrayList;
                }
                return allPromotionContents;
            } catch (Exception e) {
                e.printStackTrace();
                return arrayList;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ArrayList<ContentMaster> arrayList) {
            super.onPostExecute((LoadDataTask) arrayList);
            ContentCategoryDetailsFragment.this.contentMasterList = arrayList;
            ContentCategoryDetailsFragment.this.setAdapter();
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
            ContentCategoryViewAdapter contentCategoryViewAdapter = new ContentCategoryViewAdapter(this.context, getActivity(), this.contentMasterList, this, new MediaPlayer(), this.bottomTab == 101);
            this.categoryAdapter = contentCategoryViewAdapter;
            this.rvItems.setAdapter(contentCategoryViewAdapter);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void init() {
        this.rvRelated = (RecyclerView) this.rootView.findViewById(R.id.rvRelatedItems);
        this.rvItems = (RecyclerView) this.rootView.findViewById(R.id.rvContents);
        this.categoryDAO = new CategoryDAO(this.context);
        this.context = getActivity().getApplicationContext();
    }
}
