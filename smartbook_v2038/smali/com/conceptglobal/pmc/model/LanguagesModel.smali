.class public Lcom/conceptglobal/pmc/model/LanguagesModel;
.super Ljava/lang/Object;
.source "LanguagesModel.java"


# instance fields
.field private LanguageId:I

.field private LanguageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguageId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/conceptglobal/pmc/model/LanguagesModel;->LanguageId:I

    return v0
.end method

.method public getLanguageName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/LanguagesModel;->LanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguageId(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/conceptglobal/pmc/model/LanguagesModel;->LanguageId:I

    return-void
.end method

.method public setLanguageName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/LanguagesModel;->LanguageName:Ljava/lang/String;

    return-void
.end method
