.class final Lorg/apache/http/conn/ssl/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/conn/ssl/DistinguishedNameParser$InternalTokenParser;
    }
.end annotation


# static fields
.field private static final COMMA_OR_PLUS:Ljava/util/BitSet;

.field private static final EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

.field public static final INSTANCE:Lorg/apache/http/conn/ssl/DistinguishedNameParser;


# instance fields
.field private final tokenParser:Lorg/apache/http/conn/ssl/TokenParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->INSTANCE:Lorg/apache/http/conn/ssl/DistinguishedNameParser;

    const/16 v0, 0x3d

    const/16 v1, 0x2c

    const/16 v2, 0x2b

    .line 45
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

    .line 46
    filled-new-array {v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->COMMA_OR_PLUS:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser$InternalTokenParser;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/DistinguishedNameParser$InternalTokenParser;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_0
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 94
    invoke-virtual {v0, p1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 95
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 96
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parse(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/util/CharArrayBuffer;",
            "Lorg/apache/http/message/ParserCursor;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v1, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/conn/ssl/TokenParser;->skipWhiteSpace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 82
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parseParameter(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method parseParameter(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;
    .locals 4

    .line 63
    sget-object v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parseToken(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 65
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {p1, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 67
    :cond_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 68
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_1

    .line 70
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {p1, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 72
    :cond_1
    sget-object v1, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->COMMA_OR_PLUS:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parseValue(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 76
    :cond_2
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {p2, v0, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method parseToken(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/conn/ssl/TokenParser;->parseToken(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method parseValue(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/conn/ssl/TokenParser;->parseValue(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
