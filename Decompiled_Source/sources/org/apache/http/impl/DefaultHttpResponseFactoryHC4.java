package org.apache.http.impl;

import java.util.Locale;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.ProtocolVersion;
import org.apache.http.ReasonPhraseCatalog;
import org.apache.http.StatusLine;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

/* loaded from: classes2.dex */
public class DefaultHttpResponseFactoryHC4 implements HttpResponseFactory {
    public static final DefaultHttpResponseFactoryHC4 INSTANCE = new DefaultHttpResponseFactoryHC4();
    protected final ReasonPhraseCatalog reasonCatalog;

    public DefaultHttpResponseFactoryHC4(ReasonPhraseCatalog reasonPhraseCatalog) {
        this.reasonCatalog = (ReasonPhraseCatalog) Args.notNull(reasonPhraseCatalog, "Reason phrase catalog");
    }

    public DefaultHttpResponseFactoryHC4() {
        this(EnglishReasonPhraseCatalogHC4.INSTANCE);
    }

    @Override // org.apache.http.HttpResponseFactory
    public HttpResponse newHttpResponse(ProtocolVersion protocolVersion, int i, HttpContext httpContext) {
        Args.notNull(protocolVersion, "HTTP version");
        Locale determineLocale = determineLocale(httpContext);
        return new BasicHttpResponse(new BasicStatusLine(protocolVersion, i, this.reasonCatalog.getReason(i, determineLocale)), this.reasonCatalog, determineLocale);
    }

    @Override // org.apache.http.HttpResponseFactory
    public HttpResponse newHttpResponse(StatusLine statusLine, HttpContext httpContext) {
        Args.notNull(statusLine, "Status line");
        return new BasicHttpResponse(statusLine, this.reasonCatalog, determineLocale(httpContext));
    }

    protected Locale determineLocale(HttpContext httpContext) {
        return Locale.getDefault();
    }
}
