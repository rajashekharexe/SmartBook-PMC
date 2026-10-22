.class Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;
.super Ljava/lang/Object;
.source "LinkUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;->getLinkPreview(Landroid/content/Context;Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;

.field final synthetic val$client:Lokhttp3/OkHttpClient;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;Ljava/lang/String;Lokhttp3/OkHttpClient;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->this$0:Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$listener:Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$client:Lokhttp3/OkHttpClient;

    iput-object p5, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$listener:Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;

    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1, p2}, Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;->onFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$listener:Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;

    if-eqz p1, :cond_0

    .line 79
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;->onFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    .line 94
    const-string p2, "title"

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p2

    .line 95
    const-string v0, "meta[name=description]"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$url:Ljava/lang/String;

    const-string v2, "bhphotovideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "image[id=mainImage]"

    const-string v4, ""

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$url:Ljava/lang/String;

    const-string v2, "www.amazon.com/gp/aw/d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    goto :goto_0

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$url:Ljava/lang/String;

    const-string v2, "www.amazon.com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    const-string v1, "imageFile[data-old-hires]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$url:Ljava/lang/String;

    const-string v2, "m.clove.co.uk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 107
    const-string v1, "imageFile[id]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    goto :goto_0

    .line 109
    :cond_5
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$url:Ljava/lang/String;

    const-string v2, "www.clove.co.uk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 110
    const-string v1, "li[data-thumbnail-path]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_6
    const-string v1, "meta[property=og:image]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    move-object v2, v4

    .line 116
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->this$0:Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;

    invoke-static {v3, v1, v2}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;->access$000(Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil;Lorg/jsoup/select/Elements;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    const-string v2, "meta[property=og:site_name]"

    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    .line 118
    const-string v3, "meta[property=og:url]"

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_7

    .line 120
    invoke-virtual {p2}, Lorg/jsoup/select/Elements;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 121
    invoke-virtual {p2, v5}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_7
    move-object p2, v6

    .line 123
    :goto_1
    const-string v7, "content"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 124
    invoke-virtual {v0, v5}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v6

    :goto_2
    if-eqz v3, :cond_9

    .line 126
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 127
    invoke-virtual {v3, v5}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 129
    :cond_9
    const-string v3, "link[rel=canonical]"

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 130
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 131
    invoke-virtual {p1, v5}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    const-string v3, "href"

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_a
    move-object p1, v6

    :goto_3
    if-eqz v2, :cond_b

    .line 134
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 135
    invoke-virtual {v2, v5}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_b
    move-object v2, v6

    :goto_4
    if-eqz v1, :cond_c

    .line 140
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 141
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 144
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 146
    new-instance v6, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 148
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 149
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 150
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    .line 154
    :cond_c
    new-instance v1, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;-><init>()V

    .line 155
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setDescription(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setLink(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setSiteName(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, v6}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setImageFile(Ljava/io/File;)V

    .line 159
    invoke-virtual {v1, p2}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setTitle(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkUtil$1;->val$listener:Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;

    if-eqz p1, :cond_d

    .line 162
    invoke-interface {p1, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/GetLinkPreviewListener;->onSuccess(Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;)V

    :cond_d
    return-void
.end method
