package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.CompositionTimeToSample;
import com.coremedia.iso.boxes.SampleDependencyTypeBox;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.sampleentry.AudioSampleEntry;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import com.googlecode.mp4parser.boxes.DTSSpecificBox;
import java.io.EOFException;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.UShort;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes2.dex */
public class DTSTrackImpl extends AbstractTrack {
    private static final int BUFFER = 67108864;
    int bcCoreBitRate;
    int bcCoreChannelMask;
    int bcCoreMaxSampleRate;
    int bitrate;
    int channelCount;
    int channelMask;
    int codecDelayAtMaxFs;
    int coreBitRate;
    int coreChannelMask;
    int coreFramePayloadInBytes;
    int coreMaxSampleRate;
    boolean coreSubStreamPresent;
    private int dataOffset;
    private DataSource dataSource;
    DTSSpecificBox ddts;
    int extAvgBitrate;
    int extFramePayloadInBytes;
    int extPeakBitrate;
    int extSmoothBuffSize;
    boolean extensionSubStreamPresent;
    int frameSize;
    boolean isVBR;
    private String lang;
    int lbrCodingPresent;
    int lsbTrimPercent;
    int maxSampleRate;
    int numExtSubStreams;
    int numFramesTotal;
    int numSamplesOrigAudioAtMaxFs;
    SampleDescriptionBox sampleDescriptionBox;
    private long[] sampleDurations;
    int sampleSize;
    int samplerate;
    private List<Sample> samples;
    int samplesPerFrame;
    int samplesPerFrameAtMaxFs;
    TrackMetaData trackMetaData;
    String type;

    @Override // com.googlecode.mp4parser.authoring.AbstractTrack, com.googlecode.mp4parser.authoring.Track
    public List<CompositionTimeToSample.Entry> getCompositionTimeEntries() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.AbstractTrack, com.googlecode.mp4parser.authoring.Track
    public List<SampleDependencyTypeBox.Entry> getSampleDependencies() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.AbstractTrack, com.googlecode.mp4parser.authoring.Track
    public long[] getSyncSamples() {
        return null;
    }

    public DTSTrackImpl(DataSource dataSource, String str) throws IOException {
        super(dataSource.toString());
        this.trackMetaData = new TrackMetaData();
        this.frameSize = 0;
        this.dataOffset = 0;
        this.ddts = new DTSSpecificBox();
        this.isVBR = false;
        this.coreSubStreamPresent = false;
        this.extensionSubStreamPresent = false;
        this.numExtSubStreams = 0;
        this.coreMaxSampleRate = 0;
        this.coreBitRate = 0;
        this.coreChannelMask = 0;
        this.coreFramePayloadInBytes = 0;
        this.extAvgBitrate = 0;
        this.extPeakBitrate = 0;
        this.extSmoothBuffSize = 0;
        this.extFramePayloadInBytes = 0;
        this.maxSampleRate = 0;
        this.lbrCodingPresent = 0;
        this.numFramesTotal = 0;
        this.samplesPerFrameAtMaxFs = 0;
        this.numSamplesOrigAudioAtMaxFs = 0;
        this.channelMask = 0;
        this.codecDelayAtMaxFs = 0;
        this.bcCoreMaxSampleRate = 0;
        this.bcCoreBitRate = 0;
        this.bcCoreChannelMask = 0;
        this.lsbTrimPercent = 0;
        this.type = "none";
        this.lang = str;
        this.dataSource = dataSource;
        parse();
    }

    public DTSTrackImpl(DataSource dataSource) throws IOException {
        super(dataSource.toString());
        this.trackMetaData = new TrackMetaData();
        this.frameSize = 0;
        this.dataOffset = 0;
        this.ddts = new DTSSpecificBox();
        this.isVBR = false;
        this.coreSubStreamPresent = false;
        this.extensionSubStreamPresent = false;
        this.numExtSubStreams = 0;
        this.coreMaxSampleRate = 0;
        this.coreBitRate = 0;
        this.coreChannelMask = 0;
        this.coreFramePayloadInBytes = 0;
        this.extAvgBitrate = 0;
        this.extPeakBitrate = 0;
        this.extSmoothBuffSize = 0;
        this.extFramePayloadInBytes = 0;
        this.maxSampleRate = 0;
        this.lbrCodingPresent = 0;
        this.numFramesTotal = 0;
        this.samplesPerFrameAtMaxFs = 0;
        this.numSamplesOrigAudioAtMaxFs = 0;
        this.channelMask = 0;
        this.codecDelayAtMaxFs = 0;
        this.bcCoreMaxSampleRate = 0;
        this.bcCoreBitRate = 0;
        this.bcCoreChannelMask = 0;
        this.lsbTrimPercent = 0;
        this.type = "none";
        this.lang = "eng";
        this.dataSource = dataSource;
        parse();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.dataSource.close();
    }

    private void parse() throws IOException {
        if (!readVariables()) {
            throw new IOException();
        }
        this.sampleDescriptionBox = new SampleDescriptionBox();
        AudioSampleEntry audioSampleEntry = new AudioSampleEntry(this.type);
        audioSampleEntry.setChannelCount(this.channelCount);
        audioSampleEntry.setSampleRate(this.samplerate);
        audioSampleEntry.setDataReferenceIndex(1);
        audioSampleEntry.setSampleSize(16);
        audioSampleEntry.addBox(this.ddts);
        this.sampleDescriptionBox.addBox(audioSampleEntry);
        this.trackMetaData.setCreationTime(new Date());
        this.trackMetaData.setModificationTime(new Date());
        this.trackMetaData.setLanguage(this.lang);
        this.trackMetaData.setTimescale(this.samplerate);
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
        return this.sampleDurations;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public TrackMetaData getTrackMetaData() {
        return this.trackMetaData;
    }

    @Override // com.googlecode.mp4parser.authoring.Track
    public String getHandler() {
        return "soun";
    }

    private void parseDtshdhdr(int i, ByteBuffer byteBuffer) {
        byteBuffer.getInt();
        byteBuffer.get();
        byteBuffer.getInt();
        byteBuffer.get();
        short s = byteBuffer.getShort();
        byteBuffer.get();
        byte b = byteBuffer.get();
        this.numExtSubStreams = b;
        if ((s & 1) == 1) {
            this.isVBR = true;
        }
        if ((s & 8) == 8) {
            this.coreSubStreamPresent = true;
        }
        if ((s & 16) == 16) {
            this.extensionSubStreamPresent = true;
            this.numExtSubStreams = b + 1;
        } else {
            this.numExtSubStreams = 0;
        }
        for (int i2 = 14; i2 < i; i2++) {
            byteBuffer.get();
        }
    }

    private boolean parseCoressmd(int i, ByteBuffer byteBuffer) {
        this.coreMaxSampleRate = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
        this.coreBitRate = byteBuffer.getShort();
        this.coreChannelMask = byteBuffer.getShort();
        this.coreFramePayloadInBytes = byteBuffer.getInt();
        for (int i2 = 11; i2 < i; i2++) {
            byteBuffer.get();
        }
        return true;
    }

    private boolean parseAuprhdr(int i, ByteBuffer byteBuffer) {
        int i2;
        byteBuffer.get();
        short s = byteBuffer.getShort();
        this.maxSampleRate = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
        this.numFramesTotal = byteBuffer.getInt();
        this.samplesPerFrameAtMaxFs = byteBuffer.getShort();
        this.numSamplesOrigAudioAtMaxFs = (byteBuffer.get() << 32) | (byteBuffer.getInt() & 65535);
        this.channelMask = byteBuffer.getShort();
        this.codecDelayAtMaxFs = byteBuffer.getShort();
        if ((s & 3) == 3) {
            this.bcCoreMaxSampleRate = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
            this.bcCoreBitRate = byteBuffer.getShort();
            this.bcCoreChannelMask = byteBuffer.getShort();
            i2 = 28;
        } else {
            i2 = 21;
        }
        if ((s & 4) > 0) {
            this.lsbTrimPercent = byteBuffer.get();
            i2++;
        }
        if ((s & 8) > 0) {
            this.lbrCodingPresent = 1;
        }
        while (i2 < i) {
            byteBuffer.get();
            i2++;
        }
        return true;
    }

    private boolean parseExtssmd(int i, ByteBuffer byteBuffer) {
        int i2;
        this.extAvgBitrate = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
        if (this.isVBR) {
            this.extPeakBitrate = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
            this.extSmoothBuffSize = byteBuffer.getShort();
            i2 = 8;
        } else {
            this.extFramePayloadInBytes = byteBuffer.getInt();
            i2 = 7;
        }
        while (i2 < i) {
            byteBuffer.get();
            i2++;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x037d, code lost:
    
        if (r5 == 7) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x037f, code lost:
    
        r1.readBits(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x038d, code lost:
    
        r0.position((r18 + r2) + 1);
        r17 = r20;
        r18 = r21;
        r2 = r22;
        r3 = r23;
        r1 = -1;
        r5 = 1;
        r12 = r8;
        r8 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0384, code lost:
    
        r1.readBits(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0389, code lost:
    
        r1.readBits(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0369, code lost:
    
        r26.sampleSize = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x036e, code lost:
    
        r26.sampleSize = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
    
        r3 = r0.getLong();
        r26.dataOffset = r0.position();
        r1 = -1;
        r2 = false;
        r5 = -1;
        r8 = -1;
        r9 = 65535;
        r10 = false;
        r11 = false;
        r12 = 0;
        r13 = false;
        r14 = false;
        r15 = false;
        r16 = 0;
        r17 = false;
        r18 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0319, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x03a5, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02bc, code lost:
    
        r17 = r20;
        r18 = r21;
        r1 = -1;
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x004e, code lost:
    
        r0 = r26.samplesPerFrame;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0054, code lost:
    
        if (r0 == 512) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0058, code lost:
    
        if (r0 == 1024) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x005c, code lost:
    
        if (r0 == 2048) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x005e, code lost:
    
        if (r0 == 4096) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0060, code lost:
    
        r0 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0069, code lost:
    
        if (r0 != r1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004c, code lost:
    
        if (r2 == false) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x006b, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x006d, code lost:
    
        if (r8 == 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0070, code lost:
    
        if (r8 == 2) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0072, code lost:
    
        switch(r8) {
            case 4: goto L35;
            case 5: goto L35;
            case 6: goto L35;
            case 7: goto L35;
            case 8: goto L35;
            case 9: goto L35;
            default: goto L34;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0075, code lost:
    
        r8 = 31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0079, code lost:
    
        if (r5 != 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x007d, code lost:
    
        if (r10 != true) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x02a5, code lost:
    
        r20 = r17;
        r21 = r18;
        r18 = r0.position();
        r1 = r0.getInt();
        r22 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x007f, code lost:
    
        if (r14 != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0081, code lost:
    
        r26.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE11;
        r1 = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x00ae, code lost:
    
        r26.samplerate = r26.maxSampleRate;
        r26.sampleSize = 24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01b9, code lost:
    
        r26.ddts.setDTSSamplingFrequency(r26.maxSampleRate);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01c3, code lost:
    
        if (r26.isVBR == false) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x01c5, code lost:
    
        r26.ddts.setMaxBitRate((r26.coreBitRate + r26.extPeakBitrate) * 1000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x01e0, code lost:
    
        r26.ddts.setAvgBitRate((r26.coreBitRate + r26.extAvgBitrate) * 1000);
        r26.ddts.setPcmSampleDepth(r26.sampleSize);
        r26.ddts.setFrameDuration(r0);
        r26.ddts.setStreamConstruction(r1);
        r0 = r26.coreChannelMask;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0202, code lost:
    
        if ((r0 & 8) > 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0205, code lost:
    
        if ((r0 & 4096) <= 0) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x02b8, code lost:
    
        if (r1 != 2147385345) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0208, code lost:
    
        r26.ddts.setCoreLFEPresent(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0214, code lost:
    
        r26.ddts.setCoreLayout(r8);
        r26.ddts.setCoreSize(r26.coreFramePayloadInBytes);
        r26.ddts.setStereoDownmix(0);
        r26.ddts.setRepresentationType(4);
        r26.ddts.setChannelLayout(r26.channelMask);
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0235, code lost:
    
        if (r26.coreMaxSampleRate <= 0) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0239, code lost:
    
        if (r26.extAvgBitrate <= 0) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x023b, code lost:
    
        r26.ddts.setMultiAssetFlag(1);
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0248, code lost:
    
        r26.ddts.setLBRDurationMod(r26.lbrCodingPresent);
        r26.ddts.setReservedBoxPresent(r1);
        r26.channelCount = r1;
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0259, code lost:
    
        if (r0 < 16) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x027a, code lost:
    
        if (((r26.channelMask >> r0) & 1) != 1) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x027e, code lost:
    
        if (r0 == 0) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0280, code lost:
    
        if (r0 == 12) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0284, code lost:
    
        if (r0 == 14) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0287, code lost:
    
        if (r0 == 3) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x028a, code lost:
    
        if (r0 == 4) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x03a7, code lost:
    
        r23 = r3;
        r3 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x028d, code lost:
    
        if (r0 == 7) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0291, code lost:
    
        if (r0 == 8) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0293, code lost:
    
        r26.channelCount += 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x02a2, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x029a, code lost:
    
        r26.channelCount++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x03b0, code lost:
    
        if (r1 != 1683496997) goto L356;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x025b, code lost:
    
        r0 = generateSamples(r26.dataSource, r26.dataOffset, r3, r5);
        r26.samples = r0;
        r0 = new long[r0.size()];
        r26.sampleDurations = r0;
        java.util.Arrays.fill(r0, r26.samplesPerFrame);
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0275, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0242, code lost:
    
        r1 = 0;
        r26.ddts.setMultiAssetFlag(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x020f, code lost:
    
        r26.ddts.setCoreLFEPresent(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x01d3, code lost:
    
        r26.ddts.setMaxBitRate((r26.coreBitRate + r26.extAvgBitrate) * 1000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0088, code lost:
    
        r26.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x008a, code lost:
    
        r1 = 21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x008d, code lost:
    
        if (r13 != true) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x008f, code lost:
    
        r26.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE13;
        r1 = 18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0096, code lost:
    
        if (r14 != true) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x0098, code lost:
    
        r26.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x009a, code lost:
    
        if (r15 != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x009c, code lost:
    
        if (r10 != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x009e, code lost:
    
        r1 = 19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x00a1, code lost:
    
        if (r15 != true) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x00a3, code lost:
    
        if (r10 != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x00a5, code lost:
    
        r1 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x00a8, code lost:
    
        if (r15 != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x03b3, code lost:
    
        if (r5 != (-1)) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x00aa, code lost:
    
        if (r10 != true) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x00ad, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x00b8, code lost:
    
        if (r9 >= 1) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x00bc, code lost:
    
        if (r12 <= 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x00be, code lost:
    
        r9 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x00c0, code lost:
    
        if (r9 == 0) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x00c3, code lost:
    
        if (r9 == 2) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x03b5, code lost:
    
        r26.samplesPerFrame = r26.samplesPerFrameAtMaxFs;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x00c6, code lost:
    
        if (r9 == 6) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x00c8, code lost:
    
        r26.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x00ca, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x00cd, code lost:
    
        r26.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE12;
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x00d2, code lost:
    
        r26.type = "dtsc";
        r1 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x00d7, code lost:
    
        r26.type = "dtsc";
        r1 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x00dc, code lost:
    
        r26.type = "dtsc";
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x00e1, code lost:
    
        r9 = r16;
        r26.type = com.coremedia.iso.boxes.sampleentry.AudioSampleEntry.TYPE12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x00e5, code lost:
    
        if (r12 != 0) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x00e7, code lost:
    
        if (r14 != false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x03ba, code lost:
    
        r2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer(r0);
        r7 = 8;
        r2.readBits(8);
        r2.readBits(2);
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x00e9, code lost:
    
        if (r15 != true) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x00eb, code lost:
    
        r1 = r17;
        r2 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x00ef, code lost:
    
        if (r1 != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x00f1, code lost:
    
        if (r2 != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x00f3, code lost:
    
        if (r10 != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x00f5, code lost:
    
        if (r13 != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x00f7, code lost:
    
        r1 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x00fe, code lost:
    
        if (r14 != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0100, code lost:
    
        if (r15 != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0102, code lost:
    
        if (r1 != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x03cd, code lost:
    
        if (r2.readBits(1) != 0) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0104, code lost:
    
        if (r2 != true) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0106, code lost:
    
        if (r10 != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0108, code lost:
    
        if (r13 != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x010a, code lost:
    
        r1 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x010d, code lost:
    
        if (r14 != false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x010f, code lost:
    
        if (r15 != true) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0111, code lost:
    
        if (r1 != false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0113, code lost:
    
        if (r2 != true) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0115, code lost:
    
        if (r10 != false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0117, code lost:
    
        if (r13 != false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x03cf, code lost:
    
        r3 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0119, code lost:
    
        r1 = 9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x011d, code lost:
    
        if (r14 != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x011f, code lost:
    
        if (r15 != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0121, code lost:
    
        if (r1 != true) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0123, code lost:
    
        if (r2 != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x0125, code lost:
    
        if (r10 != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0127, code lost:
    
        if (r13 != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x0129, code lost:
    
        r1 = 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x012d, code lost:
    
        if (r14 != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x012f, code lost:
    
        if (r15 != true) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x03d4, code lost:
    
        r4 = r2.readBits(r7) + 1;
        r2 = r2.readBits(r3) + 1;
        r0.position(r18 + r4);
        r3 = r0.getInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x0131, code lost:
    
        if (r1 != true) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x0133, code lost:
    
        if (r2 != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x0135, code lost:
    
        if (r10 != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0137, code lost:
    
        if (r13 != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0139, code lost:
    
        r1 = 13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x013d, code lost:
    
        if (r14 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x013f, code lost:
    
        if (r15 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0141, code lost:
    
        if (r1 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0143, code lost:
    
        if (r2 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x0145, code lost:
    
        if (r10 != true) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x03ea, code lost:
    
        if (r3 != 1515870810) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0147, code lost:
    
        if (r13 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x0149, code lost:
    
        r1 = 14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x00fa, code lost:
    
        r1 = r17;
        r2 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x014d, code lost:
    
        r1 = r17;
        r2 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x0151, code lost:
    
        if (r9 != 0) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0153, code lost:
    
        if (r14 != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0155, code lost:
    
        if (r15 != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0157, code lost:
    
        if (r1 != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x0159, code lost:
    
        if (r2 != true) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x015b, code lost:
    
        if (r10 != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x03ec, code lost:
    
        if (r11 != true) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x015d, code lost:
    
        if (r13 != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x015f, code lost:
    
        r1 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0163, code lost:
    
        if (r9 != 6) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0165, code lost:
    
        if (r14 != false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0167, code lost:
    
        if (r15 != false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0169, code lost:
    
        if (r1 != false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x016b, code lost:
    
        if (r2 != true) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x016d, code lost:
    
        if (r10 != false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x016f, code lost:
    
        if (r13 != false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x03ee, code lost:
    
        r22 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0171, code lost:
    
        r1 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0174, code lost:
    
        if (r9 != 0) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0176, code lost:
    
        if (r14 != false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x0178, code lost:
    
        if (r15 != false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x017a, code lost:
    
        if (r1 != true) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x017c, code lost:
    
        if (r2 != false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x017e, code lost:
    
        if (r10 != false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0180, code lost:
    
        if (r13 != false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0182, code lost:
    
        r1 = 11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x03f0, code lost:
    
        r17 = r20;
        r4 = r21;
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0186, code lost:
    
        if (r9 != 6) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x0188, code lost:
    
        if (r14 != false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x018a, code lost:
    
        if (r15 != false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x018c, code lost:
    
        if (r1 != true) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x018e, code lost:
    
        if (r2 != false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x0190, code lost:
    
        if (r10 != false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0192, code lost:
    
        if (r13 != false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x0194, code lost:
    
        r1 = 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0197, code lost:
    
        if (r9 != 0) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x0199, code lost:
    
        if (r14 != false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0452, code lost:
    
        if (r22 != false) goto L303;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x019b, code lost:
    
        if (r15 != false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x019d, code lost:
    
        if (r1 != false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x019f, code lost:
    
        if (r2 != false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x01a1, code lost:
    
        if (r10 != true) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x01a3, code lost:
    
        if (r13 != false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x01a5, code lost:
    
        r1 = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x01a9, code lost:
    
        if (r9 != 2) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x01ab, code lost:
    
        if (r14 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x01ad, code lost:
    
        if (r15 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0454, code lost:
    
        r26.frameSize += r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x01af, code lost:
    
        if (r1 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x01b1, code lost:
    
        if (r2 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x01b3, code lost:
    
        if (r10 != true) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x01b5, code lost:
    
        if (r13 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x01b7, code lost:
    
        r1 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x0062, code lost:
    
        r0 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0064, code lost:
    
        r0 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x0066, code lost:
    
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x0068, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0459, code lost:
    
        r0.position(r18 + r2);
        r18 = r4;
        r2 = r22;
        r3 = r23;
        r1 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x03fa, code lost:
    
        if (r3 != 1191201283) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x03fc, code lost:
    
        if (r15 != true) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x03fe, code lost:
    
        r22 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0400, code lost:
    
        r17 = r20;
        r4 = r21;
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0409, code lost:
    
        if (r3 != 496366178) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x040d, code lost:
    
        if (r20 != true) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x040f, code lost:
    
        r22 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0411, code lost:
    
        r4 = r21;
        r17 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x041b, code lost:
    
        if (r3 != 1700671838) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x041f, code lost:
    
        if (r21 != true) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0421, code lost:
    
        r22 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0423, code lost:
    
        r17 = r20;
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0427, code lost:
    
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x042c, code lost:
    
        if (r3 != 176167201) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x042e, code lost:
    
        if (r13 != true) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0430, code lost:
    
        r22 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0432, code lost:
    
        r17 = r20;
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0439, code lost:
    
        if (r3 != 1101174087) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x043b, code lost:
    
        if (r10 != true) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x043d, code lost:
    
        r22 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x043f, code lost:
    
        r17 = r20;
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0446, code lost:
    
        if (r3 != 45126241) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0448, code lost:
    
        if (r14 != true) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x044a, code lost:
    
        r22 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x044c, code lost:
    
        r17 = r20;
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0450, code lost:
    
        r17 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x03d2, code lost:
    
        r7 = 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x047e, code lost:
    
        throw new java.io.IOException("No DTS_SYNCWORD_* found at " + r0.position());
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x02ba, code lost:
    
        if (r5 != 1) goto L348;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02c4, code lost:
    
        r1 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BitReaderBuffer(r0);
        r2 = r1.readBits(1);
        r8 = r1.readBits(5);
        r5 = r1.readBits(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x02d6, code lost:
    
        if (r2 != 1) goto L350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x02da, code lost:
    
        if (r8 != 31) goto L352;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x02dc, code lost:
    
        if (r5 == 0) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02e0, code lost:
    
        r26.samplesPerFrame = (r1.readBits(7) + 1) * 32;
        r2 = r1.readBits(14);
        r26.frameSize += r2 + 1;
        r12 = r1.readBits(6);
        r26.samplerate = getSampleRate(r1.readBits(4));
        r26.bitrate = getBitRate(r1.readBits(5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0317, code lost:
    
        if (r1.readBits(1) == 0) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x031b, code lost:
    
        r1.readBits(1);
        r1.readBits(1);
        r1.readBits(1);
        r1.readBits(1);
        r16 = r1.readBits(3);
        r8 = r1.readBits(1);
        r1.readBits(1);
        r23 = r3;
        r1.readBits(2);
        r1.readBits(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x033c, code lost:
    
        if (r5 != 1) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x033e, code lost:
    
        r1.readBits(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0343, code lost:
    
        r1.readBits(1);
        r5 = r1.readBits(4);
        r1.readBits(2);
        r3 = r1.readBits(3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0353, code lost:
    
        if (r3 == 0) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0355, code lost:
    
        if (r3 == 1) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0358, code lost:
    
        if (r3 == 2) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x035a, code lost:
    
        if (r3 == 3) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x035d, code lost:
    
        if (r3 == 5) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0360, code lost:
    
        if (r3 == 6) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0362, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0364, code lost:
    
        r26.sampleSize = 24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0372, code lost:
    
        r1.readBits(1);
        r1.readBits(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x037a, code lost:
    
        if (r5 == 6) goto L250;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean readVariables() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.authoring.tracks.DTSTrackImpl.readVariables():boolean");
    }

    private List<Sample> generateSamples(DataSource dataSource, int i, long j, int i2) throws IOException {
        LookAhead lookAhead = new LookAhead(dataSource, i, j, i2);
        ArrayList arrayList = new ArrayList();
        while (true) {
            final ByteBuffer findNextStart = lookAhead.findNextStart();
            if (findNextStart != null) {
                arrayList.add(new Sample() { // from class: com.googlecode.mp4parser.authoring.tracks.DTSTrackImpl.1
                    @Override // com.googlecode.mp4parser.authoring.Sample
                    public void writeTo(WritableByteChannel writableByteChannel) throws IOException {
                        writableByteChannel.write((ByteBuffer) findNextStart.rewind());
                    }

                    @Override // com.googlecode.mp4parser.authoring.Sample
                    public long getSize() {
                        return findNextStart.rewind().remaining();
                    }

                    @Override // com.googlecode.mp4parser.authoring.Sample
                    public ByteBuffer asByteBuffer() {
                        return findNextStart;
                    }
                });
            } else {
                System.err.println("all samples found");
                return arrayList;
            }
        }
    }

    private int getBitRate(int i) throws IOException {
        switch (i) {
            case 0:
                return 32;
            case 1:
                return 56;
            case 2:
                return 64;
            case 3:
                return 96;
            case 4:
                return 112;
            case 5:
                return 128;
            case 6:
                return 192;
            case 7:
                return 224;
            case 8:
                return 256;
            case 9:
                return 320;
            case 10:
                return 384;
            case 11:
                return 448;
            case 12:
                return 512;
            case 13:
                return 576;
            case 14:
                return 640;
            case 15:
                return 768;
            case 16:
                return 960;
            case 17:
                return 1024;
            case 18:
                return 1152;
            case 19:
                return 1280;
            case 20:
                return 1344;
            case 21:
                return 1408;
            case 22:
                return 1411;
            case 23:
                return 1472;
            case 24:
                return 1536;
            case 25:
                return -1;
            default:
                throw new IOException("Unknown bitrate value");
        }
    }

    private int getSampleRate(int i) throws IOException {
        switch (i) {
            case 1:
                return 8000;
            case 2:
                return 16000;
            case 3:
                return 32000;
            case 4:
            case 5:
            case 9:
            case 10:
            default:
                throw new IOException("Unknown Sample Rate");
            case 6:
                return 11025;
            case 7:
                return 22050;
            case 8:
                return 44100;
            case 11:
                return 12000;
            case 12:
                return 24000;
            case 13:
                return 48000;
        }
    }

    class LookAhead {
        ByteBuffer buffer;
        long bufferStartPos;
        private final int corePresent;
        long dataEnd;
        DataSource dataSource;
        int inBufferPos = 0;
        long start;

        LookAhead(DataSource dataSource, long j, long j2, int i) throws IOException {
            this.dataSource = dataSource;
            this.bufferStartPos = j;
            this.dataEnd = j2 + j;
            this.corePresent = i;
            fillBuffer();
        }

        public ByteBuffer findNextStart() throws IOException {
            while (true) {
                try {
                    if (this.corePresent == 1) {
                        if (nextFourEquals0x7FFE8001()) {
                            break;
                        }
                        discardByte();
                    } else {
                        if (nextFourEquals0x64582025()) {
                            break;
                        }
                        discardByte();
                    }
                } catch (EOFException unused) {
                    return null;
                }
                return null;
            }
            discardNext4AndMarkStart();
            while (true) {
                if (this.corePresent == 1) {
                    if (nextFourEquals0x7FFE8001orEof()) {
                        break;
                    }
                    discardQWord();
                } else {
                    if (nextFourEquals0x64582025orEof()) {
                        break;
                    }
                    discardQWord();
                }
                return null;
            }
            return getSample();
        }

        private void fillBuffer() throws IOException {
            System.err.println("Fill Buffer");
            DataSource dataSource = this.dataSource;
            long j = this.bufferStartPos;
            this.buffer = dataSource.map(j, Math.min(this.dataEnd - j, 67108864L));
        }

        private boolean nextFourEquals0x64582025() throws IOException {
            return nextFourEquals((byte) 100, (byte) 88, (byte) 32, (byte) 37);
        }

        private boolean nextFourEquals0x7FFE8001() throws IOException {
            return nextFourEquals(ByteCompanionObject.MAX_VALUE, (byte) -2, ByteCompanionObject.MIN_VALUE, (byte) 1);
        }

        private boolean nextFourEquals(byte b, byte b2, byte b3, byte b4) throws IOException {
            int limit = this.buffer.limit();
            int i = this.inBufferPos;
            if (limit - i >= 4) {
                return this.buffer.get(i) == b && this.buffer.get(this.inBufferPos + 1) == b2 && this.buffer.get(this.inBufferPos + 2) == b3 && this.buffer.get(this.inBufferPos + 3) == b4;
            }
            if (this.bufferStartPos + i + 4 < this.dataSource.size()) {
                return false;
            }
            throw new EOFException();
        }

        private boolean nextFourEquals0x64582025orEof() throws IOException {
            return nextFourEqualsOrEof((byte) 100, (byte) 88, (byte) 32, (byte) 37);
        }

        private boolean nextFourEquals0x7FFE8001orEof() throws IOException {
            return nextFourEqualsOrEof(ByteCompanionObject.MAX_VALUE, (byte) -2, ByteCompanionObject.MIN_VALUE, (byte) 1);
        }

        private boolean nextFourEqualsOrEof(byte b, byte b2, byte b3, byte b4) throws IOException {
            int limit = this.buffer.limit();
            int i = this.inBufferPos;
            if (limit - i >= 4) {
                if ((this.bufferStartPos + i) % 1048576 == 0) {
                    PrintStream printStream = System.err;
                    StringBuilder sb = new StringBuilder();
                    sb.append(((this.bufferStartPos + this.inBufferPos) / 1024) / 1024);
                    printStream.println(sb.toString());
                }
                return this.buffer.get(this.inBufferPos) == b && this.buffer.get(this.inBufferPos + 1) == b2 && this.buffer.get(this.inBufferPos + 2) == b3 && this.buffer.get(this.inBufferPos + 3) == b4;
            }
            long j = this.bufferStartPos;
            long j2 = i + j + 4;
            long j3 = this.dataEnd;
            if (j2 > j3) {
                return j + ((long) i) == j3;
            }
            this.bufferStartPos = this.start;
            this.inBufferPos = 0;
            fillBuffer();
            return nextFourEquals0x7FFE8001();
        }

        private void discardByte() {
            this.inBufferPos++;
        }

        private void discardQWord() {
            this.inBufferPos += 4;
        }

        private void discardNext4AndMarkStart() {
            long j = this.bufferStartPos;
            int i = this.inBufferPos;
            this.start = j + i;
            this.inBufferPos = i + 4;
        }

        private ByteBuffer getSample() {
            long j = this.start;
            long j2 = this.bufferStartPos;
            if (j >= j2) {
                this.buffer.position((int) (j - j2));
                ByteBuffer slice = this.buffer.slice();
                slice.limit((int) (this.inBufferPos - (this.start - this.bufferStartPos)));
                return slice;
            }
            throw new RuntimeException("damn! NAL exceeds buffer");
        }
    }
}
