.class public Lcom/conceptglobal/pmc/promotions/models/LanguageMaster;
.super Ljava/lang/Object;
.source "LanguageMaster.java"


# instance fields
.field private Description:Ljava/lang/String;

.field private LanguageId:I

.field private LanguageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/LanguageMaster;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/LanguageMaster;->LanguageId:I

    return v0
.end method

.method public getLanguageName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/LanguageMaster;->LanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/LanguageMaster;->Description:Ljava/lang/String;

    return-void
.end method

.method public setLanguageId(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/LanguageMaster;->LanguageId:I

    return-void
.end method

.method public setLanguageName(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/LanguageMaster;->LanguageName:Ljava/lang/String;

    return-void
.end method
