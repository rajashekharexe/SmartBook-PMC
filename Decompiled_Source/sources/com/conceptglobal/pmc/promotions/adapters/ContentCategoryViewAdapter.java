package com.conceptglobal.pmc.promotions.adapters;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.cardview.widget.CardView;
import androidx.core.content.FileProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.conceptglobal.pmc.promotions.activity.ContentDetailsActivity;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.downloadmanager.DefaultRetryPolicy;
import com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequest;
import com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1;
import com.conceptglobal.pmc.promotions.downloadmanager.FileDownloadManager;
import com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed;
import com.conceptglobal.pmc.promotions.linkpreview.LinkPreview;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import com.conceptglobal.pmc.promotions.utils.ArrowDownloadButton;
import com.conceptglobal.pmc.promotions.utils.FlowLayout;
import com.conceptglobal.pmc.promotions.utils.NetworkUtils;
import com.conceptglobal.pmc.promotions.utils.UtilDeclarations;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.icsssd0328.promotions.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class ContentCategoryViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements Filterable {
    private static final int DOWNLOAD_THREAD_POOL_SIZE = 4;
    private Activity activity;
    private CategoryDAO categoryDAO;
    private Context context;
    private ImageView currentPlayingAudio;
    private ArrayList<ContentMaster> filteredMasterList;
    private boolean isDownloads;
    private ArrayList<ContentMaster> masterList;
    private MediaPlayer mediaPlayer;
    private OnAudioActionPerformed onAudioActionPerformed;
    private Runnable resetSeekUpdaterRunnable;
    private Handler mHandler = new Handler();
    private final int VIEW_TYPE_ITEM = 0;
    private final int VIEW_TYPE_LOADING = 1;
    private MediaPlayer.OnCompletionListener onCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.7
        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (ContentCategoryViewAdapter.this.currentPlayingAudio != null) {
                ContentCategoryViewAdapter.this.currentPlayingAudio.setImageResource(R.drawable.ic_play_circle_outline_black_24px);
                mediaPlayer.reset();
                ContentCategoryViewAdapter.this.mHandler.removeCallbacks(ContentCategoryViewAdapter.this.resetSeekUpdaterRunnable);
            }
        }
    };
    private FileDownloadManager downloadManager = new FileDownloadManager(4);

    private void showLoadingView(LoadingViewHolder loadingViewHolder, int i) {
    }

    public ContentCategoryViewAdapter(Context context, Activity activity, ArrayList<ContentMaster> arrayList, OnAudioActionPerformed onAudioActionPerformed, MediaPlayer mediaPlayer, boolean z) {
        this.filteredMasterList = new ArrayList<>();
        this.context = context;
        this.activity = activity;
        this.masterList = arrayList;
        this.filteredMasterList = arrayList;
        this.categoryDAO = new CategoryDAO(context);
        this.onAudioActionPerformed = onAudioActionPerformed;
        this.mediaPlayer = mediaPlayer;
        mediaPlayer.setOnCompletionListener(this.onCompletionListener);
        this.isDownloads = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new VideoTypeVH(LayoutInflater.from(this.context).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.content_category_item, viewGroup, false));
        }
        return new LoadingViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.item_loading, viewGroup, false));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x01ab A[Catch: Exception -> 0x0529, TryCatch #0 {Exception -> 0x0529, blocks: (B:7:0x0029, B:9:0x0031, B:11:0x0067, B:12:0x0079, B:15:0x0187, B:17:0x018d, B:20:0x0194, B:22:0x01ab, B:24:0x01eb, B:25:0x01fd, B:28:0x02b3, B:30:0x02b9, B:33:0x02c0, B:36:0x02cb, B:38:0x0205, B:40:0x020f, B:42:0x021e, B:43:0x0268, B:44:0x02d6, B:46:0x019f, B:47:0x0087, B:49:0x0091, B:51:0x00a0, B:52:0x00eb, B:54:0x0115, B:55:0x0160, B:56:0x02e1, B:58:0x02e7, B:60:0x031b, B:62:0x032a, B:64:0x0351, B:66:0x0372, B:68:0x0376, B:70:0x03aa, B:72:0x03b9, B:74:0x03ce, B:76:0x03e3, B:78:0x03e7, B:80:0x041b, B:82:0x042a, B:84:0x043f, B:86:0x0454, B:88:0x0458, B:96:0x04ac, B:98:0x04cd, B:100:0x0511), top: B:6:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02d6 A[Catch: Exception -> 0x0529, TryCatch #0 {Exception -> 0x0529, blocks: (B:7:0x0029, B:9:0x0031, B:11:0x0067, B:12:0x0079, B:15:0x0187, B:17:0x018d, B:20:0x0194, B:22:0x01ab, B:24:0x01eb, B:25:0x01fd, B:28:0x02b3, B:30:0x02b9, B:33:0x02c0, B:36:0x02cb, B:38:0x0205, B:40:0x020f, B:42:0x021e, B:43:0x0268, B:44:0x02d6, B:46:0x019f, B:47:0x0087, B:49:0x0091, B:51:0x00a0, B:52:0x00eb, B:54:0x0115, B:55:0x0160, B:56:0x02e1, B:58:0x02e7, B:60:0x031b, B:62:0x032a, B:64:0x0351, B:66:0x0372, B:68:0x0376, B:70:0x03aa, B:72:0x03b9, B:74:0x03ce, B:76:0x03e3, B:78:0x03e7, B:80:0x041b, B:82:0x042a, B:84:0x043f, B:86:0x0454, B:88:0x0458, B:96:0x04ac, B:98:0x04cd, B:100:0x0511), top: B:6:0x0029 }] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r14, int r15) {
        /*
            Method dump skipped, instructions count: 1336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    private void loadThumNailFromURL(Context context, ImageView imageView, String str) {
        Glide.get(context).getBitmapPool();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        ArrayList<ContentMaster> arrayList = this.filteredMasterList;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size() % 2 == 0 ? this.filteredMasterList.size() / 2 : (this.filteredMasterList.size() / 2) + 1;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.1
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                ContentCategoryViewAdapter.this.filteredMasterList = (ArrayList) filterResults.values;
                ContentCategoryViewAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (charSequence == null || charSequence.toString().trim().length() == 0) {
                    filterResults.count = ContentCategoryViewAdapter.this.masterList.size();
                    filterResults.values = ContentCategoryViewAdapter.this.masterList;
                } else {
                    String lowerCase = charSequence.toString().toLowerCase(Locale.getDefault());
                    for (int i = 0; i < ContentCategoryViewAdapter.this.masterList.size(); i++) {
                        if (((ContentMaster) ContentCategoryViewAdapter.this.masterList.get(i)).getContentName().toLowerCase(Locale.getDefault()).contains(lowerCase)) {
                            arrayList.add((ContentMaster) ContentCategoryViewAdapter.this.masterList.get(i));
                        }
                    }
                    filterResults.count = arrayList.size();
                    filterResults.values = arrayList;
                }
                return filterResults;
            }
        };
    }

    private class VideoTypeVH extends RecyclerView.ViewHolder {
        private FlowLayout chipsBoxLayout;
        private ImageView icContentType;
        private ImageView ivActionPlay;
        private ImageView ivActionPlay2;
        private ImageView ivCertified;
        private ImageView ivDelete;
        private ImageView ivDelete2;
        private ArrowDownloadButton ivDownload;
        private ImageView ivThumNail;
        private ImageView ivThumNail2;
        private LinearLayout llRightView;
        private TextView tvBrandName;
        private TextView tvBrandName2;
        private TextView tvBrandTile;
        private TextView tvBrandTile2;
        private TextView tvCropName;
        private TextView tvCropName2;
        private TextView tvCropTitle;
        private TextView tvCropTitle2;
        private TextView tvDesc;
        private TextView tvDesc2;
        private TextView tvDuration;
        private TextView tvTest;
        private TextView tvTitle;
        private TextView tvType;
        private TextView tvType2;
        private TextView tvTypeName;
        private TextView tvTypeName2;

        VideoTypeVH(View view) {
            super(view);
            this.ivThumNail = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ivThumbnail1);
            this.ivThumNail2 = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ivThumbnail2);
            this.tvDesc = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvDes);
            this.tvDesc2 = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvDes2);
            this.tvCropTitle = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvCropTitle);
            this.tvCropTitle2 = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvCropTitle2);
            this.tvCropName = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvCropName);
            this.tvCropName2 = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvCropName2);
            this.tvBrandTile = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvBrandTitle);
            this.tvBrandTile2 = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvBrandTile2);
            this.tvBrandName = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvBrandName);
            this.tvBrandName2 = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvBrandName2);
            this.tvType = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvType);
            this.tvType2 = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvType2);
            this.tvTypeName = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvTypename);
            this.tvTypeName2 = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvTypeName2);
            this.ivActionPlay = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.action_play);
            this.ivActionPlay2 = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.action_play2);
            this.llRightView = (LinearLayout) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.llRightView);
            ImageView imageView = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ivDelete);
            this.ivDelete = imageView;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.VideoTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ContentCategoryViewAdapter.this.showDiscardAlert(VideoTypeVH.this.getAdapterPosition() * 2);
                }
            });
            this.ivDelete2 = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ivDelete2);
            if (ContentCategoryViewAdapter.this.isDownloads) {
                this.ivDelete2.setVisibility(0);
                this.ivDelete.setVisibility(0);
            } else {
                this.ivDelete2.setVisibility(8);
                this.ivDelete.setVisibility(8);
            }
            this.ivDelete2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.VideoTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ContentCategoryViewAdapter.this.showDiscardAlert((VideoTypeVH.this.getAdapterPosition() * 2) + 1);
                }
            });
            this.ivThumNail.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.VideoTypeVH.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Intent intent = new Intent(ContentCategoryViewAdapter.this.context, (Class<?>) ContentDetailsActivity.class);
                    intent.putExtra("ContentList", ContentCategoryViewAdapter.this.masterList);
                    intent.putExtra("Position", VideoTypeVH.this.getAdapterPosition() * 2);
                    intent.addFlags(335544320);
                    ContentCategoryViewAdapter.this.context.startActivity(intent);
                }
            });
            this.ivThumNail2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.VideoTypeVH.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Intent intent = new Intent(ContentCategoryViewAdapter.this.context, (Class<?>) ContentDetailsActivity.class);
                    intent.putExtra("ContentList", ContentCategoryViewAdapter.this.masterList);
                    intent.putExtra("Position", (VideoTypeVH.this.getAdapterPosition() * 2) + 1);
                    intent.addFlags(335544320);
                    ContentCategoryViewAdapter.this.context.startActivity(intent);
                }
            });
        }
    }

    private class TextTypeVH extends RecyclerView.ViewHolder {
        private FlowLayout chipsBoxLayout;
        private TextView descTv;
        private ImageView icContentType;
        private ImageView imgPreviewIv;
        private CardView previewGroup;
        private ProgressBar progress;
        private TextView siteTv;
        private TextView titleTv;
        private TextView tvContent;
        private TextView tvDesc;
        private TextView tvTitle;

        private TextTypeVH(View view) {
            super(view);
            this.icContentType = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.content_type);
            this.tvTitle = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_content_name);
            this.tvDesc = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_content_desc);
            this.tvContent = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.content);
            this.chipsBoxLayout = (FlowLayout) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.chipsBoxLayout);
            this.previewGroup = (CardView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.preview_group);
            this.imgPreviewIv = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.img_preview_iv);
            this.titleTv = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.title_tv);
            this.descTv = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.desc_tv);
            this.siteTv = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.site_tv);
            this.progress = (ProgressBar) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.progress);
            this.tvContent.setPadding(5, 5, 5, 5);
            this.previewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.TextTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ContentCategoryViewAdapter.this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(TextTypeVH.this.getAdapterPosition())).getContentServerLocation())));
                }
            });
            this.tvContent.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.TextTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(TextTypeVH.this.getAdapterPosition())).getContentType() == 5) {
                        TextTypeVH textTypeVH = TextTypeVH.this;
                        textTypeVH.loadHtml(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(TextTypeVH.this.getAdapterPosition())).getContentName(), ContentCategoryViewAdapter.replaceRGBColorsWithHex(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(TextTypeVH.this.getAdapterPosition())).getContentData()));
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadHtml(String str, String str2) {
            Spanned fromHtml;
            View inflate = LayoutInflater.from(ContentCategoryViewAdapter.this.context).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.html_content, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_html);
            if (Build.VERSION.SDK_INT < 24) {
                textView.setText(Html.fromHtml(str2));
            } else {
                fromHtml = Html.fromHtml(str2, 63);
                textView.setText(fromHtml);
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(ContentCategoryViewAdapter.this.context);
            builder.setTitle(str);
            builder.setView(inflate);
            builder.setPositiveButton("Close", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.TextTypeVH.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            AlertDialog create = builder.create();
            create.getWindow().getAttributes().windowAnimations = com.conceptglobal.pmcdeepakfertilizers.R.style.HTMLDialogAnimation;
            create.show();
        }
    }

    private class ImageTypeVH extends RecyclerView.ViewHolder {
        private FlowLayout chipsBoxLayout;
        private ImageView icContentType;
        private ImageView image_thumbnail;
        private ArrowDownloadButton ivDownload;
        private TextView tvDesc;
        private TextView tvTitle;

        ImageTypeVH(View view) {
            super(view);
            this.icContentType = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.content_type);
            this.tvTitle = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_content_name);
            this.tvDesc = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_content_desc);
            this.image_thumbnail = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.image_thumbnail);
            this.chipsBoxLayout = (FlowLayout) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.chipsBoxLayout);
            this.icContentType.setImageResource(R.drawable.ic_jpg_file);
            ArrowDownloadButton arrowDownloadButton = (ArrowDownloadButton) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.download);
            this.ivDownload = arrowDownloadButton;
            arrowDownloadButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.ImageTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ContentCategoryViewAdapter.this.downloadContent((ArrowDownloadButton) view2, ImageTypeVH.this.getAdapterPosition());
                }
            });
            this.image_thumbnail.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.ImageTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (!TextUtils.isEmpty(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentDeviceLocation())) {
                        try {
                            if (TextUtils.isEmpty(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentDeviceLocation())) {
                                return;
                            }
                            String type = ContentCategoryViewAdapter.this.context.getContentResolver().getType(Uri.fromFile(new File(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentDeviceLocation())));
                            if (!TextUtils.isEmpty(type)) {
                                Log.d("MIME Type", type);
                            }
                            ContentCategoryViewAdapter.this.showImage(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentDeviceLocation());
                            return;
                        } catch (ActivityNotFoundException unused) {
                            Toast.makeText(ContentCategoryViewAdapter.this.context, "No Picture Viewer Installed", 1).show();
                            return;
                        }
                    }
                    if (!TextUtils.isEmpty(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentDeviceLocation())) {
                        ContentCategoryViewAdapter.this.showImage(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentDeviceLocation());
                    } else {
                        ContentCategoryViewAdapter.this.showImage(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentServerLocation());
                        Toast.makeText(ContentCategoryViewAdapter.this.context, "Picture not downloaded", 1).show();
                    }
                }
            });
        }
    }

    private class AudioTypeVH extends RecyclerView.ViewHolder {
        private ImageView action_play;
        private SeekBar appCompatSeekBar;
        private FlowLayout chipsBoxLayout;
        private ImageView icContentType;
        private ArrowDownloadButton ivDownload;
        private ProgressBar progressBar;
        private TextView tvDesc;
        private TextView tvDuration;
        private TextView tvTitle;

        private AudioTypeVH(View view) {
            super(view);
            this.icContentType = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.content_type);
            this.tvTitle = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_content_name);
            this.tvDesc = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_content_desc);
            this.tvDuration = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.duration);
            this.action_play = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.action_play);
            this.icContentType.setImageResource(R.drawable.ic_mp3_file);
            this.chipsBoxLayout = (FlowLayout) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.chipsBoxLayout);
            this.appCompatSeekBar = (SeekBar) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.seekbar);
            this.progressBar = (ProgressBar) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.action_progress);
            this.appCompatSeekBar.setOnTouchListener(new View.OnTouchListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.AudioTypeVH.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    return true;
                }
            });
            ArrowDownloadButton arrowDownloadButton = (ArrowDownloadButton) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.download);
            this.ivDownload = arrowDownloadButton;
            arrowDownloadButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.AudioTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ContentCategoryViewAdapter.this.downloadContent((ArrowDownloadButton) view2, AudioTypeVH.this.getAdapterPosition());
                }
            });
            this.action_play.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.AudioTypeVH.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (!TextUtils.isEmpty(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentDeviceLocation()) || TextUtils.isEmpty(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentServerLocation())) {
                        if (!TextUtils.isEmpty(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentDeviceLocation())) {
                            ContentCategoryViewAdapter.this.onAudioActionPerformed(view2, AudioTypeVH.this.tvDuration, 1, null, ((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentDeviceLocation(), AudioTypeVH.this.appCompatSeekBar, AudioTypeVH.this.progressBar);
                            return;
                        } else {
                            Toast.makeText(ContentCategoryViewAdapter.this.context, "Audio file not available", 1).show();
                            return;
                        }
                    }
                    if (NetworkUtils.isDataConnected(ContentCategoryViewAdapter.this.context)) {
                        ContentCategoryViewAdapter.this.onAudioActionPerformed(view2, AudioTypeVH.this.tvDuration, 1, ((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentServerLocation(), null, AudioTypeVH.this.appCompatSeekBar, AudioTypeVH.this.progressBar);
                    } else {
                        Toast.makeText(ContentCategoryViewAdapter.this.context, "Please enable internet", 1).show();
                    }
                }
            });
        }
    }

    private class AttachementTypeVH extends RecyclerView.ViewHolder {
        private FlowLayout chipsBoxLayout;
        private TextView file_name;
        private ImageView icContentType;
        private ArrowDownloadButton ivDownload;
        private TextView tvDesc;
        private TextView tvTitle;

        private AttachementTypeVH(View view) {
            super(view);
            this.icContentType = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.content_type);
            this.tvTitle = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_content_name);
            this.tvDesc = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_content_desc);
            this.icContentType.setImageResource(R.drawable.ic_pdf_file);
            this.chipsBoxLayout = (FlowLayout) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.chipsBoxLayout);
            this.file_name = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.file_name);
            ArrowDownloadButton arrowDownloadButton = (ArrowDownloadButton) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.download);
            this.ivDownload = arrowDownloadButton;
            arrowDownloadButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.AttachementTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ContentCategoryViewAdapter.this.downloadContent((ArrowDownloadButton) view2, AttachementTypeVH.this.getAdapterPosition());
                }
            });
            this.file_name.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.AttachementTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (!TextUtils.isEmpty(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(AttachementTypeVH.this.getAdapterPosition())).getContentDeviceLocation())) {
                        try {
                            Log.d("MIME Type", "" + ContentCategoryViewAdapter.this.context.getContentResolver().getType(Uri.fromFile(new File(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(AttachementTypeVH.this.getAdapterPosition())).getContentDeviceLocation()))));
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setDataAndType(FileProvider.getUriForFile(ContentCategoryViewAdapter.this.context, "com.conceptglobal.pmc.fileprovider", new File(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(AttachementTypeVH.this.getAdapterPosition())).getContentDeviceLocation())), "application/pdf");
                            intent.addFlags(1);
                            ContentCategoryViewAdapter.this.context.startActivity(intent);
                            return;
                        } catch (ActivityNotFoundException unused) {
                            Toast.makeText(ContentCategoryViewAdapter.this.context, "No PDF Viewer Installed", 1).show();
                            return;
                        }
                    }
                    Toast.makeText(ContentCategoryViewAdapter.this.context, "PDF not downloaded", 1).show();
                }
            });
        }
    }

    private void fillAutoSpacingLayout(final FlowLayout flowLayout, final ArrayList<String> arrayList) {
        if (flowLayout.getChildCount() > 0) {
            flowLayout.removeAllViews();
        }
        if (arrayList.size() > 5) {
            for (int i = 0; i < 5; i++) {
                flowLayout.addView(buildLabel(arrayList.get(i)));
            }
            final TextView textView = new TextView(this.context);
            textView.setText("See More");
            final TextView textView2 = new TextView(this.context);
            flowLayout.addView(textView);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    for (int i2 = 5; i2 < arrayList.size(); i2++) {
                        flowLayout.removeView(textView);
                        flowLayout.addView(ContentCategoryViewAdapter.this.buildLabel((String) arrayList.get(i2)));
                    }
                    textView2.setText("See Less");
                    flowLayout.addView(textView2);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    flowLayout.removeAllViews();
                    for (int i2 = 0; i2 < 5; i2++) {
                        flowLayout.addView(ContentCategoryViewAdapter.this.buildLabel((String) arrayList.get(i2)));
                    }
                    flowLayout.addView(textView);
                }
            });
            return;
        }
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            flowLayout.addView(buildLabel(it.next()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TextView buildLabel(String str) {
        TextView textView = new TextView(this.context);
        textView.setText(str);
        textView.setTextSize(2, 14.0f);
        textView.setPadding(10, 10, 10, 10);
        textView.setBackgroundResource(com.conceptglobal.pmcdeepakfertilizers.R.drawable.chip_bg);
        return textView;
    }

    private String getVideoDuration(String str) throws Exception {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(str);
        long parseLong = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
        long j = parseLong / 1000;
        long j2 = (j - ((j / 3600) * 3600)) / 60;
        String format = String.format("%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(parseLong) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(parseLong))), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(parseLong) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(parseLong))));
        Log.e("Duration--", format);
        return format;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void downloadContent(final ArrowDownloadButton arrowDownloadButton, final int i) {
        if (UtilDeclarations.isOnline(this.context)) {
            arrowDownloadButton.setEnabled(false);
            Uri parse = Uri.parse(this.filteredMasterList.get(i).getContentServerLocation());
            String str = this.filteredMasterList.get(i).getContentServerLocation().split("/")[r1.length - 1];
            arrowDownloadButton.startAnimating();
            this.downloadManager.add(new DownloadRequest(parse).setRetryPolicy(new DefaultRetryPolicy()).setDestinationURI(Uri.parse(UtilDeclarations.mediaPath + str)).setPriority(DownloadRequest.Priority.HIGH).setStatusListener(new DownloadStatusListenerV1() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.4
                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1
                public void onDownloadComplete(DownloadRequest downloadRequest) {
                    ContentCategoryViewAdapter.this.categoryDAO.updateContent(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(i)).getContentId(), downloadRequest.getDestinationURI().toString());
                    ((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(i)).setContentDeviceLocation(downloadRequest.getDestinationURI().toString());
                }

                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1
                public void onDownloadFailed(DownloadRequest downloadRequest, int i2, String str2) {
                    arrowDownloadButton.reset();
                    arrowDownloadButton.setEnabled(true);
                    new File(downloadRequest.getDestinationURI().toString()).delete();
                    Toast.makeText(ContentCategoryViewAdapter.this.context, str2, 0).show();
                }

                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1
                public void onProgress(DownloadRequest downloadRequest, long j, long j2, int i2) {
                    Log.w("download-", (j2 / 1024) + "kb of " + (j / 1024) + "kb");
                    arrowDownloadButton.setProgress((float) ((j2 * 100) / j));
                }
            }));
            return;
        }
        Toast.makeText(this.context, "Please enable data connection", 0).show();
    }

    private void loadURL(String str, TextTypeVH textTypeVH) throws Exception {
        new LoadMetaData(str, textTypeVH).execute(new String[0]);
    }

    public class LoadMetaData extends AsyncTask<String, Void, LinkPreview> {
        String url;
        TextTypeVH viewHolder;

        public LoadMetaData(String str, TextTypeVH textTypeVH) {
            this.url = str;
            this.viewHolder = textTypeVH;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            this.viewHolder.progress.setVisibility(0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public LinkPreview doInBackground(String... strArr) {
            try {
                return ContentCategoryViewAdapter.this.parsePageHeaderInfo(this.url);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(LinkPreview linkPreview) {
            super.onPostExecute((LoadMetaData) linkPreview);
            this.viewHolder.progress.setVisibility(8);
            if (linkPreview != null) {
                this.viewHolder.previewGroup.setVisibility(0);
                this.viewHolder.titleTv.setText(linkPreview.getTitle());
                this.viewHolder.descTv.setText(linkPreview.getDescription());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinkPreview parsePageHeaderInfo(String str) throws Exception {
        LinkPreview linkPreview = new LinkPreview();
        Document document = Jsoup.connect(str).get();
        Elements select = document.select("meta[property=og:title]");
        if (select != null) {
            linkPreview.setTitle(select.attr(FirebaseAnalytics.Param.CONTENT));
        } else {
            linkPreview.setTitle(document.title());
        }
        Elements select2 = document.select("meta[property=og:description]");
        if (select2 != null) {
            linkPreview.setDescription(select2.attr(FirebaseAnalytics.Param.CONTENT));
        } else {
            linkPreview.setDescription(null);
        }
        Elements select3 = document.select("meta[property=og:image]");
        String attr = select3 != null ? select3.attr(FirebaseAnalytics.Param.CONTENT) : null;
        if (attr != null) {
            linkPreview.setSiteName(attr);
        }
        return linkPreview;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAudioActionPerformed(final View view, final TextView textView, int i, String str, String str2, final SeekBar seekBar, final ProgressBar progressBar) {
        try {
            this.mediaPlayer.setAudioStreamType(3);
            if (i == 1) {
                if (this.mediaPlayer.isPlaying()) {
                    MediaPlayer mediaPlayer = this.mediaPlayer;
                    if (mediaPlayer != null) {
                        mediaPlayer.pause();
                        ((ImageView) view).setImageResource(R.drawable.ic_play_circle_outline_black_24px);
                        this.currentPlayingAudio = null;
                        return;
                    }
                    return;
                }
                if (TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                    this.mediaPlayer.setDataSource(str);
                } else if (TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    this.mediaPlayer.setDataSource(str2);
                }
                this.mediaPlayer.prepareAsync();
                seekBar.setProgress(0);
                seekBar.setMax(100);
                view.setVisibility(8);
                progressBar.setVisibility(0);
                this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.5
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public void onPrepared(MediaPlayer mediaPlayer2) {
                        view.setVisibility(0);
                        progressBar.setVisibility(8);
                        Log.d("Duration", mediaPlayer2.getDuration() + "");
                        ((ImageView) view).setImageResource(R.drawable.ic_pause_circle_outline_black_24px);
                        ContentCategoryViewAdapter.this.currentPlayingAudio = (ImageView) view;
                        textView.setText(UtilDeclarations.milliSecondsToTimer((long) mediaPlayer2.getDuration()));
                        mediaPlayer2.start();
                        ContentCategoryViewAdapter.this.mHandler.post(ContentCategoryViewAdapter.this.mUpdateTimeTask(seekBar));
                    }
                });
                return;
            }
            if (this.mediaPlayer.isPlaying()) {
                this.mediaPlayer.stop();
                this.mediaPlayer.reset();
            }
        } catch (Exception e) {
            this.mediaPlayer.reset();
            e.printStackTrace();
        }
    }

    public void updateProgressBar(SeekBar seekBar) {
        this.mHandler.post(mUpdateTimeTask(seekBar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable mUpdateTimeTask(final SeekBar seekBar) {
        Runnable runnable = new Runnable() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (ContentCategoryViewAdapter.this.mediaPlayer != null) {
                        seekBar.setProgress(UtilDeclarations.getProgressPercentage(ContentCategoryViewAdapter.this.mediaPlayer.getCurrentPosition(), ContentCategoryViewAdapter.this.mediaPlayer.getDuration()));
                        ContentCategoryViewAdapter.this.mHandler.postDelayed(this, 100L);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        };
        this.resetSeekUpdaterRunnable = runnable;
        return runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String replaceRGBColorsWithHex(String str) {
        Matcher matcher = Pattern.compile("(rgb\\(\\s*(\\d+)\\s*,\\s*(\\d+)\\s*,\\s*(\\d+)\\s*\\))").matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            System.out.println("Found: " + group);
            String group2 = matcher.group(2);
            String group3 = matcher.group(3);
            String group4 = matcher.group(4);
            System.out.println(" separated r value: " + group2);
            System.out.println(" separated g value: " + group3);
            System.out.println(" separated b value: " + group4);
            int parseInt = Integer.parseInt(group2);
            int parseInt2 = Integer.parseInt(group3);
            int parseInt3 = Integer.parseInt(group4);
            String hexString = Integer.toHexString(parseInt);
            String hexString2 = Integer.toHexString(parseInt2);
            String hexString3 = Integer.toHexString(parseInt3);
            String replace = String.format("%2s", hexString).replace(" ", "0");
            String replace2 = String.format("%2s", hexString2).replace(" ", "0");
            String replace3 = String.format("%2s", hexString3).replace(" ", "0");
            System.out.println(" converted " + group2 + " to hex: " + replace);
            System.out.println(" converted " + group3 + " to hex: " + replace2);
            System.out.println(" converted " + group4 + " to hex:" + replace3);
            String str2 = "#" + replace + replace2 + replace3;
            System.out.println("  replacing " + group + " with " + str2);
            str = str.replaceAll(Pattern.quote(group), str2);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showImage(String str) {
        final Dialog dialog = new Dialog(this.context, android.R.style.Theme.Translucent.NoTitleBar.Fullscreen);
        dialog.requestWindowFeature(1);
        dialog.setCancelable(false);
        dialog.setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.preview_layout);
        Button button = (Button) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnIvClose);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDiscardAlert(final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
        builder.setMessage("Do you want to delete this ?");
        builder.setIcon(R.drawable.ic_delete_white_24px);
        builder.setPositiveButton("Delete", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                ContentCategoryViewAdapter.this.categoryDAO.updateContent(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(i)).getContentId(), "");
                if (new File(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(i)).getContentDeviceLocation()).exists()) {
                    boolean delete = new File(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(i)).getContentDeviceLocation()).delete();
                    new File(((ContentMaster) ContentCategoryViewAdapter.this.filteredMasterList.get(i)).getLocalThumbnail()).delete();
                    ContentCategoryViewAdapter.this.filteredMasterList.remove(i);
                    Log.e("isDeleted", "" + delete);
                }
                dialogInterface.cancel();
                ContentCategoryViewAdapter.this.notifyDataSetChanged();
            }
        });
        builder.setNegativeButton("CANCEL", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentCategoryViewAdapter.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.cancel();
            }
        });
        builder.show();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.masterList.get(i) == null ? 1 : 0;
    }

    private class LoadingViewHolder extends RecyclerView.ViewHolder {
        ProgressBar progressBar;

        public LoadingViewHolder(View view) {
            super(view);
            this.progressBar = (ProgressBar) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.progressBar);
        }
    }
}
