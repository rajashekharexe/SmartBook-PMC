package com.conceptglobal.pmc.promotions.adapters;

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
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.promotions.activity.VideoActivity;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.downloadmanager.DefaultRetryPolicy;
import com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequest;
import com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListener;
import com.conceptglobal.pmc.promotions.downloadmanager.FileDownloadManager;
import com.conceptglobal.pmc.promotions.interfaces.OnAudioActionPerformed;
import com.conceptglobal.pmc.promotions.interfaces.OnVideoDelete;
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
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class DownloadedContentViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements Filterable {
    private static final int DOWNLOAD_THREAD_POOL_SIZE = 4;
    private CategoryDAO categoryDAO;
    private Context context;
    private ImageView currentPlayingAudio;
    private List<ContentMaster> filteredMasterList;
    private List<ContentMaster> masterList;
    private MediaPlayer mediaPlayer;
    private OnAudioActionPerformed onAudioActionPerformed;
    private OnVideoDelete onVideoDelete;
    private Handler mHandler = new Handler();
    private MediaPlayer.OnCompletionListener onCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.9
        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (DownloadedContentViewAdapter.this.currentPlayingAudio != null) {
                DownloadedContentViewAdapter.this.currentPlayingAudio.setImageResource(R.drawable.ic_play_circle_outline_black_24px);
                mediaPlayer.reset();
            }
        }
    };
    private FileDownloadManager downloadManager = new FileDownloadManager(4);

    public DownloadedContentViewAdapter(Context context, List<ContentMaster> list, OnVideoDelete onVideoDelete, MediaPlayer mediaPlayer) {
        this.filteredMasterList = new ArrayList();
        this.context = context;
        this.masterList = list;
        this.filteredMasterList = list;
        this.categoryDAO = new CategoryDAO(context);
        this.mediaPlayer = mediaPlayer;
        mediaPlayer.setOnCompletionListener(this.onCompletionListener);
        this.onVideoDelete = onVideoDelete;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 1:
                return new VideoTypeVH(LayoutInflater.from(this.context).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.video_item, viewGroup, false));
            case 2:
                return new AudioTypeVH(LayoutInflater.from(this.context).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.audio_item, viewGroup, false));
            case 3:
            case 5:
            case 6:
                return new TextTypeVH(LayoutInflater.from(this.context).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.text_item, viewGroup, false));
            case 4:
                return new ImageTypeVH(LayoutInflater.from(this.context).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.image_item, viewGroup, false));
            case 7:
                return new AttachementTypeVH(LayoutInflater.from(this.context).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.attachment_item, viewGroup, false));
            default:
                return null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.filteredMasterList.get(i).getContentType();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        Spanned fromHtml;
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
                                int contentType = contentMaster.getContentType();
                                if (contentType == 3) {
                                    ((TextTypeVH) viewHolder).tvContent.setText(contentMaster.getContentData());
                                    ((TextTypeVH) viewHolder).icContentType.setImageResource(R.drawable.ic_html_file);
                                } else if (contentType == 5) {
                                    ((TextTypeVH) viewHolder).icContentType.setImageResource(R.drawable.ic_html_file);
                                    if (Build.VERSION.SDK_INT < 24) {
                                        ((TextTypeVH) viewHolder).tvContent.setText(Html.fromHtml(contentMaster.getContentData()));
                                    } else {
                                        TextView textView = ((TextTypeVH) viewHolder).tvContent;
                                        fromHtml = Html.fromHtml(contentMaster.getContentData(), 63);
                                        textView.setText(fromHtml);
                                    }
                                } else if (contentType == 6) {
                                    ((TextTypeVH) viewHolder).icContentType.setImageResource(R.drawable.ic_google_chrome);
                                    ((TextTypeVH) viewHolder).tvContent.setVisibility(8);
                                    loadURL(contentMaster.getContentServerLocation(), (TextTypeVH) viewHolder);
                                }
                            }
                        } else {
                            ((AttachementTypeVH) viewHolder).ivDownload.setVisibility(8);
                            ((AttachementTypeVH) viewHolder).ivDelete.setVisibility(0);
                            ((AttachementTypeVH) viewHolder).tvTitle.setText(contentMaster.getContentName());
                            ((AttachementTypeVH) viewHolder).tvDesc.setText(contentMaster.getDescription());
                            fillAutoSpacingLayout(((AttachementTypeVH) viewHolder).chipsBoxLayout, contentMaster.getCategoryDetails());
                            if (TextUtils.isEmpty(contentMaster.getContentDeviceLocation()) || !new File(contentMaster.getContentDeviceLocation()).exists()) {
                                ((AttachementTypeVH) viewHolder).ivDownload.reset();
                                ((AttachementTypeVH) viewHolder).ivDownload.setEnabled(true);
                            } else {
                                ((AttachementTypeVH) viewHolder).ivDownload.setProgress(100.0f);
                                ((AttachementTypeVH) viewHolder).ivDownload.setEnabled(false);
                            }
                        }
                    } else {
                        ((ImageTypeVH) viewHolder).ivDownload.setVisibility(8);
                        ((ImageTypeVH) viewHolder).ivDelete.setVisibility(0);
                        ((ImageTypeVH) viewHolder).tvTitle.setText(contentMaster.getContentName());
                        ((ImageTypeVH) viewHolder).tvDesc.setText(contentMaster.getDescription());
                        fillAutoSpacingLayout(((ImageTypeVH) viewHolder).chipsBoxLayout, contentMaster.getCategoryDetails());
                        if (TextUtils.isEmpty(contentMaster.getContentDeviceLocation()) || !new File(contentMaster.getContentDeviceLocation()).exists()) {
                            ((ImageTypeVH) viewHolder).ivDownload.reset();
                            ((ImageTypeVH) viewHolder).ivDownload.setEnabled(true);
                        } else {
                            ((ImageTypeVH) viewHolder).ivDownload.setProgress(100.0f);
                            ((ImageTypeVH) viewHolder).ivDownload.setEnabled(false);
                        }
                    }
                } else {
                    ((AudioTypeVH) viewHolder).ivDownload.setVisibility(8);
                    ((AudioTypeVH) viewHolder).ivDelete.setVisibility(0);
                    ((AudioTypeVH) viewHolder).tvTitle.setText(contentMaster.getContentName());
                    ((AudioTypeVH) viewHolder).tvDesc.setText(contentMaster.getDescription());
                    fillAutoSpacingLayout(((AudioTypeVH) viewHolder).chipsBoxLayout, contentMaster.getCategoryDetails());
                    if (TextUtils.isEmpty(contentMaster.getContentDeviceLocation()) || !new File(contentMaster.getContentDeviceLocation()).exists()) {
                        ((AudioTypeVH) viewHolder).ivDownload.reset();
                        ((AudioTypeVH) viewHolder).ivDownload.setEnabled(true);
                        ((AudioTypeVH) viewHolder).tvDuration.setText("N/A");
                    } else {
                        ((AudioTypeVH) viewHolder).ivDownload.setProgress(100.0f);
                        ((AudioTypeVH) viewHolder).ivDownload.setEnabled(false);
                        ((AudioTypeVH) viewHolder).tvDuration.setText(getVideoDuration(contentMaster.getContentDeviceLocation()));
                    }
                }
            } else {
                ((VideoTypeVH) viewHolder).ivDownload.setVisibility(8);
                ((VideoTypeVH) viewHolder).tvTest.setVisibility(8);
                ((VideoTypeVH) viewHolder).ivDelete.setVisibility(0);
                ((VideoTypeVH) viewHolder).tvTitle.setText(contentMaster.getContentName());
                ((VideoTypeVH) viewHolder).tvDesc.setText(contentMaster.getDescription());
                contentMaster.getThumbNail();
                fillAutoSpacingLayout(((VideoTypeVH) viewHolder).chipsBoxLayout, contentMaster.getCategoryDetails());
                if (TextUtils.isEmpty(contentMaster.getContentDeviceLocation()) || !new File(contentMaster.getContentDeviceLocation()).exists()) {
                    ((VideoTypeVH) viewHolder).ivDownload.reset();
                    ((VideoTypeVH) viewHolder).ivDownload.setEnabled(true);
                    ((VideoTypeVH) viewHolder).tvDuration.setText("N/A");
                } else {
                    ((VideoTypeVH) viewHolder).ivDownload.setProgress(100.0f);
                    ((VideoTypeVH) viewHolder).ivDownload.setEnabled(false);
                    ((VideoTypeVH) viewHolder).tvDuration.setText(getVideoDuration(contentMaster.getContentDeviceLocation()));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
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
        return new Filter() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.1
            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                DownloadedContentViewAdapter.this.filteredMasterList = (ArrayList) filterResults.values;
                DownloadedContentViewAdapter.this.notifyDataSetChanged();
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                ArrayList arrayList = new ArrayList();
                if (charSequence == null || charSequence.toString().trim().length() == 0) {
                    filterResults.count = DownloadedContentViewAdapter.this.masterList.size();
                    filterResults.values = DownloadedContentViewAdapter.this.masterList;
                } else {
                    String lowerCase = charSequence.toString().toLowerCase(Locale.getDefault());
                    for (int i = 0; i < DownloadedContentViewAdapter.this.masterList.size(); i++) {
                        if (((ContentMaster) DownloadedContentViewAdapter.this.masterList.get(i)).getContentName().toLowerCase(Locale.getDefault()).contains(lowerCase)) {
                            arrayList.add((ContentMaster) DownloadedContentViewAdapter.this.masterList.get(i));
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
        private ImageView ivDelete;
        private ArrowDownloadButton ivDownload;
        private ImageView ivThumNail;
        private TextView tvDesc;
        private TextView tvDuration;
        private TextView tvTest;
        private TextView tvTitle;

        VideoTypeVH(View view) {
            super(view);
            this.chipsBoxLayout = (FlowLayout) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.chipsBoxLayout);
            this.tvTitle = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_video_name);
            this.tvDesc = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_video_desc);
            this.ivThumNail = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.video_thumbnail);
            this.tvTest = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_Test);
            this.ivActionPlay = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.action_play);
            this.tvDuration = (TextView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.duration);
            this.icContentType = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.content_type);
            this.ivDownload = (ArrowDownloadButton) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.download);
            this.ivDelete = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.delete);
            this.ivActionPlay.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.VideoTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TextUtils.isEmpty(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(VideoTypeVH.this.getAdapterPosition())).getContentDeviceLocation()) || !new File(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(VideoTypeVH.this.getAdapterPosition())).getContentDeviceLocation()).exists()) {
                        if (!UtilDeclarations.isOnline(DownloadedContentViewAdapter.this.context)) {
                            Toast.makeText(DownloadedContentViewAdapter.this.context, "Please enable data connection", 0).show();
                            return;
                        }
                        Intent intent = new Intent(DownloadedContentViewAdapter.this.context, (Class<?>) VideoActivity.class);
                        intent.putExtra("url", ((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(VideoTypeVH.this.getAdapterPosition())).getContentServerLocation());
                        intent.putExtra("contentId", ((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(VideoTypeVH.this.getAdapterPosition())).getContentId());
                        intent.putExtra("parentCatId", ((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(VideoTypeVH.this.getAdapterPosition())).getParentCatId());
                        intent.putExtra("isDownloaded", false);
                        intent.putExtra("downloadedNow", false);
                        DownloadedContentViewAdapter.this.context.startActivity(intent);
                        return;
                    }
                    Intent intent2 = new Intent(DownloadedContentViewAdapter.this.context, (Class<?>) VideoActivity.class);
                    intent2.putExtra("path", ((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(VideoTypeVH.this.getAdapterPosition())).getContentDeviceLocation());
                    intent2.putExtra("contentId", ((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(VideoTypeVH.this.getAdapterPosition())).getContentId());
                    intent2.putExtra("parentCatId", ((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(VideoTypeVH.this.getAdapterPosition())).getParentCatId());
                    intent2.putExtra("isDownloaded", true);
                    intent2.putExtra("downloadedNow", false);
                    DownloadedContentViewAdapter.this.context.startActivity(intent2);
                }
            });
            this.ivDelete.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.VideoTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DownloadedContentViewAdapter.this.showDiscardAlert(VideoTypeVH.this.getAdapterPosition());
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
            this.previewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.TextTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DownloadedContentViewAdapter.this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(TextTypeVH.this.getAdapterPosition())).getContentServerLocation())));
                }
            });
        }
    }

    private class ImageTypeVH extends RecyclerView.ViewHolder {
        private FlowLayout chipsBoxLayout;
        private ImageView icContentType;
        private ImageView image_thumbnail;
        private ImageView ivDelete;
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
            this.ivDownload = (ArrowDownloadButton) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.download);
            this.ivDelete = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.delete);
            this.ivDownload.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.ImageTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DownloadedContentViewAdapter.this.downloadContent((ArrowDownloadButton) view2, ImageTypeVH.this.getAdapterPosition());
                }
            });
            this.ivDelete.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.ImageTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DownloadedContentViewAdapter.this.showDiscardAlert(ImageTypeVH.this.getAdapterPosition());
                }
            });
        }
    }

    private class AudioTypeVH extends RecyclerView.ViewHolder {
        private ImageView action_play;
        private SeekBar appCompatSeekBar;
        private FlowLayout chipsBoxLayout;
        private ImageView icContentType;
        private ImageView ivDelete;
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
            this.ivDelete = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.delete);
            this.appCompatSeekBar.setOnTouchListener(new View.OnTouchListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.AudioTypeVH.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    return true;
                }
            });
            ArrowDownloadButton arrowDownloadButton = (ArrowDownloadButton) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.download);
            this.ivDownload = arrowDownloadButton;
            arrowDownloadButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.AudioTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DownloadedContentViewAdapter.this.downloadContent((ArrowDownloadButton) view2, AudioTypeVH.this.getAdapterPosition());
                }
            });
            this.ivDelete.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.AudioTypeVH.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (DownloadedContentViewAdapter.this.mediaPlayer.isPlaying()) {
                        Toast.makeText(DownloadedContentViewAdapter.this.context, "Please stop the audio", 1).show();
                    } else {
                        DownloadedContentViewAdapter.this.showDiscardAlert(AudioTypeVH.this.getAdapterPosition());
                    }
                }
            });
            this.action_play.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.AudioTypeVH.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (!TextUtils.isEmpty(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentDeviceLocation()) || TextUtils.isEmpty(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentServerLocation())) {
                        if (!TextUtils.isEmpty(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentDeviceLocation())) {
                            DownloadedContentViewAdapter.this.onAudioActionPerformed(view2, AudioTypeVH.this.tvDuration, 1, null, ((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentDeviceLocation(), AudioTypeVH.this.appCompatSeekBar, AudioTypeVH.this.progressBar);
                            return;
                        } else {
                            Toast.makeText(DownloadedContentViewAdapter.this.context, "Audio file not available", 1).show();
                            return;
                        }
                    }
                    if (NetworkUtils.isDataConnected(DownloadedContentViewAdapter.this.context)) {
                        DownloadedContentViewAdapter.this.onAudioActionPerformed(view2, AudioTypeVH.this.tvDuration, 1, ((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(AudioTypeVH.this.getAdapterPosition())).getContentServerLocation(), null, AudioTypeVH.this.appCompatSeekBar, AudioTypeVH.this.progressBar);
                    } else {
                        Toast.makeText(DownloadedContentViewAdapter.this.context, "Please enable internet", 1).show();
                    }
                }
            });
        }
    }

    private class AttachementTypeVH extends RecyclerView.ViewHolder {
        private FlowLayout chipsBoxLayout;
        private TextView file_name;
        private ImageView icContentType;
        private ImageView ivDelete;
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
            this.ivDownload = (ArrowDownloadButton) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.download);
            this.ivDelete = (ImageView) view.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.delete);
            this.ivDownload.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.AttachementTypeVH.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DownloadedContentViewAdapter.this.downloadContent((ArrowDownloadButton) view2, AttachementTypeVH.this.getAdapterPosition());
                }
            });
            this.ivDelete.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.AttachementTypeVH.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DownloadedContentViewAdapter.this.showDiscardAlert(AttachementTypeVH.this.getAdapterPosition());
                }
            });
            this.file_name.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.AttachementTypeVH.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TextUtils.isEmpty(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(AttachementTypeVH.this.getAdapterPosition())).getContentDeviceLocation())) {
                        Toast.makeText(DownloadedContentViewAdapter.this.context, "PDF not downloaded", 1).show();
                        return;
                    }
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setDataAndType(FileProvider.getUriForFile(DownloadedContentViewAdapter.this.context, "com.conceptglobal.pmc.fileprovider", new File(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(AttachementTypeVH.this.getAdapterPosition())).getContentDeviceLocation())), "application/pdf");
                        intent.addFlags(1);
                        DownloadedContentViewAdapter.this.context.startActivity(intent);
                    } catch (ActivityNotFoundException unused) {
                        Toast.makeText(DownloadedContentViewAdapter.this.context, "No PDF Viewer Installed", 1).show();
                    }
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
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    for (int i2 = 5; i2 < arrayList.size(); i2++) {
                        flowLayout.removeView(textView);
                        flowLayout.addView(DownloadedContentViewAdapter.this.buildLabel((String) arrayList.get(i2)));
                    }
                    textView2.setText("See Less");
                    flowLayout.addView(textView2);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    flowLayout.removeAllViews();
                    for (int i2 = 0; i2 < 5; i2++) {
                        flowLayout.addView(DownloadedContentViewAdapter.this.buildLabel((String) arrayList.get(i2)));
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
            final String str = this.filteredMasterList.get(i).getContentServerLocation().split("/")[r1.length - 1];
            arrowDownloadButton.startAnimating();
            this.downloadManager.add(new DownloadRequest(parse).setRetryPolicy(new DefaultRetryPolicy()).setDestinationURI(Uri.parse(UtilDeclarations.mediaPath + str)).setPriority(DownloadRequest.Priority.HIGH).setDownloadListener(new DownloadStatusListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.4
                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListener
                public void onDownloadComplete(int i2) {
                    DownloadedContentViewAdapter.this.categoryDAO.updateContent(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(i)).getContentId(), UtilDeclarations.mediaPath + str);
                    ((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(i)).setContentDeviceLocation(UtilDeclarations.mediaPath + str);
                }

                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListener
                public void onDownloadFailed(int i2, int i3, String str2) {
                    arrowDownloadButton.reset();
                    arrowDownloadButton.setEnabled(true);
                    new File(UtilDeclarations.mediaPath + str).delete();
                    Toast.makeText(DownloadedContentViewAdapter.this.context, str2, 0).show();
                }

                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListener
                public void onProgress(int i2, long j, long j2, int i3) {
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
                return DownloadedContentViewAdapter.this.parsePageHeaderInfo(this.url);
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
                this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.5
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public void onPrepared(MediaPlayer mediaPlayer2) {
                        view.setVisibility(0);
                        progressBar.setVisibility(8);
                        Log.d("Duration", mediaPlayer2.getDuration() + "");
                        ((ImageView) view).setImageResource(R.drawable.ic_pause_circle_outline_black_24px);
                        DownloadedContentViewAdapter.this.currentPlayingAudio = (ImageView) view;
                        textView.setText(UtilDeclarations.milliSecondsToTimer((long) mediaPlayer2.getDuration()));
                        mediaPlayer2.start();
                        DownloadedContentViewAdapter.this.mHandler.postDelayed(DownloadedContentViewAdapter.this.mUpdateTimeTask(seekBar), 100L);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void showDiscardAlert(final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage("Delete this Media?");
        builder.setIcon(R.drawable.ic_delete_white_24px);
        builder.setPositiveButton("DISCARD", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                DownloadedContentViewAdapter.this.categoryDAO.updateContent(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(i)).getContentId(), "");
                if (new File(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(i)).getContentDeviceLocation()).exists()) {
                    Log.e("isDeleted", "" + new File(((ContentMaster) DownloadedContentViewAdapter.this.filteredMasterList.get(i)).getContentDeviceLocation()).delete());
                }
                DownloadedContentViewAdapter.this.onVideoDelete.onVideoDelete();
            }
        });
        builder.setNegativeButton("CANCEL", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.cancel();
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable mUpdateTimeTask(final SeekBar seekBar) {
        return new Runnable() { // from class: com.conceptglobal.pmc.promotions.adapters.DownloadedContentViewAdapter.8
            @Override // java.lang.Runnable
            public void run() {
                if (DownloadedContentViewAdapter.this.mediaPlayer != null) {
                    seekBar.setProgress(UtilDeclarations.getProgressPercentage(DownloadedContentViewAdapter.this.mediaPlayer.getCurrentPosition(), DownloadedContentViewAdapter.this.mediaPlayer.getDuration()));
                    DownloadedContentViewAdapter.this.mHandler.postDelayed(this, 100L);
                }
            }
        };
    }
}
