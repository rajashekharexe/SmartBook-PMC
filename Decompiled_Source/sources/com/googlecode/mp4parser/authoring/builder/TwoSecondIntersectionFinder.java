package com.googlecode.mp4parser.authoring.builder;

import com.googlecode.mp4parser.authoring.Movie;
import com.googlecode.mp4parser.authoring.Track;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class TwoSecondIntersectionFinder implements FragmentIntersectionFinder {
    private int fragmentLength;
    private Movie movie;

    public TwoSecondIntersectionFinder(Movie movie, int i) {
        this.movie = movie;
        this.fragmentLength = i;
    }

    @Override // com.googlecode.mp4parser.authoring.builder.FragmentIntersectionFinder
    public long[] sampleNumbers(Track track) {
        double d = 0.0d;
        for (Track track2 : this.movie.getTracks()) {
            double duration = track2.getDuration() / track2.getTrackMetaData().getTimescale();
            if (d < duration) {
                d = duration;
            }
        }
        int i = 1;
        int min = Math.min(((int) Math.ceil(d / this.fragmentLength)) - 1, track.getSamples().size());
        int i2 = min < 1 ? 1 : min;
        long[] jArr = new long[i2];
        Arrays.fill(jArr, -1L);
        jArr[0] = 1;
        long[] sampleDurations = track.getSampleDurations();
        int length = sampleDurations.length;
        long j = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            long j2 = sampleDurations[i3];
            int timescale = ((int) ((j / track.getTrackMetaData().getTimescale()) / this.fragmentLength)) + i;
            if (timescale >= i2) {
                break;
            }
            i4++;
            jArr[timescale] = i4;
            j += j2;
            i3++;
            i2 = i2;
            i = 1;
        }
        long j3 = i4 + i;
        for (int i5 = i2 - 1; i5 >= 0; i5--) {
            if (jArr[i5] == -1) {
                jArr[i5] = j3;
            }
            j3 = jArr[i5];
        }
        long[] jArr2 = new long[0];
        for (int i6 = 0; i6 < i2; i6++) {
            long j4 = jArr[i6];
            if (jArr2.length == 0 || jArr2[jArr2.length - i] != j4) {
                jArr2 = Arrays.copyOf(jArr2, jArr2.length + i);
                jArr2[jArr2.length - i] = j4;
            }
        }
        return jArr2;
    }
}
