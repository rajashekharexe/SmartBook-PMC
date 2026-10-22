package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeWriterVariable;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.sampleentry.VisualSampleEntry;
import com.googlecode.mp4parser.AbstractContainerBox;
import com.googlecode.mp4parser.MemoryDataSourceImpl;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.WrappingTrack;
import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.Path;
import com.mp4parser.iso14496.part15.AvcConfigurationBox;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class Avc1ToAvc3TrackImpl extends WrappingTrack {
    AvcConfigurationBox avcC;
    List<Sample> samples;
    SampleDescriptionBox stsd;

    public Avc1ToAvc3TrackImpl(Track track) throws IOException {
        super(track);
        if (!VisualSampleEntry.TYPE3.equals(track.getSampleDescriptionBox().getSampleEntry().getType())) {
            throw new RuntimeException("Only avc1 tracks can be converted to avc3 tracks");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        track.getSampleDescriptionBox().getBox(Channels.newChannel(byteArrayOutputStream));
        SampleDescriptionBox sampleDescriptionBox = (SampleDescriptionBox) Path.getPath(new IsoFile(new MemoryDataSourceImpl(byteArrayOutputStream.toByteArray())), SampleDescriptionBox.TYPE);
        this.stsd = sampleDescriptionBox;
        ((VisualSampleEntry) sampleDescriptionBox.getSampleEntry()).setType(VisualSampleEntry.TYPE4);
        this.avcC = (AvcConfigurationBox) Path.getPath((AbstractContainerBox) this.stsd, "avc./avcC");
        this.samples = new ReplaceSyncSamplesList(track.getSamples());
    }

    @Override // com.googlecode.mp4parser.authoring.WrappingTrack, com.googlecode.mp4parser.authoring.Track
    public SampleDescriptionBox getSampleDescriptionBox() {
        return this.stsd;
    }

    @Override // com.googlecode.mp4parser.authoring.WrappingTrack, com.googlecode.mp4parser.authoring.Track
    public List<Sample> getSamples() {
        return this.samples;
    }

    private class ReplaceSyncSamplesList extends AbstractList<Sample> {
        List<Sample> parentSamples;

        public ReplaceSyncSamplesList(List<Sample> list) {
            this.parentSamples = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public Sample get(int i) {
            if (Arrays.binarySearch(Avc1ToAvc3TrackImpl.this.getSyncSamples(), i + 1) >= 0) {
                final int lengthSizeMinusOne = Avc1ToAvc3TrackImpl.this.avcC.getLengthSizeMinusOne() + 1;
                final ByteBuffer allocate = ByteBuffer.allocate(lengthSizeMinusOne);
                final Sample sample = this.parentSamples.get(i);
                return new Sample() { // from class: com.googlecode.mp4parser.authoring.tracks.Avc1ToAvc3TrackImpl.ReplaceSyncSamplesList.1
                    @Override // com.googlecode.mp4parser.authoring.Sample
                    public void writeTo(WritableByteChannel writableByteChannel) throws IOException {
                        for (byte[] bArr : Avc1ToAvc3TrackImpl.this.avcC.getSequenceParameterSets()) {
                            IsoTypeWriterVariable.write(bArr.length, (ByteBuffer) allocate.rewind(), lengthSizeMinusOne);
                            writableByteChannel.write((ByteBuffer) allocate.rewind());
                            writableByteChannel.write(ByteBuffer.wrap(bArr));
                        }
                        for (byte[] bArr2 : Avc1ToAvc3TrackImpl.this.avcC.getSequenceParameterSetExts()) {
                            IsoTypeWriterVariable.write(bArr2.length, (ByteBuffer) allocate.rewind(), lengthSizeMinusOne);
                            writableByteChannel.write((ByteBuffer) allocate.rewind());
                            writableByteChannel.write(ByteBuffer.wrap(bArr2));
                        }
                        for (byte[] bArr3 : Avc1ToAvc3TrackImpl.this.avcC.getPictureParameterSets()) {
                            IsoTypeWriterVariable.write(bArr3.length, (ByteBuffer) allocate.rewind(), lengthSizeMinusOne);
                            writableByteChannel.write((ByteBuffer) allocate.rewind());
                            writableByteChannel.write(ByteBuffer.wrap(bArr3));
                        }
                        sample.writeTo(writableByteChannel);
                    }

                    @Override // com.googlecode.mp4parser.authoring.Sample
                    public long getSize() {
                        Iterator<byte[]> it = Avc1ToAvc3TrackImpl.this.avcC.getSequenceParameterSets().iterator();
                        int i2 = 0;
                        while (it.hasNext()) {
                            i2 += lengthSizeMinusOne + it.next().length;
                        }
                        Iterator<byte[]> it2 = Avc1ToAvc3TrackImpl.this.avcC.getSequenceParameterSetExts().iterator();
                        while (it2.hasNext()) {
                            i2 += lengthSizeMinusOne + it2.next().length;
                        }
                        Iterator<byte[]> it3 = Avc1ToAvc3TrackImpl.this.avcC.getPictureParameterSets().iterator();
                        while (it3.hasNext()) {
                            i2 += lengthSizeMinusOne + it3.next().length;
                        }
                        return sample.getSize() + i2;
                    }

                    @Override // com.googlecode.mp4parser.authoring.Sample
                    public ByteBuffer asByteBuffer() {
                        Iterator<byte[]> it = Avc1ToAvc3TrackImpl.this.avcC.getSequenceParameterSets().iterator();
                        int i2 = 0;
                        while (it.hasNext()) {
                            i2 += lengthSizeMinusOne + it.next().length;
                        }
                        Iterator<byte[]> it2 = Avc1ToAvc3TrackImpl.this.avcC.getSequenceParameterSetExts().iterator();
                        while (it2.hasNext()) {
                            i2 += lengthSizeMinusOne + it2.next().length;
                        }
                        Iterator<byte[]> it3 = Avc1ToAvc3TrackImpl.this.avcC.getPictureParameterSets().iterator();
                        while (it3.hasNext()) {
                            i2 += lengthSizeMinusOne + it3.next().length;
                        }
                        ByteBuffer allocate2 = ByteBuffer.allocate(CastUtils.l2i(sample.getSize()) + i2);
                        for (byte[] bArr : Avc1ToAvc3TrackImpl.this.avcC.getSequenceParameterSets()) {
                            IsoTypeWriterVariable.write(bArr.length, allocate2, lengthSizeMinusOne);
                            allocate2.put(bArr);
                        }
                        for (byte[] bArr2 : Avc1ToAvc3TrackImpl.this.avcC.getSequenceParameterSetExts()) {
                            IsoTypeWriterVariable.write(bArr2.length, allocate2, lengthSizeMinusOne);
                            allocate2.put(bArr2);
                        }
                        for (byte[] bArr3 : Avc1ToAvc3TrackImpl.this.avcC.getPictureParameterSets()) {
                            IsoTypeWriterVariable.write(bArr3.length, allocate2, lengthSizeMinusOne);
                            allocate2.put(bArr3);
                        }
                        allocate2.put(sample.asByteBuffer());
                        return (ByteBuffer) allocate2.rewind();
                    }
                };
            }
            return this.parentSamples.get(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.parentSamples.size();
        }
    }
}
