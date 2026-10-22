.class public interface abstract Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;
.super Ljava/lang/Object;
.source "FileDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadStatusListener"
.end annotation


# virtual methods
.method public abstract onDownloadCompleted()V
.end method

.method public abstract onDownloadFailed()V
.end method

.method public abstract onDownloadProgress(I)V
.end method

.method public abstract onDownloadStarted()V
.end method
