.class public Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;
.super Landroid/widget/VideoView;
.source "CustomVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView$PlayPauseListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView$PlayPauseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 30
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->mListener:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView$PlayPauseListener;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView$PlayPauseListener;->onPause()V

    :cond_0
    return-void
.end method

.method public setPlayPauseListener(Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView$PlayPauseListener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->mListener:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView$PlayPauseListener;

    return-void
.end method

.method public start()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 38
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView;->mListener:Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView$PlayPauseListener;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0}, Lcom/conceptglobal/pmc/promotions/activity/CustomVideoView$PlayPauseListener;->onPlay()V

    :cond_0
    return-void
.end method
