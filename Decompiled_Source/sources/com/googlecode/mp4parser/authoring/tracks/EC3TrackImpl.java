package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.CompositionTimeToSample;
import com.coremedia.iso.boxes.SampleDependencyTypeBox;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.SubSampleInformationBox;
import com.coremedia.iso.boxes.sampleentry.AudioSampleEntry;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import com.googlecode.mp4parser.boxes.EC3SpecificBox;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer;
import com.googlecode.mp4parser.util.CastUtils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes2.dex */
public class EC3TrackImpl extends AbstractTrack {
    private static final long MAX_FRAMES_PER_MMAP = 20;
    private List<BitStreamInfo> bitStreamInfos;
    private int bitrate;
    private final DataSource dataSource;
    private long[] decodingTimes;
    private int frameSize;
    SampleDescriptionBox sampleDescriptionBox;
    private List<Sample> samples;
    TrackMetaData trackMetaData;

    @Override // com.googlecode.mp4parser.authoring.AbstractTrack, com.googlecode.mp4parser.authoring.Track
    public List<CompositionTimeToSample.Entry> getCompositionTimeEntries() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.AbstractTrack, com.googlecode.mp4parser.authoring.Track
    public List<SampleDependencyTypeBox.Entry> getSampleDependencies() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.AbstractTrack, com.googlecode.mp4parser.authoring.Track
    public SubSampleInformationBox getSubsampleInformationBox() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.AbstractTrack, com.googlecode.mp4parser.authoring.Track
    public long[] getSyncSamples() {
        return null;
    }

    public EC3TrackImpl(DataSource dataSource) throws IOException {
        super(dataSource.toString());
        this.trackMetaData = new TrackMetaData();
        this.bitStreamInfos = new LinkedList();
        this.dataSource = dataSource;
        boolean z = false;
        while (!z) {
            BitStreamInfo readVariables = readVariables();
            if (readVariables == null) {
                throw new IOException();
            }
            for (BitStreamInfo bitStreamInfo : this.bitStreamInfos) {
                if (readVariables.strmtyp != 1 && bitStreamInfo.substreamid == readVariables.substreamid) {
                    z = true;
                }
            }
            if (!z) {
                this.bitStreamInfos.add(readVariables);
            }
        }
        if (this.bitStreamInfos.size() == 0) {
            throw new IOException();
        }
        int i = this.bitStreamInfos.get(0).samplerate;
        this.sampleDescriptionBox = new SampleDescriptionBox();
        AudioSampleEntry audioSampleEntry = new AudioSampleEntry(AudioSampleEntry.TYPE9);
        audioSampleEntry.setChannelCount(2);
        long j = i;
        audioSampleEntry.setSampleRate(j);
        audioSampleEntry.setDataReferenceIndex(1);
        audioSampleEntry.setSampleSize(16);
        EC3SpecificBox eC3SpecificBox = new EC3SpecificBox();
        int[] iArr = new int[this.bitStreamInfos.size()];
        int[] iArr2 = new int[this.bitStreamInfos.size()];
        for (BitStreamInfo bitStreamInfo2 : this.bitStreamInfos) {
            if (bitStreamInfo2.strmtyp == 1) {
                int i2 = bitStreamInfo2.substreamid;
                iArr[i2] = iArr[i2] + 1;
                iArr2[bitStreamInfo2.substreamid] = ((bitStreamInfo2.chanmap >> 5) & 255) | ((bitStreamInfo2.chanmap >> 6) & 256);
            }
        }
        for (BitStreamInfo bitStreamInfo3 : this.bitStreamInfos) {
            if (bitStreamInfo3.strmtyp != 1) {
                EC3SpecificBox.Entry entry = new EC3SpecificBox.Entry();
                entry.fscod = bitStreamInfo3.fscod;
                entry.bsid = bitStreamInfo3.bsid;
                entry.bsmod = bitStreamInfo3.bsmod;
                entry.acmod = bitStreamInfo3.acmod;
                entry.lfeon = bitStreamInfo3.lfeon;
                entry.reserved = 0;
                entry.num_dep_sub = iArr[bitStreamInfo3.substreamid];
                entry.chan_loc = iArr2[bitStreamInfo3.substreamid];
                entry.reserved2 = 0;
                eC3SpecificBox.addEntry(entry);
            }
            this.bitrate += bitStreamInfo3.bitrate;
            this.frameSize += bitStreamInfo3.frameSize;
        }
        eC3SpecificBox.setDataRate(this.bitrate / 1000);
        audioSampleEntry.addBox(eC3SpecificBox);
        this.sampleDescriptionBox.addBox(audioSampleEntry);
        this.trackMetaData.setCreationTime(new Date());
        this.trackMetaData.setModificationTime(new Date());
        this.trackMetaData.setTimescale(j);
        this.trackMetaData.setVolume(1.0f);
        dataSource.position(0L);
        List<Sample> readSamples = readSamples();
        this.samples = readSamples;
        long[] jArr = new long[readSamples.size()];
        this.decodingTimes = jArr;
        Arrays.fill(jArr, 1536L);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.dataSource.close();
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public List<Sample> getSamples() {
        return this.samples;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public SampleDescriptionBox getSampleDescriptionBox() {
        return this.sampleDescriptionBox;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public long[] getSampleDurations() {
        return this.decodingTimes;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public TrackMetaData getTrackMetaData() {
        return this.trackMetaData;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public String getHandler() {
        return "soun";
    }

    private BitStreamInfo readVariables() throws IOException {
        int readBits;
        int i;
        long position = this.dataSource.position();
        ByteBuffer allocate = ByteBuffer.allocate(200);
        this.dataSource.read(allocate);
        allocate.rewind();
        BitReaderBuffer bitReaderBuffer = new BitReaderBuffer(allocate);
        if (bitReaderBuffer.readBits(16) != 2935) {
            return null;
        }
        BitStreamInfo bitStreamInfo = new BitStreamInfo();
        bitStreamInfo.strmtyp = bitReaderBuffer.readBits(2);
        bitStreamInfo.substreamid = bitReaderBuffer.readBits(3);
        bitStreamInfo.frameSize = (bitReaderBuffer.readBits(11) + 1) * 2;
        bitStreamInfo.fscod = bitReaderBuffer.readBits(2);
        if (bitStreamInfo.fscod == 3) {
            i = bitReaderBuffer.readBits(2);
            readBits = 3;
        } else {
            readBits = bitReaderBuffer.readBits(2);
            i = -1;
        }
        int i2 = readBits != 0 ? readBits != 1 ? readBits != 2 ? readBits != 3 ? 0 : 6 : 3 : 2 : 1;
        bitStreamInfo.frameSize *= 6 / i2;
        bitStreamInfo.acmod = bitReaderBuffer.readBits(3);
        bitStreamInfo.lfeon = bitReaderBuffer.readBits(1);
        bitStreamInfo.bsid = bitReaderBuffer.readBits(5);
        bitReaderBuffer.readBits(5);
        if (1 == bitReaderBuffer.readBits(1)) {
            bitReaderBuffer.readBits(8);
        }
        if (bitStreamInfo.acmod == 0) {
            bitReaderBuffer.readBits(5);
            if (1 == bitReaderBuffer.readBits(1)) {
                bitReaderBuffer.readBits(8);
            }
        }
        if (1 == bitStreamInfo.strmtyp && 1 == bitReaderBuffer.readBits(1)) {
            bitStreamInfo.chanmap = bitReaderBuffer.readBits(16);
        }
        if (1 == bitReaderBuffer.readBits(1)) {
            if (bitStreamInfo.acmod > 2) {
                bitReaderBuffer.readBits(2);
            }
            if (1 == (bitStreamInfo.acmod & 1) && bitStreamInfo.acmod > 2) {
                bitReaderBuffer.readBits(3);
                bitReaderBuffer.readBits(3);
            }
            if ((bitStreamInfo.acmod & 4) > 0) {
                bitReaderBuffer.readBits(3);
                bitReaderBuffer.readBits(3);
            }
            if (1 == bitStreamInfo.lfeon && 1 == bitReaderBuffer.readBits(1)) {
                bitReaderBuffer.readBits(5);
            }
            if (bitStreamInfo.strmtyp == 0) {
                if (1 == bitReaderBuffer.readBits(1)) {
                    bitReaderBuffer.readBits(6);
                }
                if (bitStreamInfo.acmod == 0 && 1 == bitReaderBuffer.readBits(1)) {
                    bitReaderBuffer.readBits(6);
                }
                if (1 == bitReaderBuffer.readBits(1)) {
                    bitReaderBuffer.readBits(6);
                }
                int readBits2 = bitReaderBuffer.readBits(2);
                if (1 == readBits2) {
                    bitReaderBuffer.readBits(5);
                } else if (2 == readBits2) {
                    bitReaderBuffer.readBits(12);
                } else if (3 == readBits2) {
                    int readBits3 = bitReaderBuffer.readBits(5);
                    if (1 == bitReaderBuffer.readBits(1)) {
                        bitReaderBuffer.readBits(5);
                        if (1 == bitReaderBuffer.readBits(1)) {
                            bitReaderBuffer.readBits(4);
                        }
                        if (1 == bitReaderBuffer.readBits(1)) {
                            bitReaderBuffer.readBits(4);
                        }
                        if (1 == bitReaderBuffer.readBits(1)) {
                            bitReaderBuffer.readBits(4);
                        }
                        if (1 == bitReaderBuffer.readBits(1)) {
                            bitReaderBuffer.readBits(4);
                        }
                        if (1 == bitReaderBuffer.readBits(1)) {
                            bitReaderBuffer.readBits(4);
                        }
                        if (1 == bitReaderBuffer.readBits(1)) {
                            bitReaderBuffer.readBits(4);
                        }
                        if (1 == bitReaderBuffer.readBits(1)) {
                            bitReaderBuffer.readBits(4);
                        }
                        if (1 == bitReaderBuffer.readBits(1)) {
                            if (1 == bitReaderBuffer.readBits(1)) {
                                bitReaderBuffer.readBits(4);
                            }
                            if (1 == bitReaderBuffer.readBits(1)) {
                                bitReaderBuffer.readBits(4);
                            }
                        }
                    }
                    if (1 == bitReaderBuffer.readBits(1)) {
                        bitReaderBuffer.readBits(5);
                        if (1 == bitReaderBuffer.readBits(1)) {
                            bitReaderBuffer.readBits(7);
                            if (1 == bitReaderBuffer.readBits(1)) {
                                bitReaderBuffer.readBits(8);
                            }
                        }
                    }
                    for (int i3 = 0; i3 < readBits3 + 2; i3++) {
                        bitReaderBuffer.readBits(8);
                    }
                    bitReaderBuffer.byteSync();
                }
                if (bitStreamInfo.acmod < 2) {
                    if (1 == bitReaderBuffer.readBits(1)) {
                        bitReaderBuffer.readBits(14);
                    }
                    if (bitStreamInfo.acmod == 0 && 1 == bitReaderBuffer.readBits(1)) {
                        bitReaderBuffer.readBits(14);
                    }
                    if (1 == bitReaderBuffer.readBits(1)) {
                        if (readBits == 0) {
                            bitReaderBuffer.readBits(5);
                        } else {
                            for (int i4 = 0; i4 < i2; i4++) {
                                if (1 == bitReaderBuffer.readBits(1)) {
                                    bitReaderBuffer.readBits(5);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (1 == bitReaderBuffer.readBits(1)) {
            bitStreamInfo.bsmod = bitReaderBuffer.readBits(3);
        }
        int i5 = bitStreamInfo.fscod;
        if (i5 == 0) {
            bitStreamInfo.samplerate = 48000;
        } else if (i5 == 1) {
            bitStreamInfo.samplerate = 44100;
        } else if (i5 == 2) {
            bitStreamInfo.samplerate = 32000;
        } else if (i5 == 3) {
            if (i == 0) {
                bitStreamInfo.samplerate = 24000;
            } else if (i == 1) {
                bitStreamInfo.samplerate = 22050;
            } else if (i == 2) {
                bitStreamInfo.samplerate = 16000;
            } else if (i == 3) {
                bitStreamInfo.samplerate = 0;
            }
        }
        if (bitStreamInfo.samplerate == 0) {
            return null;
        }
        bitStreamInfo.bitrate = (int) ((bitStreamInfo.samplerate / 1536.0d) * bitStreamInfo.frameSize * 8.0d);
        this.dataSource.position(position + bitStreamInfo.frameSize);
        return bitStreamInfo;
    }

    private List<Sample> readSamples() throws IOException {
        int l2i = CastUtils.l2i((this.dataSource.size() - this.dataSource.position()) / this.frameSize);
        ArrayList arrayList = new ArrayList(l2i);
        for (int i = 0; i < l2i; i++) {
            final int i2 = this.frameSize * i;
            arrayList.add(new Sample() { // from class: com.googlecode.mp4parser.authoring.tracks.EC3TrackImpl.1
                @Override // com.googlecode.mp4parser.authoring.Sample
                public void writeTo(WritableByteChannel writableByteChannel) throws IOException {
                    EC3TrackImpl.this.dataSource.transferTo(i2, EC3TrackImpl.this.frameSize, writableByteChannel);
                }

                @Override // com.googlecode.mp4parser.authoring.Sample
                public long getSize() {
                    return EC3TrackImpl.this.frameSize;
                }

                @Override // com.googlecode.mp4parser.authoring.Sample
                public ByteBuffer asByteBuffer() {
                    try {
                        return EC3TrackImpl.this.dataSource.map(i2, EC3TrackImpl.this.frameSize);
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                }
            });
        }
        return arrayList;
    }

    public static class BitStreamInfo extends EC3SpecificBox.Entry {
        public int bitrate;
        public int chanmap;
        public int frameSize;
        public int samplerate;
        public int strmtyp;
        public int substreamid;

        @Override // com.googlecode.mp4parser.boxes.EC3SpecificBox.Entry
        public String toString() {
            return "BitStreamInfo{frameSize=" + this.frameSize + ", substreamid=" + this.substreamid + ", bitrate=" + this.bitrate + ", samplerate=" + this.samplerate + ", strmtyp=" + this.strmtyp + ", chanmap=" + this.chanmap + '}';
        }
    }

    public String toString() {
        return "EC3TrackImpl{bitrate=" + this.bitrate + ", bitStreamInfos=" + this.bitStreamInfos + '}';
    }
}
