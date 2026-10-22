package okhttp3.logging;

import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Platform;
import okhttp3.internal.http.HttpEngine;
import okio.Buffer;
import okio.BufferedSource;
import org.apache.http.conn.ssl.TokenParser;

/* loaded from: classes2.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private volatile Level level;
    private final Logger logger;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface Logger {
        public static final Logger DEFAULT = new Logger() { // from class: okhttp3.logging.HttpLoggingInterceptor.Logger.1
            @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
            public void log(String str) {
                Platform.get().log(4, str, (Throwable) null);
            }
        };

        void log(String str);
    }

    public HttpLoggingInterceptor() {
        this(Logger.DEFAULT);
    }

    public HttpLoggingInterceptor(Logger logger) {
        this.level = Level.NONE;
        this.logger = logger;
    }

    public HttpLoggingInterceptor setLevel(Level level) {
        if (level == null) {
            throw new NullPointerException("level == null. Use Level.NONE instead.");
        }
        this.level = level;
        return this;
    }

    public Level getLevel() {
        return this.level;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        boolean z;
        boolean z2;
        Level level = this.level;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain.proceed(request);
        }
        boolean z3 = level == Level.BODY;
        boolean z4 = z3 || level == Level.HEADERS;
        RequestBody body = request.body();
        boolean z5 = body != null;
        Connection connection = chain.connection();
        String str = "--> " + request.method() + TokenParser.SP + request.url() + TokenParser.SP + (connection != null ? connection.protocol() : Protocol.HTTP_1_1);
        if (!z4 && z5) {
            str = str + " (" + body.contentLength() + "-byte body)";
        }
        this.logger.log(str);
        if (z4) {
            if (z5) {
                if (body.getContentType() != null) {
                    this.logger.log("Content-Type: " + body.getContentType());
                }
                if (body.contentLength() != -1) {
                    this.logger.log("Content-Length: " + body.contentLength());
                }
            }
            Headers headers = request.headers();
            int size = headers.size();
            int i = 0;
            while (i < size) {
                String name = headers.name(i);
                int i2 = size;
                if ("Content-Type".equalsIgnoreCase(name) || "Content-Length".equalsIgnoreCase(name)) {
                    z2 = z4;
                } else {
                    z2 = z4;
                    this.logger.log(name + ": " + headers.value(i));
                }
                i++;
                size = i2;
                z4 = z2;
            }
            z = z4;
            if (!z3 || !z5) {
                this.logger.log("--> END " + request.method());
            } else if (bodyEncoded(request.headers())) {
                this.logger.log("--> END " + request.method() + " (encoded body omitted)");
            } else {
                Buffer buffer = new Buffer();
                body.writeTo(buffer);
                Charset charset = UTF8;
                MediaType contentType = body.getContentType();
                if (contentType != null) {
                    charset = contentType.charset(charset);
                }
                this.logger.log("");
                if (isPlaintext(buffer)) {
                    this.logger.log(buffer.readString(charset));
                    this.logger.log("--> END " + request.method() + " (" + body.contentLength() + "-byte body)");
                } else {
                    this.logger.log("--> END " + request.method() + " (binary " + body.contentLength() + "-byte body omitted)");
                }
            }
        } else {
            z = z4;
        }
        long nanoTime = System.nanoTime();
        try {
            Response proceed = chain.proceed(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            ResponseBody body2 = proceed.body();
            long contentLength = body2.getContentLength();
            String str2 = contentLength != -1 ? contentLength + "-byte" : "unknown-length";
            Logger logger = this.logger;
            StringBuilder sb = new StringBuilder("<-- ");
            sb.append(proceed.code());
            sb.append(TokenParser.SP);
            sb.append(proceed.message());
            sb.append(TokenParser.SP);
            sb.append(proceed.request().url());
            sb.append(" (");
            sb.append(millis);
            sb.append("ms");
            sb.append(z ? "" : ", " + str2 + " body");
            sb.append(')');
            logger.log(sb.toString());
            if (z) {
                Headers headers2 = proceed.headers();
                int size2 = headers2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    this.logger.log(headers2.name(i3) + ": " + headers2.value(i3));
                }
                if (!z3 || !HttpEngine.hasBody(proceed)) {
                    this.logger.log("<-- END HTTP");
                } else if (bodyEncoded(proceed.headers())) {
                    this.logger.log("<-- END HTTP (encoded body omitted)");
                } else {
                    BufferedSource source = body2.getSource();
                    source.request(LongCompanionObject.MAX_VALUE);
                    Buffer bufferField = source.getBufferField();
                    Charset charset2 = UTF8;
                    MediaType mediaType = body2.get$contentType();
                    if (mediaType != null) {
                        try {
                            charset2 = mediaType.charset(charset2);
                        } catch (UnsupportedCharsetException unused) {
                            this.logger.log("");
                            this.logger.log("Couldn't decode the response body; charset is likely malformed.");
                            this.logger.log("<-- END HTTP");
                            return proceed;
                        }
                    }
                    if (!isPlaintext(bufferField)) {
                        this.logger.log("");
                        this.logger.log("<-- END HTTP (binary " + bufferField.size() + "-byte body omitted)");
                        return proceed;
                    }
                    if (contentLength != 0) {
                        this.logger.log("");
                        this.logger.log(bufferField.clone().readString(charset2));
                    }
                    this.logger.log("<-- END HTTP (" + bufferField.size() + "-byte body)");
                }
            }
            return proceed;
        } catch (Exception e) {
            this.logger.log("<-- HTTP FAILED: " + e);
            throw e;
        }
    }

    static boolean isPlaintext(Buffer buffer) throws EOFException {
        try {
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0L, buffer.size() < 64 ? buffer.size() : 64L);
            for (int i = 0; i < 16; i++) {
                if (buffer2.exhausted()) {
                    return true;
                }
                int readUtf8CodePoint = buffer2.readUtf8CodePoint();
                if (Character.isISOControl(readUtf8CodePoint) && !Character.isWhitespace(readUtf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    private boolean bodyEncoded(Headers headers) {
        String str = headers.get("Content-Encoding");
        return (str == null || str.equalsIgnoreCase("identity")) ? false : true;
    }
}
