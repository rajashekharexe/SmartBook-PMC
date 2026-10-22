package org.apache.http.impl.client;

import android.net.SSLCertificateSocketFactory;
import java.io.Closeable;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.BackoffManager;
import org.apache.http.client.ConnectionBackoffStrategy;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.ServiceUnavailableRetryStrategy;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.config.AuthSchemes;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.protocol.RequestAcceptEncoding;
import org.apache.http.client.protocol.RequestAddCookiesHC4;
import org.apache.http.client.protocol.RequestAuthCache;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.client.protocol.RequestDefaultHeadersHC4;
import org.apache.http.client.protocol.RequestExpectContinue;
import org.apache.http.client.protocol.ResponseContentEncoding;
import org.apache.http.client.protocol.ResponseProcessCookiesHC4;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.Lookup;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.config.SocketConfig;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.impl.DefaultConnectionReuseStrategyHC4;
import org.apache.http.impl.NoConnectionReuseStrategyHC4;
import org.apache.http.impl.auth.BasicSchemeFactoryHC4;
import org.apache.http.impl.auth.DigestSchemeFactoryHC4;
import org.apache.http.impl.auth.NTLMSchemeFactory;
import org.apache.http.impl.conn.DefaultProxyRoutePlanner;
import org.apache.http.impl.conn.DefaultRoutePlanner;
import org.apache.http.impl.conn.DefaultSchemePortResolver;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.impl.conn.SystemDefaultRoutePlanner;
import org.apache.http.impl.cookie.BestMatchSpecFactoryHC4;
import org.apache.http.impl.cookie.BrowserCompatSpecFactoryHC4;
import org.apache.http.impl.cookie.IgnoreSpecFactory;
import org.apache.http.impl.cookie.NetscapeDraftSpecFactoryHC4;
import org.apache.http.impl.cookie.RFC2109SpecFactoryHC4;
import org.apache.http.impl.cookie.RFC2965SpecFactoryHC4;
import org.apache.http.impl.execchain.BackoffStrategyExec;
import org.apache.http.impl.execchain.ClientExecChain;
import org.apache.http.impl.execchain.MainClientExec;
import org.apache.http.impl.execchain.ProtocolExec;
import org.apache.http.impl.execchain.RedirectExec;
import org.apache.http.impl.execchain.RetryExec;
import org.apache.http.impl.execchain.ServiceUnavailableRetryExec;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpProcessorBuilder;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.RequestContentHC4;
import org.apache.http.protocol.RequestTargetHostHC4;
import org.apache.http.protocol.RequestUserAgentHC4;
import org.apache.http.util.TextUtils;
import org.apache.http.util.VersionInfoHC4;

/* loaded from: classes2.dex */
public class HttpClientBuilder {
    static final String DEFAULT_USER_AGENT;
    private boolean authCachingDisabled;
    private Lookup<AuthSchemeProvider> authSchemeRegistry;
    private boolean automaticRetriesDisabled;
    private BackoffManager backoffManager;
    private List<Closeable> closeables;
    private HttpClientConnectionManager connManager;
    private ConnectionBackoffStrategy connectionBackoffStrategy;
    private boolean connectionStateDisabled;
    private boolean contentCompressionDisabled;
    private boolean cookieManagementDisabled;
    private Lookup<CookieSpecProvider> cookieSpecRegistry;
    private CookieStore cookieStore;
    private CredentialsProvider credentialsProvider;
    private ConnectionConfig defaultConnectionConfig;
    private Collection<? extends Header> defaultHeaders;
    private RequestConfig defaultRequestConfig;
    private SocketConfig defaultSocketConfig;
    private X509HostnameVerifier hostnameVerifier;
    private HttpProcessor httpprocessor;
    private ConnectionKeepAliveStrategy keepAliveStrategy;
    private HttpHost proxy;
    private AuthenticationStrategy proxyAuthStrategy;
    private boolean redirectHandlingDisabled;
    private RedirectStrategy redirectStrategy;
    private HttpRequestExecutor requestExec;
    private LinkedList<HttpRequestInterceptor> requestFirst;
    private LinkedList<HttpRequestInterceptor> requestLast;
    private LinkedList<HttpResponseInterceptor> responseFirst;
    private LinkedList<HttpResponseInterceptor> responseLast;
    private HttpRequestRetryHandler retryHandler;
    private ConnectionReuseStrategy reuseStrategy;
    private HttpRoutePlanner routePlanner;
    private SchemePortResolver schemePortResolver;
    private ServiceUnavailableRetryStrategy serviceUnavailStrategy;
    private LayeredConnectionSocketFactory sslSocketFactory;
    private SSLContext sslcontext;
    private boolean systemProperties;
    private AuthenticationStrategy targetAuthStrategy;
    private String userAgent;
    private UserTokenHandler userTokenHandler;
    private int maxConnTotal = 0;
    private int maxConnPerRoute = 0;

    protected ClientExecChain decorateMainExec(ClientExecChain clientExecChain) {
        return clientExecChain;
    }

    protected ClientExecChain decorateProtocolExec(ClientExecChain clientExecChain) {
        return clientExecChain;
    }

    static {
        VersionInfoHC4 loadVersionInfo = VersionInfoHC4.loadVersionInfo("org.apache.http.client", HttpClientBuilder.class.getClassLoader());
        DEFAULT_USER_AGENT = "Apache-HttpClient/" + (loadVersionInfo != null ? loadVersionInfo.getRelease() : VersionInfoHC4.UNAVAILABLE) + " (java 1.5)";
    }

    public static HttpClientBuilder create() {
        return new HttpClientBuilder();
    }

    protected HttpClientBuilder() {
    }

    public final HttpClientBuilder setRequestExecutor(HttpRequestExecutor httpRequestExecutor) {
        this.requestExec = httpRequestExecutor;
        return this;
    }

    public final HttpClientBuilder setHostnameVerifier(X509HostnameVerifier x509HostnameVerifier) {
        this.hostnameVerifier = x509HostnameVerifier;
        return this;
    }

    public final HttpClientBuilder setSslcontext(SSLContext sSLContext) {
        this.sslcontext = sSLContext;
        return this;
    }

    public final HttpClientBuilder setSSLSocketFactory(LayeredConnectionSocketFactory layeredConnectionSocketFactory) {
        this.sslSocketFactory = layeredConnectionSocketFactory;
        return this;
    }

    public final HttpClientBuilder setMaxConnTotal(int i) {
        this.maxConnTotal = i;
        return this;
    }

    public final HttpClientBuilder setMaxConnPerRoute(int i) {
        this.maxConnPerRoute = i;
        return this;
    }

    public final HttpClientBuilder setDefaultSocketConfig(SocketConfig socketConfig) {
        this.defaultSocketConfig = socketConfig;
        return this;
    }

    public final HttpClientBuilder setDefaultConnectionConfig(ConnectionConfig connectionConfig) {
        this.defaultConnectionConfig = connectionConfig;
        return this;
    }

    public final HttpClientBuilder setConnectionManager(HttpClientConnectionManager httpClientConnectionManager) {
        this.connManager = httpClientConnectionManager;
        return this;
    }

    public final HttpClientBuilder setConnectionReuseStrategy(ConnectionReuseStrategy connectionReuseStrategy) {
        this.reuseStrategy = connectionReuseStrategy;
        return this;
    }

    public final HttpClientBuilder setKeepAliveStrategy(ConnectionKeepAliveStrategy connectionKeepAliveStrategy) {
        this.keepAliveStrategy = connectionKeepAliveStrategy;
        return this;
    }

    public final HttpClientBuilder setTargetAuthenticationStrategy(AuthenticationStrategy authenticationStrategy) {
        this.targetAuthStrategy = authenticationStrategy;
        return this;
    }

    public final HttpClientBuilder setProxyAuthenticationStrategy(AuthenticationStrategy authenticationStrategy) {
        this.proxyAuthStrategy = authenticationStrategy;
        return this;
    }

    public final HttpClientBuilder setUserTokenHandler(UserTokenHandler userTokenHandler) {
        this.userTokenHandler = userTokenHandler;
        return this;
    }

    public final HttpClientBuilder disableConnectionState() {
        this.connectionStateDisabled = true;
        return this;
    }

    public final HttpClientBuilder setSchemePortResolver(SchemePortResolver schemePortResolver) {
        this.schemePortResolver = schemePortResolver;
        return this;
    }

    public final HttpClientBuilder setUserAgent(String str) {
        this.userAgent = str;
        return this;
    }

    public final HttpClientBuilder setDefaultHeaders(Collection<? extends Header> collection) {
        this.defaultHeaders = collection;
        return this;
    }

    public final HttpClientBuilder addInterceptorFirst(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor == null) {
            return this;
        }
        if (this.responseFirst == null) {
            this.responseFirst = new LinkedList<>();
        }
        this.responseFirst.addFirst(httpResponseInterceptor);
        return this;
    }

    public final HttpClientBuilder addInterceptorLast(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor == null) {
            return this;
        }
        if (this.responseLast == null) {
            this.responseLast = new LinkedList<>();
        }
        this.responseLast.addLast(httpResponseInterceptor);
        return this;
    }

    public final HttpClientBuilder addInterceptorFirst(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor == null) {
            return this;
        }
        if (this.requestFirst == null) {
            this.requestFirst = new LinkedList<>();
        }
        this.requestFirst.addFirst(httpRequestInterceptor);
        return this;
    }

    public final HttpClientBuilder addInterceptorLast(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor == null) {
            return this;
        }
        if (this.requestLast == null) {
            this.requestLast = new LinkedList<>();
        }
        this.requestLast.addLast(httpRequestInterceptor);
        return this;
    }

    public final HttpClientBuilder disableCookieManagement() {
        this.cookieManagementDisabled = true;
        return this;
    }

    public final HttpClientBuilder disableContentCompression() {
        this.contentCompressionDisabled = true;
        return this;
    }

    public final HttpClientBuilder disableAuthCaching() {
        this.authCachingDisabled = true;
        return this;
    }

    public final HttpClientBuilder setHttpProcessor(HttpProcessor httpProcessor) {
        this.httpprocessor = httpProcessor;
        return this;
    }

    public final HttpClientBuilder setRetryHandler(HttpRequestRetryHandler httpRequestRetryHandler) {
        this.retryHandler = httpRequestRetryHandler;
        return this;
    }

    public final HttpClientBuilder disableAutomaticRetries() {
        this.automaticRetriesDisabled = true;
        return this;
    }

    public final HttpClientBuilder setProxy(HttpHost httpHost) {
        this.proxy = httpHost;
        return this;
    }

    public final HttpClientBuilder setRoutePlanner(HttpRoutePlanner httpRoutePlanner) {
        this.routePlanner = httpRoutePlanner;
        return this;
    }

    public final HttpClientBuilder setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
        return this;
    }

    public final HttpClientBuilder disableRedirectHandling() {
        this.redirectHandlingDisabled = true;
        return this;
    }

    public final HttpClientBuilder setConnectionBackoffStrategy(ConnectionBackoffStrategy connectionBackoffStrategy) {
        this.connectionBackoffStrategy = connectionBackoffStrategy;
        return this;
    }

    public final HttpClientBuilder setBackoffManager(BackoffManager backoffManager) {
        this.backoffManager = backoffManager;
        return this;
    }

    public final HttpClientBuilder setServiceUnavailableRetryStrategy(ServiceUnavailableRetryStrategy serviceUnavailableRetryStrategy) {
        this.serviceUnavailStrategy = serviceUnavailableRetryStrategy;
        return this;
    }

    public final HttpClientBuilder setDefaultCookieStore(CookieStore cookieStore) {
        this.cookieStore = cookieStore;
        return this;
    }

    public final HttpClientBuilder setDefaultCredentialsProvider(CredentialsProvider credentialsProvider) {
        this.credentialsProvider = credentialsProvider;
        return this;
    }

    public final HttpClientBuilder setDefaultAuthSchemeRegistry(Lookup<AuthSchemeProvider> lookup) {
        this.authSchemeRegistry = lookup;
        return this;
    }

    public final HttpClientBuilder setDefaultCookieSpecRegistry(Lookup<CookieSpecProvider> lookup) {
        this.cookieSpecRegistry = lookup;
        return this;
    }

    public final HttpClientBuilder setDefaultRequestConfig(RequestConfig requestConfig) {
        this.defaultRequestConfig = requestConfig;
        return this;
    }

    public final HttpClientBuilder useSystemProperties() {
        this.systemProperties = true;
        return this;
    }

    protected void addCloseable(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        if (this.closeables == null) {
            this.closeables = new ArrayList();
        }
        this.closeables.add(closeable);
    }

    private static String[] split(String str) {
        if (TextUtils.isBlank(str)) {
            return null;
        }
        return str.split(" *, *");
    }

    public CloseableHttpClient build() {
        HttpClientConnectionManager httpClientConnectionManager;
        HttpRoutePlanner httpRoutePlanner;
        HttpRequestExecutor httpRequestExecutor = this.requestExec;
        if (httpRequestExecutor == null) {
            httpRequestExecutor = new HttpRequestExecutor();
        }
        HttpRequestExecutor httpRequestExecutor2 = httpRequestExecutor;
        HttpClientConnectionManager httpClientConnectionManager2 = this.connManager;
        if (httpClientConnectionManager2 == null) {
            ConnectionSocketFactory connectionSocketFactory = this.sslSocketFactory;
            if (connectionSocketFactory == null) {
                String[] split = this.systemProperties ? split(System.getProperty("https.protocols")) : null;
                String[] split2 = this.systemProperties ? split(System.getProperty("https.cipherSuites")) : null;
                X509HostnameVerifier x509HostnameVerifier = this.hostnameVerifier;
                if (x509HostnameVerifier == null) {
                    x509HostnameVerifier = SSLConnectionSocketFactory.BROWSER_COMPATIBLE_HOSTNAME_VERIFIER;
                }
                if (this.sslcontext != null) {
                    connectionSocketFactory = new SSLConnectionSocketFactory(this.sslcontext, split, split2, x509HostnameVerifier);
                } else {
                    boolean z = this.systemProperties;
                    if (z) {
                        connectionSocketFactory = z ? new SSLConnectionSocketFactory((SSLSocketFactory) SSLCertificateSocketFactory.getDefault(0), split, split2, x509HostnameVerifier) : new SSLConnectionSocketFactory((SSLSocketFactory) SSLCertificateSocketFactory.getDefault(0), x509HostnameVerifier);
                    }
                }
            }
            PoolingHttpClientConnectionManager poolingHttpClientConnectionManager = new PoolingHttpClientConnectionManager((Registry<ConnectionSocketFactory>) RegistryBuilder.create().register("http", PlainConnectionSocketFactory.getSocketFactory()).register("https", connectionSocketFactory).build());
            SocketConfig socketConfig = this.defaultSocketConfig;
            if (socketConfig != null) {
                poolingHttpClientConnectionManager.setDefaultSocketConfig(socketConfig);
            }
            ConnectionConfig connectionConfig = this.defaultConnectionConfig;
            if (connectionConfig != null) {
                poolingHttpClientConnectionManager.setDefaultConnectionConfig(connectionConfig);
            }
            if (this.systemProperties && "true".equalsIgnoreCase(System.getProperty("http.keepAlive", "true"))) {
                int parseInt = Integer.parseInt(System.getProperty("http.maxConnections", "5"));
                poolingHttpClientConnectionManager.setDefaultMaxPerRoute(parseInt);
                poolingHttpClientConnectionManager.setMaxTotal(parseInt * 2);
            }
            int i = this.maxConnTotal;
            if (i > 0) {
                poolingHttpClientConnectionManager.setMaxTotal(i);
            }
            int i2 = this.maxConnPerRoute;
            if (i2 > 0) {
                poolingHttpClientConnectionManager.setDefaultMaxPerRoute(i2);
            }
            httpClientConnectionManager = poolingHttpClientConnectionManager;
        } else {
            httpClientConnectionManager = httpClientConnectionManager2;
        }
        ConnectionReuseStrategy connectionReuseStrategy = this.reuseStrategy;
        if (connectionReuseStrategy == null) {
            if (this.systemProperties) {
                if ("true".equalsIgnoreCase(System.getProperty("http.keepAlive", "true"))) {
                    connectionReuseStrategy = DefaultConnectionReuseStrategyHC4.INSTANCE;
                } else {
                    connectionReuseStrategy = NoConnectionReuseStrategyHC4.INSTANCE;
                }
            } else {
                connectionReuseStrategy = DefaultConnectionReuseStrategyHC4.INSTANCE;
            }
        }
        ConnectionReuseStrategy connectionReuseStrategy2 = connectionReuseStrategy;
        ConnectionKeepAliveStrategy connectionKeepAliveStrategy = this.keepAliveStrategy;
        if (connectionKeepAliveStrategy == null) {
            connectionKeepAliveStrategy = DefaultConnectionKeepAliveStrategyHC4.INSTANCE;
        }
        ConnectionKeepAliveStrategy connectionKeepAliveStrategy2 = connectionKeepAliveStrategy;
        AuthenticationStrategy authenticationStrategy = this.targetAuthStrategy;
        if (authenticationStrategy == null) {
            authenticationStrategy = TargetAuthenticationStrategy.INSTANCE;
        }
        AuthenticationStrategy authenticationStrategy2 = authenticationStrategy;
        AuthenticationStrategy authenticationStrategy3 = this.proxyAuthStrategy;
        if (authenticationStrategy3 == null) {
            authenticationStrategy3 = ProxyAuthenticationStrategy.INSTANCE;
        }
        AuthenticationStrategy authenticationStrategy4 = authenticationStrategy3;
        UserTokenHandler userTokenHandler = this.userTokenHandler;
        if (userTokenHandler == null) {
            if (!this.connectionStateDisabled) {
                userTokenHandler = DefaultUserTokenHandlerHC4.INSTANCE;
            } else {
                userTokenHandler = NoopUserTokenHandler.INSTANCE;
            }
        }
        ClientExecChain decorateMainExec = decorateMainExec(new MainClientExec(httpRequestExecutor2, httpClientConnectionManager, connectionReuseStrategy2, connectionKeepAliveStrategy2, authenticationStrategy2, authenticationStrategy4, userTokenHandler));
        HttpProcessor httpProcessor = this.httpprocessor;
        if (httpProcessor == null) {
            String str = this.userAgent;
            if (str == null) {
                if (this.systemProperties) {
                    str = System.getProperty("http.agent");
                }
                if (str == null) {
                    str = DEFAULT_USER_AGENT;
                }
            }
            HttpProcessorBuilder create = HttpProcessorBuilder.create();
            LinkedList<HttpRequestInterceptor> linkedList = this.requestFirst;
            if (linkedList != null) {
                Iterator<HttpRequestInterceptor> it = linkedList.iterator();
                while (it.hasNext()) {
                    create.addFirst(it.next());
                }
            }
            LinkedList<HttpResponseInterceptor> linkedList2 = this.responseFirst;
            if (linkedList2 != null) {
                Iterator<HttpResponseInterceptor> it2 = linkedList2.iterator();
                while (it2.hasNext()) {
                    create.addFirst(it2.next());
                }
            }
            create.addAll(new RequestDefaultHeadersHC4(this.defaultHeaders), new RequestContentHC4(), new RequestTargetHostHC4(), new RequestClientConnControl(), new RequestUserAgentHC4(str), new RequestExpectContinue());
            if (!this.cookieManagementDisabled) {
                create.add(new RequestAddCookiesHC4());
            }
            if (!this.contentCompressionDisabled) {
                create.add(new RequestAcceptEncoding());
            }
            if (!this.authCachingDisabled) {
                create.add(new RequestAuthCache());
            }
            if (!this.cookieManagementDisabled) {
                create.add(new ResponseProcessCookiesHC4());
            }
            if (!this.contentCompressionDisabled) {
                create.add(new ResponseContentEncoding());
            }
            LinkedList<HttpRequestInterceptor> linkedList3 = this.requestLast;
            if (linkedList3 != null) {
                Iterator<HttpRequestInterceptor> it3 = linkedList3.iterator();
                while (it3.hasNext()) {
                    create.addLast(it3.next());
                }
            }
            LinkedList<HttpResponseInterceptor> linkedList4 = this.responseLast;
            if (linkedList4 != null) {
                Iterator<HttpResponseInterceptor> it4 = linkedList4.iterator();
                while (it4.hasNext()) {
                    create.addLast(it4.next());
                }
            }
            httpProcessor = create.build();
        }
        ClientExecChain decorateProtocolExec = decorateProtocolExec(new ProtocolExec(decorateMainExec, httpProcessor));
        if (!this.automaticRetriesDisabled) {
            HttpRequestRetryHandler httpRequestRetryHandler = this.retryHandler;
            if (httpRequestRetryHandler == null) {
                httpRequestRetryHandler = DefaultHttpRequestRetryHandlerHC4.INSTANCE;
            }
            decorateProtocolExec = new RetryExec(decorateProtocolExec, httpRequestRetryHandler);
        }
        HttpRoutePlanner httpRoutePlanner2 = this.routePlanner;
        if (httpRoutePlanner2 == null) {
            SchemePortResolver schemePortResolver = this.schemePortResolver;
            if (schemePortResolver == null) {
                schemePortResolver = DefaultSchemePortResolver.INSTANCE;
            }
            HttpHost httpHost = this.proxy;
            if (httpHost != null) {
                httpRoutePlanner = new DefaultProxyRoutePlanner(httpHost, schemePortResolver);
            } else if (this.systemProperties) {
                httpRoutePlanner = new SystemDefaultRoutePlanner(schemePortResolver, ProxySelector.getDefault());
            } else {
                httpRoutePlanner = new DefaultRoutePlanner(schemePortResolver);
            }
        } else {
            httpRoutePlanner = httpRoutePlanner2;
        }
        if (!this.redirectHandlingDisabled) {
            RedirectStrategy redirectStrategy = this.redirectStrategy;
            if (redirectStrategy == null) {
                redirectStrategy = DefaultRedirectStrategy.INSTANCE;
            }
            decorateProtocolExec = new RedirectExec(decorateProtocolExec, httpRoutePlanner, redirectStrategy);
        }
        ServiceUnavailableRetryStrategy serviceUnavailableRetryStrategy = this.serviceUnavailStrategy;
        if (serviceUnavailableRetryStrategy != null) {
            decorateProtocolExec = new ServiceUnavailableRetryExec(decorateProtocolExec, serviceUnavailableRetryStrategy);
        }
        BackoffManager backoffManager = this.backoffManager;
        ConnectionBackoffStrategy connectionBackoffStrategy = this.connectionBackoffStrategy;
        ClientExecChain backoffStrategyExec = (backoffManager == null || connectionBackoffStrategy == null) ? decorateProtocolExec : new BackoffStrategyExec(decorateProtocolExec, connectionBackoffStrategy, backoffManager);
        Lookup lookup = this.authSchemeRegistry;
        if (lookup == null) {
            lookup = RegistryBuilder.create().register(AuthSchemes.BASIC, new BasicSchemeFactoryHC4()).register(AuthSchemes.DIGEST, new DigestSchemeFactoryHC4()).register(AuthSchemes.NTLM, new NTLMSchemeFactory()).build();
        }
        Lookup lookup2 = lookup;
        Lookup lookup3 = this.cookieSpecRegistry;
        if (lookup3 == null) {
            lookup3 = RegistryBuilder.create().register(CookieSpecs.BEST_MATCH, new BestMatchSpecFactoryHC4()).register(CookieSpecs.STANDARD, new RFC2965SpecFactoryHC4()).register(CookieSpecs.BROWSER_COMPATIBILITY, new BrowserCompatSpecFactoryHC4()).register(CookieSpecs.NETSCAPE, new NetscapeDraftSpecFactoryHC4()).register(CookieSpecs.IGNORE_COOKIES, new IgnoreSpecFactory()).register("rfc2109", new RFC2109SpecFactoryHC4()).register("rfc2965", new RFC2965SpecFactoryHC4()).build();
        }
        Lookup lookup4 = lookup3;
        CookieStore cookieStore = this.cookieStore;
        if (cookieStore == null) {
            cookieStore = new BasicCookieStoreHC4();
        }
        CookieStore cookieStore2 = cookieStore;
        CredentialsProvider credentialsProvider = this.credentialsProvider;
        if (credentialsProvider == null) {
            if (this.systemProperties) {
                credentialsProvider = new SystemDefaultCredentialsProvider();
            } else {
                credentialsProvider = new BasicCredentialsProviderHC4();
            }
        }
        CredentialsProvider credentialsProvider2 = credentialsProvider;
        RequestConfig requestConfig = this.defaultRequestConfig;
        if (requestConfig == null) {
            requestConfig = RequestConfig.DEFAULT;
        }
        return new InternalHttpClient(backoffStrategyExec, httpClientConnectionManager, httpRoutePlanner, lookup4, lookup2, cookieStore2, credentialsProvider2, requestConfig, this.closeables != null ? new ArrayList(this.closeables) : null);
    }
}
