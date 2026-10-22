package com.googlecode.mp4parser.authoring.samples;

import com.coremedia.iso.boxes.Container;
import com.coremedia.iso.boxes.MovieBox;
import com.coremedia.iso.boxes.SampleSizeBox;
import com.coremedia.iso.boxes.SampleToChunkBox;
import com.coremedia.iso.boxes.TrackBox;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.util.CastUtils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class DefaultMp4SampleList extends AbstractList<Sample> {
    private static final long MAX_MAP_SIZE = 268435456;
    ByteBuffer[][] cache;
    int[] chunkNumsStartSampleNum;
    long[] chunkOffsets;
    long[] chunkSizes;
    int lastChunk = 0;
    long[][] sampleOffsetsWithinChunks;
    SampleSizeBox ssb;
    Container topLevel;
    TrackBox trackBox;

    public DefaultMp4SampleList(long j, Container container) {
        int i;
        this.trackBox = null;
        this.cache = null;
        int i2 = 0;
        this.topLevel = container;
        for (TrackBox trackBox : ((MovieBox) container.getBoxes(MovieBox.class).get(0)).getBoxes(TrackBox.class)) {
            if (trackBox.getTrackHeaderBox().getTrackId() == j) {
                this.trackBox = trackBox;
            }
        }
        TrackBox trackBox2 = this.trackBox;
        if (trackBox2 == null) {
            throw new RuntimeException("This MP4 does not contain track " + j);
        }
        long[] chunkOffsets = trackBox2.getSampleTableBox().getChunkOffsetBox().getChunkOffsets();
        this.chunkOffsets = chunkOffsets;
        this.chunkSizes = new long[chunkOffsets.length];
        this.cache = new ByteBuffer[chunkOffsets.length][];
        this.sampleOffsetsWithinChunks = new long[chunkOffsets.length][];
        this.ssb = this.trackBox.getSampleTableBox().getSampleSizeBox();
        List<SampleToChunkBox.Entry> entries = this.trackBox.getSampleTableBox().getSampleToChunkBox().getEntries();
        SampleToChunkBox.Entry[] entryArr = (SampleToChunkBox.Entry[]) entries.toArray(new SampleToChunkBox.Entry[entries.size()]);
        SampleToChunkBox.Entry entry = entryArr[0];
        long firstChunk = entry.getFirstChunk();
        int l2i = CastUtils.l2i(entry.getSamplesPerChunk());
        int size = size();
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        int i6 = 1;
        while (true) {
            int i7 = i3 + 1;
            if (i7 == firstChunk) {
                if (entryArr.length > i4) {
                    SampleToChunkBox.Entry entry2 = entryArr[i4];
                    i5 = l2i;
                    l2i = CastUtils.l2i(entry2.getSamplesPerChunk());
                    i4++;
                    firstChunk = entry2.getFirstChunk();
                } else {
                    i5 = l2i;
                    firstChunk = Long.MAX_VALUE;
                    l2i = -1;
                }
            }
            this.sampleOffsetsWithinChunks[i3] = new long[i5];
            i6 += i5;
            if (i6 > size) {
                break;
            } else {
                i3 = i7;
            }
        }
        this.chunkNumsStartSampleNum = new int[i3 + 2];
        SampleToChunkBox.Entry entry3 = entryArr[0];
        long firstChunk2 = entry3.getFirstChunk();
        int l2i2 = CastUtils.l2i(entry3.getSamplesPerChunk());
        int i8 = 0;
        int i9 = 1;
        int i10 = 1;
        int i11 = 0;
        while (true) {
            i = i8 + 1;
            this.chunkNumsStartSampleNum[i8] = i9;
            int i12 = i9;
            if (i == firstChunk2) {
                if (entryArr.length > i10) {
                    SampleToChunkBox.Entry entry4 = entryArr[i10];
                    i11 = l2i2;
                    i10++;
                    l2i2 = CastUtils.l2i(entry4.getSamplesPerChunk());
                    firstChunk2 = entry4.getFirstChunk();
                } else {
                    i11 = l2i2;
                    firstChunk2 = Long.MAX_VALUE;
                    l2i2 = -1;
                }
            }
            i9 = i12 + i11;
            if (i9 > size) {
                break;
            } else {
                i8 = i;
            }
        }
        this.chunkNumsStartSampleNum[i] = Integer.MAX_VALUE;
        long j2 = 0;
        for (int i13 = 1; i13 <= this.ssb.getSampleCount(); i13++) {
            while (i13 == this.chunkNumsStartSampleNum[i2]) {
                i2++;
                j2 = 0;
            }
            long[] jArr = this.chunkSizes;
            int i14 = i2 - 1;
            int i15 = i13 - 1;
            jArr[i14] = jArr[i14] + this.ssb.getSampleSizeAtIndex(i15);
            this.sampleOffsetsWithinChunks[i14][i13 - this.chunkNumsStartSampleNum[i14]] = j2;
            j2 += this.ssb.getSampleSizeAtIndex(i15);
        }
    }

    synchronized int getChunkForSample(int i) {
        int i2 = i + 1;
        int[] iArr = this.chunkNumsStartSampleNum;
        int i3 = this.lastChunk;
        int i4 = iArr[i3];
        if (i2 >= i4 && i2 < iArr[i3 + 1]) {
            return i3;
        }
        if (i2 < i4) {
            this.lastChunk = 0;
            while (true) {
                int[] iArr2 = this.chunkNumsStartSampleNum;
                int i5 = this.lastChunk;
                if (iArr2[i5 + 1] > i2) {
                    return i5;
                }
                this.lastChunk = i5 + 1;
            }
        } else {
            this.lastChunk = i3 + 1;
            while (true) {
                int[] iArr3 = this.chunkNumsStartSampleNum;
                int i6 = this.lastChunk;
                if (iArr3[i6 + 1] > i2) {
                    return i6;
                }
                this.lastChunk = i6 + 1;
            }
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public Sample get(int i) {
        final ByteBuffer byteBuffer;
        long j;
        if (i >= this.ssb.getSampleCount()) {
            throw new IndexOutOfBoundsException();
        }
        int chunkForSample = getChunkForSample(i);
        int i2 = this.chunkNumsStartSampleNum[chunkForSample] - 1;
        long j2 = chunkForSample;
        long j3 = this.chunkOffsets[CastUtils.l2i(j2)];
        long[] jArr = this.sampleOffsetsWithinChunks[CastUtils.l2i(j2)];
        long j4 = jArr[i - i2];
        ByteBuffer[] byteBufferArr = this.cache[CastUtils.l2i(j2)];
        if (byteBufferArr == null) {
            ArrayList arrayList = new ArrayList();
            long j5 = 0;
            int i3 = 0;
            while (i3 < jArr.length) {
                try {
                    long j6 = j2;
                    if ((jArr[i3] + this.ssb.getSampleSizeAtIndex(i3 + i2)) - j5 > MAX_MAP_SIZE) {
                        j = j4;
                        arrayList.add(this.topLevel.getByteBuffer(j3 + j5, jArr[i3] - j5));
                        j5 = jArr[i3];
                    } else {
                        j = j4;
                    }
                    i3++;
                    j4 = j;
                    j2 = j6;
                } catch (IOException e) {
                    throw new IndexOutOfBoundsException(e.getMessage());
                }
            }
            arrayList.add(this.topLevel.getByteBuffer(j3 + j5, (-j5) + jArr[jArr.length - 1] + this.ssb.getSampleSizeAtIndex((i2 + jArr.length) - 1)));
            byteBufferArr = (ByteBuffer[]) arrayList.toArray(new ByteBuffer[arrayList.size()]);
            this.cache[CastUtils.l2i(j2)] = byteBufferArr;
        }
        int length = byteBufferArr.length;
        final long j7 = j4;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                byteBuffer = null;
                break;
            }
            ByteBuffer byteBuffer2 = byteBufferArr[i4];
            if (j7 < byteBuffer2.limit()) {
                byteBuffer = byteBuffer2;
                break;
            }
            j7 -= byteBuffer2.limit();
            i4++;
        }
        final long sampleSizeAtIndex = this.ssb.getSampleSizeAtIndex(i);
        return new Sample() { // from class: com.googlecode.mp4parser.authoring.samples.DefaultMp4SampleList.1
            @Override // com.googlecode.mp4parser.authoring.Sample
            public void writeTo(WritableByteChannel writableByteChannel) throws IOException {
                writableByteChannel.write(asByteBuffer());
            }

            @Override // com.googlecode.mp4parser.authoring.Sample
            public long getSize() {
                return sampleSizeAtIndex;
            }

            @Override // com.googlecode.mp4parser.authoring.Sample
            public ByteBuffer asByteBuffer() {
                return (ByteBuffer) ((ByteBuffer) byteBuffer.position(CastUtils.l2i(j7))).slice().limit(CastUtils.l2i(sampleSizeAtIndex));
            }

            public String toString() {
                return "DefaultMp4Sample(size:" + sampleSizeAtIndex + ")";
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return CastUtils.l2i(this.trackBox.getSampleTableBox().getSampleSizeBox().getSampleCount());
    }
}
