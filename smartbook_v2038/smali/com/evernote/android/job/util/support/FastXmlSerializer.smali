.class Lcom/evernote/android/job/util/support/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;

.field private static sSpace:Ljava/lang/String;


# instance fields
.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mIndent:Z

.field private mLineStart:Z

.field private mNesting:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 42
    const-string v62, "&gt;"

    const/16 v63, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "&quot;"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-string v38, "&amp;"

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const-string v60, "&lt;"

    const/16 v61, 0x0

    filled-new-array/range {v0 .. v63}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 55
    const-string v0, "                                                              "

    sput-object v0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->sSpace:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 57
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    .line 64
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    .line 69
    iput v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    return-void
.end method

.method private append(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flush()V

    .line 76
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 79
    iput v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    add-int/lit16 v1, p2, 0x2000

    if-ge v1, p3, :cond_0

    const/16 v2, 0x2000

    goto :goto_1

    :cond_0
    sub-int v2, p3, p2

    .line 87
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;II)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 92
    :cond_2
    iget v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flush()V

    .line 95
    iget v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    :cond_3
    add-int v0, p2, p3

    .line 97
    iget-object v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p3

    .line 98
    iput v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private append([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    add-int/lit16 v1, p2, 0x2000

    if-ge v1, p3, :cond_0

    const/16 v2, 0x2000

    goto :goto_1

    :cond_0
    sub-int v2, p3, p2

    .line 106
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append([CII)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 111
    :cond_2
    iget v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flush()V

    .line 114
    iget v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    .line 117
    iput v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private appendIndent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x4

    .line 126
    sget-object v0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 127
    sget-object p1, Lcom/evernote/android/job/util/support/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 129
    :cond_0
    sget-object v0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->sSpace:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 134
    sget-object v1, Lcom/evernote/android/job/util/support/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v2, v1

    int-to-char v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 139
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v2, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    aget-object v5, v1, v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v4, v3, :cond_2

    sub-int v6, v3, v4

    .line 143
    invoke-direct {p0, p1, v4, v6}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;II)V

    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 145
    invoke-direct {p0, v5}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-ge v4, v3, :cond_4

    sub-int/2addr v3, v4

    .line 147
    invoke-direct {p0, p1, v4, v3}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;II)V

    :cond_4
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v1, v0

    int-to-char v1, v1

    add-int/2addr p3, p2

    move v2, p2

    :goto_0
    if-ge p2, p3, :cond_3

    .line 157
    aget-char v3, p1, p2

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    aget-object v3, v0, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-ge v2, p2, :cond_2

    sub-int v4, p2, v2

    .line 161
    invoke-direct {p0, p1, v2, v4}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append([CII)V

    :cond_2
    add-int/lit8 v2, p2, 0x1

    .line 163
    invoke-direct {p0, v3}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-ge v2, p2, :cond_4

    sub-int/2addr p2, v2

    .line 165
    invoke-direct {p0, p1, v2, p2}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append([CII)V

    :cond_4
    return-void
.end method

.method private flushBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 234
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 235
    iget-object v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 170
    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    if-eqz p1, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 173
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    .line 175
    :cond_0
    invoke-direct {p0, p2}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 176
    const-string p1, "=\""

    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p3}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    const/16 p1, 0x22

    .line 179
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 186
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 191
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 196
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flush()V

    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 205
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    .line 206
    iget-boolean v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    if-eqz v2, :cond_0

    .line 207
    const-string p1, " />\n"

    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-boolean v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    if-eqz v2, :cond_1

    .line 210
    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->appendIndent(I)V

    .line 212
    :cond_1
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 214
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 215
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    .line 217
    :cond_2
    invoke-direct {p0, p2}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 218
    const-string p1, ">\n"

    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 220
    :goto_0
    iput-boolean v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 227
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    if-lez v0, :cond_3

    .line 242
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    invoke-static {v1, v2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 246
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flushBytes()V

    .line 250
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_0

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flushBytes()V

    .line 256
    iget-object v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    .line 247
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 259
    iget-object v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 261
    :goto_1
    iput v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    :cond_3
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0

    .line 270
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 283
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 287
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 292
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 297
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 302
    const-string p2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    return-void

    .line 306
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 315
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    iput-object p1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception p1

    .line 320
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/UnsupportedEncodingException;

    move-object p2, p1

    check-cast p2, Ljava/io/UnsupportedEncodingException;

    throw p1

    :catch_1
    move-exception p1

    .line 317
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/UnsupportedEncodingException;

    move-object p2, p1

    check-cast p2, Ljava/io/UnsupportedEncodingException;

    throw p1

    .line 312
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 339
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 344
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "yes"

    goto :goto_0

    :cond_0
    const-string p2, "no"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' ?>\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 351
    iput-boolean p1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 356
    iget-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 357
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 359
    :cond_0
    iget-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    .line 360
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->appendIndent(I)V

    .line 362
    :cond_1
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    const/16 v0, 0x3c

    .line 363
    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    if-eqz p1, :cond_2

    .line 365
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 366
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    .line 368
    :cond_2
    invoke-direct {p0, p2}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 369
    iput-boolean v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    const/4 p1, 0x0

    .line 370
    iput-boolean p1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 389
    iget-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 390
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 391
    iput-boolean v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    .line 393
    :cond_0
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 394
    iget-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    :cond_2
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 376
    iget-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 377
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 378
    iput-boolean v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    .line 380
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 381
    iget-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    add-int/2addr p2, p3

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 382
    aget-char p1, p1, p2

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    :cond_2
    return-object p0
.end method
