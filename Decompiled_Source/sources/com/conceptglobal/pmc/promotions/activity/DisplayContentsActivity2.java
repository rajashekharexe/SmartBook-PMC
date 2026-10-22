package com.conceptglobal.pmc.promotions.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SearchView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.fo.SelfAssignActivity;
import com.conceptglobal.pmc.promotions.adapters.BannersPagerApapter;
import com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmc.promotions.models.FilterCriteria;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public class DisplayContentsActivity2 extends AppCompatActivity implements OnAudioActionPerformed, SearchView.OnQueryTextListener, Filterable, View.OnClickListener {
    public static final int REQUEST_CODE = 1;
    public static final int REQUEST_ID_MULTIPLE_PERMISSIONS = 7;
    private ImageButton btnBottomHome;
    private ImageButton btnDownloads;
    private ImageButton btnFavourites;
    private RadioButton btnHome;
    private RadioButton btnHtml;
    private RadioButton btnImages;
    private RadioButton btnPDF;
    private ImageButton btnSearch;
    private ImageButton btnSettings;
    private RadioButton btnVideos;
    private CategoryDAO categoryDAO;
    private ArrayList<ContentMaster> contentMasterList;
    private ContentViewAdapterNew contentViewAdapter;
    private Context context;
    public FilterCriteria criteria;
    private ImageView[] dots;
    private int dotscount;
    private FloatingActionButton fab;
    int filterCount;
    MenuItem filterItem;
    private ArrayList<Integer> filteredCategories;
    FragmentManager fragmentManager;
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
    private RadioGroup rbTop;
    private RecyclerView rvRecentlyPublished;
    private RecyclerView rvRecentlyViewd;
    private MenuItem searchMenuItem;
    private SearchView searchView;
    private ArrayList<ContentMaster> sortedContentMasterList;
    TextView textCartItemCount;
    String title;
    private ViewPager viewPager;
    BannersPagerApapter viewPagerAdapter;
    private boolean isFiltered = false;
    String[] reqPerms = {"android.permission.MEDIA_CONTENT_CONTROL"};
    private CharSequence[] items = {"Name(A-Z)", "Name(Z-A)", "New Content", "Older Content"};
    private int bottomTab = 0;
    private int contextId = 1;
    int mCartItemCount = 0;
    private BroadcastReceiver clearFilterReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.promotions.activity.DisplayContentsActivity2.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DisplayContentsActivity2.this.criteria.setContentIds("");
            DisplayContentsActivity2.this.criteria.setContentTypes("");
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

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_promotions_layout);
        this.filteredCategories = new ArrayList<>();
        this.sortedContentMasterList = new ArrayList<>();
        this.context = this;
        this.mediaplayer = new MediaPlayer();
        if (getIntent().hasExtra("ContextId")) {
            this.contextId = getIntent().getExtras().getInt("ContextId");
        }
        String string = getIntent().getExtras().getString("categories");
        String string2 = getIntent().getExtras().getString("contentType");
        this.filterCount = getIntent().getExtras().getInt("FilterCount");
        this.title = getIntent().getExtras().getString(SettingsJsonConstants.PROMPT_TITLE_KEY, "");
        CustomActionBar.initActionBar(this, this.title + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        if (Build.VERSION.SDK_INT >= 23) {
            checkPermissions(this.reqPerms);
        }
        FilterCriteria filterCriteria = new FilterCriteria();
        this.criteria = filterCriteria;
        filterCriteria.setContentIds(string);
        this.criteria.setContentTypes(string2);
        init();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.clearFilterReceiver, new IntentFilter("ClearFilers"));
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R.id.fab);
        this.fab = floatingActionButton;
        floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.DisplayContentsActivity2.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(DisplayContentsActivity2.this, (Class<?>) SelfAssignActivity.class);
                intent.putExtra("isFromTestimonial", 111);
                DisplayContentsActivity2.this.startActivity(intent.setFlags(67108864));
            }
        });
        this.fragmentManager = getSupportFragmentManager();
        this.btnBottomHome.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark));
        this.bottomTab = 100;
        com.conceptglobal.pmc.promotions.utils.UtilDeclarations.revokeLocalContent(this);
        this.btnVideos.performClick();
        if (this.contextId == 2) {
            this.fab.setVisibility(0);
        } else {
            this.fab.setVisibility(8);
        }
    }

    private void setDots() {
        int count = this.viewPagerAdapter.getCount();
        this.dotscount = count;
        this.dots = new ImageView[count];
        for (int i = 0; i < this.dotscount; i++) {
            this.dots[i] = new ImageView(this);
            this.dots[i].setImageDrawable(ContextCompat.getDrawable(getApplicationContext(), R.drawable.non_active_dot));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(8, 0, 8, 0);
            this.llDotsView.addView(this.dots[i], layoutParams);
        }
        this.dots[0].setImageDrawable(ContextCompat.getDrawable(getApplicationContext(), R.drawable.active_dot));
        this.viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.conceptglobal.pmc.promotions.activity.DisplayContentsActivity2.2
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i2, float f, int i3) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i2) {
                for (int i3 = 0; i3 < DisplayContentsActivity2.this.dotscount; i3++) {
                    DisplayContentsActivity2.this.dots[i3].setImageDrawable(ContextCompat.getDrawable(DisplayContentsActivity2.this.getApplicationContext(), R.drawable.non_active_dot));
                }
                DisplayContentsActivity2.this.dots[i2].setImageDrawable(ContextCompat.getDrawable(DisplayContentsActivity2.this.getApplicationContext(), R.drawable.active_dot));
            }
        });
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
        } else if (itemId == R.id.filter) {
            showFilterOptions();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void init() {
        RadioButton radioButton = (RadioButton) findViewById(R.id.btn_top_home);
        this.btnHome = radioButton;
        radioButton.setOnClickListener(this);
        RadioButton radioButton2 = (RadioButton) findViewById(R.id.btn_top_Videos);
        this.btnVideos = radioButton2;
        radioButton2.setOnClickListener(this);
        RadioButton radioButton3 = (RadioButton) findViewById(R.id.btn_top_images);
        this.btnImages = radioButton3;
        radioButton3.setOnClickListener(this);
        RadioButton radioButton4 = (RadioButton) findViewById(R.id.btn_top_html);
        this.btnHtml = radioButton4;
        radioButton4.setOnClickListener(this);
        RadioButton radioButton5 = (RadioButton) findViewById(R.id.btn_top_pdf);
        this.btnPDF = radioButton5;
        radioButton5.setOnClickListener(this);
        ImageButton imageButton = (ImageButton) findViewById(R.id.iv_downloads_Home);
        this.btnDownloads = imageButton;
        imageButton.setOnClickListener(this);
        ImageButton imageButton2 = (ImageButton) findViewById(R.id.iv_bottom_Home);
        this.btnBottomHome = imageButton2;
        imageButton2.setOnClickListener(this);
        ImageButton imageButton3 = (ImageButton) findViewById(R.id.iv_search_Home);
        this.btnSearch = imageButton3;
        imageButton3.setOnClickListener(this);
        ImageButton imageButton4 = (ImageButton) findViewById(R.id.iv_favourite_Home);
        this.btnFavourites = imageButton4;
        imageButton4.setOnClickListener(this);
        ImageButton imageButton5 = (ImageButton) findViewById(R.id.iv_settings_Home);
        this.btnSettings = imageButton5;
        imageButton5.setOnClickListener(this);
        this.rbTop = (RadioGroup) findViewById(R.id.llTopView);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_with_filter, menu);
        MenuItem findItem = menu.findItem(R.id.filter);
        this.filterItem = findItem;
        View actionView = findItem.getActionView();
        this.textCartItemCount = (TextView) actionView.findViewById(R.id.filter_count);
        setupBadge(this.filterCount);
        actionView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.DisplayContentsActivity2.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DisplayContentsActivity2 displayContentsActivity2 = DisplayContentsActivity2.this;
                displayContentsActivity2.onOptionsItemSelected(displayContentsActivity2.filterItem);
            }
        });
        return true;
    }

    private void setupBadge(int i) {
        try {
            TextView textView = this.textCartItemCount;
            if (textView != null) {
                if (i > 0) {
                    this.mCartItemCount = i;
                } else {
                    this.mCartItemCount = 0;
                }
            }
            int i2 = this.mCartItemCount;
            if (i2 == 0) {
                if (textView.getVisibility() != 8) {
                    this.textCartItemCount.setVisibility(8);
                }
            } else {
                textView.setText(String.valueOf(Math.min(i2, 99)));
                if (this.textCartItemCount.getVisibility() != 0) {
                    this.textCartItemCount.setVisibility(0);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
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

    public boolean checkPermissions(String[] strArr) {
        Log.i("SplshScreen", "--Runtime permissions checking---");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (ContextCompat.checkSelfPermission(getApplicationContext(), str) != 0) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[arrayList.size()]), 7);
            return false;
        }
        Log.i("SplshScreen", "--Runtime permissions completed---");
        return true;
    }

    private void setAdapter() {
        try {
            this.contentMasterList = new ArrayList<>();
            ContentViewAdapterNew contentViewAdapterNew = new ContentViewAdapterNew(this.context, this.contentMasterList, this, this.mediaplayer);
            this.contentViewAdapter = contentViewAdapterNew;
            this.rvRecentlyPublished.setAdapter(contentViewAdapterNew);
            this.rvRecentlyViewd.setAdapter(this.contentViewAdapter);
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
        this.rvRecentlyViewd.setAdapter(this.contentViewAdapter);
        refreshAdapter();
    }

    private void showSortingOrder() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Sort by");
        builder.setSingleChoiceItems(this.items, -1, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.DisplayContentsActivity2.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DisplayContentsActivity2 displayContentsActivity2 = DisplayContentsActivity2.this;
                displayContentsActivity2.sortedContentMasterList = displayContentsActivity2.contentMasterList;
                if (i == 0) {
                    Collections.sort(DisplayContentsActivity2.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.DisplayContentsActivity2.5.1
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster.getContentName().compareTo(contentMaster2.getContentName());
                        }
                    });
                } else if (i == 1) {
                    Collections.sort(DisplayContentsActivity2.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.DisplayContentsActivity2.5.2
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster2.getContentName().compareTo(contentMaster.getContentName());
                        }
                    });
                } else if (i == 2) {
                    Collections.sort(DisplayContentsActivity2.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.DisplayContentsActivity2.5.3
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster2.getActiveStartDate().compareTo(contentMaster.getActiveStartDate());
                        }
                    });
                } else if (i == 3) {
                    Collections.sort(DisplayContentsActivity2.this.sortedContentMasterList, new Comparator<ContentMaster>() { // from class: com.conceptglobal.pmc.promotions.activity.DisplayContentsActivity2.5.4
                        @Override // java.util.Comparator
                        public int compare(ContentMaster contentMaster, ContentMaster contentMaster2) {
                            return contentMaster.getActiveStartDate().compareTo(contentMaster2.getActiveStartDate());
                        }
                    });
                }
                DisplayContentsActivity2.this.setSortedAdapter();
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    private void showFilterOptions() {
        Intent intent = new Intent(this, (Class<?>) FilterActivity2.class);
        Bundle bundle = new Bundle();
        bundle.putInt("ContextId", this.contextId);
        intent.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, this.title);
        intent.putExtras(bundle);
        startActivity(intent);
        finish();
    }

    private void launchSearchScreen() {
        Intent intent = new Intent(this, (Class<?>) SearchActivity.class);
        Bundle bundle = new Bundle();
        bundle.putInt("ContextId", this.contextId);
        intent.putExtras(bundle);
        startActivityForResult(intent, 1);
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
                this.mediaplayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.conceptglobal.pmc.promotions.activity.DisplayContentsActivity2.6
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
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.clearFilterReceiver);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_bottom_Home) {
            setBottomSelectedBG(view.getId());
            this.bottomTab = 100;
            MenuItem menuItem = this.filterItem;
            if (menuItem != null) {
                menuItem.setVisible(true);
            }
            this.btnVideos.performClick();
            return;
        }
        if (id != R.id.iv_search_Home) {
            switch (id) {
                case R.id.btn_top_Videos /* 2131296446 */:
                    this.fragmentManager.findFragmentByTag("Videos");
                    ContentCategoryDetailsFragment contentCategoryDetailsFragment = new ContentCategoryDetailsFragment();
                    Bundle bundle = new Bundle();
                    bundle.putInt("ContentType", 1);
                    bundle.putInt("FromTab", this.bottomTab);
                    bundle.putInt("ContextId", this.contextId);
                    contentCategoryDetailsFragment.setArguments(bundle);
                    FragmentTransaction beginTransaction = this.fragmentManager.beginTransaction();
                    beginTransaction.replace(R.id.container, contentCategoryDetailsFragment, "Videos");
                    beginTransaction.commit();
                    break;
                case R.id.btn_top_home /* 2131296447 */:
                    if (this.bottomTab == 100) {
                        HomeFragment homeFragment = new HomeFragment();
                        Bundle bundle2 = new Bundle();
                        bundle2.putInt("ContextId", this.contextId);
                        homeFragment.setArguments(bundle2);
                        FragmentTransaction beginTransaction2 = this.fragmentManager.beginTransaction();
                        beginTransaction2.replace(R.id.container, homeFragment, "Home_TOP");
                        beginTransaction2.commit();
                        break;
                    } else {
                        ContentCategoryDetailsFragment contentCategoryDetailsFragment2 = new ContentCategoryDetailsFragment();
                        Bundle bundle3 = new Bundle();
                        bundle3.putInt("ContentType", 0);
                        bundle3.putInt("FromTab", this.bottomTab);
                        bundle3.putInt("ContextId", this.contextId);
                        contentCategoryDetailsFragment2.setArguments(bundle3);
                        FragmentTransaction beginTransaction3 = this.fragmentManager.beginTransaction();
                        beginTransaction3.replace(R.id.container, contentCategoryDetailsFragment2, ConstantsPMC.ALL);
                        beginTransaction3.commit();
                        break;
                    }
                case R.id.btn_top_html /* 2131296448 */:
                    Fragment findFragmentByTag = this.fragmentManager.findFragmentByTag("HTML");
                    if (findFragmentByTag == null) {
                        findFragmentByTag = new ContentCategoryDetailsFragment();
                        Bundle bundle4 = new Bundle();
                        bundle4.putInt("ContentType", 5);
                        bundle4.putInt("FromTab", this.bottomTab);
                        bundle4.putInt("ContextId", this.contextId);
                        findFragmentByTag.setArguments(bundle4);
                    }
                    FragmentTransaction beginTransaction4 = this.fragmentManager.beginTransaction();
                    beginTransaction4.replace(R.id.container, findFragmentByTag, "HTML");
                    beginTransaction4.commit();
                    break;
                case R.id.btn_top_images /* 2131296449 */:
                    this.fragmentManager.findFragmentByTag("Images");
                    ContentCategoryDetailsFragment contentCategoryDetailsFragment3 = new ContentCategoryDetailsFragment();
                    Bundle bundle5 = new Bundle();
                    bundle5.putInt("ContentType", 4);
                    bundle5.putInt("FromTab", this.bottomTab);
                    bundle5.putInt("ContextId", this.contextId);
                    contentCategoryDetailsFragment3.setArguments(bundle5);
                    FragmentTransaction beginTransaction5 = this.fragmentManager.beginTransaction();
                    beginTransaction5.replace(R.id.container, contentCategoryDetailsFragment3, "Images");
                    beginTransaction5.commit();
                    break;
                case R.id.btn_top_pdf /* 2131296450 */:
                    Fragment findFragmentByTag2 = this.fragmentManager.findFragmentByTag("PDF");
                    if (findFragmentByTag2 == null) {
                        findFragmentByTag2 = new ContentCategoryDetailsFragment();
                        Bundle bundle6 = new Bundle();
                        bundle6.putInt("ContentType", 7);
                        bundle6.putInt("FromTab", this.bottomTab);
                        bundle6.putInt("ContextId", this.contextId);
                        findFragmentByTag2.setArguments(bundle6);
                    }
                    FragmentTransaction beginTransaction6 = this.fragmentManager.beginTransaction();
                    beginTransaction6.replace(R.id.container, findFragmentByTag2, "PDF");
                    beginTransaction6.commit();
                    break;
                default:
                    switch (id) {
                        case R.id.iv_downloads_Home /* 2131296882 */:
                            MenuItem menuItem2 = this.filterItem;
                            if (menuItem2 != null) {
                                menuItem2.setVisible(false);
                            }
                            setBottomSelectedBG(view.getId());
                            this.bottomTab = 101;
                            this.btnVideos.performClick();
                            this.btnDownloads.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark));
                            break;
                        case R.id.iv_favourite_Home /* 2131296883 */:
                            MenuItem menuItem3 = this.filterItem;
                            if (menuItem3 != null) {
                                menuItem3.setVisible(false);
                            }
                            setBottomSelectedBG(view.getId());
                            this.bottomTab = 102;
                            this.btnVideos.performClick();
                            this.btnFavourites.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark));
                            break;
                    }
            }
            return;
        }
        launchSearchScreen();
    }

    private class LoadDataTask extends AsyncTask<FilterCriteria, Void, List<ContentMaster>> {
        private boolean running = true;

        private LoadDataTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<ContentMaster> doInBackground(FilterCriteria... filterCriteriaArr) {
            ArrayList arrayList = new ArrayList();
            try {
                return DisplayContentsActivity2.this.categoryDAO.getAllPromotionContents(filterCriteriaArr[0].getContentIds(), filterCriteriaArr[0].getContentTypes(), DisplayContentsActivity2.this.contextId, false);
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
                DisplayContentsActivity2.this.contentMasterList.clear();
                if (DisplayContentsActivity2.this.contentMasterList != null && DisplayContentsActivity2.this.contentMasterList.size() > 0) {
                    DisplayContentsActivity2.this.contentMasterList.remove(DisplayContentsActivity2.this.contentMasterList.size() - 1);
                    DisplayContentsActivity2.this.contentViewAdapter.notifyItemRemoved(DisplayContentsActivity2.this.contentMasterList.size());
                }
                DisplayContentsActivity2.this.contentMasterList.addAll(list);
                DisplayContentsActivity2.this.refreshAdapter();
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

    private void loadData(String str, String str2) {
        LoadDataTask loadDataTask = this.mTask;
        if (loadDataTask != null && loadDataTask.getStatus() != AsyncTask.Status.FINISHED) {
            this.mTask.cancel(true);
        }
        this.criteria.setContentIds(str);
        this.criteria.setContentTypes(str2);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.isFiltered = true;
        if (i == 1) {
            if (i2 == -1) {
                loadData(intent.getStringExtra("categories"), intent.getStringExtra("contentType"));
            } else if (i2 == 0) {
                Toast.makeText(this.context, "No filters applied", 0).show();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        Log.e("Back", "Pressed");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.e("onDetachedFromWindow", "MA-activity dying");
    }

    private void setBottomSelectedBG(int i) {
        this.btnBottomHome.setBackgroundColor(getResources().getColor(R.color.colorAccent));
        this.btnDownloads.setBackgroundColor(getResources().getColor(R.color.colorAccent));
        this.btnFavourites.setBackgroundColor(getResources().getColor(R.color.colorAccent));
        this.btnSearch.setBackgroundColor(getResources().getColor(R.color.colorAccent));
        this.btnSettings.setBackgroundColor(getResources().getColor(R.color.colorAccent));
        switch (i) {
            case R.id.iv_bottom_Home /* 2131296876 */:
                this.btnBottomHome.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark));
                break;
            case R.id.iv_downloads_Home /* 2131296882 */:
                this.btnDownloads.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark));
                break;
            case R.id.iv_favourite_Home /* 2131296883 */:
                this.btnFavourites.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark));
                break;
            case R.id.iv_search_Home /* 2131296887 */:
                this.btnSearch.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark));
                break;
            case R.id.iv_settings_Home /* 2131296888 */:
                this.btnSettings.setBackgroundColor(getResources().getColor(R.color.colorPrimaryDark));
                break;
        }
    }
}
