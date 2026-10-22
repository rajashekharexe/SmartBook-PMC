package com.conceptglobal.pmc.promotions.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
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
public class FilterFragment extends Fragment implements OnApplyFilter {
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
    private View rootView;
    private TextView tvApplyFilter;
    private TextView tvCloseDialog;
    private List<CategoryMaster> categoryMasters = new ArrayList();
    private List<ContentTypeMaster> contentTypeMasters = new ArrayList();
    private ArrayList<Integer> listOfContentTypeFiltered = new ArrayList<>();

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.activity = getActivity();
        this.context = getActivity().getApplicationContext();
        CategoryDAO categoryDAO = new CategoryDAO(this.activity);
        this.categoryDAO = categoryDAO;
        try {
            this.contentTypeMasters = categoryDAO.getContentTypeMasters();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.rootView == null) {
            this.rootView = layoutInflater.inflate(R.layout.list_of_categories, viewGroup, false);
            init();
            setAdapter();
            loadData();
        }
        return this.rootView;
    }

    private void init() {
        this.contentTypeChipsLayout = (FlowLayout) this.rootView.findViewById(R.id.contentTypeChipsLayout);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.activity);
        this.llm = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        this.recyclerView = (RecyclerView) this.rootView.findViewById(R.id.rv_list_of_categories);
        this.tvCloseDialog = (TextView) this.rootView.findViewById(R.id.close);
        this.tvApplyFilter = (TextView) this.rootView.findViewById(R.id.tv_apply_filter);
        this.recyclerView.setLayoutManager(this.llm);
        this.recyclerView.setNestedScrollingEnabled(false);
        this.recyclerView.setHasFixedSize(false);
        this.nodataview = (TextView) this.rootView.findViewById(R.id.txtEmptyView);
        this.progress = (ProgressBar) this.rootView.findViewById(R.id.progress);
        this.tvCloseDialog.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FilterFragment.this.getActivity().setResult(0, new Intent());
                FilterFragment.this.getActivity().finish();
            }
        });
        this.tvApplyFilter.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ArrayList<Integer> onCategoryFilterCheck = FilterFragment.this.mAdapter.onCategoryFilterCheck();
                Log.e("Apply Filter: ", onCategoryFilterCheck.toString());
                if (onCategoryFilterCheck.size() <= 0 && FilterFragment.this.listOfContentTypeFiltered.size() <= 0) {
                    Toast.makeText(FilterFragment.this.activity, "Nothing you have selected", 1).show();
                    return;
                }
                String replace = onCategoryFilterCheck.size() > 0 ? onCategoryFilterCheck.toString().replace("[", "(").replace("]", ")") : "";
                String replace2 = FilterFragment.this.listOfContentTypeFiltered.size() > 0 ? FilterFragment.this.listOfContentTypeFiltered.toString().replace("[", "(").replace("]", ")") : "";
                Intent intent = new Intent();
                intent.putExtra("categories", replace);
                intent.putExtra("contentType", replace2);
                FilterFragment.this.getActivity().setResult(-1, intent);
                FilterFragment.this.getActivity().finish();
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
        getActivity().setResult(-1, intent);
        getActivity().finish();
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
                return FilterFragment.this.categoryDAO.getCategorySelection(0);
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
                FilterFragment.this.categoryMasters.clear();
                if (FilterFragment.this.categoryMasters != null && FilterFragment.this.categoryMasters.size() > 0) {
                    FilterFragment.this.categoryMasters.remove(FilterFragment.this.categoryMasters.size() - 1);
                    FilterFragment.this.mAdapter.notifyItemRemoved(FilterFragment.this.categoryMasters.size());
                }
                FilterFragment.this.progress.setVisibility(8);
                FilterFragment.this.categoryMasters.addAll(list);
                FilterFragment.this.refreshAdapter();
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
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.FilterFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FilterFragment.this.listOfContentTypeFiltered.contains((Integer) view.getTag())) {
                    FilterFragment.this.listOfContentTypeFiltered.remove((Integer) view.getTag());
                    ((TextView) view).setTextColor(FilterFragment.this.getResources().getColor(R.color.black));
                    view.setBackgroundResource(R.drawable.chip_bg);
                } else {
                    FilterFragment.this.listOfContentTypeFiltered.add((Integer) view.getTag());
                    ((TextView) view).setTextColor(FilterFragment.this.getResources().getColor(R.color.white));
                    view.setBackgroundResource(R.drawable.chip_selected_bg);
                }
                Log.e("ContentTypes", FilterFragment.this.listOfContentTypeFiltered.toString());
            }
        });
        return textView;
    }
}
