package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.LongCompanionObject;
import org.apache.commons.io.FilenameUtils;

/* compiled from: TimeSources.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\nJ\b\u0010\r\u001a\u00020\u0004H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lkotlin/time/TestTimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "()V", "reading", "", "overflow", "", "duration", "Lkotlin/time/Duration;", "overflow-LRDsOJo", "(J)V", "plusAssign", "plusAssign-LRDsOJo", "read", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TestTimeSource extends AbstractLongTimeSource {
    private long reading;

    public TestTimeSource() {
        super(DurationUnit.NANOSECONDS);
    }

    @Override // kotlin.time.AbstractLongTimeSource
    /* renamed from: read, reason: from getter */
    protected long getReading() {
        return this.reading;
    }

    /* renamed from: plusAssign-LRDsOJo, reason: not valid java name */
    public final void m1739plusAssignLRDsOJo(long duration) {
        long j;
        long m1651toLongimpl = Duration.m1651toLongimpl(duration, getUnit());
        if (m1651toLongimpl != Long.MIN_VALUE && m1651toLongimpl != LongCompanionObject.MAX_VALUE) {
            long j2 = this.reading;
            j = j2 + m1651toLongimpl;
            if ((m1651toLongimpl ^ j2) >= 0 && (j2 ^ j) < 0) {
                m1738overflowLRDsOJo(duration);
            }
        } else {
            double m1648toDoubleimpl = this.reading + Duration.m1648toDoubleimpl(duration, getUnit());
            if (m1648toDoubleimpl > 9.223372036854776E18d || m1648toDoubleimpl < -9.223372036854776E18d) {
                m1738overflowLRDsOJo(duration);
            }
            j = (long) m1648toDoubleimpl;
        }
        this.reading = j;
    }

    /* renamed from: overflow-LRDsOJo, reason: not valid java name */
    private final void m1738overflowLRDsOJo(long duration) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.reading + "ns is advanced by " + ((Object) Duration.m1654toStringimpl(duration)) + FilenameUtils.EXTENSION_SEPARATOR);
    }
}
