.class Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity$1;
.super Ljava/lang/Object;
.source "YoutubePlayerActivity.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 0

    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/activity/YoutubePlayerActivity;->videoId:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->cueVideo(Ljava/lang/String;)V

    return-void
.end method
