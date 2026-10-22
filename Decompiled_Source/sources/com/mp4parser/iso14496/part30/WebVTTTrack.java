package com.mp4parser.iso14496.part30;

import com.coremedia.iso.Utf8;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import com.googlecode.mp4parser.util.CastUtils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* loaded from: classes2.dex */
public class WebVTTTrack extends AbstractTrack {
    WebVTTSampleEntry sampleEntry;
    List<Sample> samples;
    String[] subs;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public String getHandler() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public SampleDescriptionBox getSampleDescriptionBox() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public List<Sample> getSamples() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public TrackMetaData getTrackMetaData() {
        return null;
    }

    public WebVTTTrack(DataSource dataSource) throws IOException {
        super(dataSource.toString());
        this.samples = new ArrayList();
        WebVTTSampleEntry webVTTSampleEntry = new WebVTTSampleEntry();
        this.sampleEntry = webVTTSampleEntry;
        webVTTSampleEntry.addBox(new WebVTTConfigurationBox());
        this.sampleEntry.addBox(new WebVTTSourceLabelBox());
        ByteBuffer map = dataSource.map(0L, CastUtils.l2i(dataSource.size()));
        byte[] bArr = new byte[CastUtils.l2i(dataSource.size())];
        map.get(bArr);
        this.subs = Utf8.convert(bArr).split("\\r?\\n");
        String str = "";
        int i = 0;
        while (i < this.subs.length) {
            str = String.valueOf(str) + this.subs[i] + IOUtils.LINE_SEPARATOR_UNIX;
            int i2 = i + 1;
            if (this.subs[i2].isEmpty() && this.subs[i + 2].isEmpty()) {
                break;
            } else {
                i = i2;
            }
        }
        while (true) {
            String[] strArr = this.subs;
            if (i >= strArr.length || !strArr[i].isEmpty()) {
                return;
            } else {
                i++;
            }
        }
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public long[] getSampleDurations() {
        return new long[0];
    }
}
