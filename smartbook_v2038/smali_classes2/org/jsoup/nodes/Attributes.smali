.class public Lorg/jsoup/nodes/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Attributes$Dataset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/jsoup/nodes/Attribute;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final dataPrefix:Ljava/lang/String; = "data-"


# instance fields
.field private attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$102(Lorg/jsoup/nodes/Attributes;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p0}, Lorg/jsoup/nodes/Attributes;->dataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAll(Lorg/jsoup/nodes/Attributes;)V
    .locals 2

    .line 168
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public asList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Attributes;
    .locals 5

    .line 265
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    return-object v0

    .line 270
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attributes;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, v0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    .line 275
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Attribute;

    .line 276
    iget-object v3, v0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->clone()Lorg/jsoup/nodes/Attribute;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 272
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dataset()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Lorg/jsoup/nodes/Attributes$Dataset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/Attributes$Dataset;-><init>(Lorg/jsoup/nodes/Attributes;Lorg/jsoup/nodes/Attributes$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 247
    :cond_0
    instance-of v1, p1, Lorg/jsoup/nodes/Attributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 249
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/Attributes;

    .line 251
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 44
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Attribute;

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 59
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    iget-object p1, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasKeyIgnoreCase(Ljava/lang/String;)Z
    .locals 3

    .line 144
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public html()Ljava/lang/String;
    .locals 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    :try_start_0
    new-instance v1, Lorg/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 218
    new-instance v1, Lorg/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Attribute;

    .line 229
    const-string v2, " "

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 230
    invoke-virtual {v1, p1, p2}, Lorg/jsoup/nodes/Attribute;->html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 177
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 76
    new-instance v0, Lorg/jsoup/nodes/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 87
    new-instance p2, Lorg/jsoup/nodes/BooleanAttribute;

    invoke-direct {p2, p1}, Lorg/jsoup/nodes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public put(Lorg/jsoup/nodes/Attribute;)V
    .locals 2

    .line 97
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 108
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeIgnoreCase(Ljava/lang/String;)V
    .locals 2

    .line 119
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
