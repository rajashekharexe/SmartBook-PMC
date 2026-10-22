package com.conceptglobal.pmc.promotions.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnApplyFilter;
import com.conceptglobal.pmc.promotions.models.CategoryMaster;
import com.conceptglobal.pmc.promotions.models.ContentTypeMaster;
import com.conceptglobal.pmc.promotions.utils.FlowLayout;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FilterActivity2 extends AppCompatActivity implements OnApplyFilter {
    private Activity activity;
    private CategoryDAO categoryDAO;
    private FlowLayout contentTypeChipsLayout;
    private Context context;
    private ArrayList<Integer> listOfCategoriesFiltered;
    private LinearLayoutManager llm;
    private CategoryFilterDialogAdapter mAdapter;
    private LoadDataTask mTask;
    private TextView nodataview;
    private ProgressBar progress;
    private RecyclerView recyclerView;
    String title;
    private TextView tvApplyFilter;
    private TextView tvClose;
    private TextView tvCloseDialog;
    private List<CategoryMaster> categoryMasters = new ArrayList();
    private List<ContentTypeMaster> contentTypeMasters = new ArrayList();
    private ArrayList<Integer> listOfContentTypeFiltered = new ArrayList<>();
    private int contextId = 1;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.list_of_categories);
        this.activity = this;
        this.context = this;
        this.categoryDAO = new CategoryDAO(this.activity);
        if (getIntent().hasExtra("ContextId")) {
            this.contextId = getIntent().getExtras().getInt("ContextId");
        }
        try {
            this.contentTypeMasters = this.categoryDAO.getContentTypeMasters();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.title = getIntent().getExtras().getString(SettingsJsonConstants.PROMPT_TITLE_KEY, "");
        CustomActionBar.initActionBar(this, this.title + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
        this.contentTypeChipsLayout = (FlowLayout) findViewById(R.id.contentTypeChipsLayout);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.activity);
        this.llm = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        this.recyclerView = (RecyclerView) findViewById(R.id.rv_list_of_categories);
        this.tvCloseDialog = (TextView) findViewById(R.id.close);
        this.tvClose = (TextView) findViewById(R.id.btn_close);
        this.tvApplyFilter = (TextView) findViewById(R.id.tv_apply_filter);
        this.recyclerView.setLayoutManager(this.llm);
        this.recyclerView.setNestedScrollingEnabled(false);
        this.recyclerView.setHasFixedSize(false);
        this.nodataview = (TextView) findViewById(R.id.txtEmptyView);
        this.progress = (ProgressBar) findViewById(R.id.progress);
        setAdapter();
        loadData();
        this.tvCloseDialog.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivity2.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FilterActivity2.this.mAdapter.removeFilres();
                FilterActivity2.this.setAdapter();
                Toast.makeText(FilterActivity2.this.context, "Filters removed", 1).show();
            }
        });
        this.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivity2.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FilterActivity2.this.mAdapter.onCategoryFilterCheck();
                LocalBroadcastManager.getInstance(FilterActivity2.this.context).sendBroadcast(new Intent("ClearFilers"));
                FilterActivity2.this.finish();
            }
        });
        this.tvApplyFilter.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivity2.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HashMap<Integer, String> onCategoryselectedItems = FilterActivity2.this.mAdapter.onCategoryselectedItems();
                ArrayList<Integer> onCategoryFilterCheck = FilterActivity2.this.mAdapter.onCategoryFilterCheck();
                if (onCategoryselectedItems == null || onCategoryselectedItems.size() <= 0) {
                    Toast.makeText(FilterActivity2.this.activity, "Nothing you have selected", 1).show();
                    return;
                }
                StringBuilder sb = new StringBuilder();
                int i = 0;
                for (Integer num : onCategoryselectedItems.keySet()) {
                    sb.append("(select ContentId FROM ContentCategoryMapping where CategoryId IN (");
                    sb.append(onCategoryselectedItems.get(num));
                    sb.append(")");
                    if (i != 0) {
                        sb.append(")");
                    }
                    if (i < onCategoryselectedItems.size() - 1) {
                        sb.append(" AND ContentId IN ");
                    }
                    i++;
                }
                sb.append(")");
                Intent intent = new Intent(FilterActivity2.this, (Class<?>) DisplayContentsActivity2.class);
                intent.putExtra("ContextId", FilterActivity2.this.contextId);
                intent.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, FilterActivity2.this.title);
                intent.putExtra("categories", sb.toString());
                intent.putExtra("contentType", "");
                intent.putExtra("FilterCount", onCategoryFilterCheck != null ? onCategoryFilterCheck.size() : 0);
                FilterActivity2.this.startActivity(intent);
                FilterActivity2.this.finish();
            }
        });
    }

    @Override // com.conceptglobal.pmc.promotions.interfaces.OnApplyFilter
    public void onApplyFilter(ArrayList<Integer> arrayList) {
        Intent intent = new Intent();
        intent.putExtra("categories", arrayList.toString());
        ArrayList<Integer> arrayList2 = this.listOfContentTypeFiltered;
        if (arrayList2 != null && arrayList2.size() > 0) {
            intent.putExtra("contentType", this.listOfContentTypeFiltered.toString());
        } else {
            intent.putExtra("contentType", "");
        }
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdapter() {
        try {
            this.listOfCategoriesFiltered = new ArrayList<>();
            CategoryFilterDialogAdapter categoryFilterDialogAdapter = new CategoryFilterDialogAdapter(this.activity, this.categoryMasters, this.listOfCategoriesFiltered, this.contextId);
            this.mAdapter = categoryFilterDialogAdapter;
            this.recyclerView.setAdapter(categoryFilterDialogAdapter);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private class LoadDataTask extends AsyncTask<Void, Void, List<CategoryMaster>> {
        private boolean running;

        private LoadDataTask() {
            this.running = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<CategoryMaster> doInBackground(Void... voidArr) {
            ArrayList arrayList = new ArrayList();
            try {
                return FilterActivity2.this.categoryDAO.getCategorySelection(0);
            } catch (Exception e) {
                e.printStackTrace();
                return arrayList;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<CategoryMaster> list) {
            super.onPostExecute((LoadDataTask) list);
            if (this.running) {
                FilterActivity2.this.categoryMasters.clear();
                if (FilterActivity2.this.categoryMasters != null && FilterActivity2.this.categoryMasters.size() > 0) {
                    FilterActivity2.this.categoryMasters.remove(FilterActivity2.this.categoryMasters.size() - 1);
                    FilterActivity2.this.mAdapter.notifyItemRemoved(FilterActivity2.this.categoryMasters.size());
                }
                try {
                    if (FilterActivity2.this.contextId == 2) {
                        List asList = Arrays.asList(GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValue("TESTIMONIALFILTERID")).split(","));
                        Iterator<CategoryMaster> it = list.iterator();
                        while (it.hasNext()) {
                            if (!asList.contains(it.next().getCategoryId() + "")) {
                                it.remove();
                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                FilterActivity2.this.progress.setVisibility(8);
                FilterActivity2.this.categoryMasters.addAll(list);
                FilterActivity2.this.refreshAdapter();
                list.clear();
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            this.running = false;
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAdapter() {
        this.mAdapter.notifyDataSetChanged();
        CategoryFilterDialogAdapter categoryFilterDialogAdapter = this.mAdapter;
        if (categoryFilterDialogAdapter != null && categoryFilterDialogAdapter.getItemCount() > 0) {
            this.nodataview.setVisibility(8);
            this.recyclerView.setVisibility(0);
        } else {
            this.nodataview.setVisibility(0);
            this.recyclerView.setVisibility(8);
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

    private void fillAutoSpacingLayout(FlowLayout flowLayout, List<ContentTypeMaster> list) {
        if (flowLayout.getChildCount() > 0) {
            flowLayout.removeAllViews();
        }
        for (ContentTypeMaster contentTypeMaster : list) {
            flowLayout.addView(buildLabel(contentTypeMaster.getContentTypeName(), contentTypeMaster.getContentTypeId()));
        }
    }

    private TextView buildLabel(String str, int i) {
        TextView textView = new TextView(this.context);
        textView.setText(str);
        textView.setTextSize(2, 14.0f);
        textView.setPadding(15, 15, 12, 12);
        textView.setBackgroundResource(R.drawable.chip_selection);
        textView.setTag(Integer.valueOf(i));
        textView.setTextColor(getResources().getColor(R.color.black));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivity2.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FilterActivity2.this.listOfContentTypeFiltered.contains((Integer) view.getTag())) {
                    FilterActivity2.this.listOfContentTypeFiltered.remove((Integer) view.getTag());
                    ((TextView) view).setTextColor(FilterActivity2.this.getResources().getColor(R.color.black));
                    view.setBackgroundResource(R.drawable.chip_bg);
                } else {
                    FilterActivity2.this.listOfContentTypeFiltered.add((Integer) view.getTag());
                    ((TextView) view).setTextColor(FilterActivity2.this.getResources().getColor(R.color.white));
                    view.setBackgroundResource(R.drawable.chip_selected_bg);
                }
                Log.e("ContentTypes", FilterActivity2.this.listOfContentTypeFiltered.toString());
            }
        });
        return textView;
    }
}
