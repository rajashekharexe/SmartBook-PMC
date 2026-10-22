.class public Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;
.super Ljava/lang/Object;
.source "EnglishReasonPhraseCatalogHC4.java"

# interfaces
.implements Lorg/apache/http/ReasonPhraseCatalog;


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;

.field private static final REASON_PHRASES:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 54
    new-instance v0, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;-><init>()V

    sput-object v0, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->INSTANCE:Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;

    const/4 v0, 0x3

    .line 90
    new-array v1, v0, [Ljava/lang/String;

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    const/16 v5, 0x19

    new-array v5, v5, [Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    aput-object v3, v6, v1

    aput-object v4, v6, v0

    const/4 v0, 0x4

    aput-object v5, v6, v0

    const/4 v0, 0x5

    aput-object v2, v6, v0

    sput-object v6, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->REASON_PHRASES:[[Ljava/lang/String;

    const/16 v0, 0xc8

    .line 120
    const-string v1, "OK"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xc9

    .line 122
    const-string v1, "Created"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xca

    .line 124
    const-string v1, "Accepted"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcc

    .line 126
    const-string v1, "No Content"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12d

    .line 128
    const-string v1, "Moved Permanently"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12e

    .line 130
    const-string v1, "Moved Temporarily"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x130

    .line 132
    const-string v1, "Not Modified"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x190

    .line 134
    const-string v1, "Bad Request"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x191

    .line 136
    const-string v1, "Unauthorized"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x193

    .line 138
    const-string v1, "Forbidden"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x194

    .line 140
    const-string v1, "Not Found"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f4

    .line 142
    const-string v1, "Internal Server Error"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f5

    .line 144
    const-string v1, "Not Implemented"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f6

    .line 146
    const-string v1, "Bad Gateway"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f7

    .line 148
    const-string v1, "Service Unavailable"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x64

    .line 152
    const-string v1, "Continue"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x133

    .line 154
    const-string v1, "Temporary Redirect"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x195

    .line 156
    const-string v1, "Method Not Allowed"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x199

    .line 158
    const-string v1, "Conflict"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19c

    .line 160
    const-string v1, "Precondition Failed"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19d

    .line 162
    const-string v1, "Request Too Long"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19e

    .line 164
    const-string v1, "Request-URI Too Long"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19f

    .line 166
    const-string v1, "Unsupported Media Type"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12c

    .line 168
    const-string v1, "Multiple Choices"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12f

    .line 170
    const-string v1, "See Other"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x131

    .line 172
    const-string v1, "Use Proxy"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x192

    .line 174
    const-string v1, "Payment Required"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x196

    .line 176
    const-string v1, "Not Acceptable"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x197

    .line 178
    const-string v1, "Proxy Authentication Required"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x198

    .line 180
    const-string v1, "Request Timeout"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x65

    .line 183
    const-string v1, "Switching Protocols"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcb

    .line 185
    const-string v1, "Non Authoritative Information"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcd

    .line 187
    const-string v1, "Reset Content"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xce

    .line 189
    const-string v1, "Partial Content"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f8

    .line 191
    const-string v1, "Gateway Timeout"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f9

    .line 193
    const-string v1, "Http Version Not Supported"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19a

    .line 195
    const-string v1, "Gone"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19b

    .line 197
    const-string v1, "Length Required"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a0

    .line 199
    const-string v1, "Requested Range Not Satisfiable"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a1

    .line 201
    const-string v1, "Expectation Failed"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x66

    .line 205
    const-string v1, "Processing"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcf

    .line 207
    const-string v1, "Multi-Status"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a6

    .line 209
    const-string v1, "Unprocessable Entity"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a3

    .line 211
    const-string v1, "Insufficient Space On Resource"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a4

    .line 213
    const-string v1, "Method Failure"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a7

    .line 215
    const-string v1, "Locked"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1fb

    .line 217
    const-string v1, "Insufficient Storage"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a8

    .line 219
    const-string v1, "Failed Dependency"

    invoke-static {v0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->setReason(ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setReason(ILjava/lang/String;)V
    .locals 2

    .line 109
    div-int/lit8 v0, p0, 0x64

    mul-int/lit8 v1, v0, 0x64

    sub-int/2addr p0, v1

    .line 111
    sget-object v1, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v0, v1, v0

    aput-object p1, v0, p0

    return-void
.end method


# virtual methods
.method public getReason(ILjava/util/Locale;)Ljava/lang/String;
    .locals 2

    const/16 p2, 0x64

    if-lt p1, p2, :cond_0

    const/16 p2, 0x258

    if-ge p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 76
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown category for status code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 77
    div-int/lit8 p2, p1, 0x64

    mul-int/lit8 v0, p2, 0x64

    sub-int/2addr p1, v0

    .line 81
    sget-object v0, Lorg/apache/http/impl/EnglishReasonPhraseCatalogHC4;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object p2, v0, p2

    array-length v0, p2

    if-le v0, p1, :cond_1

    .line 82
    aget-object p1, p2, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
