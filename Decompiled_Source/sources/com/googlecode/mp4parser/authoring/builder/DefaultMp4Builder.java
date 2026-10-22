package com.googlecode.mp4parser.authoring.builder;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.CompositionTimeToSample;
import com.coremedia.iso.boxes.Container;
import com.coremedia.iso.boxes.DataEntryUrlBox;
import com.coremedia.iso.boxes.DataInformationBox;
import com.coremedia.iso.boxes.DataReferenceBox;
import com.coremedia.iso.boxes.EditBox;
import com.coremedia.iso.boxes.EditListBox;
import com.coremedia.iso.boxes.FileTypeBox;
import com.coremedia.iso.boxes.HandlerBox;
import com.coremedia.iso.boxes.HintMediaHeaderBox;
import com.coremedia.iso.boxes.MediaBox;
import com.coremedia.iso.boxes.MediaHeaderBox;
import com.coremedia.iso.boxes.MediaInformationBox;
import com.coremedia.iso.boxes.MovieBox;
import com.coremedia.iso.boxes.MovieHeaderBox;
import com.coremedia.iso.boxes.NullMediaHeaderBox;
import com.coremedia.iso.boxes.SampleDependencyTypeBox;
import com.coremedia.iso.boxes.SampleSizeBox;
import com.coremedia.iso.boxes.SampleTableBox;
import com.coremedia.iso.boxes.SampleToChunkBox;
import com.coremedia.iso.boxes.SoundMediaHeaderBox;
import com.coremedia.iso.boxes.StaticChunkOffsetBox;
import com.coremedia.iso.boxes.SubtitleMediaHeaderBox;
import com.coremedia.iso.boxes.SyncSampleBox;
import com.coremedia.iso.boxes.TimeToSampleBox;
import com.coremedia.iso.boxes.TrackBox;
import com.coremedia.iso.boxes.TrackHeaderBox;
import com.coremedia.iso.boxes.TrackReferenceTypeBox;
import com.coremedia.iso.boxes.VideoMediaHeaderBox;
import com.coremedia.iso.boxes.mdat.MediaDataBox;
import com.coremedia.iso.boxes.sampleentry.VisualSampleEntry;
import com.googlecode.mp4parser.BasicContainer;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.Edit;
import com.googlecode.mp4parser.authoring.Movie;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.tracks.CencEncryptedTrack;
import com.googlecode.mp4parser.boxes.dece.SampleEncryptionBox;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.GroupEntry;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox;
import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.Path;
import com.mp4parser.iso14496.part12.SampleAuxiliaryInformationOffsetsBox;
import com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox;
import com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class DefaultMp4Builder implements Mp4Builder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static Logger LOG = Logger.getLogger(DefaultMp4Builder.class.getName());
    private FragmentIntersectionFinder intersectionFinder;
    Set<StaticChunkOffsetBox> chunkOffsetBoxes = new HashSet();
    Set<SampleAuxiliaryInformationOffsetsBox> sampleAuxiliaryInformationOffsetsBoxes = new HashSet();
    HashMap<Track, List<Sample>> track2Sample = new HashMap<>();
    HashMap<Track, long[]> track2SampleSizes = new HashMap<>();

    protected Box createUdta(Movie movie) {
        return null;
    }

    private static long sum(int[] iArr) {
        long j = 0;
        for (int i : iArr) {
            j += i;
        }
        return j;
    }

    private static long sum(long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        return j;
    }

    public static long gcd(long j, long j2) {
        return j2 == 0 ? j : gcd(j2, j % j2);
    }

    public void setIntersectionFinder(FragmentIntersectionFinder fragmentIntersectionFinder) {
        this.intersectionFinder = fragmentIntersectionFinder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.googlecode.mp4parser.authoring.builder.Mp4Builder
    public Container build(Movie movie) {
        Box next;
        if (this.intersectionFinder == null) {
            this.intersectionFinder = new TwoSecondIntersectionFinder(movie, 2);
        }
        LOG.fine("Creating movie " + movie);
        Iterator<Track> it = movie.getTracks().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Track next2 = it.next();
            List<Sample> samples = next2.getSamples();
            putSamples(next2, samples);
            int size = samples.size();
            long[] jArr = new long[size];
            for (int i = 0; i < size; i++) {
                jArr[i] = samples.get(i).getSize();
            }
            this.track2SampleSizes.put(next2, jArr);
        }
        BasicContainer basicContainer = new BasicContainer();
        basicContainer.addBox(createFileTypeBox(movie));
        HashMap hashMap = new HashMap();
        for (Track track : movie.getTracks()) {
            hashMap.put(track, getChunkSizes(track, movie));
        }
        MovieBox createMovieBox = createMovieBox(movie, hashMap);
        basicContainer.addBox(createMovieBox);
        Iterator it2 = Path.getPaths((Box) createMovieBox, "trak/mdia/minf/stbl/stsz").iterator();
        long j = 0;
        while (it2.hasNext()) {
            j += sum(((SampleSizeBox) it2.next()).getSampleSizes());
        }
        InterleaveChunkMdat interleaveChunkMdat = new InterleaveChunkMdat(this, movie, hashMap, j, null);
        basicContainer.addBox(interleaveChunkMdat);
        long dataOffset = interleaveChunkMdat.getDataOffset();
        Iterator<StaticChunkOffsetBox> it3 = this.chunkOffsetBoxes.iterator();
        while (it3.hasNext()) {
            long[] chunkOffsets = it3.next().getChunkOffsets();
            for (int i2 = 0; i2 < chunkOffsets.length; i2++) {
                chunkOffsets[i2] = chunkOffsets[i2] + dataOffset;
            }
        }
        for (SampleAuxiliaryInformationOffsetsBox sampleAuxiliaryInformationOffsetsBox : this.sampleAuxiliaryInformationOffsetsBoxes) {
            long size2 = sampleAuxiliaryInformationOffsetsBox.getSize() + 44;
            SampleAuxiliaryInformationOffsetsBox sampleAuxiliaryInformationOffsetsBox2 = sampleAuxiliaryInformationOffsetsBox;
            while (true) {
                Container parent = sampleAuxiliaryInformationOffsetsBox2.getParent();
                Iterator<Box> it4 = parent.getBoxes().iterator();
                while (it4.hasNext() && (next = it4.next()) != sampleAuxiliaryInformationOffsetsBox2) {
                    size2 += next.getSize();
                }
                if (!(parent instanceof Box)) {
                    break;
                }
                sampleAuxiliaryInformationOffsetsBox2 = parent;
            }
            long[] offsets = sampleAuxiliaryInformationOffsetsBox.getOffsets();
            for (int i3 = 0; i3 < offsets.length; i3++) {
                offsets[i3] = offsets[i3] + size2;
            }
            sampleAuxiliaryInformationOffsetsBox.setOffsets(offsets);
        }
        return basicContainer;
    }

    protected List<Sample> putSamples(Track track, List<Sample> list) {
        return this.track2Sample.put(track, list);
    }

    protected FileTypeBox createFileTypeBox(Movie movie) {
        LinkedList linkedList = new LinkedList();
        linkedList.add("isom");
        linkedList.add("iso2");
        linkedList.add(VisualSampleEntry.TYPE3);
        return new FileTypeBox("isom", 0L, linkedList);
    }

    protected MovieBox createMovieBox(Movie movie, Map<Track, int[]> map) {
        long duration;
        MovieBox movieBox = new MovieBox();
        MovieHeaderBox movieHeaderBox = new MovieHeaderBox();
        movieHeaderBox.setCreationTime(new Date());
        movieHeaderBox.setModificationTime(new Date());
        movieHeaderBox.setMatrix(movie.getMatrix());
        long timescale = getTimescale(movie);
        long j = 0;
        for (Track track : movie.getTracks()) {
            if (track.getEdits() == null || track.getEdits().isEmpty()) {
                duration = (track.getDuration() * getTimescale(movie)) / track.getTrackMetaData().getTimescale();
            } else {
                Iterator<Edit> it = track.getEdits().iterator();
                long j2 = 0;
                while (it.hasNext()) {
                    j2 += (long) it.next().getSegmentDuration();
                }
                duration = j2 * getTimescale(movie);
            }
            if (duration > j) {
                j = duration;
            }
        }
        movieHeaderBox.setDuration(j);
        movieHeaderBox.setTimescale(timescale);
        long j3 = 0;
        for (Track track2 : movie.getTracks()) {
            if (j3 < track2.getTrackMetaData().getTrackId()) {
                j3 = track2.getTrackMetaData().getTrackId();
            }
        }
        movieHeaderBox.setNextTrackId(j3 + 1);
        movieBox.addBox(movieHeaderBox);
        Iterator<Track> it2 = movie.getTracks().iterator();
        while (it2.hasNext()) {
            movieBox.addBox(createTrackBox(it2.next(), movie, map));
        }
        Box createUdta = createUdta(movie);
        if (createUdta != null) {
            movieBox.addBox(createUdta);
        }
        return movieBox;
    }

    protected TrackBox createTrackBox(Track track, Movie movie, Map<Track, int[]> map) {
        TrackBox trackBox = new TrackBox();
        TrackHeaderBox trackHeaderBox = new TrackHeaderBox();
        trackHeaderBox.setEnabled(true);
        trackHeaderBox.setInMovie(true);
        trackHeaderBox.setInPreview(true);
        trackHeaderBox.setInPoster(true);
        trackHeaderBox.setMatrix(track.getTrackMetaData().getMatrix());
        trackHeaderBox.setAlternateGroup(track.getTrackMetaData().getGroup());
        trackHeaderBox.setCreationTime(track.getTrackMetaData().getCreationTime());
        if (track.getEdits() == null || track.getEdits().isEmpty()) {
            trackHeaderBox.setDuration((track.getDuration() * getTimescale(movie)) / track.getTrackMetaData().getTimescale());
        } else {
            Iterator<Edit> it = track.getEdits().iterator();
            long j = 0;
            while (it.hasNext()) {
                j += (long) it.next().getSegmentDuration();
            }
            trackHeaderBox.setDuration(j * track.getTrackMetaData().getTimescale());
        }
        trackHeaderBox.setHeight(track.getTrackMetaData().getHeight());
        trackHeaderBox.setWidth(track.getTrackMetaData().getWidth());
        trackHeaderBox.setLayer(track.getTrackMetaData().getLayer());
        trackHeaderBox.setModificationTime(new Date());
        trackHeaderBox.setTrackId(track.getTrackMetaData().getTrackId());
        trackHeaderBox.setVolume(track.getTrackMetaData().getVolume());
        trackBox.addBox(trackHeaderBox);
        trackBox.addBox(createEdts(track, movie));
        MediaBox mediaBox = new MediaBox();
        trackBox.addBox(mediaBox);
        MediaHeaderBox mediaHeaderBox = new MediaHeaderBox();
        mediaHeaderBox.setCreationTime(track.getTrackMetaData().getCreationTime());
        mediaHeaderBox.setDuration(track.getDuration());
        mediaHeaderBox.setTimescale(track.getTrackMetaData().getTimescale());
        mediaHeaderBox.setLanguage(track.getTrackMetaData().getLanguage());
        mediaBox.addBox(mediaHeaderBox);
        HandlerBox handlerBox = new HandlerBox();
        mediaBox.addBox(handlerBox);
        handlerBox.setHandlerType(track.getHandler());
        MediaInformationBox mediaInformationBox = new MediaInformationBox();
        if (track.getHandler().equals("vide")) {
            mediaInformationBox.addBox(new VideoMediaHeaderBox());
        } else if (track.getHandler().equals("soun")) {
            mediaInformationBox.addBox(new SoundMediaHeaderBox());
        } else if (track.getHandler().equals("text")) {
            mediaInformationBox.addBox(new NullMediaHeaderBox());
        } else if (track.getHandler().equals("subt")) {
            mediaInformationBox.addBox(new SubtitleMediaHeaderBox());
        } else if (track.getHandler().equals(TrackReferenceTypeBox.TYPE1)) {
            mediaInformationBox.addBox(new HintMediaHeaderBox());
        } else if (track.getHandler().equals("sbtl")) {
            mediaInformationBox.addBox(new NullMediaHeaderBox());
        }
        DataInformationBox dataInformationBox = new DataInformationBox();
        DataReferenceBox dataReferenceBox = new DataReferenceBox();
        dataInformationBox.addBox(dataReferenceBox);
        DataEntryUrlBox dataEntryUrlBox = new DataEntryUrlBox();
        dataEntryUrlBox.setFlags(1);
        dataReferenceBox.addBox(dataEntryUrlBox);
        mediaInformationBox.addBox(dataInformationBox);
        mediaInformationBox.addBox(createStbl(track, movie, map));
        mediaBox.addBox(mediaInformationBox);
        return trackBox;
    }

    protected Box createEdts(Track track, Movie movie) {
        if (track.getEdits() == null || track.getEdits().size() <= 0) {
            return null;
        }
        EditListBox editListBox = new EditListBox();
        editListBox.setVersion(1);
        ArrayList arrayList = new ArrayList();
        for (Edit edit : track.getEdits()) {
            arrayList.add(new EditListBox.Entry(editListBox, Math.round(edit.getSegmentDuration() * movie.getTimescale()), (edit.getMediaTime() * track.getTrackMetaData().getTimescale()) / edit.getTimeScale(), edit.getMediaRate()));
        }
        editListBox.setEntries(arrayList);
        EditBox editBox = new EditBox();
        editBox.addBox(editListBox);
        return editBox;
    }

    protected Box createStbl(Track track, Movie movie, Map<Track, int[]> map) {
        SampleTableBox sampleTableBox = new SampleTableBox();
        createStsd(track, sampleTableBox);
        createStts(track, sampleTableBox);
        createCtts(track, sampleTableBox);
        createStss(track, sampleTableBox);
        createSdtp(track, sampleTableBox);
        createStsc(track, map, sampleTableBox);
        createStsz(track, sampleTableBox);
        createStco(track, movie, map, sampleTableBox);
        HashMap hashMap = new HashMap();
        for (Map.Entry<GroupEntry, long[]> entry : track.getSampleGroups().entrySet()) {
            String type = entry.getKey().getType();
            List list = (List) hashMap.get(type);
            if (list == null) {
                list = new ArrayList();
                hashMap.put(type, list);
            }
            list.add(entry.getKey());
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            SampleGroupDescriptionBox sampleGroupDescriptionBox = new SampleGroupDescriptionBox();
            String str = (String) entry2.getKey();
            sampleGroupDescriptionBox.setGroupEntries((List) entry2.getValue());
            SampleToGroupBox sampleToGroupBox = new SampleToGroupBox();
            sampleToGroupBox.setGroupingType(str);
            SampleToGroupBox.Entry entry3 = null;
            for (int i = 0; i < track.getSamples().size(); i++) {
                int i2 = 0;
                for (int i3 = 0; i3 < ((List) entry2.getValue()).size(); i3++) {
                    if (Arrays.binarySearch(track.getSampleGroups().get((GroupEntry) ((List) entry2.getValue()).get(i3)), i) >= 0) {
                        i2 = i3 + 1;
                    }
                }
                if (entry3 == null || entry3.getGroupDescriptionIndex() != i2) {
                    SampleToGroupBox.Entry entry4 = new SampleToGroupBox.Entry(1L, i2);
                    sampleToGroupBox.getEntries().add(entry4);
                    entry3 = entry4;
                } else {
                    entry3.setSampleCount(entry3.getSampleCount() + 1);
                }
            }
            sampleTableBox.addBox(sampleGroupDescriptionBox);
            sampleTableBox.addBox(sampleToGroupBox);
        }
        if (track instanceof CencEncryptedTrack) {
            createCencBoxes((CencEncryptedTrack) track, sampleTableBox, map.get(track));
        }
        createSubs(track, sampleTableBox);
        return sampleTableBox;
    }

    protected void createSubs(Track track, SampleTableBox sampleTableBox) {
        if (track.getSubsampleInformationBox() != null) {
            sampleTableBox.addBox(track.getSubsampleInformationBox());
        }
    }

    protected void createCencBoxes(CencEncryptedTrack cencEncryptedTrack, SampleTableBox sampleTableBox, int[] iArr) {
        SampleAuxiliaryInformationSizesBox sampleAuxiliaryInformationSizesBox = new SampleAuxiliaryInformationSizesBox();
        sampleAuxiliaryInformationSizesBox.setAuxInfoType("cenc");
        sampleAuxiliaryInformationSizesBox.setFlags(1);
        List<CencSampleAuxiliaryDataFormat> sampleEncryptionEntries = cencEncryptedTrack.getSampleEncryptionEntries();
        if (cencEncryptedTrack.hasSubSampleEncryption()) {
            int size = sampleEncryptionEntries.size();
            short[] sArr = new short[size];
            for (int i = 0; i < size; i++) {
                sArr[i] = (short) sampleEncryptionEntries.get(i).getSize();
            }
            sampleAuxiliaryInformationSizesBox.setSampleInfoSizes(sArr);
        } else {
            sampleAuxiliaryInformationSizesBox.setDefaultSampleInfoSize(8);
            sampleAuxiliaryInformationSizesBox.setSampleCount(cencEncryptedTrack.getSamples().size());
        }
        SampleAuxiliaryInformationOffsetsBox sampleAuxiliaryInformationOffsetsBox = new SampleAuxiliaryInformationOffsetsBox();
        SampleEncryptionBox sampleEncryptionBox = new SampleEncryptionBox();
        sampleEncryptionBox.setSubSampleEncryption(cencEncryptedTrack.hasSubSampleEncryption());
        sampleEncryptionBox.setEntries(sampleEncryptionEntries);
        long offsetToFirstIV = sampleEncryptionBox.getOffsetToFirstIV();
        long[] jArr = new long[iArr.length];
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            jArr[i3] = offsetToFirstIV;
            int i4 = 0;
            while (i4 < iArr[i3]) {
                offsetToFirstIV += sampleEncryptionEntries.get(i2).getSize();
                i4++;
                i2++;
                sampleEncryptionBox = sampleEncryptionBox;
            }
        }
        sampleAuxiliaryInformationOffsetsBox.setOffsets(jArr);
        sampleTableBox.addBox(sampleAuxiliaryInformationSizesBox);
        sampleTableBox.addBox(sampleAuxiliaryInformationOffsetsBox);
        sampleTableBox.addBox(sampleEncryptionBox);
        this.sampleAuxiliaryInformationOffsetsBoxes.add(sampleAuxiliaryInformationOffsetsBox);
    }

    protected void createStsd(Track track, SampleTableBox sampleTableBox) {
        sampleTableBox.addBox(track.getSampleDescriptionBox());
    }

    protected void createStco(Track track, Movie movie, Map<Track, int[]> map, SampleTableBox sampleTableBox) {
        String str;
        int[] iArr;
        StaticChunkOffsetBox staticChunkOffsetBox;
        Track track2 = track;
        Map<Track, int[]> map2 = map;
        int[] iArr2 = map2.get(track2);
        StaticChunkOffsetBox staticChunkOffsetBox2 = new StaticChunkOffsetBox();
        this.chunkOffsetBoxes.add(staticChunkOffsetBox2);
        long[] jArr = new long[iArr2.length];
        String str2 = "Calculating chunk offsets for track_";
        if (LOG.isLoggable(Level.FINE)) {
            LOG.fine("Calculating chunk offsets for track_" + track.getTrackMetaData().getTrackId());
        }
        int i = 0;
        long j = 0;
        while (i < iArr2.length) {
            if (LOG.isLoggable(Level.FINER)) {
                Logger logger = LOG;
                StringBuilder sb = new StringBuilder(str2);
                str = str2;
                sb.append(track.getTrackMetaData().getTrackId());
                sb.append(" chunk ");
                sb.append(i);
                logger.finer(sb.toString());
            } else {
                str = str2;
            }
            for (Track track3 : movie.getTracks()) {
                if (LOG.isLoggable(Level.FINEST)) {
                    LOG.finest("Adding offsets of track_" + track3.getTrackMetaData().getTrackId());
                }
                int[] iArr3 = map2.get(track3);
                int i2 = 0;
                long j2 = 0;
                while (i2 < i) {
                    j2 += iArr3[i2];
                    i2++;
                    track2 = track;
                }
                if (track3 == track2) {
                    jArr[i] = j;
                }
                int l2i = CastUtils.l2i(j2);
                while (true) {
                    iArr = iArr2;
                    staticChunkOffsetBox = staticChunkOffsetBox2;
                    if (l2i >= iArr3[i] + j2) {
                        break;
                    }
                    j += this.track2SampleSizes.get(track3)[l2i];
                    l2i++;
                    iArr2 = iArr;
                    staticChunkOffsetBox2 = staticChunkOffsetBox;
                }
                track2 = track;
                map2 = map;
                iArr2 = iArr;
                staticChunkOffsetBox2 = staticChunkOffsetBox;
            }
            i++;
            str2 = str;
        }
        staticChunkOffsetBox2.setChunkOffsets(jArr);
        sampleTableBox.addBox(staticChunkOffsetBox2);
    }

    protected void createStsz(Track track, SampleTableBox sampleTableBox) {
        SampleSizeBox sampleSizeBox = new SampleSizeBox();
        sampleSizeBox.setSampleSizes(this.track2SampleSizes.get(track));
        sampleTableBox.addBox(sampleSizeBox);
    }

    protected void createStsc(Track track, Map<Track, int[]> map, SampleTableBox sampleTableBox) {
        int[] iArr = map.get(track);
        SampleToChunkBox sampleToChunkBox = new SampleToChunkBox();
        sampleToChunkBox.setEntries(new LinkedList());
        long j = -2147483648L;
        for (int i = 0; i < iArr.length; i++) {
            if (j != iArr[i]) {
                sampleToChunkBox.getEntries().add(new SampleToChunkBox.Entry(i + 1, iArr[i], 1L));
                j = iArr[i];
            }
        }
        sampleTableBox.addBox(sampleToChunkBox);
    }

    protected void createSdtp(Track track, SampleTableBox sampleTableBox) {
        if (track.getSampleDependencies() == null || track.getSampleDependencies().isEmpty()) {
            return;
        }
        SampleDependencyTypeBox sampleDependencyTypeBox = new SampleDependencyTypeBox();
        sampleDependencyTypeBox.setEntries(track.getSampleDependencies());
        sampleTableBox.addBox(sampleDependencyTypeBox);
    }

    protected void createStss(Track track, SampleTableBox sampleTableBox) {
        long[] syncSamples = track.getSyncSamples();
        if (syncSamples == null || syncSamples.length <= 0) {
            return;
        }
        SyncSampleBox syncSampleBox = new SyncSampleBox();
        syncSampleBox.setSampleNumber(syncSamples);
        sampleTableBox.addBox(syncSampleBox);
    }

    protected void createCtts(Track track, SampleTableBox sampleTableBox) {
        List<CompositionTimeToSample.Entry> compositionTimeEntries = track.getCompositionTimeEntries();
        if (compositionTimeEntries == null || compositionTimeEntries.isEmpty()) {
            return;
        }
        CompositionTimeToSample compositionTimeToSample = new CompositionTimeToSample();
        compositionTimeToSample.setEntries(compositionTimeEntries);
        sampleTableBox.addBox(compositionTimeToSample);
    }

    protected void createStts(Track track, SampleTableBox sampleTableBox) {
        ArrayList arrayList = new ArrayList();
        TimeToSampleBox.Entry entry = null;
        for (long j : track.getSampleDurations()) {
            if (entry != null && entry.getDelta() == j) {
                entry.setCount(entry.getCount() + 1);
            } else {
                entry = new TimeToSampleBox.Entry(1L, j);
                arrayList.add(entry);
            }
        }
        TimeToSampleBox timeToSampleBox = new TimeToSampleBox();
        timeToSampleBox.setEntries(arrayList);
        sampleTableBox.addBox(timeToSampleBox);
    }

    int[] getChunkSizes(Track track, Movie movie) {
        long j;
        long[] sampleNumbers = this.intersectionFinder.sampleNumbers(track);
        int[] iArr = new int[sampleNumbers.length];
        int i = 0;
        while (i < sampleNumbers.length) {
            long j2 = sampleNumbers[i] - 1;
            int i2 = i + 1;
            if (sampleNumbers.length == i2) {
                j = track.getSamples().size();
            } else {
                j = sampleNumbers[i2] - 1;
            }
            iArr[i] = CastUtils.l2i(j - j2);
            i = i2;
        }
        return iArr;
    }

    public long getTimescale(Movie movie) {
        long timescale = movie.getTracks().iterator().next().getTrackMetaData().getTimescale();
        Iterator<Track> it = movie.getTracks().iterator();
        while (it.hasNext()) {
            timescale = gcd(it.next().getTrackMetaData().getTimescale(), timescale);
        }
        return timescale;
    }

    private class InterleaveChunkMdat implements Box {
        List<List<Sample>> chunkList;
        long contentSize;
        Container parent;
        List<Track> tracks;

        private boolean isSmallBox(long j) {
            return j + 8 < 4294967296L;
        }

        @Override // com.coremedia.iso.boxes.Box
        public void parse(DataSource dataSource, ByteBuffer byteBuffer, long j, BoxParser boxParser) throws IOException {
        }

        private InterleaveChunkMdat(Movie movie, Map<Track, int[]> map, long j) {
            this.chunkList = new ArrayList();
            this.contentSize = j;
            this.tracks = movie.getTracks();
            for (int i = 0; i < map.values().iterator().next().length; i++) {
                for (Track track : this.tracks) {
                    int[] iArr = map.get(track);
                    long j2 = 0;
                    for (int i2 = 0; i2 < i; i2++) {
                        j2 += iArr[i2];
                    }
                    this.chunkList.add(DefaultMp4Builder.this.track2Sample.get(track).subList(CastUtils.l2i(j2), CastUtils.l2i(j2 + iArr[i])));
                }
            }
        }

        /* synthetic */ InterleaveChunkMdat(DefaultMp4Builder defaultMp4Builder, Movie movie, Map map, long j, InterleaveChunkMdat interleaveChunkMdat) {
            this(movie, map, j);
        }

        @Override // com.coremedia.iso.boxes.Box
        public Container getParent() {
            return this.parent;
        }

        @Override // com.coremedia.iso.boxes.Box
        public void setParent(Container container) {
            this.parent = container;
        }

        @Override // com.coremedia.iso.boxes.Box
        public long getOffset() {
            throw new RuntimeException("Doesn't have any meaning for programmatically created boxes");
        }

        public long getDataOffset() {
            Box next;
            long j = 16;
            Object obj = this;
            while (obj instanceof Box) {
                Box box = (Box) obj;
                Iterator<Box> it = box.getParent().getBoxes().iterator();
                while (it.hasNext() && obj != (next = it.next())) {
                    j += next.getSize();
                }
                obj = box.getParent();
            }
            return j;
        }

        @Override // com.coremedia.iso.boxes.Box
        public String getType() {
            return MediaDataBox.TYPE;
        }

        @Override // com.coremedia.iso.boxes.Box
        public long getSize() {
            return this.contentSize + 16;
        }

        @Override // com.coremedia.iso.boxes.Box
        public void getBox(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            long size = getSize();
            if (isSmallBox(size)) {
                IsoTypeWriter.writeUInt32(allocate, size);
            } else {
                IsoTypeWriter.writeUInt32(allocate, 1L);
            }
            allocate.put(IsoFile.fourCCtoBytes(MediaDataBox.TYPE));
            if (isSmallBox(size)) {
                allocate.put(new byte[8]);
            } else {
                IsoTypeWriter.writeUInt64(allocate, size);
            }
            allocate.rewind();
            writableByteChannel.write(allocate);
            Iterator<List<Sample>> it = this.chunkList.iterator();
            while (it.hasNext()) {
                Iterator<Sample> it2 = it.next().iterator();
                while (it2.hasNext()) {
                    it2.next().writeTo(writableByteChannel);
                }
            }
        }
    }
}
