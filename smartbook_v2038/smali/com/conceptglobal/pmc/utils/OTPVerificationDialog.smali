.class public Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;
.super Lcom/conceptglobal/imaterialdesign/app/Dialog;
.source "OTPVerificationDialog.java"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private edtOTP:Landroid/widget/EditText;

.field private farmerMobile:Ljava/lang/String;

.field private farmerName:Ljava/lang/String;

.field private isFrom:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->farmerMobile:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->farmerName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->mListener:Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;

    .line 34
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->farmerMobile:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->farmerName:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->mListener:Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->mContext:Landroid/content/Context;

    .line 42
    iput-object p5, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->isFrom:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->mListener:Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Landroid/widget/EditText;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->edtOTP:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 5

    const v0, 0x1020002

    .line 48
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0098

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 59
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 60
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    .line 62
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 64
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f090154

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->edtOTP:Landroid/widget/EditText;

    .line 65
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f0904a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->farmerName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->farmerMobile:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f090256

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    new-instance v2, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$1;-><init>(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f09008b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/utils/Ibutton;

    .line 80
    new-instance v2, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$2;-><init>(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)V

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/utils/Ibutton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f0904ec

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/utils/Ibutton;

    .line 93
    new-instance v2, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$3;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$3;-><init>(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)V

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/utils/Ibutton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f0904c6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    const v3, 0x7f0904a5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    new-instance v3, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$4;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$4;-><init>(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v3, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->isFrom:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->isFrom:Ljava/lang/String;

    const-string v4, "Registration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->alertDialog:Landroid/app/AlertDialog;

    const v4, 0x7f0904a3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    .line 111
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->isFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->isFrom:Ljava/lang/String;

    const-string v1, "Retailer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "Retailer Shop name : "

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
