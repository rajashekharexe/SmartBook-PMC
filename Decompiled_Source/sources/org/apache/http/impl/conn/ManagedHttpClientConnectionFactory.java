package org.apache.http.impl.conn;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.conn.HttpConnectionFactory;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.io.DefaultHttpRequestWriterFactory;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriterFactory;

/* loaded from: classes2.dex */
public class ManagedHttpClientConnectionFactory implements HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> {
    private static final AtomicLong COUNTER = new AtomicLong();
    public static final ManagedHttpClientConnectionFactory INSTANCE = new ManagedHttpClientConnectionFactory();
    private final HttpMessageWriterFactory<HttpRequest> requestWriterFactory;
    private final HttpMessageParserFactory<HttpResponse> responseParserFactory;

    public ManagedHttpClientConnectionFactory(HttpMessageWriterFactory<HttpRequest> httpMessageWriterFactory, HttpMessageParserFactory<HttpResponse> httpMessageParserFactory) {
        this.requestWriterFactory = httpMessageWriterFactory == null ? DefaultHttpRequestWriterFactory.INSTANCE : httpMessageWriterFactory;
        this.responseParserFactory = httpMessageParserFactory == null ? DefaultHttpResponseParserFactory.INSTANCE : httpMessageParserFactory;
    }

    public ManagedHttpClientConnectionFactory(HttpMessageParserFactory<HttpResponse> httpMessageParserFactory) {
        this(null, httpMessageParserFactory);
    }

    public ManagedHttpClientConnectionFactory() {
        this(null, null);
    }

    @Override // org.apache.http.conn.HttpConnectionFactory
    public ManagedHttpClientConnection create(HttpRoute httpRoute, ConnectionConfig connectionConfig) {
        CharsetDecoder charsetDecoder;
        CharsetEncoder charsetEncoder;
        ConnectionConfig connectionConfig2 = connectionConfig != null ? connectionConfig : ConnectionConfig.DEFAULT;
        Charset charset = connectionConfig2.getCharset();
        CodingErrorAction malformedInputAction = connectionConfig2.getMalformedInputAction() != null ? connectionConfig2.getMalformedInputAction() : CodingErrorAction.REPORT;
        CodingErrorAction unmappableInputAction = connectionConfig2.getUnmappableInputAction() != null ? connectionConfig2.getUnmappableInputAction() : CodingErrorAction.REPORT;
        if (charset != null) {
            CharsetDecoder newDecoder = charset.newDecoder();
            newDecoder.onMalformedInput(malformedInputAction);
            newDecoder.onUnmappableCharacter(unmappableInputAction);
            CharsetEncoder newEncoder = charset.newEncoder();
            newEncoder.onMalformedInput(malformedInputAction);
            newEncoder.onUnmappableCharacter(unmappableInputAction);
            charsetEncoder = newEncoder;
            charsetDecoder = newDecoder;
        } else {
            charsetDecoder = null;
            charsetEncoder = null;
        }
        return new LoggingManagedHttpClientConnection("http-outgoing-" + Long.toString(COUNTER.getAndIncrement()), connectionConfig2.getBufferSize(), connectionConfig2.getFragmentSizeHint(), charsetDecoder, charsetEncoder, connectionConfig2.getMessageConstraints(), null, null, this.requestWriterFactory, this.responseParserFactory);
    }
}
