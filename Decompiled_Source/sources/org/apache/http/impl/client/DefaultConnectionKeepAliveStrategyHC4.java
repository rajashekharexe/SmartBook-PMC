package org.apache.http.impl.client;

import org.apache.http.HeaderElement;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.message.BasicHeaderElementIterator;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

/* loaded from: classes2.dex */
public class DefaultConnectionKeepAliveStrategyHC4 implements ConnectionKeepAliveStrategy {
    public static final DefaultConnectionKeepAliveStrategyHC4 INSTANCE = new DefaultConnectionKeepAliveStrategyHC4();

    @Override // org.apache.http.conn.ConnectionKeepAliveStrategy
    public long getKeepAliveDuration(HttpResponse httpResponse, HttpContext httpContext) {
        Args.notNull(httpResponse, "HTTP response");
        BasicHeaderElementIterator basicHeaderElementIterator = new BasicHeaderElementIterator(httpResponse.headerIterator("Keep-Alive"));
        while (basicHeaderElementIterator.hasNext()) {
            HeaderElement nextElement = basicHeaderElementIterator.nextElement();
            String name = nextElement.getName();
            String value = nextElement.getValue();
            if (value != null && name.equalsIgnoreCase("timeout")) {
                try {
                    return Long.parseLong(value) * 1000;
                } catch (NumberFormatException unused) {
                }
            }
        }
        return -1L;
    }
}
