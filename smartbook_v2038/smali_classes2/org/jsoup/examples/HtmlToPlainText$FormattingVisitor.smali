.class Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;
.super Ljava/lang/Object;
.source "HtmlToPlainText.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/examples/HtmlToPlainText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormattingVisitor"
.end annotation


# static fields
.field private static final maxWidth:I = 0x50


# instance fields
.field private accum:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lorg/jsoup/examples/HtmlToPlainText;

.field private width:I


# direct methods
.method private constructor <init>(Lorg/jsoup/examples/HtmlToPlainText;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->this$0:Lorg/jsoup/examples/HtmlToPlainText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/examples/HtmlToPlainText;Lorg/jsoup/examples/HtmlToPlainText$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;-><init>(Lorg/jsoup/examples/HtmlToPlainText;)V

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 7

    .line 99
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 100
    iput v2, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    .line 101
    :cond_0
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return-void

    .line 105
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    add-int/2addr v3, v4

    const/16 v4, 0x50

    if-le v3, v4, :cond_5

    .line 106
    const-string v3, "\\s+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 107
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_6

    .line 108
    aget-object v3, p1, v2

    .line 109
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_3

    goto :goto_1

    .line 111
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    add-int/2addr v5, v6

    if-le v5, v4, :cond_4

    .line 113
    iget-object v5, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    goto :goto_2

    .line 116
    :cond_4
    iget-object v5, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v5, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    iput v5, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_5
    iget-object v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    :cond_6
    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 7

    .line 77
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object p2

    .line 78
    instance-of v0, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    const-string p1, "li"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    const-string p1, "\n * "

    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    const-string p1, "dt"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 83
    const-string p1, "  "

    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    const-string v5, "h5"

    const-string v6, "tr"

    const-string v0, "p"

    const-string v1, "h1"

    const-string v2, "h2"

    const-string v3, "h3"

    const-string v4, "h4"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 85
    const-string p1, "\n"

    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 9

    .line 90
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object p2

    .line 91
    const-string v7, "h4"

    const-string v8, "h5"

    const-string v0, "br"

    const-string v1, "dd"

    const-string v2, "dt"

    const-string v3, "p"

    const-string v4, "h1"

    const-string v5, "h2"

    const-string v6, "h3"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string p1, "\n"

    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 94
    const-string p2, "href"

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, " <%s>"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
