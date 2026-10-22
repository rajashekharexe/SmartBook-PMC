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
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.SampleSizeBox;
import com.coremedia.iso.boxes.SampleTableBox;
import com.coremedia.iso.boxes.SampleToChunkBox;
import com.coremedia.iso.boxes.SoundMediaHeaderBox;
import com.coremedia.iso.boxes.StaticChunkOffsetBox;
import com.coremedia.iso.boxes.SubtitleMediaHeaderBox;
import com.coremedia.iso.boxes.TimeToSampleBox;
import com.coremedia.iso.boxes.TrackBox;
import com.coremedia.iso.boxes.TrackHeaderBox;
import com.coremedia.iso.boxes.TrackReferenceTypeBox;
import com.coremedia.iso.boxes.VideoMediaHeaderBox;
import com.coremedia.iso.boxes.fragment.MovieExtendsBox;
import com.coremedia.iso.boxes.fragment.MovieExtendsHeaderBox;
import com.coremedia.iso.boxes.fragment.MovieFragmentBox;
import com.coremedia.iso.boxes.fragment.MovieFragmentHeaderBox;
import com.coremedia.iso.boxes.fragment.MovieFragmentRandomAccessBox;
import com.coremedia.iso.boxes.fragment.MovieFragmentRandomAccessOffsetBox;
import com.coremedia.iso.boxes.fragment.SampleFlags;
import com.coremedia.iso.boxes.fragment.TrackExtendsBox;
import com.coremedia.iso.boxes.fragment.TrackFragmentBaseMediaDecodeTimeBox;
import com.coremedia.iso.boxes.fragment.TrackFragmentBox;
import com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox;
import com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox;
import com.coremedia.iso.boxes.fragment.TrackRunBox;
import com.coremedia.iso.boxes.mdat.MediaDataBox;
import com.coremedia.iso.boxes.sampleentry.VisualSampleEntry;
import com.googlecode.mp4parser.AbstractContainerBox;
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
import com.mp4parser.iso23001.part7.TrackEncryptionBox;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class FragmentedMp4Builder implements Mp4Builder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = Logger.getLogger(FragmentedMp4Builder.class.getName());
    protected FragmentIntersectionFinder intersectionFinder;

    public Date getDate() {
        return new Date();
    }

    public Box createFtyp(Movie movie) {
        LinkedList linkedList = new LinkedList();
        linkedList.add("isom");
        linkedList.add("iso2");
        linkedList.add(VisualSampleEntry.TYPE3);
        return new FileTypeBox("isom", 0L, linkedList);
    }

    protected List<Track> sortTracksInSequence(List<Track> list, final int i, final Map<Track, long[]> map) {
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList, new Comparator<Track>() { // from class: com.googlecode.mp4parser.authoring.builder.FragmentedMp4Builder.1
            @Override // java.util.Comparator
            public int compare(Track track, Track track2) {
                long j = ((long[]) map.get(track))[i];
                long j2 = ((long[]) map.get(track2))[i];
                long[] sampleDurations = track.getSampleDurations();
                long[] sampleDurations2 = track2.getSampleDurations();
                long j3 = 0;
                for (int i2 = 1; i2 < j; i2++) {
                    j3 += sampleDurations[i2 - 1];
                }
                long j4 = 0;
                for (int i3 = 1; i3 < j2; i3++) {
                    j4 += sampleDurations2[i3 - 1];
                }
                return (int) (((j3 / track.getTrackMetaData().getTimescale()) - (j4 / track2.getTrackMetaData().getTimescale())) * 100.0d);
            }
        });
        return linkedList;
    }

    protected List<Box> createMoofMdat(Movie movie) {
        List<Box> linkedList = new LinkedList<>();
        HashMap hashMap = new HashMap();
        int i = 0;
        for (Track track : movie.getTracks()) {
            long[] sampleNumbers = this.intersectionFinder.sampleNumbers(track);
            hashMap.put(track, sampleNumbers);
            i = Math.max(i, sampleNumbers.length);
        }
        int i2 = 1;
        int i3 = 0;
        while (i3 < i) {
            int i4 = i2;
            for (Track track2 : sortTracksInSequence(movie.getTracks(), i3, hashMap)) {
                i4 = createFragment(linkedList, track2, (long[]) hashMap.get(track2), i3, i4);
            }
            i3++;
            i2 = i4;
        }
        return linkedList;
    }

    protected int createFragment(List<Box> list, Track track, long[] jArr, int i, int i2) {
        if (i >= jArr.length) {
            return i2;
        }
        long j = jArr[i];
        int i3 = i + 1;
        long size = i3 < jArr.length ? jArr[i3] : track.getSamples().size() + 1;
        if (j == size) {
            return i2;
        }
        long j2 = size;
        list.add(createMoof(j, j2, track, i2));
        int i4 = i2 + 1;
        list.add(createMdat(j, j2, track, i2));
        return i4;
    }

    @Override // com.googlecode.mp4parser.authoring.builder.Mp4Builder
    public Container build(Movie movie) {
        Track track;
        LOG.fine("Creating movie " + movie);
        if (this.intersectionFinder == null) {
            Iterator<Track> it = movie.getTracks().iterator();
            while (true) {
                if (!it.hasNext()) {
                    track = null;
                    break;
                }
                Track next = it.next();
                if (next.getHandler().equals("vide")) {
                    track = next;
                    break;
                }
            }
            this.intersectionFinder = new SyncSampleIntersectFinderImpl(movie, track, -1);
        }
        BasicContainer basicContainer = new BasicContainer();
        basicContainer.addBox(createFtyp(movie));
        basicContainer.addBox(createMoov(movie));
        Iterator<Box> it2 = createMoofMdat(movie).iterator();
        while (it2.hasNext()) {
            basicContainer.addBox(it2.next());
        }
        basicContainer.addBox(createMfra(movie, basicContainer));
        return basicContainer;
    }

    protected Box createMdat(final long j, final long j2, final Track track, final int i) {
        return new Box() { // from class: com.googlecode.mp4parser.authoring.builder.FragmentedMp4Builder.1Mdat
            Container parent;
            long size_ = -1;

            @Override // com.coremedia.iso.boxes.Box
            public void parse(DataSource dataSource, ByteBuffer byteBuffer, long j3, BoxParser boxParser) throws IOException {
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

            @Override // com.coremedia.iso.boxes.Box
            public long getSize() {
                long j3 = this.size_;
                if (j3 != -1) {
                    return j3;
                }
                Iterator<Sample> it = FragmentedMp4Builder.this.getSamples(j, j2, track, i).iterator();
                long j4 = 8;
                while (it.hasNext()) {
                    j4 += it.next().getSize();
                }
                this.size_ = j4;
                return j4;
            }

            @Override // com.coremedia.iso.boxes.Box
            public String getType() {
                return MediaDataBox.TYPE;
            }

            @Override // com.coremedia.iso.boxes.Box
            public void getBox(WritableByteChannel writableByteChannel) throws IOException {
                ByteBuffer allocate = ByteBuffer.allocate(8);
                IsoTypeWriter.writeUInt32(allocate, CastUtils.l2i(getSize()));
                allocate.put(IsoFile.fourCCtoBytes(getType()));
                allocate.rewind();
                writableByteChannel.write(allocate);
                Iterator<Sample> it = FragmentedMp4Builder.this.getSamples(j, j2, track, i).iterator();
                while (it.hasNext()) {
                    it.next().writeTo(writableByteChannel);
                }
            }
        };
    }

    protected void createTfhd(long j, long j2, Track track, int i, TrackFragmentBox trackFragmentBox) {
        TrackFragmentHeaderBox trackFragmentHeaderBox = new TrackFragmentHeaderBox();
        trackFragmentHeaderBox.setDefaultSampleFlags(new SampleFlags());
        trackFragmentHeaderBox.setBaseDataOffset(-1L);
        trackFragmentHeaderBox.setTrackId(track.getTrackMetaData().getTrackId());
        trackFragmentHeaderBox.setDefaultBaseIsMoof(true);
        trackFragmentBox.addBox(trackFragmentHeaderBox);
    }

    protected void createMfhd(long j, long j2, Track track, int i, MovieFragmentBox movieFragmentBox) {
        MovieFragmentHeaderBox movieFragmentHeaderBox = new MovieFragmentHeaderBox();
        movieFragmentHeaderBox.setSequenceNumber(i);
        movieFragmentBox.addBox(movieFragmentHeaderBox);
    }

    protected void createTraf(long j, long j2, Track track, int i, MovieFragmentBox movieFragmentBox) {
        TrackFragmentBox trackFragmentBox = new TrackFragmentBox();
        movieFragmentBox.addBox(trackFragmentBox);
        createTfhd(j, j2, track, i, trackFragmentBox);
        createTfdt(j, track, trackFragmentBox);
        createTrun(j, j2, track, i, trackFragmentBox);
        if (track instanceof CencEncryptedTrack) {
            CencEncryptedTrack cencEncryptedTrack = (CencEncryptedTrack) track;
            createSaiz(j, j2, cencEncryptedTrack, i, trackFragmentBox);
            createSenc(j, j2, cencEncryptedTrack, i, trackFragmentBox);
            createSaio(j, j2, cencEncryptedTrack, i, trackFragmentBox);
        }
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
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            SampleGroupDescriptionBox sampleGroupDescriptionBox = new SampleGroupDescriptionBox();
            String str = (String) entry2.getKey();
            sampleGroupDescriptionBox.setGroupEntries((List) entry2.getValue());
            SampleToGroupBox sampleToGroupBox = new SampleToGroupBox();
            sampleToGroupBox.setGroupingType(str);
            long j3 = 1;
            SampleToGroupBox.Entry entry3 = null;
            for (int l2i = CastUtils.l2i(j - 1); l2i < CastUtils.l2i(j2 - j3); l2i++) {
                int i2 = 0;
                int i3 = 0;
                while (i2 < ((List) entry2.getValue()).size()) {
                    Iterator it2 = it;
                    i3 = Arrays.binarySearch(track.getSampleGroups().get((GroupEntry) ((List) entry2.getValue()).get(i2)), (long) l2i) >= 0 ? i2 + 1 : i3;
                    i2++;
                    it = it2;
                    j3 = 1;
                }
                if (entry3 == null || entry3.getGroupDescriptionIndex() != i3) {
                    SampleToGroupBox.Entry entry4 = new SampleToGroupBox.Entry(j3, i3);
                    sampleToGroupBox.getEntries().add(entry4);
                    entry3 = entry4;
                } else {
                    entry3.setSampleCount(entry3.getSampleCount() + j3);
                }
            }
            trackFragmentBox.addBox(sampleGroupDescriptionBox);
            trackFragmentBox.addBox(sampleToGroupBox);
        }
    }

    protected void createSenc(long j, long j2, CencEncryptedTrack cencEncryptedTrack, int i, TrackFragmentBox trackFragmentBox) {
        SampleEncryptionBox sampleEncryptionBox = new SampleEncryptionBox();
        sampleEncryptionBox.setSubSampleEncryption(cencEncryptedTrack.hasSubSampleEncryption());
        sampleEncryptionBox.setEntries(cencEncryptedTrack.getSampleEncryptionEntries().subList(CastUtils.l2i(j - 1), CastUtils.l2i(j2 - 1)));
        trackFragmentBox.addBox(sampleEncryptionBox);
    }

    protected void createSaio(long j, long j2, CencEncryptedTrack cencEncryptedTrack, int i, TrackFragmentBox trackFragmentBox) {
        Box next;
        SampleAuxiliaryInformationOffsetsBox sampleAuxiliaryInformationOffsetsBox = new SampleAuxiliaryInformationOffsetsBox();
        trackFragmentBox.addBox(sampleAuxiliaryInformationOffsetsBox);
        sampleAuxiliaryInformationOffsetsBox.setAuxInfoType("cenc");
        sampleAuxiliaryInformationOffsetsBox.setFlags(1);
        Iterator<Box> it = trackFragmentBox.getBoxes().iterator();
        long j3 = 8;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Box next2 = it.next();
            if (next2 instanceof SampleEncryptionBox) {
                j3 += ((SampleEncryptionBox) next2).getOffsetToFirstIV();
                break;
            }
            j3 += next2.getSize();
        }
        long j4 = j3 + 16;
        Iterator<Box> it2 = ((MovieFragmentBox) trackFragmentBox.getParent()).getBoxes().iterator();
        while (it2.hasNext() && (next = it2.next()) != trackFragmentBox) {
            j4 += next.getSize();
        }
        sampleAuxiliaryInformationOffsetsBox.setOffsets(new long[]{j4});
    }

    protected void createSaiz(long j, long j2, CencEncryptedTrack cencEncryptedTrack, int i, TrackFragmentBox trackFragmentBox) {
        SampleDescriptionBox sampleDescriptionBox = cencEncryptedTrack.getSampleDescriptionBox();
        TrackEncryptionBox trackEncryptionBox = (TrackEncryptionBox) Path.getPath((AbstractContainerBox) sampleDescriptionBox, "enc.[0]/sinf[0]/schi[0]/tenc[0]");
        SampleAuxiliaryInformationSizesBox sampleAuxiliaryInformationSizesBox = new SampleAuxiliaryInformationSizesBox();
        sampleAuxiliaryInformationSizesBox.setAuxInfoType("cenc");
        sampleAuxiliaryInformationSizesBox.setFlags(1);
        if (cencEncryptedTrack.hasSubSampleEncryption()) {
            int l2i = CastUtils.l2i(j2 - j);
            short[] sArr = new short[l2i];
            List<CencSampleAuxiliaryDataFormat> subList = cencEncryptedTrack.getSampleEncryptionEntries().subList(CastUtils.l2i(j - 1), CastUtils.l2i(j2 - 1));
            for (int i2 = 0; i2 < l2i; i2++) {
                sArr[i2] = (short) subList.get(i2).getSize();
            }
            sampleAuxiliaryInformationSizesBox.setSampleInfoSizes(sArr);
        } else {
            sampleAuxiliaryInformationSizesBox.setDefaultSampleInfoSize(trackEncryptionBox.getDefaultIvSize());
            sampleAuxiliaryInformationSizesBox.setSampleCount(CastUtils.l2i(j2 - j));
        }
        trackFragmentBox.addBox(sampleAuxiliaryInformationSizesBox);
    }

    protected List<Sample> getSamples(long j, long j2, Track track, int i) {
        return track.getSamples().subList(CastUtils.l2i(j) - 1, CastUtils.l2i(j2) - 1);
    }

    protected long[] getSampleSizes(long j, long j2, Track track, int i) {
        List<Sample> samples = getSamples(j, j2, track, i);
        int size = samples.size();
        long[] jArr = new long[size];
        for (int i2 = 0; i2 < size; i2++) {
            jArr[i2] = samples.get(i2).getSize();
        }
        return jArr;
    }

    protected void createTfdt(long j, Track track, TrackFragmentBox trackFragmentBox) {
        TrackFragmentBaseMediaDecodeTimeBox trackFragmentBaseMediaDecodeTimeBox = new TrackFragmentBaseMediaDecodeTimeBox();
        trackFragmentBaseMediaDecodeTimeBox.setVersion(1);
        long[] sampleDurations = track.getSampleDurations();
        long j2 = 0;
        for (int i = 1; i < j; i++) {
            j2 += sampleDurations[i - 1];
        }
        trackFragmentBaseMediaDecodeTimeBox.setBaseMediaDecodeTime(j2);
        trackFragmentBox.addBox(trackFragmentBaseMediaDecodeTimeBox);
    }

    protected void createTrun(long j, long j2, Track track, int i, TrackFragmentBox trackFragmentBox) {
        long[] jArr;
        long j3;
        TrackRunBox trackRunBox = new TrackRunBox();
        trackRunBox.setVersion(1);
        long[] sampleSizes = getSampleSizes(j, j2, track, i);
        trackRunBox.setSampleDurationPresent(true);
        trackRunBox.setSampleSizePresent(true);
        ArrayList arrayList = new ArrayList(CastUtils.l2i(j2 - j));
        List<CompositionTimeToSample.Entry> compositionTimeEntries = track.getCompositionTimeEntries();
        CompositionTimeToSample.Entry[] entryArr = (compositionTimeEntries == null || compositionTimeEntries.size() <= 0) ? null : (CompositionTimeToSample.Entry[]) compositionTimeEntries.toArray(new CompositionTimeToSample.Entry[compositionTimeEntries.size()]);
        long count = entryArr != null ? entryArr[0].getCount() : -1;
        trackRunBox.setSampleCompositionTimeOffsetPresent(count > 0);
        long j4 = 1;
        int i2 = 0;
        while (j4 < j) {
            long[] jArr2 = sampleSizes;
            if (entryArr != null) {
                count--;
                j3 = 0;
                if (count == 0) {
                    if (entryArr.length - i2 > 1) {
                        i2++;
                        count = entryArr[i2].getCount();
                    }
                    j4++;
                    sampleSizes = jArr2;
                }
            } else {
                j3 = 0;
            }
            j4++;
            sampleSizes = jArr2;
        }
        boolean z = ((track.getSampleDependencies() == null || track.getSampleDependencies().isEmpty()) && (track.getSyncSamples() == null || track.getSyncSamples().length == 0)) ? false : true;
        trackRunBox.setSampleFlagsPresent(z);
        int i3 = 0;
        while (i3 < sampleSizes.length) {
            TrackRunBox.Entry entry = new TrackRunBox.Entry();
            entry.setSampleSize(sampleSizes[i3]);
            if (z) {
                SampleFlags sampleFlags = new SampleFlags();
                if (track.getSampleDependencies() != null && !track.getSampleDependencies().isEmpty()) {
                    SampleDependencyTypeBox.Entry entry2 = track.getSampleDependencies().get(i3);
                    sampleFlags.setSampleDependsOn(entry2.getSampleDependsOn());
                    sampleFlags.setSampleIsDependedOn(entry2.getSampleIsDependentOn());
                    sampleFlags.setSampleHasRedundancy(entry2.getSampleHasRedundancy());
                }
                if (track.getSyncSamples() == null || track.getSyncSamples().length <= 0) {
                    jArr = sampleSizes;
                } else {
                    jArr = sampleSizes;
                    if (Arrays.binarySearch(track.getSyncSamples(), j + i3) >= 0) {
                        sampleFlags.setSampleIsDifferenceSample(false);
                        sampleFlags.setSampleDependsOn(2);
                    } else {
                        sampleFlags.setSampleIsDifferenceSample(true);
                        sampleFlags.setSampleDependsOn(1);
                    }
                }
                entry.setSampleFlags(sampleFlags);
            } else {
                jArr = sampleSizes;
            }
            entry.setSampleDuration(track.getSampleDurations()[CastUtils.l2i((j + i3) - 1)]);
            if (entryArr != null) {
                entry.setSampleCompositionTimeOffset(entryArr[i2].getOffset());
                count--;
                if (count == 0 && entryArr.length - i2 > 1) {
                    i2++;
                    count = entryArr[i2].getCount();
                }
            }
            arrayList.add(entry);
            i3++;
            sampleSizes = jArr;
        }
        trackRunBox.setEntries(arrayList);
        trackFragmentBox.addBox(trackRunBox);
    }

    protected Box createMoof(long j, long j2, Track track, int i) {
        MovieFragmentBox movieFragmentBox = new MovieFragmentBox();
        createMfhd(j, j2, track, i, movieFragmentBox);
        createTraf(j, j2, track, i, movieFragmentBox);
        TrackRunBox trackRunBox = movieFragmentBox.getTrackRunBoxes().get(0);
        trackRunBox.setDataOffset(1);
        trackRunBox.setDataOffset((int) (movieFragmentBox.getSize() + 8));
        return movieFragmentBox;
    }

    protected Box createMvhd(Movie movie) {
        MovieHeaderBox movieHeaderBox = new MovieHeaderBox();
        movieHeaderBox.setVersion(1);
        movieHeaderBox.setCreationTime(getDate());
        movieHeaderBox.setModificationTime(getDate());
        long j = 0;
        movieHeaderBox.setDuration(0L);
        movieHeaderBox.setTimescale(movie.getTimescale());
        for (Track track : movie.getTracks()) {
            if (j < track.getTrackMetaData().getTrackId()) {
                j = track.getTrackMetaData().getTrackId();
            }
        }
        movieHeaderBox.setNextTrackId(j + 1);
        return movieHeaderBox;
    }

    protected Box createMoov(Movie movie) {
        MovieBox movieBox = new MovieBox();
        movieBox.addBox(createMvhd(movie));
        Iterator<Track> it = movie.getTracks().iterator();
        while (it.hasNext()) {
            movieBox.addBox(createTrak(it.next(), movie));
        }
        movieBox.addBox(createMvex(movie));
        return movieBox;
    }

    protected Box createTfra(Track track, Container container) {
        SampleFlags defaultSampleFlags;
        TrackFragmentRandomAccessBox trackFragmentRandomAccessBox;
        LinkedList linkedList;
        TrackExtendsBox trackExtendsBox;
        Iterator<Box> it;
        int i;
        int i2;
        int i3;
        List list;
        List list2;
        Box box;
        LinkedList linkedList2;
        TrackFragmentRandomAccessBox trackFragmentRandomAccessBox2 = new TrackFragmentRandomAccessBox();
        trackFragmentRandomAccessBox2.setVersion(1);
        LinkedList linkedList3 = new LinkedList();
        r4 = null;
        for (TrackExtendsBox trackExtendsBox2 : Path.getPaths(container, "moov/mvex/trex")) {
            TrackExtendsBox trackExtendsBox3 = trackExtendsBox2;
            trackFragmentRandomAccessBox2 = trackFragmentRandomAccessBox2;
            linkedList3 = linkedList3;
            if (trackExtendsBox2.getTrackId() != track.getTrackMetaData().getTrackId()) {
                trackExtendsBox2 = trackExtendsBox3;
            }
        }
        Iterator<Box> it2 = container.getBoxes().iterator();
        long j = 0;
        long j2 = 0;
        while (it2.hasNext()) {
            Box next = it2.next();
            if (next instanceof MovieFragmentBox) {
                List boxes = ((MovieFragmentBox) next).getBoxes(TrackFragmentBox.class);
                int i4 = 0;
                int i5 = 0;
                while (i5 < boxes.size()) {
                    TrackFragmentBox trackFragmentBox = (TrackFragmentBox) boxes.get(i5);
                    if (trackFragmentBox.getTrackFragmentHeaderBox().getTrackId() == track.getTrackMetaData().getTrackId()) {
                        List boxes2 = trackFragmentBox.getBoxes(TrackRunBox.class);
                        int i6 = 0;
                        while (i6 < boxes2.size()) {
                            LinkedList linkedList4 = new LinkedList();
                            TrackRunBox trackRunBox = (TrackRunBox) boxes2.get(i6);
                            long j3 = j2;
                            int i7 = 0;
                            while (i7 < trackRunBox.getEntries().size()) {
                                TrackRunBox.Entry entry = trackRunBox.getEntries().get(i7);
                                if (i7 == 0 && trackRunBox.isFirstSampleFlagsPresent()) {
                                    defaultSampleFlags = trackRunBox.getFirstSampleFlags();
                                } else if (trackRunBox.isSampleFlagsPresent()) {
                                    defaultSampleFlags = entry.getSampleFlags();
                                } else {
                                    defaultSampleFlags = trackExtendsBox2.getDefaultSampleFlags();
                                }
                                if (defaultSampleFlags == null && track.getHandler().equals("vide")) {
                                    throw new RuntimeException("Cannot find SampleFlags for video track but it's required to build tfra");
                                }
                                if (defaultSampleFlags == null || defaultSampleFlags.getSampleDependsOn() == 2) {
                                    trackFragmentRandomAccessBox = trackFragmentRandomAccessBox2;
                                    linkedList = linkedList3;
                                    trackExtendsBox = trackExtendsBox2;
                                    it = it2;
                                    i = i7;
                                    i2 = i6;
                                    i3 = i5;
                                    list = boxes2;
                                    list2 = boxes;
                                    box = next;
                                    linkedList2 = linkedList4;
                                    linkedList2.add(new TrackFragmentRandomAccessBox.Entry(j3, j, i5 + 1, i6 + 1, i7 + 1));
                                } else {
                                    trackFragmentRandomAccessBox = trackFragmentRandomAccessBox2;
                                    linkedList = linkedList3;
                                    trackExtendsBox = trackExtendsBox2;
                                    it = it2;
                                    i = i7;
                                    i2 = i6;
                                    linkedList2 = linkedList4;
                                    i3 = i5;
                                    list = boxes2;
                                    list2 = boxes;
                                    box = next;
                                }
                                j3 += entry.getSampleDuration();
                                i7 = i + 1;
                                boxes = list2;
                                linkedList4 = linkedList2;
                                trackFragmentRandomAccessBox2 = trackFragmentRandomAccessBox;
                                linkedList3 = linkedList;
                                trackExtendsBox2 = trackExtendsBox;
                                it2 = it;
                                next = box;
                                i6 = i2;
                                i5 = i3;
                                boxes2 = list;
                                i4 = 0;
                            }
                            if (linkedList4.size() == trackRunBox.getEntries().size() && trackRunBox.getEntries().size() > 0) {
                                linkedList3.add((TrackFragmentRandomAccessBox.Entry) linkedList4.get(i4));
                            } else {
                                linkedList3.addAll(linkedList4);
                            }
                            i6++;
                            j2 = j3;
                        }
                    }
                    i5++;
                    boxes = boxes;
                    trackFragmentRandomAccessBox2 = trackFragmentRandomAccessBox2;
                    linkedList3 = linkedList3;
                    trackExtendsBox2 = trackExtendsBox2;
                    it2 = it2;
                    next = next;
                    i4 = 0;
                }
            }
            j += next.getSize();
            trackFragmentRandomAccessBox2 = trackFragmentRandomAccessBox2;
            linkedList3 = linkedList3;
            trackExtendsBox2 = trackExtendsBox2;
            it2 = it2;
        }
        trackFragmentRandomAccessBox2.setEntries(linkedList3);
        trackFragmentRandomAccessBox2.setTrackId(track.getTrackMetaData().getTrackId());
        return trackFragmentRandomAccessBox2;
    }

    protected Box createMfra(Movie movie, Container container) {
        MovieFragmentRandomAccessBox movieFragmentRandomAccessBox = new MovieFragmentRandomAccessBox();
        Iterator<Track> it = movie.getTracks().iterator();
        while (it.hasNext()) {
            movieFragmentRandomAccessBox.addBox(createTfra(it.next(), container));
        }
        MovieFragmentRandomAccessOffsetBox movieFragmentRandomAccessOffsetBox = new MovieFragmentRandomAccessOffsetBox();
        movieFragmentRandomAccessBox.addBox(movieFragmentRandomAccessOffsetBox);
        movieFragmentRandomAccessOffsetBox.setMfraSize(movieFragmentRandomAccessBox.getSize());
        return movieFragmentRandomAccessBox;
    }

    protected Box createTrex(Movie movie, Track track) {
        TrackExtendsBox trackExtendsBox = new TrackExtendsBox();
        trackExtendsBox.setTrackId(track.getTrackMetaData().getTrackId());
        trackExtendsBox.setDefaultSampleDescriptionIndex(1L);
        trackExtendsBox.setDefaultSampleDuration(0L);
        trackExtendsBox.setDefaultSampleSize(0L);
        SampleFlags sampleFlags = new SampleFlags();
        if ("soun".equals(track.getHandler()) || "subt".equals(track.getHandler())) {
            sampleFlags.setSampleDependsOn(2);
            sampleFlags.setSampleIsDependedOn(2);
        }
        trackExtendsBox.setDefaultSampleFlags(sampleFlags);
        return trackExtendsBox;
    }

    protected Box createMvex(Movie movie) {
        MovieExtendsBox movieExtendsBox = new MovieExtendsBox();
        MovieExtendsHeaderBox movieExtendsHeaderBox = new MovieExtendsHeaderBox();
        movieExtendsHeaderBox.setVersion(1);
        Iterator<Track> it = movie.getTracks().iterator();
        while (it.hasNext()) {
            long trackDuration = getTrackDuration(movie, it.next());
            if (movieExtendsHeaderBox.getFragmentDuration() < trackDuration) {
                movieExtendsHeaderBox.setFragmentDuration(trackDuration);
            }
        }
        movieExtendsBox.addBox(movieExtendsHeaderBox);
        Iterator<Track> it2 = movie.getTracks().iterator();
        while (it2.hasNext()) {
            movieExtendsBox.addBox(createTrex(movie, it2.next()));
        }
        return movieExtendsBox;
    }

    protected Box createTkhd(Movie movie, Track track) {
        TrackHeaderBox trackHeaderBox = new TrackHeaderBox();
        trackHeaderBox.setVersion(1);
        trackHeaderBox.setFlags(7);
        trackHeaderBox.setAlternateGroup(track.getTrackMetaData().getGroup());
        trackHeaderBox.setCreationTime(track.getTrackMetaData().getCreationTime());
        trackHeaderBox.setDuration(0L);
        trackHeaderBox.setHeight(track.getTrackMetaData().getHeight());
        trackHeaderBox.setWidth(track.getTrackMetaData().getWidth());
        trackHeaderBox.setLayer(track.getTrackMetaData().getLayer());
        trackHeaderBox.setModificationTime(getDate());
        trackHeaderBox.setTrackId(track.getTrackMetaData().getTrackId());
        trackHeaderBox.setVolume(track.getTrackMetaData().getVolume());
        return trackHeaderBox;
    }

    private long getTrackDuration(Movie movie, Track track) {
        return (track.getDuration() * movie.getTimescale()) / track.getTrackMetaData().getTimescale();
    }

    protected Box createMdhd(Movie movie, Track track) {
        MediaHeaderBox mediaHeaderBox = new MediaHeaderBox();
        mediaHeaderBox.setCreationTime(track.getTrackMetaData().getCreationTime());
        mediaHeaderBox.setModificationTime(getDate());
        mediaHeaderBox.setDuration(0L);
        mediaHeaderBox.setTimescale(track.getTrackMetaData().getTimescale());
        mediaHeaderBox.setLanguage(track.getTrackMetaData().getLanguage());
        return mediaHeaderBox;
    }

    protected Box createStbl(Movie movie, Track track) {
        SampleTableBox sampleTableBox = new SampleTableBox();
        createStsd(track, sampleTableBox);
        sampleTableBox.addBox(new TimeToSampleBox());
        sampleTableBox.addBox(new SampleToChunkBox());
        sampleTableBox.addBox(new SampleSizeBox());
        sampleTableBox.addBox(new StaticChunkOffsetBox());
        return sampleTableBox;
    }

    protected void createStsd(Track track, SampleTableBox sampleTableBox) {
        sampleTableBox.addBox(track.getSampleDescriptionBox());
    }

    protected Box createMinf(Track track, Movie movie) {
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
        mediaInformationBox.addBox(createDinf(movie, track));
        mediaInformationBox.addBox(createStbl(movie, track));
        return mediaInformationBox;
    }

    protected Box createMdiaHdlr(Track track, Movie movie) {
        HandlerBox handlerBox = new HandlerBox();
        handlerBox.setHandlerType(track.getHandler());
        return handlerBox;
    }

    protected Box createMdia(Track track, Movie movie) {
        MediaBox mediaBox = new MediaBox();
        mediaBox.addBox(createMdhd(movie, track));
        mediaBox.addBox(createMdiaHdlr(track, movie));
        mediaBox.addBox(createMinf(track, movie));
        return mediaBox;
    }

    protected Box createTrak(Track track, Movie movie) {
        LOG.fine("Creating Track " + track);
        TrackBox trackBox = new TrackBox();
        trackBox.addBox(createTkhd(movie, track));
        Box createEdts = createEdts(track, movie);
        if (createEdts != null) {
            trackBox.addBox(createEdts);
        }
        trackBox.addBox(createMdia(track, movie));
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

    protected DataInformationBox createDinf(Movie movie, Track track) {
        DataInformationBox dataInformationBox = new DataInformationBox();
        DataReferenceBox dataReferenceBox = new DataReferenceBox();
        dataInformationBox.addBox(dataReferenceBox);
        DataEntryUrlBox dataEntryUrlBox = new DataEntryUrlBox();
        dataEntryUrlBox.setFlags(1);
        dataReferenceBox.addBox(dataEntryUrlBox);
        return dataInformationBox;
    }

    public FragmentIntersectionFinder getFragmentIntersectionFinder() {
        return this.intersectionFinder;
    }

    public void setIntersectionFinder(FragmentIntersectionFinder fragmentIntersectionFinder) {
        this.intersectionFinder = fragmentIntersectionFinder;
    }
}
