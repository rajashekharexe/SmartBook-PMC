package com.conceptglobal.pmc.promotions.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnApplyFilter;
import com.conceptglobal.pmc.promotions.models.CategoryMaster;
import com.conceptglobal.pmc.promotions.models.ContentTypeMaster;
import com.conceptglobal.pmc.promotions.utils.FlowLayout;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FilterActivity extends AppCompatActivity implements OnApplyFilter {
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
    private TextView tvApplyFilter;
    private TextView tvCloseDialog;
    private List<CategoryMaster> categoryMasters = new ArrayList();
    private List<ContentTypeMaster> contentTypeMasters = new ArrayList();
    private ArrayList<Integer> listOfContentTypeFiltered = new ArrayList<>();

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.list_of_categories);
        this.activity = this;
        this.context = this;
        CategoryDAO categoryDAO = new CategoryDAO(this.activity);
        this.categoryDAO = categoryDAO;
        try {
            this.contentTypeMasters = categoryDAO.getContentTypeMasters();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.contentTypeChipsLayout = (FlowLayout) findViewById(R.id.contentTypeChipsLayout);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.activity);
        this.llm = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        this.recyclerView = (RecyclerView) findViewById(R.id.rv_list_of_categories);
        this.tvCloseDialog = (TextView) findViewById(R.id.close);
        this.tvApplyFilter = (TextView) findViewById(R.id.tv_apply_filter);
        this.recyclerView.setLayoutManager(this.llm);
        this.recyclerView.setNestedScrollingEnabled(false);
        this.recyclerView.setHasFixedSize(false);
        this.nodataview = (TextView) findViewById(R.id.txtEmptyView);
        this.progress = (ProgressBar) findViewById(R.id.progress);
        setAdapter();
        loadData();
        this.tvCloseDialog.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FilterActivity.this.setResult(0, new Intent());
                FilterActivity.this.finish();
            }
        });
        this.tvApplyFilter.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ArrayList<Integer> onCategoryFilterCheck = FilterActivity.this.mAdapter.onCategoryFilterCheck();
                Log.e("Apply Filter: ", onCategoryFilterCheck.toString());
                if (onCategoryFilterCheck.size() <= 0 && FilterActivity.this.listOfContentTypeFiltered.size() <= 0) {
                    Toast.makeText(FilterActivity.this.activity, "Nothing you have selected", 1).show();
                    return;
                }
                String replace = onCategoryFilterCheck.size() > 0 ? onCategoryFilterCheck.toString().replace("[", "(").replace("]", ")") : "";
                String replace2 = FilterActivity.this.listOfContentTypeFiltered.size() > 0 ? FilterActivity.this.listOfContentTypeFiltered.toString().replace("[", "(").replace("]", ")") : "";
                Intent intent = new Intent();
                intent.putExtra("categories", replace);
                intent.putExtra("contentType", replace2);
                FilterActivity.this.setResult(-1, intent);
                FilterActivity.this.finish();
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

    private void setAdapter() {
        fillAutoSpacingLayout(this.contentTypeChipsLayout, this.contentTypeMasters);
        try {
            this.listOfCategoriesFiltered = new ArrayList<>();
            CategoryFilterDialogAdapter categoryFilterDialogAdapter = new CategoryFilterDialogAdapter(this.activity, this.categoryMasters, this.listOfCategoriesFiltered);
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
                return FilterActivity.this.categoryDAO.getCategorySelection(0);
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
                FilterActivity.this.categoryMasters.clear();
                if (FilterActivity.this.categoryMasters != null && FilterActivity.this.categoryMasters.size() > 0) {
                    FilterActivity.this.categoryMasters.remove(FilterActivity.this.categoryMasters.size() - 1);
                    FilterActivity.this.mAdapter.notifyItemRemoved(FilterActivity.this.categoryMasters.size());
                }
                FilterActivity.this.progress.setVisibility(8);
                FilterActivity.this.categoryMasters.addAll(list);
                FilterActivity.this.refreshAdapter();
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
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_clearfilter, menu);
        menu.findItem(R.id.clear_filter).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivity.3
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                Intent intent = new Intent();
                intent.putExtra("categories", "");
                intent.putExtra("contentType", "");
                FilterActivity.this.setResult(-1, intent);
                FilterActivity.this.finish();
                return false;
            }
        });
        return true;
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
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FilterActivity.this.listOfContentTypeFiltered.contains((Integer) view.getTag())) {
                    FilterActivity.this.listOfContentTypeFiltered.remove((Integer) view.getTag());
                    ((TextView) view).setTextColor(FilterActivity.this.getResources().getColor(R.color.black));
                    view.setBackgroundResource(R.drawable.chip_bg);
                } else {
                    FilterActivity.this.listOfContentTypeFiltered.add((Integer) view.getTag());
                    ((TextView) view).setTextColor(FilterActivity.this.getResources().getColor(R.color.white));
                    view.setBackgroundResource(R.drawable.chip_selected_bg);
                }
                Log.e("ContentTypes", FilterActivity.this.listOfContentTypeFiltered.toString());
            }
        });
        return textView;
    }
}
