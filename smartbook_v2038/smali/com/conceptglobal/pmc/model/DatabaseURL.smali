.class public Lcom/conceptglobal/pmc/model/DatabaseURL;
.super Ljava/lang/Object;
.source "DatabaseURL.java"


# instance fields
.field private Name:Ljava/lang/String;

.field private URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DatabaseURL;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DatabaseURL;->URL:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DatabaseURL;->Name:Ljava/lang/String;

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DatabaseURL;->URL:Ljava/lang/String;

    return-void
.end method
