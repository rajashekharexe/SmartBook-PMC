.class public Lcom/conceptglobal/pmc/model/otp/GetOTP;
.super Ljava/lang/Object;
.source "GetOTP.java"


# instance fields
.field private FarmerName:Ljava/lang/String;

.field private MobileNo:Ljava/lang/String;

.field private Pdaid:Ljava/lang/String;

.field private TestimonialID:Ljava/lang/String;

.field private customerType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomerType()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/otp/GetOTP;->customerType:Ljava/lang/String;

    return-object v0
.end method

.method public getFarmerName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/otp/GetOTP;->FarmerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNo()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/otp/GetOTP;->MobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaid()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/otp/GetOTP;->Pdaid:Ljava/lang/String;

    return-object v0
.end method

.method public getRespondentNo()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/otp/GetOTP;->TestimonialID:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomerType(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/otp/GetOTP;->customerType:Ljava/lang/String;

    return-void
.end method

.method public setFarmerName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/otp/GetOTP;->FarmerName:Ljava/lang/String;

    return-void
.end method

.method public setMobileNo(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/otp/GetOTP;->MobileNo:Ljava/lang/String;

    return-void
.end method

.method public setPdaid(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/otp/GetOTP;->Pdaid:Ljava/lang/String;

    return-void
.end method

.method public setRespondentNo(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/otp/GetOTP;->TestimonialID:Ljava/lang/String;

    return-void
.end method
