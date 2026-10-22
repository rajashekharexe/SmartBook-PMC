.class public Lorg/android10/gintonic/ILoggerApplication;
.super Landroid/app/Application;
.source "ILoggerApplication.java"


# static fields
.field public static iLoggerApplication:Lorg/android10/gintonic/ILoggerApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 15
    sput-object p0, Lorg/android10/gintonic/ILoggerApplication;->iLoggerApplication:Lorg/android10/gintonic/ILoggerApplication;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 19
    sget-object v0, Lorg/android10/gintonic/ILoggerApplication;->iLoggerApplication:Lorg/android10/gintonic/ILoggerApplication;

    return-object v0
.end method
