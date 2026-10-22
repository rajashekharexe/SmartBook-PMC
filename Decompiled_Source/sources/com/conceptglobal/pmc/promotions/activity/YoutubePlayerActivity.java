package com.conceptglobal.pmc.promotions.activity;

import android.os.Bundle;
import com.conceptglobal.pmc.promotions.utils.Constants;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.android.youtube.player.YouTubeBaseActivity;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayerView;

/* loaded from: classes.dex */
public class YoutubePlayerActivity extends YouTubeBaseActivity {
    Bundle videoBundle;
    String videoId;
    YouTubePlayerView youTubePlayerView;

    @Override // com.google.android.youtube.player.YouTubeBaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_youtube_player);
        this.youTubePlayerView = (YouTubePlayerView) findViewById(R.id.player);
        Bundle extras = getIntent().getExtras();
        this.videoBundle = extras;
        if (extras != null) {
            this.videoId = extras.getString("videoId");
        }
        this.youTubePlayerView.initialize(Constants.DEVELOPER_KEY, new YouTubePlayer.OnInitializedListener() { // from class: com.conceptglobal.pmc.promotions.activity.YoutubePlayerActivity.1
            @Override // com.google.android.youtube.player.YouTubePlayer.OnInitializedListener
            public void onInitializationFailure(YouTubePlayer.Provider provider, YouTubeInitializationResult youTubeInitializationResult) {
            }

            @Override // com.google.android.youtube.player.YouTubePlayer.OnInitializedListener
            public void onInitializationSuccess(YouTubePlayer.Provider provider, YouTubePlayer youTubePlayer, boolean z) {
                youTubePlayer.cueVideo(YoutubePlayerActivity.this.videoId);
            }
        });
    }
}
