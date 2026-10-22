package org.apache.http.client.protocol;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.client.entity.DeflateDecompressingEntity;
import org.apache.http.client.entity.GzipDecompressingEntity;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes2.dex */
public class ResponseContentEncoding implements HttpResponseInterceptor {
    public static final String UNCOMPRESSED = "http.client.response.uncompressed";

    @Override // org.apache.http.HttpResponseInterceptor
    public void process(HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        Header contentEncoding;
        HttpEntity entity = httpResponse.getEntity();
        if (entity == null || entity.getContentLength() == 0 || (contentEncoding = entity.getContentEncoding()) == null) {
            return;
        }
        HeaderElement[] elements = contentEncoding.getElements();
        if (elements.length > 0) {
            HeaderElement headerElement = elements[0];
            String lowerCase = headerElement.getName().toLowerCase(Locale.ENGLISH);
            if (HttpRequest.ENCODING_GZIP.equals(lowerCase) || "x-gzip".equals(lowerCase)) {
                httpResponse.setEntity(new GzipDecompressingEntity(httpResponse.getEntity()));
            } else if ("deflate".equals(lowerCase)) {
                httpResponse.setEntity(new DeflateDecompressingEntity(httpResponse.getEntity()));
            } else {
                if ("identity".equals(lowerCase)) {
                    return;
                }
                throw new HttpException("Unsupported Content-Coding: " + headerElement.getName());
            }
            httpResponse.removeHeaders("Content-Length");
            httpResponse.removeHeaders("Content-Encoding");
            httpResponse.removeHeaders(HttpHeaders.CONTENT_MD5);
        }
    }
}
