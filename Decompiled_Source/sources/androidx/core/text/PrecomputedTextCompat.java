package androidx.core.text;

import android.os.Build;
import android.os.LocaleList;
import android.text.Layout;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.core.os.TraceCompat;
import androidx.core.os.TraceCompat$$ExternalSyntheticApiModelOutline0;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public class PrecomputedTextCompat implements Spannable {
    private static final char LINE_FEED = '\n';
    private static Executor sExecutor;
    private static final Object sLock = new Object();
    private final int[] mParagraphEnds;
    private final Params mParams;
    private final Spannable mText;
    private final PrecomputedText mWrapped;

    public static final class Params {
        private final int mBreakStrategy;
        private final int mHyphenationFrequency;
        private final TextPaint mPaint;
        private final TextDirectionHeuristic mTextDir;
        final PrecomputedText.Params mWrapped;

        public static class Builder {
            private int mBreakStrategy;
            private int mHyphenationFrequency;
            private final TextPaint mPaint;
            private TextDirectionHeuristic mTextDir;

            public Builder(TextPaint paint) {
                this.mPaint = paint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.mBreakStrategy = 1;
                    this.mHyphenationFrequency = 1;
                } else {
                    this.mHyphenationFrequency = 0;
                    this.mBreakStrategy = 0;
                }
                this.mTextDir = TextDirectionHeuristics.FIRSTSTRONG_LTR;
            }

            public Builder setBreakStrategy(int strategy) {
                this.mBreakStrategy = strategy;
                return this;
            }

            public Builder setHyphenationFrequency(int frequency) {
                this.mHyphenationFrequency = frequency;
                return this;
            }

            public Builder setTextDirection(TextDirectionHeuristic textDir) {
                this.mTextDir = textDir;
                return this;
            }

            public Params build() {
                return new Params(this.mPaint, this.mTextDir, this.mBreakStrategy, this.mHyphenationFrequency);
            }
        }

        Params(TextPaint paint, TextDirectionHeuristic textDir, int strategy, int frequency) {
            PrecomputedText.Params.Builder breakStrategy;
            PrecomputedText.Params.Builder hyphenationFrequency;
            PrecomputedText.Params.Builder textDirection;
            PrecomputedText.Params build;
            if (Build.VERSION.SDK_INT >= 29) {
                breakStrategy = TraceCompat$$ExternalSyntheticApiModelOutline0.m111m(paint).setBreakStrategy(strategy);
                hyphenationFrequency = breakStrategy.setHyphenationFrequency(frequency);
                textDirection = hyphenationFrequency.setTextDirection(textDir);
                build = textDirection.build();
                this.mWrapped = build;
            } else {
                this.mWrapped = null;
            }
            this.mPaint = paint;
            this.mTextDir = textDir;
            this.mBreakStrategy = strategy;
            this.mHyphenationFrequency = frequency;
        }

        public Params(PrecomputedText.Params wrapped) {
            TextPaint textPaint;
            TextDirectionHeuristic textDirection;
            int breakStrategy;
            int hyphenationFrequency;
            textPaint = wrapped.getTextPaint();
            this.mPaint = textPaint;
            textDirection = wrapped.getTextDirection();
            this.mTextDir = textDirection;
            breakStrategy = wrapped.getBreakStrategy();
            this.mBreakStrategy = breakStrategy;
            hyphenationFrequency = wrapped.getHyphenationFrequency();
            this.mHyphenationFrequency = hyphenationFrequency;
            this.mWrapped = Build.VERSION.SDK_INT < 29 ? null : wrapped;
        }

        public TextPaint getTextPaint() {
            return this.mPaint;
        }

        public TextDirectionHeuristic getTextDirection() {
            return this.mTextDir;
        }

        public int getBreakStrategy() {
            return this.mBreakStrategy;
        }

        public int getHyphenationFrequency() {
            return this.mHyphenationFrequency;
        }

        public boolean equalsWithoutTextDirection(Params other) {
            LocaleList textLocales;
            LocaleList textLocales2;
            boolean equals;
            if ((Build.VERSION.SDK_INT >= 23 && (this.mBreakStrategy != other.getBreakStrategy() || this.mHyphenationFrequency != other.getHyphenationFrequency())) || this.mPaint.getTextSize() != other.getTextPaint().getTextSize() || this.mPaint.getTextScaleX() != other.getTextPaint().getTextScaleX() || this.mPaint.getTextSkewX() != other.getTextPaint().getTextSkewX() || this.mPaint.getLetterSpacing() != other.getTextPaint().getLetterSpacing() || !TextUtils.equals(this.mPaint.getFontFeatureSettings(), other.getTextPaint().getFontFeatureSettings()) || this.mPaint.getFlags() != other.getTextPaint().getFlags()) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                textLocales = this.mPaint.getTextLocales();
                textLocales2 = other.getTextPaint().getTextLocales();
                equals = textLocales.equals(textLocales2);
                if (!equals) {
                    return false;
                }
            } else if (!this.mPaint.getTextLocale().equals(other.getTextPaint().getTextLocale())) {
                return false;
            }
            return this.mPaint.getTypeface() == null ? other.getTextPaint().getTypeface() == null : this.mPaint.getTypeface().equals(other.getTextPaint().getTypeface());
        }

        public boolean equals(Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof Params)) {
                return false;
            }
            Params params = (Params) o;
            return equalsWithoutTextDirection(params) && this.mTextDir == params.getTextDirection();
        }

        public int hashCode() {
            LocaleList textLocales;
            if (Build.VERSION.SDK_INT >= 24) {
                Float valueOf = Float.valueOf(this.mPaint.getTextSize());
                Float valueOf2 = Float.valueOf(this.mPaint.getTextScaleX());
                Float valueOf3 = Float.valueOf(this.mPaint.getTextSkewX());
                Float valueOf4 = Float.valueOf(this.mPaint.getLetterSpacing());
                Integer valueOf5 = Integer.valueOf(this.mPaint.getFlags());
                textLocales = this.mPaint.getTextLocales();
                return ObjectsCompat.hash(valueOf, valueOf2, valueOf3, valueOf4, valueOf5, textLocales, this.mPaint.getTypeface(), Boolean.valueOf(this.mPaint.isElegantTextHeight()), this.mTextDir, Integer.valueOf(this.mBreakStrategy), Integer.valueOf(this.mHyphenationFrequency));
            }
            return ObjectsCompat.hash(Float.valueOf(this.mPaint.getTextSize()), Float.valueOf(this.mPaint.getTextScaleX()), Float.valueOf(this.mPaint.getTextSkewX()), Float.valueOf(this.mPaint.getLetterSpacing()), Integer.valueOf(this.mPaint.getFlags()), this.mPaint.getTextLocale(), this.mPaint.getTypeface(), Boolean.valueOf(this.mPaint.isElegantTextHeight()), this.mTextDir, Integer.valueOf(this.mBreakStrategy), Integer.valueOf(this.mHyphenationFrequency));
        }

        public String toString() {
            String fontVariationSettings;
            LocaleList textLocales;
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.mPaint.getTextSize());
            sb.append(", textScaleX=" + this.mPaint.getTextScaleX());
            sb.append(", textSkewX=" + this.mPaint.getTextSkewX());
            sb.append(", letterSpacing=" + this.mPaint.getLetterSpacing());
            sb.append(", elegantTextHeight=" + this.mPaint.isElegantTextHeight());
            if (Build.VERSION.SDK_INT >= 24) {
                StringBuilder sb2 = new StringBuilder(", textLocale=");
                textLocales = this.mPaint.getTextLocales();
                sb2.append(textLocales);
                sb.append(sb2.toString());
            } else {
                sb.append(", textLocale=" + this.mPaint.getTextLocale());
            }
            sb.append(", typeface=" + this.mPaint.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                StringBuilder sb3 = new StringBuilder(", variationSettings=");
                fontVariationSettings = this.mPaint.getFontVariationSettings();
                sb3.append(fontVariationSettings);
                sb.append(sb3.toString());
            }
            sb.append(", textDir=" + this.mTextDir);
            sb.append(", breakStrategy=" + this.mBreakStrategy);
            sb.append(", hyphenationFrequency=" + this.mHyphenationFrequency);
            sb.append("}");
            return sb.toString();
        }
    }

    public static PrecomputedTextCompat create(CharSequence text, Params params) {
        StaticLayout.Builder obtain;
        StaticLayout.Builder breakStrategy;
        StaticLayout.Builder hyphenationFrequency;
        StaticLayout.Builder textDirection;
        PrecomputedText create;
        Preconditions.checkNotNull(text);
        Preconditions.checkNotNull(params);
        try {
            TraceCompat.beginSection("PrecomputedText");
            if (Build.VERSION.SDK_INT >= 29 && params.mWrapped != null) {
                create = PrecomputedText.create(text, params.mWrapped);
                return new PrecomputedTextCompat(create, params);
            }
            ArrayList arrayList = new ArrayList();
            int length = text.length();
            int i = 0;
            while (i < length) {
                int indexOf = TextUtils.indexOf(text, '\n', i, length);
                i = indexOf < 0 ? length : indexOf + 1;
                arrayList.add(Integer.valueOf(i));
            }
            int[] iArr = new int[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
            }
            if (Build.VERSION.SDK_INT >= 23) {
                obtain = StaticLayout.Builder.obtain(text, 0, text.length(), params.getTextPaint(), Integer.MAX_VALUE);
                breakStrategy = obtain.setBreakStrategy(params.getBreakStrategy());
                hyphenationFrequency = breakStrategy.setHyphenationFrequency(params.getHyphenationFrequency());
                textDirection = hyphenationFrequency.setTextDirection(params.getTextDirection());
                textDirection.build();
            } else {
                new StaticLayout(text, params.getTextPaint(), Integer.MAX_VALUE, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
            return new PrecomputedTextCompat(text, params, iArr);
        } finally {
            TraceCompat.endSection();
        }
    }

    private PrecomputedTextCompat(CharSequence text, Params params, int[] paraEnds) {
        this.mText = new SpannableString(text);
        this.mParams = params;
        this.mParagraphEnds = paraEnds;
        this.mWrapped = null;
    }

    private PrecomputedTextCompat(PrecomputedText precomputed, Params params) {
        this.mText = precomputed;
        this.mParams = params;
        this.mParagraphEnds = null;
        this.mWrapped = Build.VERSION.SDK_INT < 29 ? null : precomputed;
    }

    public PrecomputedText getPrecomputedText() {
        if (TraceCompat$$ExternalSyntheticApiModelOutline0.m131m((Object) this.mText)) {
            return TraceCompat$$ExternalSyntheticApiModelOutline0.m((Object) this.mText);
        }
        return null;
    }

    public Params getParams() {
        return this.mParams;
    }

    public int getParagraphCount() {
        int paragraphCount;
        if (Build.VERSION.SDK_INT >= 29) {
            paragraphCount = this.mWrapped.getParagraphCount();
            return paragraphCount;
        }
        return this.mParagraphEnds.length;
    }

    public int getParagraphStart(int paraIndex) {
        int paragraphStart;
        Preconditions.checkArgumentInRange(paraIndex, 0, getParagraphCount(), "paraIndex");
        if (Build.VERSION.SDK_INT >= 29) {
            paragraphStart = this.mWrapped.getParagraphStart(paraIndex);
            return paragraphStart;
        }
        if (paraIndex == 0) {
            return 0;
        }
        return this.mParagraphEnds[paraIndex - 1];
    }

    public int getParagraphEnd(int paraIndex) {
        int paragraphEnd;
        Preconditions.checkArgumentInRange(paraIndex, 0, getParagraphCount(), "paraIndex");
        if (Build.VERSION.SDK_INT >= 29) {
            paragraphEnd = this.mWrapped.getParagraphEnd(paraIndex);
            return paragraphEnd;
        }
        return this.mParagraphEnds[paraIndex];
    }

    private static class PrecomputedTextFutureTask extends FutureTask<PrecomputedTextCompat> {

        private static class PrecomputedTextCallback implements Callable<PrecomputedTextCompat> {
            private Params mParams;
            private CharSequence mText;

            PrecomputedTextCallback(final Params params, final CharSequence cs) {
                this.mParams = params;
                this.mText = cs;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public PrecomputedTextCompat call() throws Exception {
                return PrecomputedTextCompat.create(this.mText, this.mParams);
            }
        }

        PrecomputedTextFutureTask(final Params params, final CharSequence text) {
            super(new PrecomputedTextCallback(params, text));
        }
    }

    public static Future<PrecomputedTextCompat> getTextFuture(final CharSequence charSequence, Params params, Executor executor) {
        PrecomputedTextFutureTask precomputedTextFutureTask = new PrecomputedTextFutureTask(params, charSequence);
        if (executor == null) {
            synchronized (sLock) {
                if (sExecutor == null) {
                    sExecutor = Executors.newFixedThreadPool(1);
                }
                executor = sExecutor;
            }
        }
        executor.execute(precomputedTextFutureTask);
        return precomputedTextFutureTask;
    }

    @Override // android.text.Spannable
    public void setSpan(Object what, int start, int end, int flags) {
        if (what instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.mWrapped.setSpan(what, start, end, flags);
        } else {
            this.mText.setSpan(what, start, end, flags);
        }
    }

    @Override // android.text.Spannable
    public void removeSpan(Object what) {
        if (what instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.mWrapped.removeSpan(what);
        } else {
            this.mText.removeSpan(what);
        }
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        Object[] spans;
        if (Build.VERSION.SDK_INT >= 29) {
            spans = this.mWrapped.getSpans(i, i2, cls);
            return (T[]) spans;
        }
        return (T[]) this.mText.getSpans(i, i2, cls);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object tag) {
        return this.mText.getSpanStart(tag);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object tag) {
        return this.mText.getSpanEnd(tag);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object tag) {
        return this.mText.getSpanFlags(tag);
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int start, int limit, Class type) {
        return this.mText.nextSpanTransition(start, limit, type);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.mText.length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int index) {
        return this.mText.charAt(index);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int start, int end) {
        return this.mText.subSequence(start, end);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.mText.toString();
    }
}
