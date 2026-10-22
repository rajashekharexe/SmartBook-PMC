.class public final Lcom/evernote/android/job/util/support/PersistableBundleCompat;
.super Ljava/lang/Object;
.source "PersistableBundleCompat.java"


# static fields
.field private static final CAT:Lcom/evernote/android/job/util/JobCat;

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "PersistableBundleCompat"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    return-void
.end method

.method public static fromXml(Ljava/lang/String;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    .locals 3

    const/4 v0, 0x0

    .line 251
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    :try_start_1
    invoke-static {v1}, Lcom/evernote/android/job/util/support/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object p0

    .line 253
    new-instance v0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-direct {v0, p0}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/VerifyError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    :goto_0
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception p0

    .line 261
    :goto_1
    :try_start_3
    sget-object v1, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v1, p0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    .line 262
    new-instance p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-direct {p0}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 267
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :cond_0
    return-object p0

    :catch_6
    move-exception p0

    goto :goto_2

    :catch_7
    move-exception p0

    .line 256
    :goto_2
    :try_start_5
    sget-object v1, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v1, p0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    .line 257
    new-instance p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-direct {p0}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_1

    .line 267
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :catch_8
    :cond_1
    return-object p0

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 269
    :catch_9
    :cond_2
    throw p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 64
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 129
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 142
    instance-of v0, p1, [D

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, [D

    check-cast p1, [D

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 77
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 90
    instance-of v0, p1, [I

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, [I

    check-cast p1, [I

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 103
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 116
    instance-of v0, p1, [J

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, [J

    check-cast p1, [J

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPersistableBundleCompat(Ljava/lang/String;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 182
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 155
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 168
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 169
    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    iget-object p1, p1, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putPersistableBundleCompat(Ljava/lang/String;Lcom/evernote/android/job/util/support/PersistableBundleCompat;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveToXml()Ljava/lang/String;
    .locals 4

    .line 223
    const-string v0, ""

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/evernote/android/job/util/support/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 226
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 235
    :try_start_2
    sget-object v3, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v3, v2}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v0

    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v2

    .line 229
    :goto_0
    :try_start_4
    sget-object v3, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v3, v2}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-object v0

    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 242
    :catch_6
    throw v0
.end method

.method public size()I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
