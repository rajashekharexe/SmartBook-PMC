package com.conceptglobal.pmc.promotions.activity;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.VideoView;

/* loaded from: classes.dex */
public class CustomVideoView extends VideoView {
    private PlayPauseListener mListener;

    public interface PlayPauseListener {
        void onPause();

        void onPlay();
    }

    public CustomVideoView(Context context) {
        super(context);
    }

    public CustomVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CustomVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setPlayPauseListener(PlayPauseListener playPauseListener) {
        this.mListener = playPauseListener;
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void pause() {
        super.pause();
        PlayPauseListener playPauseListener = this.mListener;
        if (playPauseListener != null) {
            playPauseListener.onPause();
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void start() {
        super.start();
        PlayPauseListener playPauseListener = this.mListener;
        if (playPauseListener != null) {
            playPauseListener.onPlay();
        }
    }
}
