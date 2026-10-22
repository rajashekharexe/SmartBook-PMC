.class public Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;
.super Ljava/lang/Object;
.source "GetToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/sync/GetToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TokenModel"
.end annotation


# instance fields
.field private Mobile:Ljava/lang/String;

.field private Password:Ljava/lang/String;

.field private UserName:Ljava/lang/String;

.field final synthetic this$0:Lcom/conceptglobal/pmc/sync/GetToken;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/sync/GetToken;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;->this$0:Lcom/conceptglobal/pmc/sync/GetToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;->Mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;->UserName:Ljava/lang/String;

    return-object v0
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;->Mobile:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;->Password:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;->UserName:Ljava/lang/String;

    return-void
.end method
