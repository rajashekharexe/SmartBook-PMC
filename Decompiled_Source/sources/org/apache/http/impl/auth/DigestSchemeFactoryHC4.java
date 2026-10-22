package org.apache.http.impl.auth;

import java.nio.charset.Charset;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeFactory;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes2.dex */
public class DigestSchemeFactoryHC4 implements AuthSchemeFactory, AuthSchemeProvider {
    private final Charset charset;

    public DigestSchemeFactoryHC4(Charset charset) {
        this.charset = charset;
    }

    public DigestSchemeFactoryHC4() {
        this(null);
    }

    @Override // org.apache.http.auth.AuthSchemeFactory
    public AuthScheme newInstance(HttpParams httpParams) {
        return new DigestSchemeHC4();
    }

    @Override // org.apache.http.auth.AuthSchemeProvider
    public AuthScheme create(HttpContext httpContext) {
        return new DigestSchemeHC4(this.charset);
    }
}
