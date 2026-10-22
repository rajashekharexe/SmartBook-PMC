.class final Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$ThumbnailListener;
.super Ljava/lang/Object;
.source "ContentDetailsActivity.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;
.implements Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThumbnailListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$ThumbnailListener;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;)V
    .locals 0

    .line 1180
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$ThumbnailListener;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 0

    const p2, 0x7f0801bb

    .line 1197
    invoke-virtual {p1, p2}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->setImageResource(I)V

    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailLoader;)V
    .locals 1

    .line 1187
    invoke-interface {p2, p0}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader;->setOnThumbnailLoadedListener(Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;)V

    .line 1188
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$ThumbnailListener;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$2000(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0801ab

    .line 1189
    invoke-virtual {p1, v0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->setImageResource(I)V

    .line 1190
    invoke-virtual {p1}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1191
    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader;->setVideo(Ljava/lang/String;)V

    return-void
.end method

.method public onThumbnailError(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;)V
    .locals 0

    const p2, 0x7f0801bb

    .line 1206
    invoke-virtual {p1, p2}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->setImageResource(I)V

    return-void
.end method

.method public onThumbnailLoaded(Lcom/google/android/youtube/player/YouTubeThumbnailView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
