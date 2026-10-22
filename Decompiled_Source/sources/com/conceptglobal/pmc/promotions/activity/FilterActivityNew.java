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
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter2;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnApplyFilter;
import com.conceptglobal.pmc.promotions.models.CategoryMaster;
import com.conceptglobal.pmc.promotions.models.ContentTypeMaster;
import com.conceptglobal.pmc.promotions.utils.FlowLayout;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class FilterActivityNew extends AppCompatActivity implements OnApplyFilter {
    private Activity activity;
    private CategoryDAO categoryDAO;
    private FlowLayout contentTypeChipsLayout;
    private Context context;
    private ArrayList<Integer> listOfCategoriesFiltered;
    private LinearLayoutManager llm;
    private CategoryFilterDialogAdapter2 mAdapter;
    private LoadDataTask mTask;
    private TextView nodataview;
    private ProgressBar progress;
    private RecyclerView recyclerView;
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
        this.tvCloseDialog.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivityNew.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ArrayList<Integer> onCategoryFilterCheck = FilterActivityNew.this.mAdapter.onCategoryFilterCheck();
                if (onCategoryFilterCheck.size() > 0 || FilterActivityNew.this.listOfContentTypeFiltered.size() > 0) {
                    if (onCategoryFilterCheck.size() > 0) {
                        onCategoryFilterCheck.clear();
                    }
                    if (FilterActivityNew.this.listOfCategoriesFiltered.size() > 0) {
                        FilterActivityNew.this.listOfCategoriesFiltered.clear();
                        FilterActivityNew.this.mAdapter.clearData();
                    }
                }
                LocalBroadcastManager.getInstance(FilterActivityNew.this.context).sendBroadcast(new Intent("ClearFilers"));
                Toast.makeText(FilterActivityNew.this.context, "Filters removed", 1).show();
            }
        });
        this.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivityNew.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FilterActivityNew.this.mAdapter.onCategoryFilterCheck();
                LocalBroadcastManager.getInstance(FilterActivityNew.this.context).sendBroadcast(new Intent("ClearFilers"));
                FilterActivityNew.this.finish();
            }
        });
        this.tvApplyFilter.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivityNew.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ArrayList<Integer> onCategoryFilterCheck = FilterActivityNew.this.mAdapter.onCategoryFilterCheck();
                Log.e("Apply Filter: ", onCategoryFilterCheck.toString());
                if (onCategoryFilterCheck.size() <= 0 && FilterActivityNew.this.listOfContentTypeFiltered.size() <= 0) {
                    Toast.makeText(FilterActivityNew.this.activity, "Nothing you have selected", 1).show();
                    return;
                }
                String replace = onCategoryFilterCheck.size() > 0 ? onCategoryFilterCheck.toString().replace("[", "(").replace("]", ")") : "";
                String replace2 = FilterActivityNew.this.listOfContentTypeFiltered.size() > 0 ? FilterActivityNew.this.listOfContentTypeFiltered.toString().replace("[", "(").replace("]", ")") : "";
                Intent intent = new Intent();
                intent.putExtra("categories", replace);
                intent.putExtra("contentType", replace2);
                FilterActivityNew.this.setResult(-1, intent);
                FilterActivityNew.this.finish();
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
            CategoryFilterDialogAdapter2 categoryFilterDialogAdapter2 = new CategoryFilterDialogAdapter2(this.activity, this.categoryMasters, this.listOfCategoriesFiltered, new HashMap(), this.contextId);
            this.mAdapter = categoryFilterDialogAdapter2;
            this.recyclerView.setAdapter(categoryFilterDialogAdapter2);
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
                return FilterActivityNew.this.categoryDAO.getCategorySelection(0);
            } catch (Exception e) {
                e.printStackTrace();
                return arrayList;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x007d, code lost:
        
            r7.remove(r0);
         */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onPostExecute(java.util.List<com.conceptglobal.pmc.promotions.models.CategoryMaster> r7) {
            /*
                r6 = this;
                super.onPostExecute(r7)
                boolean r0 = r6.running
                if (r0 == 0) goto La4
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.this
                java.util.List r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.access$600(r0)
                r0.clear()
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.this
                java.util.List r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.access$600(r0)
                if (r0 == 0) goto L4c
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.this
                java.util.List r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.access$600(r0)
                int r0 = r0.size()
                if (r0 <= 0) goto L4c
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.this
                java.util.List r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.access$600(r0)
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew r1 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.this
                java.util.List r1 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.access$600(r1)
                int r1 = r1.size()
                int r1 = r1 + (-1)
                r0.remove(r1)
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.this
                com.conceptglobal.pmc.promotions.adapters.CategoryFilterDialogAdapter2 r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.access$000(r0)
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew r1 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.this
                java.util.List r1 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.access$600(r1)
                int r1 = r1.size()
                r0.notifyItemRemoved(r1)
            L4c:
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.this     // Catch: java.lang.Exception -> L84
                int r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.access$700(r0)     // Catch: java.lang.Exception -> L84
                r1 = 2
                if (r0 != r1) goto L88
                r0 = 0
            L56:
                int r1 = r7.size()     // Catch: java.lang.Exception -> L84
                if (r0 >= r1) goto L88
                com.conceptglobal.pmc.database.GetDataFromDB r1 = com.conceptglobal.pmc.database.GetDataFromDB.getInstance()     // Catch: java.lang.Exception -> L84
                com.conceptglobal.pmc.common.Queries r2 = com.conceptglobal.pmc.common.Queries.getInstance()     // Catch: java.lang.Exception -> L84
                java.lang.String r3 = "TSTFilterIds"
                java.lang.String r2 = r2.getItemValue(r3)     // Catch: java.lang.Exception -> L84
                long r1 = r1.getLookupValue(r2)     // Catch: java.lang.Exception -> L84
                java.lang.Object r3 = r7.get(r0)     // Catch: java.lang.Exception -> L84
                com.conceptglobal.pmc.promotions.models.CategoryMaster r3 = (com.conceptglobal.pmc.promotions.models.CategoryMaster) r3     // Catch: java.lang.Exception -> L84
                int r3 = r3.getCategoryId()     // Catch: java.lang.Exception -> L84
                long r3 = (long) r3     // Catch: java.lang.Exception -> L84
                int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
                if (r5 != 0) goto L81
                r7.remove(r0)     // Catch: java.lang.Exception -> L84
                goto L88
            L81:
                int r0 = r0 + 1
                goto L56
            L84:
                r0 = move-exception
                r0.printStackTrace()
            L88:
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.this
                android.widget.ProgressBar r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.access$800(r0)
                r1 = 8
                r0.setVisibility(r1)
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.this
                java.util.List r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.access$600(r0)
                r0.addAll(r7)
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew r0 = com.conceptglobal.pmc.promotions.activity.FilterActivityNew.this
                com.conceptglobal.pmc.promotions.activity.FilterActivityNew.access$900(r0)
                r7.clear()
            La4:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.activity.FilterActivityNew.LoadDataTask.onPostExecute(java.util.List):void");
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
        menu.findItem(R.id.clear_filter).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivityNew.4
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                Intent intent = new Intent();
                intent.putExtra("categories", "");
                intent.putExtra("contentType", "");
                FilterActivityNew.this.setResult(-1, intent);
                FilterActivityNew.this.finish();
                return false;
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAdapter() {
        this.mAdapter.notifyDataSetChanged();
        CategoryFilterDialogAdapter2 categoryFilterDialogAdapter2 = this.mAdapter;
        if (categoryFilterDialogAdapter2 != null && categoryFilterDialogAdapter2.getItemCount() > 0) {
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
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterActivityNew.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FilterActivityNew.this.listOfContentTypeFiltered.contains((Integer) view.getTag())) {
                    FilterActivityNew.this.listOfContentTypeFiltered.remove((Integer) view.getTag());
                    ((TextView) view).setTextColor(FilterActivityNew.this.getResources().getColor(R.color.black));
                    view.setBackgroundResource(R.drawable.chip_bg);
                } else {
                    FilterActivityNew.this.listOfContentTypeFiltered.add((Integer) view.getTag());
                    ((TextView) view).setTextColor(FilterActivityNew.this.getResources().getColor(R.color.white));
                    view.setBackgroundResource(R.drawable.chip_selected_bg);
                }
                Log.e("ContentTypes", FilterActivityNew.this.listOfContentTypeFiltered.toString());
            }
        });
        return textView;
    }
}
