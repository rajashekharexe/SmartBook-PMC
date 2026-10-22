package org.apache.http.impl.io;

import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.config.MessageConstraints;
import org.apache.http.impl.DefaultHttpResponseFactoryHC4;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.BasicLineParserHC4;
import org.apache.http.message.LineParser;

/* loaded from: classes2.dex */
public class DefaultHttpResponseParserFactory implements HttpMessageParserFactory<HttpResponse> {
    public static final DefaultHttpResponseParserFactory INSTANCE = new DefaultHttpResponseParserFactory();
    private final LineParser lineParser;
    private final HttpResponseFactory responseFactory;

    public DefaultHttpResponseParserFactory(LineParser lineParser, HttpResponseFactory httpResponseFactory) {
        this.lineParser = lineParser == null ? BasicLineParserHC4.INSTANCE : lineParser;
        this.responseFactory = httpResponseFactory == null ? DefaultHttpResponseFactoryHC4.INSTANCE : httpResponseFactory;
    }

    public DefaultHttpResponseParserFactory() {
        this(null, null);
    }

    @Override // org.apache.http.io.HttpMessageParserFactory
    public HttpMessageParser create(SessionInputBuffer sessionInputBuffer, MessageConstraints messageConstraints) {
        return new DefaultHttpResponseParser(sessionInputBuffer, this.lineParser, this.responseFactory, messageConstraints);
    }
}
