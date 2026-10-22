package com.conceptglobal.pmc.promotions.activity;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SearchView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.conceptglobal.pmc.LoginActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.promotions.adapters.BannersPagerApapter;
import com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew;
import com.conceptglobal.pmc.promotions.common.Queries;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmc.promotions.models.FilterCriteria;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class HomeFragment extends Fragment implements OnAudioActionPerformed, SearchView.OnQueryTextListener, Filterable {
    public static final int REQUEST_CODE = 1;
    public static final int REQUEST_ID_MULTIPLE_PERMISSIONS = 7;
    private CategoryDAO categoryDAO;
    private ArrayList<ContentMaster> contenBannerstMasterList;
    private ArrayList<ContentMaster> contentMasterList;
    private ContentViewAdapterNew contentViewAdapter;
    private Context context;
    private FilterCriteria criteria;
    private ImageView[] dots;
    private int dotscount;
    private ArrayList<Integer> filteredCategories;
    private ImageButton ibHome;
    private LinearLayout llActions;
    private LinearLayout llDotsView;
    private LinearLayout llDownloads;
    private LinearLayout llFilter;
    private LinearLayout llReports;
    private LinearLayout llSort;
    private LinearLayoutManager llm;
    private LinearLayoutManager llmRecent;
    private LoadDataTask mTask;
    private MediaPlayer mediaplayer;
    private TextView noPromotionsAvailable;
    private ContentViewAdapterNew recentViewdAdapter;
    private View rootView;
    private RecyclerView rvRecentlyPublished;
    private RecyclerView rvRecentlyViewd;
    private MenuItem searchMenuItem;
    private SearchView searchView;
    private ArrayList<ContentMaster> sortedContentMasterList;
    Timer timer;
    private TextView tvBanner;
    private ViewPager viewPager;
    BannersPagerApapter viewPagerAdapter;
    private boolean isFiltered = false;
    String[] reqPerms = {"android.permission.MEDIA_CONTENT_CONTROL"};
    private CharSequence[] items = {"Name(A-Z)", "Name(Z-A)", "New Content", "Older Content"};
    int currentPage = 0;
    final long DELAY_MS = 500;
    final long PERIOD_MS = 3000;
    private int contextId = 1;
    private BroadcastReceiver testCompleationReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.promotions.activity.HomeFragment.2
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

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.filteredCategories = new ArrayList<>();
        this.sortedContentMasterList = new ArrayList<>();
        this.contenBannerstMasterList = new ArrayList<>();
        this.context = getActivity().getApplicationContext();
        this.mediaplayer = new MediaPlayer();
        this.contextId = getArguments().getInt("ContextId");
        this.categoryDAO = new CategoryDAO(this.context);
        this.criteria = new FilterCriteria();
        LocalBroadcastManager.getInstance(this.context).registerReceiver(this.testCompleationReceiver, new IntentFilter("TestStatus"));
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.rootView == null) {
            this.rootView = layoutInflater.inflate(R.layout.activity_display_contents, viewGroup, false);
            init();
            setAdapter();
        }
        return this.rootView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        loadData(((DisplayContentsActivity) getActivity()).criteria.getContentIds(), null);
    }

    private void setDots() {
        int count = this.viewPagerAdapter.getCount();
        this.dotscount = count;
        this.dots = new ImageView[count];
        this.llDotsView.removeAllViews();
        for (int i = 0; i < this.dotscount; i++) {
            this.dots[i] = new ImageView(this.context);
            this.dots[i].setImageDrawable(ContextCompat.getDrawable(this.context, R.drawable.non_active_dot));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(8, 0, 8, 0);
            this.llDotsView.addView(this.dots[i], layoutParams);
            this.dots[0].setImageDrawable(ContextCompat.getDrawable(this.context, R.drawable.active_dot));
        }
        this.viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.conceptglobal.pmc.promotions.activity.HomeFragment.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i2, float f, int i3) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i2) {
                for (int i3 = 0; i3 < HomeFragment.this.dotscount; i3++) {
                    HomeFragment.this.dots[i3].setImageDrawable(ContextCompat.getDrawable(HomeFragment.this.context, R.drawable.non_active_dot));
                }
                HomeFragment.this.dots[i2].setImageDrawable(ContextCompat.getDrawable(HomeFragment.this.context, R.drawable.active_dot));
            }
        });
    }

    private void init() {
        this.llActions = (LinearLayout) this.rootView.findViewById(R.id.actions);
        this.viewPager = (ViewPager) this.rootView.findViewById(R.id.vpBanner);
        this.tvBanner = (TextView) this.rootView.findViewById(R.id.tvBanner);
        this.llDotsView = (LinearLayout) this.rootView.findViewById(R.id.SliderDots);
        this.llDownloads = (LinearLayout) this.rootView.findViewById(R.id.ll_downloads);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context);
        this.llm = linearLayoutManager;
        linearLayoutManager.setOrientation(0);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this.context);
        this.llmRecent = linearLayoutManager2;
        linearLayoutManager2.setOrientation(0);
        RecyclerView recyclerView = (RecyclerView) this.rootView.findViewById(R.id.recently_published_promotions);
        this.rvRecentlyPublished = recyclerView;
        recyclerView.setLayoutManager(this.llm);
        this.rvRecentlyPublished.setNestedScrollingEnabled(false);
        this.rvRecentlyPublished.setHasFixedSize(false);
        RecyclerView recyclerView2 = (RecyclerView) this.rootView.findViewById(R.id.recently_viewd_promotions);
        this.rvRecentlyViewd = recyclerView2;
        recyclerView2.setLayoutManager(this.llmRecent);
        this.rvRecentlyViewd.setNestedScrollingEnabled(false);
        this.rvRecentlyViewd.setHasFixedSize(false);
        this.noPromotionsAvailable = (TextView) this.rootView.findViewById(R.id.txtEmptyView);
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
            this.contentMasterList = new ArrayList<>();
            ContentViewAdapterNew contentViewAdapterNew = new ContentViewAdapterNew(this.context, this.contentMasterList, this, this.mediaplayer);
            this.contentViewAdapter = contentViewAdapterNew;
            this.rvRecentlyPublished.setAdapter(contentViewAdapterNew);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRecentViewedAdapter(ArrayList<ContentMaster> arrayList) {
        try {
            ContentViewAdapterNew contentViewAdapterNew = new ContentViewAdapterNew(this.context, arrayList, this, this.mediaplayer);
            this.recentViewdAdapter = contentViewAdapterNew;
            this.rvRecentlyViewd.setAdapter(contentViewAdapterNew);
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
        ContentViewAdapterNew contentViewAdapterNew = new ContentViewAdapterNew(this.context, this.sortedContentMasterList, this, this.mediaplayer);
        this.contentViewAdapter = contentViewAdapterNew;
        this.rvRecentlyPublished.setAdapter(contentViewAdapterNew);
        refreshAdapter();
    }

    private void showSortingOrder() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setTitle("Sort by");
        builder.setSingleChoiceItems(this.items, -1, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.HomeFragment.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                HomeFragment homeFragment = HomeFragment.this;
                homeFragment.sortedContentMasterList = homeFragment.contentMasterList;
                if (i == 0) {
                    Collections.sort(HomeFragment.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.HomeFragment.3.1
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster.getContentName().compareTo(contentMaster2.getContentName());
                        }
                    });
                } else if (i == 1) {
                    Collections.sort(HomeFragment.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.HomeFragment.3.2
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster2.getContentName().compareTo(contentMaster.getContentName());
                        }
                    });
                } else if (i == 2) {
                    Collections.sort(HomeFragment.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.HomeFragment.3.3
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster2.getActiveStartDate().compareTo(contentMaster.getActiveStartDate());
                        }
                    });
                } else if (i == 3) {
                    Collections.sort(HomeFragment.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.HomeFragment.3.4
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster.getActiveStartDate().compareTo(contentMaster2.getActiveStartDate());
                        }
                    });
                }
                HomeFragment.this.setSortedAdapter();
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
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
                this.mediaplayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.conceptglobal.pmc.promotions.activity.HomeFragment.4
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

    private class LoadDataTask extends AsyncTask<FilterCriteria, Void, List<ContentMaster>> {
        private boolean running;

        private LoadDataTask() {
            this.running = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<ContentMaster> doInBackground(FilterCriteria... filterCriteriaArr) {
            ArrayList<ContentMaster> arrayList = new ArrayList<>();
            try {
                arrayList = HomeFragment.this.categoryDAO.getAllPromotionContents(filterCriteriaArr[0].getContentIds(), filterCriteriaArr[0].getContentTypes(), HomeFragment.this.contextId, true);
                HomeFragment.this.contenBannerstMasterList.clear();
                for (int i = 0; i < arrayList.size(); i++) {
                    if (HomeFragment.this.contextId != 1) {
                        if (HomeFragment.this.contextId == 2 && arrayList.get(i).getContentType() == 4 && i < 5) {
                            HomeFragment.this.contenBannerstMasterList.add(arrayList.get(i));
                        }
                    } else if (arrayList.get(i).getIsBanner() != null && arrayList.get(i).getIsBanner().equalsIgnoreCase("true") && arrayList.get(i).getContentType() == 4) {
                        HomeFragment.this.contenBannerstMasterList.add(arrayList.get(i));
                    }
                }
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
                HomeFragment.this.contentMasterList.clear();
                if (HomeFragment.this.contentMasterList != null && HomeFragment.this.contentMasterList.size() > 0) {
                    HomeFragment.this.contentMasterList.remove(HomeFragment.this.contentMasterList.size() - 1);
                    HomeFragment.this.contentViewAdapter.notifyItemRemoved(HomeFragment.this.contentMasterList.size());
                }
                HomeFragment.this.contentMasterList.addAll(list);
                HomeFragment.this.refreshAdapter();
                HomeFragment.this.setBannersAdapter();
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
    public void setBannersAdapter() {
        BannersPagerApapter bannersPagerApapter = new BannersPagerApapter(this.context, this.contenBannerstMasterList);
        this.viewPagerAdapter = bannersPagerApapter;
        this.viewPager.setAdapter(bannersPagerApapter);
        setDots();
        if (this.contenBannerstMasterList.size() == 0) {
            this.tvBanner.setVisibility(0);
            this.viewPager.setVisibility(8);
            return;
        }
        this.tvBanner.setVisibility(8);
        this.viewPager.setVisibility(0);
        final Handler handler = new Handler();
        final Runnable runnable = new Runnable() { // from class: com.conceptglobal.pmc.promotions.activity.HomeFragment.5
            @Override // java.lang.Runnable
            public void run() {
                if (HomeFragment.this.currentPage >= HomeFragment.this.viewPagerAdapter.getCount() - 1) {
                    HomeFragment.this.currentPage = -1;
                }
                HomeFragment.this.currentPage++;
                HomeFragment.this.viewPager.setCurrentItem(HomeFragment.this.currentPage, true);
            }
        };
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
        }
        Timer timer2 = new Timer();
        this.timer = timer2;
        timer2.schedule(new TimerTask() { // from class: com.conceptglobal.pmc.promotions.activity.HomeFragment.6
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                handler.post(runnable);
            }
        }, 500L, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAdapter() {
        ArrayList<ContentMaster> arrayList = this.contentMasterList;
        if (arrayList != null && arrayList.size() > 0) {
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
        ContentViewAdapterNew contentViewAdapterNew = this.contentViewAdapter;
        if (contentViewAdapterNew != null && contentViewAdapterNew.getItemCount() > 0) {
            this.noPromotionsAvailable.setVisibility(8);
            this.rvRecentlyPublished.setVisibility(0);
            this.rvRecentlyViewd.setVisibility(0);
        } else {
            this.noPromotionsAvailable.setVisibility(0);
            this.rvRecentlyPublished.setVisibility(8);
            this.rvRecentlyViewd.setVisibility(8);
        }
    }

    private class LoadRecentViewdDataTask extends AsyncTask<Void, Void, List<ContentMaster>> {
        private boolean running;

        private LoadRecentViewdDataTask() {
            this.running = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<ContentMaster> doInBackground(Void... voidArr) {
            ArrayList arrayList = new ArrayList();
            try {
                return HomeFragment.this.categoryDAO.getContents(Queries.getInstance().getContentsRecentlyViewd(HomeFragment.this.contextId));
            } catch (Exception e) {
                e.printStackTrace();
                return arrayList;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<ContentMaster> list) {
            super.onPostExecute((LoadRecentViewdDataTask) list);
            HomeFragment.this.setRecentViewedAdapter((ArrayList) list);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            this.running = false;
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
        new LoadRecentViewdDataTask().execute(new Void[0]);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        this.isFiltered = true;
        if (i == 1) {
            if (i2 == -1) {
                loadData(intent.getStringExtra("categories"), intent.getStringExtra("contentType"));
            } else if (i2 == 0) {
                Toast.makeText(this.context, "No filters applied", 0).show();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getLoginStatus()) {
            showAlertDialogLogout("You are not login from last few days please re-login again.");
        }
    }

    private boolean getLoginStatus() {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, -1);
            return GetDataFromDB.getInstance().getIsRecordExists(com.conceptglobal.pmc.common.Queries.getInstance().getLoginTimeStatus(simpleDateFormat.format(calendar.getTime())));
        } catch (Exception unused) {
            return false;
        }
    }

    private void showAlertDialogLogout(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.HomeFragment.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                Intent intent = new Intent();
                intent.setAction(ConstantsPMC.ACTION_FINISH);
                intent.putExtra(ConstantsPMC.ACTION_MSG, "finish");
                HomeFragment.this.context.sendBroadcast(intent);
                HomeFragment.this.context.startActivity(new Intent(HomeFragment.this.context, (Class<?>) LoginActivity.class));
            }
        });
        android.app.AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(getActivity())) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }
}
