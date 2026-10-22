.class public Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;
.super Lcom/google/android/youtube/player/YouTubeBaseActivity;
.source "YoutubePlayerActivity.java"


# instance fields
.field videoBundle:Landroid/os/Bundle;

.field videoId:Ljava/lang/String;

.field youTubePlayerView:Lcom/google/android/youtube/player/YouTubePlayerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0048

    .line 20
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;->setContentView(I)V

    const p1, 0x7f090355

    .line 21
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/youtube/player/YouTubePlayerView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;->youTubePlayerView:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 23
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;->videoBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 26
    const-string v0, "videoId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;->videoId:Ljava/lang/String;

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;->youTubePlayerView:Lcom/google/android/youtube/player/YouTubePlayerView;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;)V

    const-string v1, "AIzaSyDtjezmhXAqnlVDUTD5Mc-OgAuuoDMlh4c"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    return-void
.end method
