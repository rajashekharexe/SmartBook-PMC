.class public Lcom/conceptglobal/pmc/utils/CustomProgressDialog;
.super Landroid/app/Dialog;
.source "CustomProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private cancelbtn:Landroid/widget/Button;

.field public cancelll:Landroid/widget/LinearLayout;

.field private countRL:Landroid/widget/RelativeLayout;

.field private extras:Ljava/lang/String;

.field public fullpercent:Landroid/widget/TextView;

.field private mDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRequestCancelListner:Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;

.field public msgtxt:Landroid/widget/TextView;

.field public percent:Landroid/widget/TextView;

.field private percentRL:Landroid/widget/RelativeLayout;

.field private progressType:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

.field public progressbarll:Landroid/widget/LinearLayout;

.field public progresscount:Landroid/widget/TextView;

.field private progressspinner:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->setCancelable(Z)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 55
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    iput-object p0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->mDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    .line 57
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->activity:Landroid/app/Activity;

    .line 58
    iput-object p3, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->extras:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->progressType:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/utils/CustomProgressDialog;)Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->mRequestCancelListner:Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/utils/CustomProgressDialog;Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;)Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->mRequestCancelListner:Lcom/conceptglobal/pmc/interfaces/OnRequestCancelListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/utils/CustomProgressDialog;)Landroid/app/Activity;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/utils/CustomProgressDialog;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->extras:Ljava/lang/String;

    return-object p0
.end method

.method private enableDisableProgressBar()V
    .locals 3

    .line 99
    sget-object v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$2;->$SwitchMap$com$conceptglobal$pmc$utils$CustomProgressDialog$progressbarType:[I

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->progressType:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f090365

    .line 110
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->progresscount:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->percentRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f09034e

    .line 105
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->percent:Landroid/widget/TextView;

    const v0, 0x7f090212

    .line 106
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->fullpercent:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->countRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->progressbarll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->progressspinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->requestWindowFeature(I)Z

    .line 65
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0085

    .line 66
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->setContentView(I)V

    const p1, 0x7f0900de

    .line 67
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->cancelll:Landroid/widget/LinearLayout;

    const p1, 0x7f090364

    .line 68
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->progressbarll:Landroid/widget/LinearLayout;

    const p1, 0x7f090110

    .line 69
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->countRL:Landroid/widget/RelativeLayout;

    const p1, 0x7f09034f

    .line 70
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->percentRL:Landroid/widget/RelativeLayout;

    const p1, 0x7f090306

    .line 72
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->msgtxt:Landroid/widget/TextView;

    const p1, 0x7f090362

    .line 73
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f090367

    .line 74
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->progressspinner:Landroid/widget/ProgressBar;

    .line 76
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->enableDisableProgressBar()V

    const p1, 0x7f0900dd

    .line 78
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->cancelbtn:Landroid/widget/Button;

    .line 80
    new-instance v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$1;-><init>(Lcom/conceptglobal/pmc/utils/CustomProgressDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setProgress(II)V
    .locals 4

    const-string v0, ""

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->progressType:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    sget-object v2, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->PERCENT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "/"

    if-ne v1, v2, :cond_0

    .line 125
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 126
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->percent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->fullpercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->progresscount:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public setProgressBar(Ljava/lang/String;ZI)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 118
    iget-object p2, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->setProgressMsg(Ljava/lang/String;)V

    return-void
.end method

.method public setProgressMsg(Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->mDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->msgtxt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showDialog(Ljava/lang/String;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->mDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->show()V

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->setProgressMsg(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
