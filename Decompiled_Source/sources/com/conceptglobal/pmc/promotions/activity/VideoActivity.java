package com.conceptglobal.pmc.promotions.activity;

import android.app.ProgressDialog;
import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.MediaController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.promotions.activity.CustomVideoView;
import com.conceptglobal.pmc.promotions.common.Queries;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.utils.Constants;
import com.conceptglobal.pmc.promotions.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class VideoActivity extends AppCompatActivity {
    private int PdaId;
    CategoryDAO categoryDAO;
    private int contentId;
    private Context context;
    private int contextID;
    private boolean downloadedNow;
    private boolean isDownloaded;
    private boolean isPlaying;
    public int lastposition;
    MediaController mediacontroller;
    private ProgressDialog pDialog;
    private int parentCatId;
    private Timer timer;
    private CustomVideoView videoview;
    private String VideoURL = "http://clips.vorwaerts-gmbh.de/VfE_html5.mp4";
    private int watchedDuration = 0;

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.lastposition = this.videoview.getCurrentPosition();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_video);
        this.context = this;
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        this.categoryDAO = new CategoryDAO(this);
        setSupportActionBar(toolbar);
        if (getIntent().hasExtra("url")) {
            this.VideoURL = getIntent().getStringExtra("url");
        } else if (getIntent().hasExtra("path")) {
            this.VideoURL = getIntent().getStringExtra("path");
        }
        this.parentCatId = getIntent().getIntExtra("parentCatId", 0);
        this.contentId = getIntent().getIntExtra("contentId", 0);
        getIntent().getExtras();
        this.isDownloaded = getIntent().getBooleanExtra("isDownloaded", false);
        this.downloadedNow = getIntent().getBooleanExtra("downloadedNow", false);
        this.PdaId = getIntent().getIntExtra("PdaId", 0);
        ((FloatingActionButton) findViewById(R.id.fab)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Snackbar.make(view, "Replace with your own action", 0).setAction("Action", (View.OnClickListener) null).show();
            }
        });
        try {
            this.contextID = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getContextIDQry(this.contentId));
        } catch (Exception e) {
            e.printStackTrace();
        }
        setContentView(R.layout.content_video);
        this.videoview = (CustomVideoView) findViewById(R.id.VideoView);
        if (getIntent().hasExtra("url")) {
            this.videoview.setVideoURI(Uri.parse(this.VideoURL));
        } else if (getIntent().hasExtra("path")) {
            this.videoview.setVideoPath(this.VideoURL);
        }
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.pDialog = progressDialog;
        progressDialog.setTitle("  Streaming.Please Wait ");
        this.pDialog.setMessage("Buffering...");
        this.pDialog.setIndeterminate(false);
        this.pDialog.setCancelable(true);
        this.pDialog.show();
        try {
            MediaController mediaController = new MediaController(this);
            this.mediacontroller = mediaController;
            mediaController.setAnchorView(this.videoview);
            this.videoview.setMediaController(this.mediacontroller);
        } catch (Exception e2) {
            Log.e("Error", e2.getMessage());
            e2.printStackTrace();
        }
        try {
            this.videoview.requestFocus();
            this.videoview.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoActivity.2
                @Override // android.media.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer) {
                    if (VideoActivity.this.pDialog != null && VideoActivity.this.pDialog.isShowing()) {
                        VideoActivity.this.pDialog.dismiss();
                    }
                    if (VideoActivity.this.mediacontroller.isShowing()) {
                        VideoActivity.this.mediacontroller.hide();
                    }
                    VideoActivity.this.isPlaying = true;
                    VideoActivity.this.timerCounter();
                }
            });
            this.videoview.setPlayPauseListener(new CustomVideoView.PlayPauseListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoActivity.3
                @Override // com.conceptglobal.pmc.promotions.activity.CustomVideoView.PlayPauseListener
                public void onPlay() {
                    VideoActivity.this.isPlaying = true;
                    System.out.println("Play!");
                }

                @Override // com.conceptglobal.pmc.promotions.activity.CustomVideoView.PlayPauseListener
                public void onPause() {
                    VideoActivity.this.isPlaying = false;
                    System.out.println("Pause!");
                }
            });
            this.videoview.start();
            while (this.videoview.isPlaying()) {
                int currentPosition = this.videoview.getCurrentPosition();
                this.lastposition = currentPosition;
                Log.d("CurrentPosition", String.valueOf(currentPosition / 1000));
            }
            this.videoview.setMediaController(this.mediacontroller);
            this.videoview.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.conceptglobal.pmc.promotions.activity.VideoActivity.4
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    new CategoryDAO(VideoActivity.this.context).updateWatchStatus("WatchStatus", VideoActivity.this.contentId, 1);
                    VideoActivity.this.categoryDAO.insertContentLog(VideoActivity.this.contentId, VideoActivity.this.parentCatId, VideoActivity.this.PdaId, new CategoryDAO(VideoActivity.this.context).getUserId(), UtilDeclarations.getDateTimeForLogs(), VideoActivity.this.isDownloaded, VideoActivity.this.downloadedNow, VideoActivity.this.contextID, Constants.USAGE_ACTION_DURATION, VideoActivity.this.watchedDuration, VideoActivity.this.contentId, Constants.USAGE_ACTION_PRIMARY_COLUMN_NAME);
                    if (VideoActivity.this.timer != null) {
                        VideoActivity.this.timer.cancel();
                    }
                    VideoActivity.this.finish();
                }
            });
        } catch (Exception e3) {
            Log.e("Error", e3.getMessage());
            e3.printStackTrace();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
        }
        ProgressDialog progressDialog = this.pDialog;
        if (progressDialog != null && progressDialog.isShowing()) {
            this.pDialog.dismiss();
            super.onBackPressed();
        } else {
            this.PdaId = Integer.parseInt(new CategoryDAO(this.context).getPdaId());
            this.lastposition = this.videoview.getCurrentPosition();
            this.categoryDAO.insertContentLog(this.contentId, this.parentCatId, this.PdaId, new CategoryDAO(this.context).getUserId(), UtilDeclarations.getDateTimeForLogs(), this.isDownloaded, this.downloadedNow, this.contextID, Constants.USAGE_ACTION_DURATION, this.watchedDuration, this.contentId, Constants.USAGE_ACTION_PRIMARY_COLUMN_NAME);
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void timerCounter() {
        this.timer = new Timer();
        this.timer.schedule(new TimerTask() { // from class: com.conceptglobal.pmc.promotions.activity.VideoActivity.5
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                VideoActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.promotions.activity.VideoActivity.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoActivity.this.isPlaying) {
                            VideoActivity.this.watchedDuration++;
                            Log.d("Video watch duration", "duration---" + VideoActivity.this.watchedDuration);
                        }
                    }
                });
            }
        }, 0L, 1000L);
    }
}
