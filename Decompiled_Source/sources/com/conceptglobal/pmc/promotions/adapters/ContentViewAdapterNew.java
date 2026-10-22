package com.conceptglobal.pmc.promotions.adapters;

import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
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
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.cardview.widget.CardView;
import androidx.core.content.FileProvider;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.signature.ObjectKey;
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
import com.conceptglobal.pmc.promotions.utils.FileUtils;
import com.conceptglobal.pmc.promotions.utils.FlowLayout;
import com.conceptglobal.pmc.promotions.utils.NetworkUtils;
import com.conceptglobal.pmc.promotions.utils.UtilDeclarations;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.icsssd0328.promotions.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class ContentViewAdapterNew extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements Filterable {
    private static final int DOWNLOAD_THREAD_POOL_SIZE = 4;
    private CategoryDAO categoryDAO;
    private Context context;
    private ImageView currentPlayingAudio;
    private List<ContentMaster> filteredMasterList;
    private ArrayList<ContentMaster> masterList;
    private MediaPlayer mediaPlayer;
    private OnAudioActionPerformed onAudioActionPerformed;
    private Runnable resetSeekUpdaterRunnable;
    private Handler mHandler = new Handler();
    private MediaPlayer.OnCompletionListener onCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.7
        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (ContentViewAdapterNew.this.currentPlayingAudio != null) {
                ContentViewAdapterNew.this.currentPlayingAudio.setImageResource(R.drawable.ic_play_circle_outline_black_24px);
                mediaPlayer.reset();
                ContentViewAdapterNew.this.mHandler.removeCallbacks(ContentViewAdapterNew.this.resetSeekUpdaterRunnable);
            }
        }
    };
    private FileDownloadManager downloadManager = new FileDownloadManager(4);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return 1;
    }

    public ContentViewAdapterNew(Context context, ArrayList<ContentMaster> arrayList, OnAudioActionPerformed onAudioActionPerformed, MediaPlayer mediaPlayer) {
        this.filteredMasterList = new ArrayList();
        this.context = context;
        this.masterList = arrayList;
        this.filteredMasterList = arrayList;
        this.categoryDAO = new CategoryDAO(context);
        this.onAudioActionPerformed = onAudioActionPerformed;
        this.mediaPlayer = mediaPlayer;
        mediaPlayer.setOnCompletionListener(this.onCompletionListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new VideoTypeVH(LayoutInflater.from(this.context).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.video_item_new, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ContentMaster contentMaster = this.filteredMasterList.get(i);
        try {
            if (!(viewHolder instanceof VideoTypeVH)) {
                if (!(viewHolder instanceof AudioTypeVH)) {
                    if (!(viewHolder instanceof ImageTypeVH)) {
                        if (!(viewHolder instanceof AttachementTypeVH)) {
                            if (viewHolder instanceof TextTypeVH) {
                                ((TextTypeVH) viewHolder).tvTitle.setText(contentMaster.getContentName());
                                ((TextTypeVH) viewHolder).tvDesc.setText(contentMaster.getDescription());
                                fillAutoSpacingLayout(((TextTypeVH) viewHolder).chipsBoxLayout, contentMaster.getCategoryDetails());
                                Drawable drawable = ResourcesCompat.getDrawable(this.context.getResources(), R.drawable.ic_open_in_new_black_24px, null);
                                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                                int contentType = contentMaster.getContentType();
                                if (contentType == 3) {
                                    ((TextTypeVH) viewHolder).tvContent.setText(contentMaster.getContentData());
                                    ((TextTypeVH) viewHolder).icContentType.setImageResource(R.drawable.ic_html_file);
                                    return;
                                }
                                if (contentType != 5) {
                                    if (contentType != 6) {
                                        return;
                                    }
                                    ((TextTypeVH) viewHolder).icContentType.setImageResource(R.drawable.ic_google_chrome);
                                    ((TextTypeVH) viewHolder).tvContent.setVisibility(8);
                                    loadURL(contentMaster.getContentServerLocation(), (TextTypeVH) viewHolder);
                                    return;
                                }
                                ((TextTypeVH) viewHolder).icContentType.setImageResource(R.drawable.ic_html_file);
                                ((TextTypeVH) viewHolder).tvContent.setText(contentMaster.getDescription());
                                ((TextTypeVH) viewHolder).tvDesc.setVisibility(4);
                                ((TextTypeVH) viewHolder).tvContent.setCompoundDrawables(null, null, drawable, null);
                                ((TextTypeVH) viewHolder).tvContent.setTextColor(this.context.getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.chip));
                                return;
                            }
                            return;
                        }
                        ((AttachementTypeVH) viewHolder).tvTitle.setText(contentMaster.getContentName());
                        ((AttachementTypeVH) viewHolder).tvDesc.setText(contentMaster.getDescription());
                        fillAutoSpacingLayout(((AttachementTypeVH) viewHolder).chipsBoxLayout, contentMaster.getCategoryDetails());
                        if (TextUtils.isEmpty(contentMaster.getContentDeviceLocation()) || !new File(contentMaster.getContentDeviceLocation()).exists()) {
                            ((AttachementTypeVH) viewHolder).ivDownload.reset();
                            ((AttachementTypeVH) viewHolder).ivDownload.setEnabled(true);
                            return;
                        } else {
                            ((AttachementTypeVH) viewHolder).ivDownload.setProgress(100.0f);
                            ((AttachementTypeVH) viewHolder).ivDownload.setEnabled(false);
                            return;
                        }
                    }
                    ((ImageTypeVH) viewHolder).tvTitle.setText(contentMaster.getContentName());
                    ((ImageTypeVH) viewHolder).tvDesc.setText(contentMaster.getDescription());
                    fillAutoSpacingLayout(((ImageTypeVH) viewHolder).chipsBoxLayout, contentMaster.getCategoryDetails());
                    if (TextUtils.isEmpty(contentMaster.getContentDeviceLocation()) || !new File(contentMaster.getContentDeviceLocation()).exists()) {
                        ((ImageTypeVH) viewHolder).ivDownload.reset();
                        ((ImageTypeVH) viewHolder).ivDownload.setEnabled(true);
                        return;
                    } else {
                        ((ImageTypeVH) viewHolder).ivDownload.setProgress(100.0f);
                        ((ImageTypeVH) viewHolder).ivDownload.setEnabled(false);
                        return;
                    }
                }
                ((AudioTypeVH) viewHolder).tvTitle.setText(contentMaster.getContentName());
                ((AudioTypeVH) viewHolder).tvDesc.setText(contentMaster.getDescription());
                fillAutoSpacingLayout(((AudioTypeVH) viewHolder).chipsBoxLayout, contentMaster.getCategoryDetails());
                if (TextUtils.isEmpty(contentMaster.getContentDeviceLocation()) || !new File(contentMaster.getContentDeviceLocation()).exists()) {
                    ((AudioTypeVH) viewHolder).ivDownload.reset();
                    ((AudioTypeVH) viewHolder).ivDownload.setEnabled(true);
                    ((AudioTypeVH) viewHolder).tvDuration.setText("N/A");
                    return;
                } else {
                    ((AudioTypeVH) viewHolder).ivDownload.setProgress(100.0f);
                    ((AudioTypeVH) viewHolder).ivDownload.setEnabled(false);
                    ((AudioTypeVH) viewHolder).tvDuration.setText(getVideoDuration(contentMaster.getContentDeviceLocation()));
                    return;
                }
            }
            ((VideoTypeVH) viewHolder).tvContentTitle.setText(contentMaster.getContentName());
            ((VideoTypeVH) viewHolder).tvContentDescription.setText(contentMaster.getDescription());
            if (!TextUtils.isEmpty(this.filteredMasterList.get(i).getLocalThumbnail()) && new File(this.filteredMasterList.get(i).getLocalThumbnail()).exists()) {
                Glide.with(this.context).load(Uri.fromFile(new File(contentMaster.getLocalThumbnail()))).apply(new RequestOptions().placeholder(com.conceptglobal.pmcdeepakfertilizers.R.drawable.progress_animation).error(com.conceptglobal.pmcdeepakfertilizers.R.drawable.failure_large).diskCacheStrategy(DiskCacheStrategy.DATA).signature(new ObjectKey(UUID.randomUUID().toString()))).into(((VideoTypeVH) viewHolder).ivThumNail);
            } else {
                RequestOptions signature = new RequestOptions().placeholder(com.conceptglobal.pmcdeepakfertilizers.R.drawable.progress_animation).error(com.conceptglobal.pmcdeepakfertilizers.R.drawable.failure_large).diskCacheStrategy(DiskCacheStrategy.DATA).signature(new ObjectKey(UUID.randomUUID().toString()));
                if (contentMaster.getContentType() == 8) {
                    Glide.with(this.context).load(Uri.parse("https://img.youtube.com/vi/" + UtilDeclarations.getInstance().getVideoIdFromYoutubeUrl(contentMaster.getContentServerLocation().replace(new CategoryDAO(this.context).getBaseUrlForVideos(), "")) + "/default.jpg")).apply(signature).into(((VideoTypeVH) viewHolder).ivThumNail);
                } else {
                    Glide.with(this.context).load(Uri.parse(contentMaster.getThumbNail())).apply(signature).into(((VideoTypeVH) viewHolder).ivThumNail);
                    FileUtils.downloadThumnail(this.context, contentMaster, this.downloadManager);
                }
            }
            if (contentMaster.getContentType() != 1 && contentMaster.getContentType() != 8) {
                ((VideoTypeVH) viewHolder).ivActionPlay.setVisibility(8);
                return;
            }
            ((VideoTypeVH) viewHolder).ivActionPlay.setVisibility(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void loadThumNailFromURL(Context context, ImageView imageView, String str) {
        Glide.get(context).getBitmapPool();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<ContentMaster> list = this.filteredMasterList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.1
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                ContentViewAdapterNew.this.filteredMasterList = (ArrayList) filterResults.values;
                ContentViewAdapterNew.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (charSequence == null || charSequence.toString().trim().length() == 0) {
                    filterResults.count = ContentViewAdapterNew.this.masterList.size();
                    filterResults.values = ContentViewAdapterNew.this.masterList;
                } else {
                    String lowerCase = charSequence.toString().toLowerCase(Locale.getDefault());
                    for (int i = 0; i < ContentViewAdapterNew.this.masterList.size(); i++) {
                        if (((ContentMaster) ContentViewAdapterNew.this.masterList.get(i)).getContentName().toLowerCase(Locale.getDefault()).contains(lowerCase)) {
                            arrayList.add((ContentMaster) ContentViewAdapterNew.this.masterList.get(i));
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
        private ImageView ivCertified;
        private ArrowDownloadButton ivDownload;
        private ImageView ivThumNail;
        private TextView tvContentDescription;
        private TextView tvContentTitle;
        private TextView tvDesc;
        private TextView tvDuration;
        private TextView tvTest;
        private TextView tvTitle;

        VideoTypeVH(View view) {
            super(view);
            this.ivThumNail = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.video_thumbnail);
            this.ivActionPlay = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.action_play);
            this.tvContentTitle = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvContentName);
            this.tvContentDescription = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvContentDescription);
            this.ivThumNail.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.VideoTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Intent intent = new Intent(ContentViewAdapterNew.this.context, (Class<?>) ContentDetailsActivity.class);
                    intent.putExtra("ContentList", ContentViewAdapterNew.this.masterList);
                    intent.putExtra("Position", VideoTypeVH.this.getAdapterPosition());
                    intent.addFlags(335544320);
                    ContentViewAdapterNew.this.context.startActivity(intent);
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
            this.previewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.TextTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ContentViewAdapterNew.this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(TextTypeVH.this.getAdapterPosition())).getContentServerLocation())));
                }
            });
            this.tvContent.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.TextTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(TextTypeVH.this.getAdapterPosition())).getContentType() == 5) {
                        TextTypeVH textTypeVH = TextTypeVH.this;
                        textTypeVH.loadHtml(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(TextTypeVH.this.getAdapterPosition())).getContentName(), ContentViewAdapterNew.replaceRGBColorsWithHex(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(TextTypeVH.this.getAdapterPosition())).getContentData()));
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadHtml(String str, String str2) {
            Spanned fromHtml;
            View inflate = LayoutInflater.from(ContentViewAdapterNew.this.context).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.html_content, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_html);
            if (Build.VERSION.SDK_INT < 24) {
                textView.setText(Html.fromHtml(str2));
            } else {
                fromHtml = Html.fromHtml(str2, 63);
                textView.setText(fromHtml);
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(ContentViewAdapterNew.this.context);
            builder.setTitle(str);
            builder.setView(inflate);
            builder.setPositiveButton("Close", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.TextTypeVH.3
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
            arrowDownloadButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.ImageTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ContentViewAdapterNew.this.downloadContent((ArrowDownloadButton) view2, ImageTypeVH.this.getAdapterPosition());
                }
            });
            this.image_thumbnail.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.ImageTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (!TextUtils.isEmpty(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentDeviceLocation())) {
                        try {
                            if (TextUtils.isEmpty(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentDeviceLocation())) {
                                return;
                            }
                            String type = ContentViewAdapterNew.this.context.getContentResolver().getType(Uri.fromFile(new File(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentDeviceLocation())));
                            if (!TextUtils.isEmpty(type)) {
                                Log.d("MIME Type", type);
                            }
                            ContentViewAdapterNew.this.showImage(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentDeviceLocation());
                            return;
                        } catch (ActivityNotFoundException unused) {
                            Toast.makeText(ContentViewAdapterNew.this.context, "No Picture Viewer Installed", 1).show();
                            return;
                        }
                    }
                    if (!TextUtils.isEmpty(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentServerLocation())) {
                        ContentViewAdapterNew.this.showImage(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentServerLocation());
                    } else {
                        ContentViewAdapterNew.this.showImage(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(ImageTypeVH.this.getAdapterPosition())).getContentServerLocation());
                        Toast.makeText(ContentViewAdapterNew.this.context, "Picture not downloaded", 1).show();
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
            this.appCompatSeekBar.setOnTouchListener(new View.OnTouchListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.AudioTypeVH.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    return true;
                }
            });
            ArrowDownloadButton arrowDownloadButton = (ArrowDownloadButton) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.download);
            this.ivDownload = arrowDownloadButton;
            arrowDownloadButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.AudioTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ContentViewAdapterNew.this.downloadContent((ArrowDownloadButton) view2, AudioTypeVH.this.getAdapterPosition());
                }
            });
            this.action_play.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.AudioTypeVH.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (!TextUtils.isEmpty(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentDeviceLocation()) || TextUtils.isEmpty(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentServerLocation())) {
                        if (!TextUtils.isEmpty(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentDeviceLocation())) {
                            ContentViewAdapterNew.this.onAudioActionPerformed(view2, AudioTypeVH.this.tvDuration, 1, null, ((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentDeviceLocation(), AudioTypeVH.this.appCompatSeekBar, AudioTypeVH.this.progressBar);
                            return;
                        } else {
                            Toast.makeText(ContentViewAdapterNew.this.context, "Audio file not available", 1).show();
                            return;
                        }
                    }
                    if (NetworkUtils.isDataConnected(ContentViewAdapterNew.this.context)) {
                        ContentViewAdapterNew.this.onAudioActionPerformed(view2, AudioTypeVH.this.tvDuration, 1, ((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentServerLocation(), null, AudioTypeVH.this.appCompatSeekBar, AudioTypeVH.this.progressBar);
                    } else {
                        Toast.makeText(ContentViewAdapterNew.this.context, "Please enable internet", 1).show();
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
            arrowDownloadButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.AttachementTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ContentViewAdapterNew.this.downloadContent((ArrowDownloadButton) view2, AttachementTypeVH.this.getAdapterPosition());
                }
            });
            this.file_name.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.AttachementTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (!TextUtils.isEmpty(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(AttachementTypeVH.this.getAdapterPosition())).getContentDeviceLocation())) {
                        try {
                            Log.d("MIME Type", "" + ContentViewAdapterNew.this.context.getContentResolver().getType(Uri.fromFile(new File(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(AttachementTypeVH.this.getAdapterPosition())).getContentDeviceLocation()))));
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setDataAndType(FileProvider.getUriForFile(ContentViewAdapterNew.this.context, "com.conceptglobal.pmc.fileprovider", new File(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(AttachementTypeVH.this.getAdapterPosition())).getContentDeviceLocation())), "application/pdf");
                            intent.addFlags(1);
                            ContentViewAdapterNew.this.context.startActivity(intent);
                            return;
                        } catch (ActivityNotFoundException unused) {
                            Toast.makeText(ContentViewAdapterNew.this.context, "No PDF Viewer Installed", 1).show();
                            return;
                        }
                    }
                    Toast.makeText(ContentViewAdapterNew.this.context, "PDF not downloaded", 1).show();
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
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    for (int i2 = 5; i2 < arrayList.size(); i2++) {
                        flowLayout.removeView(textView);
                        flowLayout.addView(ContentViewAdapterNew.this.buildLabel((String) arrayList.get(i2)));
                    }
                    textView2.setText("See Less");
                    flowLayout.addView(textView2);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    flowLayout.removeAllViews();
                    for (int i2 = 0; i2 < 5; i2++) {
                        flowLayout.addView(ContentViewAdapterNew.this.buildLabel((String) arrayList.get(i2)));
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
            this.downloadManager.add(new DownloadRequest(parse).setRetryPolicy(new DefaultRetryPolicy()).setDestinationURI(Uri.parse(UtilDeclarations.mediaPath + str)).setPriority(DownloadRequest.Priority.HIGH).setStatusListener(new DownloadStatusListenerV1() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.4
                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1
                public void onDownloadComplete(DownloadRequest downloadRequest) {
                    ContentViewAdapterNew.this.categoryDAO.updateContent(((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(i)).getContentId(), downloadRequest.getDestinationURI().toString());
                    ((ContentMaster) ContentViewAdapterNew.this.filteredMasterList.get(i)).setContentDeviceLocation(downloadRequest.getDestinationURI().toString());
                }

                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1
                public void onDownloadFailed(DownloadRequest downloadRequest, int i2, String str2) {
                    arrowDownloadButton.reset();
                    arrowDownloadButton.setEnabled(true);
                    new File(downloadRequest.getDestinationURI().toString()).delete();
                    Toast.makeText(ContentViewAdapterNew.this.context, str2, 0).show();
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
                return ContentViewAdapterNew.this.parsePageHeaderInfo(this.url);
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
                this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.5
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public void onPrepared(MediaPlayer mediaPlayer2) {
                        view.setVisibility(0);
                        progressBar.setVisibility(8);
                        Log.d("Duration", mediaPlayer2.getDuration() + "");
                        ((ImageView) view).setImageResource(R.drawable.ic_pause_circle_outline_black_24px);
                        ContentViewAdapterNew.this.currentPlayingAudio = (ImageView) view;
                        textView.setText(UtilDeclarations.milliSecondsToTimer((long) mediaPlayer2.getDuration()));
                        mediaPlayer2.start();
                        ContentViewAdapterNew.this.mHandler.post(ContentViewAdapterNew.this.mUpdateTimeTask(seekBar));
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
        Runnable runnable = new Runnable() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (ContentViewAdapterNew.this.mediaPlayer != null) {
                        seekBar.setProgress(UtilDeclarations.getProgressPercentage(ContentViewAdapterNew.this.mediaPlayer.getCurrentPosition(), ContentViewAdapterNew.this.mediaPlayer.getDuration()));
                        ContentViewAdapterNew.this.mHandler.postDelayed(this, 100L);
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
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.ContentViewAdapterNew.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }
}
