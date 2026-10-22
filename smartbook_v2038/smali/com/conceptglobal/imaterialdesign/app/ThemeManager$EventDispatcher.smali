.class public interface abstract Lcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventDispatcher"
.end annotation


# virtual methods
.method public abstract dispatchThemeChanged(I)V
.end method

.method public abstract registerListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V
.end method

.method public abstract unregisterListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V
.end method
