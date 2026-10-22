.class public Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnThemeChangedEvent"
.end annotation


# instance fields
.field public final theme:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;->theme:I

    return-void
.end method
