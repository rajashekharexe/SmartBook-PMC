.class public interface abstract Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IShapeBuilder;
.super Ljava/lang/Object;
.source "TextDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IShapeBuilder"
.end annotation


# virtual methods
.method public abstract beginConfig()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IConfigBuilder;
.end method

.method public abstract buildRect(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
.end method

.method public abstract buildRound(Ljava/lang/String;I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
.end method

.method public abstract buildRoundRect(Ljava/lang/String;II)Lcom/conceptglobal/pmc/textdrawable/TextDrawable;
.end method

.method public abstract rect()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;
.end method

.method public abstract round()Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;
.end method

.method public abstract roundRect(I)Lcom/conceptglobal/pmc/textdrawable/TextDrawable$IBuilder;
.end method
