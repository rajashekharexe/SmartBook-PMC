.class public Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VideoActivity.java"


# instance fields
.field private PdaId:I

.field private VideoURL:Ljava/lang/String;

.field categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private contentId:I

.field private context:Landroid/content/Context;

.field private contextID:I

.field private downloadedNow:Z

.field private isDownloaded:Z

.field private isPlaying:Z

.field public lastposition:I

.field mediacontroller:Landroid/widget/MediaController;

.field private pDialog:Landroid/app/ProgressDialog;

.field private parentCatId:I

.field private timer:Ljava/util/Timer;

.field private videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

.field private watchedDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 38
    const-string v0, "http://clips.vorwaerts-gmbh.de/VfE_html5.mp4"

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->VideoURL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->watchedDuration:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->pDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->isPlaying:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->watchedDuration:I

    return p0
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->watchedDuration:I

    return p1
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->isPlaying:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Ljava/util/Timer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->timerCounter()V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->contentId:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->parentCatId:I

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->PdaId:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->isDownloaded:Z

    return p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->downloadedNow:Z

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->contextID:I

    return p0
.end method

.method private timerCounter()V
    .locals 7

    .line 242
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->timer:Ljava/util/Timer;

    .line 243
    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$5;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)V

    .line 257
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 14

    .line 221
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->pDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 226
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 228
    :cond_1
    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->PdaId:I

    .line 229
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->lastposition:I

    .line 231
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->contentId:I

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->parentCatId:I

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->PdaId:I

    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v5

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->isDownloaded:Z

    iget-boolean v8, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->downloadedNow:Z

    iget v9, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->contextID:I

    iget v11, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->watchedDuration:I

    iget v12, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->contentId:I

    const-string v13, "ContentID"

    const-string v10, "DURATION"

    invoke-virtual/range {v1 .. v13}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V

    .line 235
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 57
    const-string v0, "Error"

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0045

    .line 58
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->setContentView(I)V

    .line 59
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->context:Landroid/content/Context;

    const p1, 0x7f09045f

    .line 60
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 61
    new-instance v1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 62
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 63
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "path"

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->VideoURL:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->VideoURL:Ljava/lang/String;

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "parentCatId"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->parentCatId:I

    .line 70
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "contentId"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->contentId:I

    .line 72
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 73
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "isDownloaded"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->isDownloaded:Z

    .line 74
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "downloadedNow"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->downloadedNow:Z

    .line 80
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "PdaId"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->PdaId:I

    const p1, 0x7f0901de

    .line 82
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 83
    new-instance v3, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$1;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v3

    iget v5, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->contentId:I

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getContextIDQry(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->contextID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const p1, 0x7f0c007a

    .line 96
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->setContentView(I)V

    const p1, 0x7f090014

    .line 97
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    .line 100
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->VideoURL:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 102
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->VideoURL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 107
    :cond_3
    :goto_2
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->pDialog:Landroid/app/ProgressDialog;

    .line 109
    const-string v1, "  Streaming.Please Wait "

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->pDialog:Landroid/app/ProgressDialog;

    const-string v1, "Buffering..."

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 113
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 115
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 119
    :try_start_1
    new-instance p1, Landroid/widget/MediaController;

    invoke-direct {p1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->mediacontroller:Landroid/widget/MediaController;

    .line 120
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    invoke-virtual {p1, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 123
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->mediacontroller:Landroid/widget/MediaController;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->setMediaController(Landroid/widget/MediaController;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    :goto_3
    :try_start_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->requestFocus()Z

    .line 139
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)V

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 153
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)V

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->setPlayPauseListener(Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView$PlayPauseListener;)V

    .line 168
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->start()V

    .line 169
    :goto_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 171
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->lastposition:I

    .line 172
    const-string v1, "CurrentPosition"

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->mediacontroller:Landroid/widget/MediaController;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 176
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;)V

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->videoview:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;->lastposition:I

    return-void
.end method
