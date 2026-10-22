package retrofit2;

import java.io.IOException;
import kotlin.UByte;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;

/* loaded from: classes2.dex */
final class RequestBuilder {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final String PATH_SEGMENT_ALWAYS_ENCODE_SET = " \"<>^`{}|\\?#";
    private final HttpUrl baseUrl;
    private RequestBody body;
    private MediaType contentType;
    private FormBody.Builder formBuilder;
    private final boolean hasBody;
    private final String method;
    private MultipartBody.Builder multipartBuilder;
    private String relativeUrl;
    private final Request.Builder requestBuilder;
    private HttpUrl.Builder urlBuilder;

    RequestBuilder(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.method = str;
        this.baseUrl = httpUrl;
        this.relativeUrl = str2;
        Request.Builder builder = new Request.Builder();
        this.requestBuilder = builder;
        this.contentType = mediaType;
        this.hasBody = z;
        if (headers != null) {
            builder.headers(headers);
        }
        if (z2) {
            this.formBuilder = new FormBody.Builder();
        } else if (z3) {
            MultipartBody.Builder builder2 = new MultipartBody.Builder();
            this.multipartBuilder = builder2;
            builder2.setType(MultipartBody.FORM);
        }
    }

    void setRelativeUrl(Object obj) {
        if (obj == null) {
            throw new NullPointerException("@Url parameter is null.");
        }
        this.relativeUrl = obj.toString();
    }

    void addHeader(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            MediaType parse = MediaType.parse(str2);
            if (parse == null) {
                throw new IllegalArgumentException("Malformed content type: " + str2);
            }
            this.contentType = parse;
            return;
        }
        this.requestBuilder.addHeader(str, str2);
    }

    void addPathParam(String str, String str2, boolean z) {
        String str3 = this.relativeUrl;
        if (str3 == null) {
            throw new AssertionError();
        }
        this.relativeUrl = str3.replace("{" + str + "}", canonicalizeForPath(str2, z));
    }

    private static String canonicalizeForPath(String str, boolean z) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt >= 32 && codePointAt < 127 && PATH_SEGMENT_ALWAYS_ENCODE_SET.indexOf(codePointAt) == -1 && (z || (codePointAt != 47 && codePointAt != 37))) {
                i += Character.charCount(codePointAt);
            } else {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, 0, i);
                canonicalizeForPath(buffer, str, i, length, z);
                return buffer.readUtf8();
            }
        }
        return str;
    }

    private static void canonicalizeForPath(Buffer buffer, String str, int i, int i2, boolean z) {
        Buffer buffer2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt < 32 || codePointAt >= 127 || PATH_SEGMENT_ALWAYS_ENCODE_SET.indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(codePointAt);
                    while (!buffer2.exhausted()) {
                        byte readByte = buffer2.readByte();
                        int i3 = readByte & UByte.MAX_VALUE;
                        buffer.writeByte(37);
                        char[] cArr = HEX_DIGITS;
                        buffer.writeByte((int) cArr[(i3 >> 4) & 15]);
                        buffer.writeByte((int) cArr[readByte & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(codePointAt);
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    void addQueryParam(String str, String str2, boolean z) {
        String str3 = this.relativeUrl;
        if (str3 != null) {
            HttpUrl.Builder newBuilder = this.baseUrl.newBuilder(str3);
            this.urlBuilder = newBuilder;
            if (newBuilder == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.baseUrl + ", Relative: " + this.relativeUrl);
            }
            this.relativeUrl = null;
        }
        if (z) {
            this.urlBuilder.addEncodedQueryParameter(str, str2);
        } else {
            this.urlBuilder.addQueryParameter(str, str2);
        }
    }

    void addFormField(String str, String str2, boolean z) {
        if (z) {
            this.formBuilder.addEncoded(str, str2);
        } else {
            this.formBuilder.add(str, str2);
        }
    }

    void addPart(Headers headers, RequestBody requestBody) {
        this.multipartBuilder.addPart(headers, requestBody);
    }

    void addPart(MultipartBody.Part part) {
        this.multipartBuilder.addPart(part);
    }

    void setBody(RequestBody requestBody) {
        this.body = requestBody;
    }

    Request build() {
        HttpUrl resolve;
        HttpUrl.Builder builder = this.urlBuilder;
        if (builder != null) {
            resolve = builder.build();
        } else {
            resolve = this.baseUrl.resolve(this.relativeUrl);
            if (resolve == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.baseUrl + ", Relative: " + this.relativeUrl);
            }
        }
        RequestBody requestBody = this.body;
        if (requestBody == null) {
            FormBody.Builder builder2 = this.formBuilder;
            if (builder2 != null) {
                requestBody = builder2.build();
            } else {
                MultipartBody.Builder builder3 = this.multipartBuilder;
                if (builder3 != null) {
                    requestBody = builder3.build();
                } else if (this.hasBody) {
                    requestBody = RequestBody.create((MediaType) null, new byte[0]);
                }
            }
        }
        MediaType mediaType = this.contentType;
        if (mediaType != null) {
            if (requestBody != null) {
                requestBody = new ContentTypeOverridingRequestBody(requestBody, mediaType);
            } else {
                this.requestBuilder.addHeader("Content-Type", mediaType.getMediaType());
            }
        }
        return this.requestBuilder.url(resolve).method(this.method, requestBody).build();
    }

    private static class ContentTypeOverridingRequestBody extends RequestBody {
        private final MediaType contentType;
        private final RequestBody delegate;

        ContentTypeOverridingRequestBody(RequestBody requestBody, MediaType mediaType) {
            this.delegate = requestBody;
            this.contentType = mediaType;
        }

        @Override // okhttp3.RequestBody
        /* renamed from: contentType */
        public MediaType getContentType() {
            return this.contentType;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() throws IOException {
            return this.delegate.contentLength();
        }

        @Override // okhttp3.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            this.delegate.writeTo(bufferedSink);
        }
    }
}
