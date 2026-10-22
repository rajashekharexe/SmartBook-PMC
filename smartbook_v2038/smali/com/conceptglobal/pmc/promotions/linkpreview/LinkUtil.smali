.class public Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;
.super Ljava/lang/Object;
.source "LinkUtil.java"


# static fields
.field private static instance:Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;Lorg/jsoup/select/Elements;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;->getImageLink(Lorg/jsoup/select/Elements;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getImageLink(Lorg/jsoup/select/Elements;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_4

    .line 179
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 180
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "bhphotovideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "www.clove.co.uk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "m.clove.co.uk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "www.amazon.com/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 195
    invoke-virtual {p1, v1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    const-string p2, "content"

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 192
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "https://www.clove.co.uk"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    const-string v0, "data-thumbnail-path"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 187
    :pswitch_1
    invoke-virtual {p1, v1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    const-string p2, "src"

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 182
    :pswitch_2
    invoke-virtual {p1, v1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    const-string p2, "data-old-hires"

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x30ab215f -> :sswitch_3
        -0xe6c4582 -> :sswitch_2
        0x5c918a8 -> :sswitch_1
        0x51e7d24f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;
    .locals 1

    .line 32
    sget-object v0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;->instance:Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;->instance:Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;

    .line 34
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;->instance:Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;

    return-object v0
.end method


# virtual methods
.method public getLinkPreview(Landroid/content/Context;Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "URL should not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;->onFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 50
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;->validateURL(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p3, :cond_2

    .line 56
    invoke-interface {p3, v0}, Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;->onFailed(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz p3, :cond_2

    .line 53
    invoke-interface {p3, v0}, Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;->onFailed(Ljava/lang/Exception;)V

    .line 60
    :cond_2
    :goto_0
    new-instance v5, Lokhttp3/OkHttpClient;

    invoke-direct {v5}, Lokhttp3/OkHttpClient;-><init>()V

    .line 63
    :try_start_1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 64
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 67
    invoke-virtual {v5, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v7, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;-><init>(Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;Ljava/lang/String;Lokhttp3/OkHttpClient;Landroid/content/Context;)V

    invoke-interface {v0, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    if-eqz p3, :cond_3

    .line 168
    invoke-interface {p3, p1}, Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;->onFailed(Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public validateURL(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    const/4 p1, 0x1

    return p1
.end method
