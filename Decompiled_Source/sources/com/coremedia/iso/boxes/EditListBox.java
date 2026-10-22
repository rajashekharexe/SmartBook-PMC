package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* loaded from: classes.dex */
public class EditListBox extends AbstractFullBox {
    public static final String TYPE = "elst";
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_0 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_1 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_2 = null;
    private List<Entry> entries;

    static {
        ajc$preClinit();
    }

    private static /* synthetic */ void ajc$preClinit() {
        Factory factory = new Factory("EditListBox.java", EditListBox.class);
        ajc$tjp_0 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "getEntries", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.util.List"), 68);
        ajc$tjp_1 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "setEntries", "com.coremedia.iso.boxes.EditListBox", "java.util.List", "entries", "", "void"), 72);
        ajc$tjp_2 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "toString", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.lang.String"), 108);
    }

    public EditListBox() {
        super(TYPE);
        this.entries = new LinkedList();
    }

    public List<Entry> getEntries() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_0, this, this));
        return this.entries;
    }

    public void setEntries(List<Entry> list) {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_1, this, this, list));
        this.entries = list;
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    protected long getContentSize() {
        int size;
        if (getVersion() == 1) {
            size = this.entries.size() * 20;
        } else {
            size = this.entries.size() * 12;
        }
        return size + 8;
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public void _parseDetails(ByteBuffer byteBuffer) {
        parseVersionAndFlags(byteBuffer);
        int l2i = CastUtils.l2i(IsoTypeReader.readUInt32(byteBuffer));
        this.entries = new LinkedList();
        for (int i = 0; i < l2i; i++) {
            this.entries.add(new Entry(this, byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    protected void getContent(ByteBuffer byteBuffer) {
        writeVersionAndFlags(byteBuffer);
        IsoTypeWriter.writeUInt32(byteBuffer, this.entries.size());
        Iterator<Entry> it = this.entries.iterator();
        while (it.hasNext()) {
            it.next().getContent(byteBuffer);
        }
    }

    public String toString() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_2, this, this));
        return "EditListBox{entries=" + this.entries + '}';
    }

    public static class Entry {
        EditListBox editListBox;
        private double mediaRate;
        private long mediaTime;
        private long segmentDuration;

        public Entry(EditListBox editListBox, long j, long j2, double d) {
            this.segmentDuration = j;
            this.mediaTime = j2;
            this.mediaRate = d;
            this.editListBox = editListBox;
        }

        public Entry(EditListBox editListBox, ByteBuffer byteBuffer) {
            if (editListBox.getVersion() == 1) {
                this.segmentDuration = IsoTypeReader.readUInt64(byteBuffer);
                this.mediaTime = byteBuffer.getLong();
                this.mediaRate = IsoTypeReader.readFixedPoint1616(byteBuffer);
            } else {
                this.segmentDuration = IsoTypeReader.readUInt32(byteBuffer);
                this.mediaTime = byteBuffer.getInt();
                this.mediaRate = IsoTypeReader.readFixedPoint1616(byteBuffer);
            }
            this.editListBox = editListBox;
        }

        public long getSegmentDuration() {
            return this.segmentDuration;
        }

        public void setSegmentDuration(long j) {
            this.segmentDuration = j;
        }

        public long getMediaTime() {
            return this.mediaTime;
        }

        public void setMediaTime(long j) {
            this.mediaTime = j;
        }

        public double getMediaRate() {
            return this.mediaRate;
        }

        public void setMediaRate(double d) {
            this.mediaRate = d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Entry entry = (Entry) obj;
            return this.mediaTime == entry.mediaTime && this.segmentDuration == entry.segmentDuration;
        }

        public int hashCode() {
            long j = this.segmentDuration;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.mediaTime;
            return i + ((int) (j2 ^ (j2 >>> 32)));
        }

        public void getContent(ByteBuffer byteBuffer) {
            if (this.editListBox.getVersion() == 1) {
                IsoTypeWriter.writeUInt64(byteBuffer, this.segmentDuration);
                byteBuffer.putLong(this.mediaTime);
            } else {
                IsoTypeWriter.writeUInt32(byteBuffer, CastUtils.l2i(this.segmentDuration));
                byteBuffer.putInt(CastUtils.l2i(this.mediaTime));
            }
            IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.mediaRate);
        }

        public String toString() {
            return "Entry{segmentDuration=" + this.segmentDuration + ", mediaTime=" + this.mediaTime + ", mediaRate=" + this.mediaRate + '}';
        }
    }
}
